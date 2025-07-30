<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

define('INDEX_AUTH', 1);

require_once __DIR__ . '/../sysconfig.inc.php';
require __DIR__ . '/../vendor/autoload.php';

use Firebase\JWT\JWT;
use Firebase\JWT\Key;

session_start();

function auto_login($username) {
    global $dbs;

    if (empty($username)) {
        error_log("SSO Error: Empty username");
        return false;
    }

    $safe_username = $dbs->real_escape_string($username);
    
    try {
        $query = $dbs->query("SELECT * FROM user WHERE username = '{$safe_username}' LIMIT 1");

        if ($query && $query->num_rows > 0) {
            $user = $query->fetch_assoc();

            $_SESSION['uid'] = $user['user_id'];
            $_SESSION['realname'] = $user['realname']; 
            $_SESSION['uname'] = $user['username'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['user_type'] = $user['user_type'];
            $_SESSION['log_in'] = 1;
            $_SESSION['logintime'] = time();
            $_SESSION['priv'] = ($user['user_type'] == 1) ? ['*'] : [];
            
            $server_addr = $_SERVER['SERVER_ADDR'] ?? gethostbyname($_SERVER['SERVER_NAME']);
            $sb_value = defined('SB') ? SB : 'default_sb'; // Default value if SB is not defined
            $_SESSION['checksum'] = md5($server_addr . $sb_value . 'admin');
            $_SESSION['remember_me'] = true;

            // Debugging checksum in sso-login.php
            //echo '<pre>';
            //echo 'Session checksum being set: ' . $_SESSION['checksum'] . PHP_EOL;
            //echo 'Server address: ' . $server_addr . PHP_EOL;
            //echo 'SB value: ' . (defined('SB') ? SB : 'SB not defined') . PHP_EOL;
            //echo '</pre>';
            //die();

            $swb_value = defined('SWB') ? SWB : '/'; // Default value if SWB is not defined
            setcookie('admin_logged_in', true, [
                'expires' => time() + 3600,
                'path' => $swb_value,
                'secure' => false,
                'httponly' => true,
                'samesite' => 'Lax'
            ]);

            return true;
        } else {
            error_log("SSO Error: User not found for username '{$safe_username}'");
        }
        return false;
    } catch (Exception $e) {
        error_log("SSO DB Error: " . $e->getMessage());
        return false;
    }
}

$jwt = $_GET['token'] ?? null;
if (!$jwt) {
    header('HTTP/1.0 400 Bad Request');
    die('No token provided');
}

$publicKeyPath = 'C:/xampp/htdocs/SS/dummy-website-magang/nama_proyek/storage/keys/public.pem';
if (!file_exists($publicKeyPath)) {
    header('HTTP/1.0 500 Internal Server Error');
    die('Public key not found');
}

try {
    $publicKey = file_get_contents($publicKeyPath);
    $decoded = JWT::decode($jwt, new Key($publicKey, 'RS256'));
    
    $username = $decoded->name ?? null;
    if (!$username) {
        throw new Exception('Username missing in token');
    }

    if (auto_login($username)) {
        $_SESSION['sso_message'] = 'SSO login successful';
        header('Location: ' . (defined('SWB') ? SWB : '/') . 'index.php?p=login');
        exit;
    } else {
        header('HTTP/1.0 401 Unauthorized');
        die('User not found');
    }
} catch (Exception $e) {
    error_log("SSO Error: " . $e->getMessage());
    header('HTTP/1.0 401 Unauthorized');
    die('Invalid token: ' . $e->getMessage());
}