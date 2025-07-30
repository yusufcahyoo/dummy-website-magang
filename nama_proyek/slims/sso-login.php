<?php

require __DIR__ . '/vendor/autoload.php';
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

// session_start();

// 🔹 Konfigurasi kunci publik dari Laravel
$publicKeyPath = 'C:/xampp/htdocs/SS/dummy-website-magang/nama_proyek/storage/keys/public.pem';
if (!file_exists($publicKeyPath)) {
    die('Error: Public key not found');
}
$publicKey = file_get_contents($publicKeyPath);

// 🔹 Ambil token dari parameter URL
if (!isset($_GET['token'])) {
    die('Error: Token not provided');
}
$token = $_GET['token'];

try {
    // 🔹 Verifikasi dan decode token JWT
    $decoded = JWT::decode($token, new Key($publicKey, 'RS256'));

    // 🔹 Pastikan token memiliki data email & name
    if (!isset($decoded->email) || !isset($decoded->name)) {
        die('Error: Invalid token payload');
    }

    // 🔹 Simpan data user dari token
    $email = $decoded->email;
    $name = $decoded->name;

    // 🔹 Koneksi ke database SLiMS
    $dbHost = 'localhost';
    $dbName = 'perpustakaan'; // Sesuaikan dengan database SLiMS
    $dbUser = 'root';
    $dbPass = ''; // Sesuaikan dengan password database
    $pdo = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // 🔹 Cek apakah email sudah ada di database SLiMS
    $stmt = $pdo->prepare("SELECT member_id, member_name FROM member WHERE member_email = ?");
    $stmt->execute([$email]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$user) {
        // 🔹 Jika belum ada, buat akun baru di SLiMS
        $stmt = $pdo->prepare("INSERT INTO member (member_name, email, input_date) VALUES (?, ?, NOW())");
        $stmt->execute([$name, $email]);
        $member_id = $pdo->lastInsertId();
    } else {
        $member_id = $user['member_id'];
        $name = $user['member_name'];
    }

    // 🔹 Set session SLiMS agar user dianggap login
    $_SESSION['mid'] = $member_id;
    $_SESSION['user_logged_in'] = true;
    $_SESSION['m_name'] = $user['member_name'];
    $_SESSION['m_email'] = $user['member_email'];
    $_SESSION['m_expire_date'] = $user['expire_date'];
    $_SESSION['m_logintime'] = time();
    $_SESSION['m_member_type_id'] = $user['member_type_id'];
    $_SESSION['m_member_type'] = 'Standard';
    $_SESSION['m_register_date'] = $user['register_date'];
    $_SESSION['m_is_expired'] = false;
    $_SESSION['m_mark_biblio'] = [];
    $_SESSION['m_can_reserve'] = 1;
    $_SESSION['m_reserve_limit'] = 5;

    // 🔹 Redirect ke halaman member SLiMS setelah login
    header('Location: index.php?p=member');
    exit();
} catch (Exception $e) {
    die('Error: Invalid token - ' . $e->getMessage());
}
?>
