-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2026 at 08:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bite_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_logs`
--

CREATE TABLE `admin_logs` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `detail` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_logs`
--

INSERT INTO `admin_logs` (`id`, `admin_id`, `action`, `detail`, `created_at`) VALUES
(1, 1, 'login', 'Login berhasil', '2026-06-04 02:32:40'),
(2, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:10:54'),
(3, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:10:56'),
(4, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:10:56'),
(5, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:10:56'),
(6, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:10:57'),
(7, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:10:57'),
(8, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:10:59'),
(9, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:10:59'),
(10, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:10:59'),
(11, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:10:59'),
(12, 1, 'logout', 'Logout', '2026-06-04 04:11:09'),
(13, 1, 'login', 'Login berhasil', '2026-06-04 04:11:19'),
(14, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:12:30'),
(15, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:55:18'),
(16, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-04 04:56:14'),
(17, 1, 'login', 'Login berhasil', '2026-06-04 06:02:41'),
(18, 1, 'update_status', 'Order id=5 → paid', '2026-06-04 06:45:09'),
(19, 1, 'update_status', 'Order id=4 → paid', '2026-06-04 06:45:13'),
(20, 1, 'update_status', 'Order id=3 → paid', '2026-06-04 06:45:16'),
(21, 1, 'update_status', 'Order id=2 → paid', '2026-06-04 06:45:18'),
(22, 1, 'update_status', 'Order id=1 → paid', '2026-06-04 06:45:20'),
(23, 1, 'login', 'Login berhasil', '2026-06-04 07:30:10'),
(24, 1, 'update_status', 'Order id=5 → done', '2026-06-04 07:30:19'),
(25, 1, 'update_status', 'Order id=4 → done', '2026-06-04 07:30:22'),
(26, 1, 'login', 'Login berhasil', '2026-06-08 00:38:04'),
(27, 1, 'edit_menu', 'Edit menu id=3: Nasi Bakar', '2026-06-08 00:45:00'),
(28, 1, 'edit_menu', 'Edit menu id=4: Nasi Kebuli', '2026-06-08 00:45:10'),
(29, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-08 00:45:21'),
(30, 1, 'edit_menu', 'Edit menu id=2: Nasi Goreng Padang', '2026-06-08 00:45:35'),
(31, 1, 'add_menu', 'Tambah menu: Donat Mix', '2026-06-08 00:58:17'),
(32, 1, 'add_menu', 'Tambah menu: Donat Isi Stoberi', '2026-06-08 01:01:39'),
(33, 1, 'edit_menu', 'Edit menu id=6: Donat Isi Stoberi', '2026-06-08 01:02:10'),
(34, 1, 'edit_menu', 'Edit menu id=5: Donat Mix', '2026-06-08 01:02:16'),
(35, 1, 'add_menu', 'Tambah menu: Donat Coklat Glaze', '2026-06-08 01:25:26'),
(36, 1, 'edit_menu', 'Edit menu id=7: Donat Coklat Glaze', '2026-06-08 01:25:35'),
(37, 1, 'add_menu', 'Tambah menu: Donat Gula Halus', '2026-06-08 01:30:26'),
(38, 1, 'add_menu', 'Tambah menu: coklate cake', '2026-06-08 01:32:27'),
(39, 1, 'add_menu', 'Tambah menu: Cake', '2026-06-08 01:34:13'),
(40, 1, 'edit_menu', 'Edit menu id=10: Cake', '2026-06-08 01:34:34'),
(41, 1, 'add_menu', 'Tambah menu: Cheesecake', '2026-06-08 01:36:44'),
(42, 1, 'add_menu', 'Tambah menu: Mie Goreng jawa', '2026-06-08 01:47:17'),
(43, 1, 'add_menu', 'Tambah menu: Mie Ayam Bakso', '2026-06-08 02:16:03'),
(44, 1, 'add_menu', 'Tambah menu: Mie Aceh', '2026-06-08 02:17:43'),
(45, 1, 'add_menu', 'Tambah menu: Mie Rebus', '2026-06-08 02:19:37'),
(46, 1, 'add_menu', 'Tambah menu: Mie Seafood', '2026-06-08 02:21:25'),
(47, 1, 'add_menu', 'Tambah menu: Mie Goreng Spesial', '2026-06-08 02:23:34'),
(48, 1, 'add_menu', 'Tambah menu: Lontong Cap Go Meh', '2026-06-08 02:26:16'),
(49, 1, 'add_menu', 'Tambah menu: Lontong Sayur', '2026-06-08 02:28:55'),
(50, 1, 'edit_menu', 'Edit menu id=18: Lontong Cap Go Meh', '2026-06-08 02:30:53'),
(51, 1, 'add_menu', 'Tambah menu: Lontong Pecel', '2026-06-08 02:32:09'),
(52, 1, 'add_menu', 'Tambah menu: Lontong Tahu Bumbu Kacang', '2026-06-08 02:34:01'),
(53, 1, 'edit_menu', 'Edit menu id=1: Nasi Goreng Spesial', '2026-06-08 02:36:59'),
(54, 1, 'edit_menu', 'Edit menu id=21: Lontong Tahu Bumbu Kacang', '2026-06-08 02:38:07'),
(55, 1, 'edit_menu', 'Edit menu id=14: Mie Aceh', '2026-06-08 02:38:37'),
(56, 1, 'edit_menu', 'Edit menu id=13: Mie Ayam Bakso', '2026-06-08 02:39:33'),
(57, 1, 'edit_menu', 'Edit menu id=17: Mie Goreng Spesial', '2026-06-08 02:39:51'),
(58, 1, 'edit_menu', 'Edit menu id=16: Mie Seafood', '2026-06-08 02:40:51'),
(59, 1, 'add_menu', 'Tambah menu: Sate Kerang', '2026-06-08 02:51:15'),
(60, 1, 'add_menu', 'Tambah menu: Sate Jamur', '2026-06-08 02:55:37'),
(61, 1, 'add_menu', 'Tambah menu: Sate Ayam', '2026-06-08 02:58:05'),
(62, 1, 'update_status', 'Order id=3 → done', '2026-06-08 02:58:14'),
(63, 1, 'add_menu', 'Tambah menu: Sate Padang', '2026-06-08 03:01:08'),
(64, 1, 'add_menu', 'Tambah menu: Sate Thaichan', '2026-06-08 03:03:36'),
(65, 1, 'edit_menu', 'Edit menu id=25: Sate Padang', '2026-06-08 03:03:58'),
(66, 1, 'add_menu', 'Tambah menu: Sate Kambing', '2026-06-08 03:06:37'),
(67, 1, 'add_menu', 'Tambah menu: Sate Sapi', '2026-06-08 03:08:59'),
(68, 1, 'add_menu', 'Tambah menu: Sate Maranggi', '2026-06-08 03:11:15'),
(69, 1, 'edit_menu', 'Edit menu id=27: Sate Kambing', '2026-06-08 03:11:38'),
(70, 1, 'add_menu', 'Tambah menu: Ayam Bakar', '2026-06-08 03:20:49'),
(71, 1, 'add_menu', 'Tambah menu: Ayam Goreng', '2026-06-08 03:23:07'),
(72, 1, 'add_menu', 'Tambah menu: Ayam Rica-rica', '2026-06-08 03:31:57'),
(73, 1, 'add_menu', 'Tambah menu: Ayam Geprek', '2026-06-08 03:38:58'),
(74, 1, 'add_menu', 'Tambah menu: Bebek bakar', '2026-06-08 03:41:35'),
(75, 1, 'add_menu', 'Tambah menu: Bebek Goreng', '2026-06-08 03:43:21'),
(76, 1, 'add_menu', 'Tambah menu: Seafood Tumpah', '2026-06-08 03:51:52'),
(77, 1, 'logout', 'Logout', '2026-06-08 03:51:54'),
(78, 1, 'login', 'Login berhasil', '2026-06-08 03:52:12'),
(79, 1, 'add_menu', 'Tambah menu: Udang & Cumi Saus Padang', '2026-06-08 03:54:08'),
(80, 1, 'add_menu', 'Tambah menu: Cumi Cincin Crispy', '2026-06-08 03:56:28'),
(81, 1, 'add_menu', 'Tambah menu: Oyster Sambal Thailand', '2026-06-08 03:58:27'),
(82, 1, 'add_menu', 'Tambah menu: Kopi Hitam', '2026-06-08 04:06:58'),
(83, 1, 'add_menu', 'Tambah menu: Latte Art', '2026-06-08 04:11:17'),
(84, 1, 'add_menu', 'Tambah menu: Kopi Susu', '2026-06-08 04:16:27'),
(85, 1, 'add_menu', 'Tambah menu: Jus Mangga', '2026-06-08 04:18:52'),
(86, 1, 'edit_menu', 'Edit menu id=43: Jus Mangga', '2026-06-08 04:19:08'),
(87, 1, 'add_menu', 'Tambah menu: Es Teh Manis', '2026-06-08 04:22:01'),
(88, 1, 'add_menu', 'Tambah menu: Matcha', '2026-06-08 04:27:01'),
(89, 1, 'add_menu', 'Tambah menu: Roti Bakar', '2026-06-08 04:29:40'),
(90, 1, 'add_menu', 'Tambah menu: Tumis Kangkung', '2026-06-08 04:32:43'),
(91, 1, 'add_menu', 'Tambah menu: Nasi', '2026-06-08 04:34:01'),
(92, 1, 'add_menu', 'Tambah menu: Sop Tulang', '2026-06-08 04:41:26'),
(93, 1, 'update_status', 'Order id=6 → paid', '2026-06-08 04:44:30'),
(94, 1, 'update_status', 'Order id=6 → done', '2026-06-08 04:44:33'),
(95, 1, 'update_status', 'Order id=8 → paid', '2026-06-08 04:46:26'),
(96, 1, 'update_status', 'Order id=7 → paid', '2026-06-08 04:46:28'),
(97, 1, 'update_status', 'Order id=8 → done', '2026-06-08 04:46:30'),
(98, 1, 'update_status', 'Order id=7 → done', '2026-06-08 04:46:32'),
(99, 1, 'update_status', 'Order id=9 → paid', '2026-06-08 05:04:37'),
(100, 1, 'edit_menu', 'Edit menu id=37: Udang & Cumi Saus Padang', '2026-06-08 05:12:08'),
(101, 1, 'edit_menu', 'Edit menu id=48: Nasi', '2026-06-08 05:12:39'),
(102, 1, 'edit_menu', 'Edit menu id=37: Udang & Cumi Saus Padang', '2026-06-08 05:14:14'),
(103, 1, 'update_status', 'Order id=12 → paid', '2026-06-08 06:02:41'),
(104, 1, 'update_status', 'Order id=11 → paid', '2026-06-08 06:02:43'),
(105, 1, 'update_status', 'Order id=10 → paid', '2026-06-08 06:02:45'),
(106, 1, 'update_status', 'Order id=12 → done', '2026-06-08 06:02:47'),
(107, 1, 'update_status', 'Order id=11 → done', '2026-06-08 06:02:49'),
(108, 1, 'update_status', 'Order id=10 → done', '2026-06-08 06:02:50'),
(109, 1, 'update_status', 'Order id=9 → done', '2026-06-08 06:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', 'admin123', '2026-06-04 02:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat` varchar(50) NOT NULL DEFAULT '',
  `price` int(11) NOT NULL DEFAULT 0,
  `weight` varchar(30) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `sold` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `cat`, `price`, `weight`, `image`, `tags`, `description`, `ingredients`, `sold`, `created_at`) VALUES
(1, 'Nasi Goreng Spesial', 'Nasi', 18000, '1 Porsi', 'uploads/1780879521_Nasi_Goreng_Spesial.jfif', 'Bestseller, Gurih, Favorit, Tradisional, Mengenyangkan', 'Nasi goreng khas Indonesia dengan bumbu pilihan yang gurih dan aroma yang menggugah selera. Cocok dinikmati kapan saja sebagai menu utama yang mengenyangkan.', 'Nasi putih, Telur, Bawang merah, Bawang putih, Kecap manis, Cabai, Minyak goreng', 42, '2026-06-04 02:09:31'),
(2, 'Nasi Goreng Padang', 'Nasi', 30000, '370g', 'uploads/1780879535_Nasi_Goreng_Padang.jfif', 'Pedas', 'Nasi goreng dengan cita rasa Padang yang kaya rempah', 'Nasi,Rendang,Cabai,Rempah', 28, '2026-06-04 02:09:31'),
(3, 'Nasi Bakar', 'Nasi', 25000, '300g', 'uploads/1780879500_Nasi_Bakar.jfif', 'Viral', 'Nasi bakar daun pisang dengan isian ayam dan kemangi', 'Nasi,Ayam,Kemangi,Daun Pisang', 35, '2026-06-04 02:09:31'),
(4, 'Nasi Kebuli', 'Nasi', 35000, '400g', 'uploads/1780879510_Nasi_Kebuli.jfif', 'Spesial', 'Nasi kebuli kambing dengan rempah khas Timur Tengah', 'Nasi,Kambing,Kapulaga,Cengkeh,Kayu Manis', 19, '2026-06-04 02:09:31'),
(5, 'Donat Mix', 'Dessert', 55000, '1 Box', 'uploads/1780880297_Donat_Mix.jpg', 'Donat, Dessert, Snack Manis,Mix Topping,Bakery,12 Pcs', 'Paket berisi 12 donat empuk dengan aneka topping favorit dalam satu kotak. Terdapat kombinasi rasa cokelat, keju, stroberi, matcha, tiramisu, dan sprinkle warna-warni yang cocok untuk dinikmati bersama keluarga, teman, atau saat acara spesial.', 'Tepung terigu,Gula pasir,Ragi instan,Telur,Susu,Margarin', 0, '2026-06-08 00:58:17'),
(6, 'Donat Isi Stoberi', 'Dessert', 22000, '1 Box', 'uploads/1780880499_Donat_Isi_Stoberi.jpg', 'Best Seller ,Manis,Lembut,Fresh,Dessert', 'Satu box berisi 3 donat lembut dengan isian selai stroberi yang manis dan segar. Cocok dinikmati sebagai camilan bersama teman atau keluarga.', 'Tepung terigu,Gula pasir,Ragi instan,Telur,Susu,Margarin,Selai,stroberi', 0, '2026-06-08 01:01:39'),
(7, 'Donat Coklat Glaze', 'Dessert', 9000, '1 Pcs', 'uploads/1780881926_Donat_Coklat_Glaze.jpg', 'Best Seller, Manis, Cokelat,Lembut, Dessert,', 'Donat empuk dengan lapisan glaze cokelat yang manis dan lembut. Cocok dinikmati kapan saja sebagai camilan favorit bagi pecinta cokelat.', 'Tepung terigu Gula pasir Ragi instan Telur Susu Margarin Cokelat', 0, '2026-06-08 01:25:26'),
(8, 'Donat Gula Halus', 'Dessert', 7000, '1 Pcs', 'uploads/1780882226_Donat_Gula_Halus.jpg', 'Favorit, Manis, Lembut, Klasik,Dessert', 'Donat klasik yang empuk dengan taburan gula halus yang manis dan lembut. Pilihan sederhana namun tetap menjadi favorit untuk segala usia.', 'Tepung terigu, Gula pasir, Ragi instan, Telur, Susu, Margarin, Gula, halus,', 0, '2026-06-08 01:30:26'),
(9, 'coklate cake', 'Dessert', 15000, '1 Psc', 'uploads/1780882347_coklate_cake.jpg', 'Best Seller, Manis, Cokelat, Lembut, Dessert,', 'Kue cokelat lembut dengan rasa cokelat yang kaya dan tekstur yang moist. Cocok dinikmati sebagai hidangan penutup atau teman bersantai.', 'Tepung terigu, Cokelat, Gula pasir, Telur, Susu, Mentega', 0, '2026-06-08 01:32:27'),
(10, 'Cake', 'Dessert', 12000, '1 Pcs', 'uploads/1780882452_Cake.jpg', 'Favorit,Manis, Lembut, Dessert', 'Potongan cake yang lembut dan lezat dengan tekstur ringan serta rasa manis yang pas. Cocok untuk camilan maupun hidangan penutup.', 'Tepung terigu,Gula pasir, Telur, Susu, Mentega, Baking powder', 0, '2026-06-08 01:34:12'),
(11, 'Cheesecake', 'Dessert', 18000, '1 Potong', 'uploads/1780882604_Cheesecake.jpg', 'Best Seller, Manis, Creamy, Keju, Dessert', 'Kue lembut dengan cita rasa keju yang creamy dan manis. Memiliki tekstur halus yang lumer di mulut, cocok sebagai hidangan penutup atau camilan spesial.', 'Cream cheese, Gula, pasir, Telur, Susu, Mentega, Biskuit,', 0, '2026-06-08 01:36:44'),
(12, 'Mie Goreng jawa', 'Mie & Lontong', 18000, '1 Porsi', 'uploads/1780883237_Mie_Goreng_jawa.jpg', 'Best Seller, Gurih ,Tradisional, Mengenyangkan, Pedas', 'Mie goreng khas Jawa yang dimasak dengan bumbu tradisional, dipadukan dengan sayuran segar dan telur sehingga menghasilkan cita rasa gurih dan lezat.', 'Mie kuning, Telur, Kol, Sawi, Bawang merah, Bawang putih, Kecap manis', 0, '2026-06-08 01:47:17'),
(13, 'Mie Ayam Bakso', 'Mie & Lontong', 20000, '1 Porsi', 'uploads/1780884963_Mie_Ayam_Bakso.jpg', 'Best Seller, Gurih, Hangat, Mengenyangkan, Favorit,', 'Mie kenyal yang disajikan dengan potongan ayam berbumbu gurih dan bakso sapi yang lezat. Cocok dinikmati sebagai hidangan utama yang mengenyangkan.', 'Mie kuning,Daging ayam, Bakso sapi ,Sawi, Bawang, putih, Kecap, Kaldu', 0, '2026-06-08 02:16:03'),
(14, 'Mie Aceh', 'Mie & Lontong', 22000, '1 porsi', 'uploads/1780885063_Mie_Aceh.jpg', 'Best Seller, Pedas, Gurih, Rempah, Khas, Mengenyangkan,', 'Mie khas Aceh dengan racikan bumbu rempah yang kaya rasa dan aroma menggugah selera. Disajikan dengan topping pilihan yang membuat hidangan semakin nikmat dan mengenyangkan.', 'Mie kuning Daging sapi Bawang merah Bawang putih Cabai Rempah-rempah Kol', 0, '2026-06-08 02:17:43'),
(15, 'Mie Rebus', 'Mie & Lontong', 18000, '1 Porsi', 'uploads/1780885177_Mie_Rebus.jpg', 'Favorit, Gurih, Hangat, Berkuah, Mengenyangkan,', 'Mie rebus dengan kuah gurih yang hangat dan kaya rasa. Disajikan dengan sayuran segar dan bumbu pilihan sehingga cocok dinikmati kapan saja.', 'Mie kuning,Telur, Sawi, Kol, Bawang merah, Bawang putih, Kaldu', 0, '2026-06-08 02:19:37'),
(16, 'Mie Seafood', 'Mie & Lontong', 25000, '1 Porsi', 'uploads/1780885285_Mie_Seafood.jpg', 'Best Seller, Seafood, Gurih, Premium, Mengenyangkan', 'Mie lezat yang dipadukan dengan aneka seafood segar dan bumbu gurih yang meresap. Cocok untuk pecinta hidangan laut dengan porsi yang mengenyangkan.', 'Mie kuning Udang Cumi Sawi Bawang putih Kecap Saus tiram  Tag:', 0, '2026-06-08 02:21:25'),
(17, 'Mie Goreng Spesial', 'Mie & Lontong', 24000, '1 Porsi', 'uploads/1780885414_Mie_Goreng_Spesial.jpg', 'Best Seller, Gurih, Spesial, Favorit, Mengenyangkan,', 'Mie goreng dengan racikan bumbu khas yang gurih dan nikmat, dilengkapi topping spesial yang membuat rasanya semakin istimewa. Cocok untuk menu utama yang mengenyangkan.', 'Mie kuning, Telur, Daging ayam, Sawi, Kol, Bawang putih, Kecap manis', 0, '2026-06-08 02:23:34'),
(18, 'Lontong Cap Go Meh', 'Mie & Lontong', 28000, '1 Porsi', 'uploads/1780885575_Lontong_Cap_Go_Meh.jpg', 'Best Seller, Gurih, Tradisional, Spesial, Mengenyangkan', 'Lontong khas perayaan Cap Go Meh yang disajikan dengan kuah gurih dan berbagai pelengkap pilihan. Memiliki cita rasa khas perpaduan budaya yang kaya dan mengenyangkan.', 'Lontong, Daging ayam, Telur, Santan, Labu siam, Bawang merah, Bawang putih', 0, '2026-06-08 02:26:15'),
(19, 'Lontong Sayur', 'Mie & Lontong', 15000, '1 Porsi', 'uploads/1780885735_Lontong_Sayur.jpg', 'Best Seller, Gurih, Hangat, Tradisional, Mengenyangkan', 'Lontong dengan kuah sayur santan yang gurih dan kaya rempah. Disajikan hangat dengan potongan lontong yang lembut, cocok untuk sarapan maupun makan siang.', 'Lontong, Labu siam, Santan, Bawang merah, Bawang putih, Cabai, Daun salam', 0, '2026-06-08 02:28:55'),
(20, 'Lontong Pecel', 'Mie & Lontong', 16000, '1 Porsi', 'uploads/1780885929_Lontong_Pecel.jpg', 'Best Seller, Gurih, Tradisional, Sehat, Mengenyangkan', 'Lontong yang disajikan dengan aneka sayuran segar dan siraman bumbu kacang khas yang gurih, manis, dan sedikit pedas. Cocok sebagai menu sarapan atau makan siang yang mengenyangkan.', 'Lontong Kacang tanah Kangkung Tauge Kacang panjang Cabai Gula merah', 0, '2026-06-08 02:32:09'),
(21, 'Lontong Tahu Bumbu Kacang', 'Mie & Lontong', 17000, '1 Porsi', 'uploads/1780886287_Lontong_Tahu_Bumbu_Kacang.jpg', 'Favorit, Gurih, Tradisional, Bumbu Kacang, Mengenyangkan', 'Lontong lembut yang disajikan dengan potongan tahu goreng dan siraman bumbu kacang yang gurih serta sedikit manis. Menu tradisional yang sederhana namun penuh cita rasa.', 'Lontong, Tahu, Kacang tanah, Bawang putih. Cabai. Gula merah. Kecap manis', 0, '2026-06-08 02:34:01'),
(22, 'Sate Kerang', 'Sate', 20000, '8 Tusuk', 'uploads/1780887075_Sate_Kerang.jpg', 'Seafood, Gurih, Favorit, Tradisional, Mengenyangkan', 'Sate kerang dengan bumbu khas yang meresap sempurna, menghasilkan cita rasa gurih, manis, dan sedikit pedas. Cocok sebagai hidangan utama maupun lauk pendamping.', 'Kerang,Bawang, putih, Kecap manis, Cabai', 0, '2026-06-08 02:51:15'),
(23, 'Sate Jamur', 'Sate', 18000, '10 Tusuk', 'uploads/1780887337_Sate_Jamur.jpg', 'Vegetarian, Gurih ,Sehat, Bakar, Favorit', 'ate jamur dengan bumbu gurih yang cocok untuk pecinta menu nabati.', 'Jamur tiram, Kecap manis, Bawang putih, Cabai', 0, '2026-06-08 02:55:37'),
(24, 'Sate Ayam', 'Sate', 22000, '10 Tusuk', 'uploads/1780887485_Sate_Ayam.jpg', 'Best Seller, Gurih, Bakar, Tradisional, Mengenyangkan', '10 tusuk sate ayam yang dibakar hingga matang sempurna dan disajikan dengan bumbu kacang khas yang gurih dan lezat. Cocok sebagai menu utama yang mengenyangkan.', 'Daging ayam, Kecap manis, Bawang putih, Kacang tanah,', 0, '2026-06-08 02:58:05'),
(25, 'Sate Padang', 'Sate', 25000, '10 Tusuk', 'uploads/1780887667_Sate_Padang.jpg', 'Best Seller,Rempah, Khas, Gurih, Tradisional, Mengenyangkan', 'Sate khas Sumatera Barat yang disajikan dengan kuah kental berbumbu rempah. Rasanya gurih, kaya rempah, dan sangat mengenyangkan.', 'Daging sapi, Tepung beras, Cabai, Rempah-rempah', 0, '2026-06-08 03:01:07'),
(26, 'Sate Thaichan', 'Sate', 23000, '10 Tusuk', 'uploads/1780887816_Sate_Thaichan.jpg', 'Pedas, Favorit, Bakar, Kekinian, Mengenyangkan', 'Sate ayam bakar tanpa bumbu kacang yang disajikan dengan sambal pedas dan perasan jeruk nipis. Cocok bagi pecinta makanan pedas.', 'Daging ayam, Cabai, Bawang putih, Jeruk nipis', 0, '2026-06-08 03:03:36'),
(27, 'Sate Kambing', 'Sate', 28000, '10 Tusuk', 'uploads/1780887996_Sate_Kambing.jpg', 'Favorit, Gurih, Bakar, Premium, Mengenyangkan', 'Potongan daging kambing pilihan yang dibakar hingga matang sempurna. Memiliki cita rasa gurih dengan aroma khas yang menggugah selera.', 'Daging kambing, Kecap manis, Bawang merah, Cabai', 0, '2026-06-08 03:06:36'),
(28, 'Sate Sapi', 'Sate', 30000, '10 Tusuk', 'uploads/1780888139_Sate_Sapi.jpg', 'Premium, Gurih, Bakar, Favorit, Mengenyangkan', 'Sate dari daging sapi berkualitas yang dibakar dengan bumbu spesial. Teksturnya empuk dan kaya rasa sehingga cocok untuk pecinta olahan daging.', 'Daging sapi,Kecap manis, Bawang putih, Cabai', 0, '2026-06-08 03:08:59'),
(29, 'Sate Maranggi', 'Sate', 27000, '10 Tusuk', 'uploads/1780888275_Sate_Maranggi.jpg', 'Tradisional, Gurih, Bakar, Favorit, Mengenyangkan', 'Sate khas Purwakarta yang menggunakan bumbu marinasi khas sehingga menghasilkan rasa manis, gurih, dan aroma yang khas saat dibakar.', 'Daging sapi,Ketumbar, Bawang putih, Kecap manis', 0, '2026-06-08 03:11:15'),
(30, 'Ayam Bakar', 'Ayam & Bebek', 75000, '1 Ayam Utuh', 'uploads/1780888849_Ayam_Bakar.jpg', 'Best Seller, Bakar, Gurih, Favorit Mengenyangkan', 'Ayam yang dimarinasi dengan bumbu khas kemudian dibakar hingga matang sempurna. Proses pembakaran menghasilkan aroma yang menggugah selera dengan perpaduan rasa manis dan gurih yang meresap hingga ke dalam daging.', 'Daging ayam, Kecap manis, Bawang putih, Ketumbar, Gula merah, Garam', 0, '2026-06-08 03:20:49'),
(31, 'Ayam Goreng', 'Ayam & Bebek', 18000, '1 Potong', 'uploads/1780888987_Ayam_Goreng.jpg', 'Best Seller, Gurih, Crispy, Tradisional, Mengenyangkan', 'Ayam goreng yang dibumbui dengan rempah-rempah pilihan dan dimarinasi hingga meresap ke dalam daging. Digoreng hingga berwarna keemasan dengan tekstur renyah di bagian luar serta daging yang tetap lembut dan juicy di bagian dalam. Cocok dinikmati bersama nasi hangat dan sambal.', 'Daging ayam, Bawang putih, Ketumba,r Kunyi,t Garam, Minyak goreng', 0, '2026-06-08 03:23:07'),
(32, 'Ayam Rica-rica', 'Ayam & Bebek', 24000, '1 Porsi', 'uploads/1780889517_Ayam_Rica_rica.jpg', 'Pedas, Rempah, Khas Gurih, Favorit, Mengenyangkan', 'Hidangan ayam khas Manado yang dimasak dengan bumbu rica-rica yang kaya akan cabai dan rempah. Menghasilkan rasa pedas, gurih, dan aroma rempah yang kuat sehingga sangat cocok untuk pecinta makanan berbumbu.', 'Daging ayam, Cabai merah, Bawang merah, Bawang putih, Jahe Serai', 0, '2026-06-08 03:31:57'),
(33, 'Ayam Geprek', 'Ayam & Bebek', 22000, '1 Porsi', 'uploads/1780889938_Ayam_Geprek.jpg', 'Pedas ,Best Seller,Crispy ,Favorit, Mengenyangkan', 'Ayam goreng tepung yang renyah kemudian digeprek bersama sambal pedas khas. Perpaduan tekstur crispy dan sambal yang menggigit menjadikan menu ini favorit bagi pecinta makanan pedas.', 'Daging ayam, Tepung terigu, Cabai, Bawang putih ,Garam, Minyak, goreng', 0, '2026-06-08 03:38:58'),
(34, 'Bebek bakar', 'Ayam & Bebek', 30000, '1 Porsi', 'uploads/1780890095_Bebek_bakar.jpg', 'Daging bebek, Kecap manis, Bawang putih, Ketumbar, Gula merah, Garam', 'Daging bebek yang dimarinasi dengan bumbu rempah dan kecap kemudian dibakar hingga matang. Menghasilkan aroma bakaran yang khas dengan rasa gurih dan sedikit manis yang meresap sempurna.', 'Daging bebek, Kecap manis, Bawang putih, Ketumbar, Gula merah, Garam', 0, '2026-06-08 03:41:35'),
(35, 'Bebek Goreng', 'Ayam & Bebek', 28000, '1 Porsi', 'uploads/1780890201_Bebek_Goreng.jpg', 'Best Seller, Gurih, Tradisional, Premium, Mengenyangkan', 'Bebek yang dimasak dengan bumbu rempah pilihan hingga empuk kemudian digoreng sampai renyah. Memiliki cita rasa gurih yang khas dan sangat cocok disajikan bersama sambal dan lalapan.', 'Daging bebek Bawang putih Ketumbar Kunyit Garam Minyak goreng', 0, '2026-06-08 03:43:21'),
(36, 'Seafood Tumpah', 'Seafood', 95000, '1 Porsi Besar', 'uploads/1780890712_Seafood_Tumpah.jpg', 'Best Seller, Seafood, Premium, Porsi Besar, Cocok untuk Sharing', 'Seafood Tumpah adalah hidangan seafood berlimpah yang disajikan langsung di atas alas saji dengan berbagai jenis makanan laut segar seperti udang, cumi, kerang, dan kepiting yang dilumuri saus spesial. Memiliki cita rasa gurih, pedas, dan sedikit manis yang meresap ke setiap bahan. Cocok dinikmati bersama keluarga atau teman karena porsinya besar dan dapat disantap bersama-sama.', 'Udang, Cumi, Kerang, Kepiting, Jagung, Bawang putih, Saus tiram', 0, '2026-06-08 03:51:52'),
(37, 'Udang & Cumi Saus Padang', 'Seafood', 38000, '1 Porsi', 'uploads/1780890848_Udang___Cumi_Saus_Padang.jpg', 'Best Seller, Seafood ,Pedas, Gurih, Mengenyangkan', 'Perpaduan udang dan cumi segar yang dimasak dengan saus Padang khas yang kaya rempah dan cita rasa pedas gurih. Seafood yang lembut dipadukan dengan saus yang meresap sempurna menciptakan hidangan yang lezat, menggugah selera, dan cocok dinikmati bersama nasi hangat.', 'Udang ,Cum,i Cabai, Bawang putih, Bawang bombai ,Saus tomat, Saus cabai', 0, '2026-06-08 03:54:08'),
(38, 'Cumi Cincin Crispy', 'Seafood', 28000, '1 Porsi', 'uploads/1780890988_Cumi_Cincin_Crispy.jpg', 'Best Seller, Seafood, Crispy ,Gurih, Favorit', 'Cumi segar yang dipotong berbentuk cincin, dibalut tepung berbumbu, lalu digoreng hingga berwarna keemasan. Memiliki tekstur renyah di luar dan lembut di dalam, menjadikannya camilan maupun lauk yang lezat untuk dinikmati kapan saja.', 'Cumi, Tepung terigu ,Bawang putih, Merica, Garam, Minyak goreng', 0, '2026-06-08 03:56:28'),
(39, 'Oyster Sambal Thailand', 'Seafood', 38000, '1 Porsi', 'uploads/1780891107_Oyster_Sambal_Thailand.jpg', 'Seafood, Pedas, Segar, Premium, Khas, Thailand', 'Tiram segar yang disajikan dengan sambal khas Thailand yang memiliki perpaduan rasa pedas, asam, dan segar. Cocok bagi pecinta seafood yang ingin menikmati cita rasa khas Asia Tenggara yang unik dan menggugah selera.', 'Tiram (Oyster), Cabai, Bawang putih, Jeruk nipis, Daun ketumbar, Saus ikan', 0, '2026-06-08 03:58:27'),
(40, 'Kopi Hitam', 'Kopi Kekinian', 10000, '250 ml', 'uploads/1780891618_Kopi_Hitam.jpg', 'Best Seller, Klasik, Aromatik, Hangat, Favorit', 'Kopi hitam yang diseduh dari biji kopi pilihan dengan aroma khas dan cita rasa yang kuat. Cocok untuk menemani aktivitas sehari-hari.', 'Biji kopi, Air panas', 0, '2026-06-08 04:06:58'),
(41, 'Latte Art', 'Kopi Kekinian', 18000, '350 ml', 'uploads/1780891877_Latte_Art.jpg', 'LembLembut ,Creamy ,Premium, Favorit ,Hangat', 'Minuman kopi dengan campuran susu yang lebih dominan sehingga menghasilkan rasa yang lembut dan mudah dinikmati oleh semua kalangan.', 'Espresso, Susu, Foam susu', 0, '2026-06-08 04:11:17'),
(42, 'Kopi Susu', 'Kopi Kekinian', 15000, '350 ml', 'uploads/1780892187_Kopi_Susu.jpg', 'Best Seller, Manis, Creamy, Favorit, Hangat', 'Perpaduan kopi dan susu yang menghasilkan rasa manis, gurih, dan nikmat. Cocok untuk dinikmati kapan saja.', 'Kopi, Susu, Gula', 0, '2026-06-08 04:16:27'),
(43, 'Jus Mangga', 'Minuman Lain', 14000, '1 cup', 'uploads/1780892331_Jus_Mangga.jpg', 'Best Seller, Segar, Manis, Sehat, Favorit', 'Jus mangga segar yang dibuat dari buah mangga pilihan dengan rasa manis alami dan tekstur yang lembut. Disajikan dingin sehingga cocok untuk menyegarkan tubuh dan menemani berbagai hidangan.', 'Mangga ,Gula, Ai,r Es batu', 0, '2026-06-08 04:18:51'),
(44, 'Es Teh Manis', 'Minuman Lain', 6000, '1 Gelas', 'uploads/1780892520_Es_Teh_Manis.jpg', 'Best Seller, Segar, Manis, Favorit, Dingin', 'Minuman teh manis yang disajikan dingin dan menyegarkan. Cocok dinikmati bersama berbagai menu makanan.', 'Teh, Gula, Es batu', 0, '2026-06-08 04:22:00'),
(45, 'Matcha', 'Minuman Lain', 18000, '1 Cup', 'uploads/1780892821_Matcha.jpg', 'Best Seller, Creamy, Manis, Kekinian, Favorit', 'Minuman matcha dengan perpaduan susu yang creamy dan rasa teh hijau khas Jepang yang lembut. Memiliki aroma yang menenangkan serta rasa manis yang pas, cocok dinikmati dalam keadaan dingin maupun hangat.', 'Bubuk matcha, Susu, Gula, Air', 0, '2026-06-08 04:27:01'),
(46, 'Roti Bakar', 'Jajanan', 15000, '1 Porsi', 'uploads/1780892980_Roti_Bakar.jpg', 'Best Seller, Manis, Lumer, Camilan, Favorit', 'Roti bakar dengan tekstur renyah di luar dan lembut di dalam, dipadukan dengan isian cokelat yang manis dan lumer. Cocok dinikmati sebagai camilan maupun teman minum kopi atau teh.', 'Roti tawar, Cokelat, Margarin ,Susu', 0, '2026-06-08 04:29:40'),
(47, 'Tumis Kangkung', 'Sayur', 14000, '1 Porsi', 'uploads/1780893163_Tumis_Kangkung.jpg', 'Best Seller, Sehat ,Gurih, Sayuran, Favorit', 'Tumis kangkung yang dimasak dengan bumbu sederhana namun kaya rasa. Kangkung segar ditumis hingga matang dengan perpaduan bawang dan cabai yang menghasilkan cita rasa gurih, sedikit pedas, dan sangat cocok sebagai pelengkap berbagai hidangan utama.', 'Kangkung, Bawang putih, Bawang merah, Cabai, Garam, Saus tiram', 0, '2026-06-08 04:32:43'),
(48, 'Nasi', 'Nasi', 5000, '1 Porsi', 'uploads/1780893241_Nasi.jpg', 'Tambahan, Pulen, Hangat ,Mengenyangkan, Favorit', 'Seporsi nasi putih hangat dengan tekstur pulen dan lembut. Cocok sebagai tambahan untuk menemani berbagai menu makanan agar lebih mengenyangkan.', 'Beras, Air', 0, '2026-06-08 04:34:01'),
(49, 'Sop Tulang', 'Soto & Sup', 28000, '1 Porsi', 'uploads/1780893686_Sop_Tulang.jpg', 'Best Seller ,Berkuah ,Gurih, Hangat, Mengenyangkan', 'Sop tulang dengan kuah kaldu yang gurih dan kaya rasa, dimasak bersama rempah-rempah pilihan hingga menghasilkan aroma yang menggugah selera. Tulang dan daging yang empuk membuat hidangan ini cocok dinikmati saat makan siang maupun malam bersama nasi hangat.', 'Tulang sapi, Daging sapi, Worte,l Kentang, Bawang putih, Merica ,Seledri', 0, '2026-06-08 04:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `total` int(11) NOT NULL DEFAULT 0,
  `method` varchar(50) NOT NULL DEFAULT '',
  `mode` varchar(20) NOT NULL DEFAULT '',
  `customer_name` varchar(100) NOT NULL DEFAULT '',
  `address` text DEFAULT NULL,
  `status` enum('pending','paid','done','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `items`, `total`, `method`, `mode`, `customer_name`, `address`, `status`, `created_at`) VALUES
(1, '#BT-96915', '[{\"name\":\"Nasi Goreng Spesial\",\"qty\":1,\"price\":28000,\"cat\":\"Nasi\"},{\"name\":\"Nasi Bakar\",\"qty\":1,\"price\":25000,\"cat\":\"Nasi\"}]', 58300, 'QRIS', 'Dine In · Meja 1', 's', '', 'paid', '2026-06-04 04:11:36'),
(2, '#BT-61577', '[{\"name\":\"Nasi Goreng Spesial\",\"qty\":1,\"price\":28000,\"cat\":\"Nasi\"}]', 30800, 'DANA', 'Dine In · Meja 1', 'hajaj', '', 'paid', '2026-06-04 06:11:01'),
(3, '#BT-87256', '[{\"name\":\"Nasi Goreng Spesial\",\"qty\":1,\"price\":28000,\"cat\":\"Nasi\"},{\"name\":\"Nasi Goreng Padang\",\"qty\":1,\"price\":30000,\"cat\":\"Nasi\"}]', 58000, 'Tunai', 'Delivery · ppp', '1', 'ppp', 'done', '2026-06-04 06:18:07'),
(4, '#BT-67073', '[{\"name\":\"Nasi Bakar\",\"qty\":1,\"price\":25000,\"cat\":\"Nasi\"}]', 25000, 'Tunai', 'Delivery · Bondo', 'Levi', 'Bondo', 'done', '2026-06-04 06:31:08'),
(5, '#BT-13247', '[{\"name\":\"Nasi Goreng Spesial\",\"qty\":1,\"price\":28000,\"cat\":\"Nasi\"}]', 30800, 'Tunai', 'Dine In · Meja 1', 'as', '', 'done', '2026-06-04 06:38:33'),
(6, '#BT-50608', '[{\"name\":\"Nasi Goreng Spesial\",\"qty\":1,\"price\":18000,\"cat\":\"Nasi\"},{\"name\":\"Donat Isi Stoberi\",\"qty\":1,\"price\":22000,\"cat\":\"Dessert\"},{\"name\":\"coklate cake\",\"qty\":1,\"price\":15000,\"cat\":\"Dessert\"},{\"name\":\"Mie Rebus\",\"qty\":1,\"price\":18000,\"cat\":\"Mie & Lontong\"},{\"name\":\"Sate Ayam\",\"qty\":1,\"price\":22000,\"cat\":\"Sate\"},{\"name\":\"Ayam Rica-rica\",\"qty\":1,\"price\":24000,\"cat\":\"Ayam & Bebek\"},{\"name\":\"Kopi Susu\",\"qty\":1,\"price\":15000,\"cat\":\"Kopi Kekinian\"},{\"name\":\"Matcha\",\"qty\":1,\"price\":18000,\"cat\":\"Minuman Lain\"},{\"name\":\"Roti Bakar\",\"qty\":1,\"price\":15000,\"cat\":\"Jajanan\"},{\"name\":\"Nasi\",\"qty\":1,\"price\":5000,\"cat\":\"Nasi\"}]', 172000, 'QRIS', 'Delivery · jepara', 'rara', 'jepara', 'done', '2026-06-08 04:44:10'),
(7, '#BT-01536', '[{\"name\":\"Nasi Goreng Spesial\",\"qty\":1,\"price\":18000,\"cat\":\"Nasi\"},{\"name\":\"Nasi Goreng Padang\",\"qty\":1,\"price\":30000,\"cat\":\"Nasi\"},{\"name\":\"Donat Coklat Glaze\",\"qty\":1,\"price\":9000,\"cat\":\"Dessert\"},{\"name\":\"coklate cake\",\"qty\":1,\"price\":15000,\"cat\":\"Dessert\"},{\"name\":\"Cake\",\"qty\":1,\"price\":12000,\"cat\":\"Dessert\"},{\"name\":\"Lontong Tahu Bumbu Kacang\",\"qty\":1,\"price\":17000,\"cat\":\"Mie & Lontong\"}]', 111100, 'GoPay', 'Dine In · Meja 2', '0', '', 'done', '2026-06-08 04:45:01'),
(8, '#BT-68336', '[{\"name\":\"Mie Goreng Spesial\",\"qty\":1,\"price\":24000,\"cat\":\"Mie & Lontong\"},{\"name\":\"Lontong Pecel\",\"qty\":1,\"price\":16000,\"cat\":\"Mie & Lontong\"},{\"name\":\"Sate Thaichan\",\"qty\":1,\"price\":23000,\"cat\":\"Sate\"},{\"name\":\"Udang & Cumi Saus Padang\",\"qty\":1,\"price\":38000,\"cat\":\"Nasi\"}]', 111100, 'Tunai', 'Dine In · Meja 1', 'q', '', 'done', '2026-06-08 04:46:08'),
(9, '#BT-20416', '[{\"name\":\"Nasi Goreng Spesial\",\"qty\":1,\"price\":18000,\"cat\":\"Nasi\"},{\"name\":\"Nasi Bakar\",\"qty\":1,\"price\":25000,\"cat\":\"Nasi\"}]', 47300, 'Tunai', 'Dine In · Meja 1', 'a', '', 'done', '2026-06-08 04:55:20'),
(10, '#BT-18170', '[{\"name\":\"Nasi\",\"qty\":1,\"price\":5000,\"cat\":\"Nasi\"},{\"name\":\"Sop Tulang\",\"qty\":1,\"price\":28000,\"cat\":\"Soto & Sup\"}]', 36300, 'Tunai', 'Dine In · Meja 1', 'andin', '', 'done', '2026-06-08 05:16:57'),
(11, '#BT-69593', '[{\"name\":\"Donat Isi Stoberi\",\"qty\":1,\"price\":22000,\"cat\":\"Dessert\"},{\"name\":\"coklate cake\",\"qty\":1,\"price\":15000,\"cat\":\"Dessert\"},{\"name\":\"Sate Thaichan\",\"qty\":1,\"price\":23000,\"cat\":\"Sate\"},{\"name\":\"Sate Kambing\",\"qty\":1,\"price\":28000,\"cat\":\"Sate\"},{\"name\":\"Matcha\",\"qty\":1,\"price\":18000,\"cat\":\"Minuman Lain\"}]', 116600, 'QRIS', 'Dine In · Meja 1', 'jepa imut', '', 'done', '2026-06-08 05:19:28'),
(12, '#BT-95574', '[{\"name\":\"Nasi Goreng Spesial\",\"qty\":2,\"price\":18000,\"cat\":\"Nasi\"}]', 39600, 'Tunai', 'Dine In · Meja 1', 'K', '', 'done', '2026-06-08 06:01:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admin` (`admin_id`),
  ADD KEY `idx_action` (`action`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created` (`created_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
