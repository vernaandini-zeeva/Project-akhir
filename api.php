<?php
require_once 'config.php';

header('Content-Type: application/json');

$api = $_GET['api'] ?? '';

// ─── Helper ────────────────────────────────────────────────────────────────
function json_out($data){ echo json_encode($data); exit; }
function err($msg){ echo json_encode(['ok'=>false,'error'=>$msg]); exit; }

// ─── Cek koneksi DB ────────────────────────────────────────────────────────
if (!$pdo) {
    err('Koneksi database gagal: ' . $pdoErr);
}

// ══════════════════════════════════════════════════════════════════════════════
// AUTH
// ══════════════════════════════════════════════════════════════════════════════
if ($api === 'check_auth') {
    json_out(['logged' => !empty($_SESSION['admin_logged'])]);
}

if ($api === 'login') {
    $body = json_decode(file_get_contents('php://input'), true);
    $u = trim($body['username'] ?? '');
    $p = trim($body['password'] ?? '');

    $stmt = $pdo->prepare("SELECT * FROM admin_users WHERE username = ? LIMIT 1");
    $stmt->execute([$u]);
    $row = $stmt->fetch();

    // Support plain text DAN bcrypt
    $passOk = $row && (password_verify($p, $row['password']) || $row['password'] === $p);
    if ($passOk) {
        $_SESSION['admin_logged'] = true;
        $_SESSION['admin_id']     = $row['id'];

        // catat log login
        $pdo->prepare("INSERT INTO admin_logs (admin_id, action, detail, created_at)
                        VALUES (?, 'login', 'Login berhasil', NOW())")
            ->execute([$row['id']]);

        json_out(['ok' => true]);
    }
    err('Username atau password salah');
}

if ($api === 'logout') {
    if (!empty($_SESSION['admin_id'])) {
        $pdo->prepare("INSERT INTO admin_logs (admin_id, action, detail, created_at)
                        VALUES (?, 'logout', 'Logout', NOW())")
            ->execute([$_SESSION['admin_id']]);
    }
    session_destroy();
    json_out(['ok' => true]);
}

// ══════════════════════════════════════════════════════════════════════════════
// MENU (public – tidak perlu login)
// ══════════════════════════════════════════════════════════════════════════════
if ($api === 'menu') {
    $rows = $pdo->query("SELECT * FROM menus ORDER BY id ASC")->fetchAll();
    json_out($rows);
}

// ──────────────────────────────────────────────────────────────────────────────
// Semua endpoint di bawah butuh login admin
// ──────────────────────────────────────────────────────────────────────────────
function requireAdmin() {
    if (empty($_SESSION['admin_logged'])) {
        header('HTTP/1.1 401 Unauthorized');
        err('Belum login');
    }
}

// ══════════════════════════════════════════════════════════════════════════════
// MENU CRUD (admin)
// ══════════════════════════════════════════════════════════════════════════════
if ($api === 'add_menu') {
    requireAdmin();

    $name        = trim($_POST['name']        ?? '');
    $cat         = trim($_POST['cat']         ?? '');
    $price       = intval($_POST['price']     ?? 0);
    $weight      = trim($_POST['weight']      ?? '');
    $tags        = trim($_POST['tags']        ?? '');
    $description = trim($_POST['description'] ?? '');
    $ingredients = trim($_POST['ingredients'] ?? '');

    if (!$name) err('Nama menu wajib diisi');

    // Upload gambar
    $imagePath = '';
    if (!empty($_FILES['image']['tmp_name'])) {
        $ext  = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
        $fn   = time() . '_' . preg_replace('/[^a-zA-Z0-9_]/', '_', $name) . '.' . $ext;
        $dest = 'uploads/' . $fn;
        if (move_uploaded_file($_FILES['image']['tmp_name'], $dest)) {
            $imagePath = $dest;
        }
    }

    $stmt = $pdo->prepare("INSERT INTO menus
        (name, cat, price, weight, image, tags, description, ingredients, sold)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, 0)");
    $stmt->execute([$name, $cat, $price, $weight, $imagePath, $tags, $description, $ingredients]);

    $pdo->prepare("INSERT INTO admin_logs (admin_id, action, detail, created_at)
                   VALUES (?, 'add_menu', ?, NOW())")
        ->execute([$_SESSION['admin_id'], 'Tambah menu: ' . $name]);

    json_out(['ok' => true, 'id' => $pdo->lastInsertId()]);
}

if ($api === 'edit_menu') {
    requireAdmin();

    $id          = intval($_POST['id']          ?? 0);
    $name        = trim($_POST['name']          ?? '');
    $cat         = trim($_POST['cat']           ?? '');
    $price       = intval($_POST['price']       ?? 0);
    $weight      = trim($_POST['weight']        ?? '');
    $tags        = trim($_POST['tags']          ?? '');
    $description = trim($_POST['description']   ?? '');
    $ingredients = trim($_POST['ingredients']   ?? '');

    if (!$id || !$name) err('Data tidak lengkap');

    // Ambil data lama
    $old = $pdo->prepare("SELECT image FROM menus WHERE id = ?");
    $old->execute([$id]);
    $oldRow = $old->fetch();
    $imagePath = $oldRow['image'] ?? '';

    // Ganti gambar jika ada upload baru
    if (!empty($_FILES['image']['tmp_name'])) {
        $ext  = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
        $fn   = time() . '_' . preg_replace('/[^a-zA-Z0-9_]/', '_', $name) . '.' . $ext;
        $dest = 'uploads/' . $fn;
        if (move_uploaded_file($_FILES['image']['tmp_name'], $dest)) {
            // Hapus gambar lama jika ada
            if ($imagePath && file_exists($imagePath)) @unlink($imagePath);
            $imagePath = $dest;
        }
    }

    $stmt = $pdo->prepare("UPDATE menus SET
        name=?, cat=?, price=?, weight=?, image=?, tags=?, description=?, ingredients=?
        WHERE id=?");
    $stmt->execute([$name, $cat, $price, $weight, $imagePath, $tags, $description, $ingredients, $id]);

    $pdo->prepare("INSERT INTO admin_logs (admin_id, action, detail, created_at)
                   VALUES (?, 'edit_menu', ?, NOW())")
        ->execute([$_SESSION['admin_id'], 'Edit menu id=' . $id . ': ' . $name]);

    json_out(['ok' => true]);
}

if ($api === 'delete_menu') {
    requireAdmin();

    $body = json_decode(file_get_contents('php://input'), true);
    $id   = intval($body['id'] ?? 0);
    if (!$id) err('ID tidak valid');

    // Hapus gambar fisik
    $row = $pdo->prepare("SELECT image, name FROM menus WHERE id=?");
    $row->execute([$id]);
    $m = $row->fetch();
    if ($m && $m['image'] && file_exists($m['image'])) @unlink($m['image']);

    $pdo->prepare("DELETE FROM menus WHERE id=?")->execute([$id]);

    $pdo->prepare("INSERT INTO admin_logs (admin_id, action, detail, created_at)
                   VALUES (?, 'delete_menu', ?, NOW())")
        ->execute([$_SESSION['admin_id'], 'Hapus menu id=' . $id . ': ' . ($m['name'] ?? '')]);

    json_out(['ok' => true]);
}

// ══════════════════════════════════════════════════════════════════════════════
// ORDERS
// ══════════════════════════════════════════════════════════════════════════════
if ($api === 'create_order') {
    $body     = json_decode(file_get_contents('php://input'), true);
    $orderId  = trim($body['order_id']      ?? '');
    $items    = $body['items']              ?? [];
    $total    = intval($body['total']       ?? 0);
    $method   = trim($body['method']        ?? '');
    $mode     = trim($body['mode']          ?? '');
    $custName = trim($body['customer_name'] ?? '');
    $address  = trim($body['address']       ?? '');

    if (!$orderId || empty($items)) err('Data pesanan tidak lengkap');

    $stmt = $pdo->prepare("INSERT INTO orders
        (order_id, items, total, method, mode, customer_name, address, status, created_at)
        VALUES (?, ?, ?, ?, ?, ?, ?, 'pending', NOW())");
    $stmt->execute([
        $orderId,
        json_encode($items, JSON_UNESCAPED_UNICODE),
        $total,
        $method,
        $mode,
        $custName,
        $address
    ]);

    // Update sold count per menu item
    foreach ($items as $item) {
        $menuId = intval($item['id']  ?? 0);
        $qty    = intval($item['qty'] ?? 0);
        if ($menuId && $qty) {
            $pdo->prepare("UPDATE menus SET sold = COALESCE(sold,0) + ? WHERE id=?")
                ->execute([$qty, $menuId]);
        }
    }

    json_out(['ok' => true, 'db_id' => $pdo->lastInsertId()]);
}

if ($api === 'orders') {
    requireAdmin();

    $rows = $pdo->query("SELECT * FROM orders ORDER BY created_at DESC LIMIT 200")->fetchAll();
    // Decode JSON items
    foreach ($rows as &$r) {
        $r['items'] = json_decode($r['items'], true) ?? [];
    }
    json_out($rows);
}

if ($api === 'update_status') {
    requireAdmin();

    $body   = json_decode(file_get_contents('php://input'), true);
    $id     = intval($body['id']     ?? 0);
    $status = trim($body['status']   ?? '');

    $allowed = ['pending', 'paid', 'done', 'cancelled'];
    if (!$id || !in_array($status, $allowed)) err('Data tidak valid');

    $pdo->prepare("UPDATE orders SET status=? WHERE id=?")->execute([$status, $id]);

    $pdo->prepare("INSERT INTO admin_logs (admin_id, action, detail, created_at)
                   VALUES (?, 'update_status', ?, NOW())")
        ->execute([$_SESSION['admin_id'], 'Order id=' . $id . ' → ' . $status]);

    json_out(['ok' => true]);
}

// ══════════════════════════════════════════════════════════════════════════════
// STATISTIK
// ══════════════════════════════════════════════════════════════════════════════
if ($api === 'stats') {
    requireAdmin();

    // ── Summary ──────────────────────────────────────────────────────────────
    $totalOrders = (int)$pdo->query("SELECT COUNT(*) FROM orders WHERE status != 'cancelled'")->fetchColumn();
    $totalRev    = (int)$pdo->query("SELECT COALESCE(SUM(total),0) FROM orders WHERE status IN ('paid','done')")->fetchColumn();
    $pending     = (int)$pdo->query("SELECT COUNT(*) FROM orders WHERE status='pending'")->fetchColumn();
    $paid        = (int)$pdo->query("SELECT COUNT(*) FROM orders WHERE status='paid'")->fetchColumn();
    $done        = (int)$pdo->query("SELECT COUNT(*) FROM orders WHERE status='done'")->fetchColumn();
    $rejected    = (int)$pdo->query("SELECT COUNT(*) FROM orders WHERE status='cancelled'")->fetchColumn();
    $dineIn      = (int)$pdo->query("SELECT COUNT(*) FROM orders WHERE mode LIKE 'Dine In%' AND status != 'cancelled'")->fetchColumn();
    $delivery    = (int)$pdo->query("SELECT COUNT(*) FROM orders WHERE mode LIKE 'Delivery%' AND status != 'cancelled'")->fetchColumn();

    // ── Grafik 7 hari: array {day, total} ────────────────────────────────────
    $chart = $pdo->query("
        SELECT DATE(created_at) AS day, SUM(total) AS total
        FROM orders
        WHERE status IN ('paid','done')
          AND created_at >= DATE_SUB(NOW(), INTERVAL 7 DAY)
        GROUP BY DATE(created_at)
        ORDER BY day ASC
    ")->fetchAll();
    // Pastikan nilai numerik
    foreach ($chart as &$c) { $c['total'] = (int)$c['total']; }
    unset($c);

    // ── Penjualan per kategori ────────────────────────────────────────────────
    $catSold = $pdo->query("
        SELECT m.cat, SUM(m.sold) AS sold
        FROM menus m
        GROUP BY m.cat
        ORDER BY sold DESC
    ")->fetchAll();
    foreach ($catSold as &$cs) { $cs['sold'] = (int)$cs['sold']; }
    unset($cs);

    // ── Top menu ─────────────────────────────────────────────────────────────
    $topMenu = $pdo->query("SELECT id, name, price, sold FROM menus ORDER BY sold DESC LIMIT 5")->fetchAll();
    foreach ($topMenu as &$tm) { $tm['sold'] = (int)$tm['sold']; $tm['price'] = (int)$tm['price']; }
    unset($tm);

    // ── Statistika (mean, median, mode) dari total tiap order ────────────────
    $allTotals = $pdo->query("
        SELECT total FROM orders WHERE status IN ('paid','done') ORDER BY total ASC
    ")->fetchAll(\PDO::FETCH_COLUMN);

    $mean   = 0; $median = 0; $mode = '-';
    $n = count($allTotals);
    if ($n > 0) {
        $mean   = (int)round(array_sum($allTotals) / $n);
        $mid    = (int)floor($n / 2);
        $median = $n % 2 === 0
                    ? (int)(($allTotals[$mid - 1] + $allTotals[$mid]) / 2)
                    : (int)$allTotals[$mid];
        // Modus: nilai yang paling sering muncul
        $freq = array_count_values($allTotals);
        arsort($freq);
        reset($freq);
        $modeKey = key($freq);
        $mode = $freq[$modeKey] > 1 ? (int)$modeKey : '-';
    }

    json_out([
        'summary' => [
            'revenue'      => $totalRev,
            'total_orders' => $totalOrders,
            'pending'      => $pending,
            'paid'         => $paid,
            'done'         => $done,
            'rejected'     => $rejected,
            'dine_in'      => $dineIn,
            'delivery'     => $delivery,
        ],
        'chart'      => $chart,
        'catSold'    => $catSold,
        'topMenu'    => $topMenu,
        'statMean'   => $mean,
        'statMedian' => $median,
        'statMode'   => $mode,
    ]);
}

// ══════════════════════════════════════════════════════════════════════════════
// Endpoint tidak ditemukan
// ══════════════════════════════════════════════════════════════════════════════
err('API endpoint tidak ditemukan: ' . $api);