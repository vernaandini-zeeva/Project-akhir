<?php
session_start();

 $DB_HOST = 'localhost';
 $DB_NAME = 'bite_db';
 $DB_USER = 'root';
 $DB_PASS = '';

 $pdo = null;
 $pdoErr = '';

try {
    $pdo = new PDO("mysql:host=$DB_HOST;dbname=$DB_NAME;charset=utf8mb4", $DB_USER, $DB_PASS, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch(PDOException $e) {
    $pdoErr = $e->getMessage();
}