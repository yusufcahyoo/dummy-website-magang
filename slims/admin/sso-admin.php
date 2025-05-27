<?php
define('INDEX_AUTH', 1);
ini_set('display_errors', 1);
error_reporting(E_ALL);
session_start();

require_once '../sysconfig.inc.php';
require '../vendor/autoload.php';

use Firebase\JWT\JWT;
use Firebase\JWT\Key;

$slims_db = new mysqli('localhost', 'root', '', 'perpustakaan');
if ($slims_db->connect_error) {
    die('Koneksi gagal: ' . $slims_db->connect_error);
}
$slims_db->set_charset('utf8mb4');

// Ambil hak akses berdasarkan grup
function get_user_privileges($group_ids, $db)
{
    $priv = [];
    $group_ids = (array) $group_ids;

    $mod_result = $db->query('SELECT module_id, module_path FROM mst_module');
    $module_map = [];
    while ($row = $mod_result->fetch_assoc()) {
        $module_map[$row['module_id']] = $row['module_path'];
    }

    $stmt = $db->prepare('SELECT module_id, r, w, menus FROM group_access WHERE group_id = ?');
    foreach ($group_ids as $group_id) {
        $stmt->bind_param('s', $group_id);
        $stmt->execute();
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            $path = $module_map[$row['module_id']] ?? null;
            if (!$path) continue;

            $menus = json_decode($row['menus'], true) ?? [];
            if (json_last_error() !== JSON_ERROR_NONE) {
                file_put_contents(__DIR__ . '/menus_error.log', "{$group_id}: {$row['menus']}\n", FILE_APPEND);
                $menus = [];
            }

            if (!isset($priv[$path])) {
                $priv[$path] = ['r' => 0, 'w' => 0, 'menus' => []];
            }

            $priv[$path]['r'] |= (int) $row['r'];
            $priv[$path]['w'] |= (int) $row['w'];
            $priv[$path]['menus'] = array_unique(array_merge($priv[$path]['menus'], $menus));
        }
    }
    $stmt->close();
    return $priv;
}

// Login otomatis via username
function auto_login($username, $db)
{
    $stmt = $db->prepare('SELECT * FROM user WHERE username = ? LIMIT 1');
    $stmt->bind_param('s', $username);
    $stmt->execute();
    $user = $stmt->get_result()->fetch_assoc();
    $stmt->close();

    if (!$user) return false;

    $group_id = (int) ($user['group_id'] ?? 1);
    $groups = @unserialize($user['groups']);
    $groups = is_array($groups) ? $groups : [$group_id];

    $privileges = get_user_privileges($groups, $db);
    $modules = array_keys($privileges);
    if (!$modules) {
        $default = ['bibliography', 'circulation', 'reporting', 'master_file'];
        foreach ($default as $mod) {
            $privileges[$mod] = ['r' => 1, 'w' => 1, 'menus' => []];
        }
        $modules = $default;
    }

    // Set session
    $_SESSION = array_merge($_SESSION, [
        'uid' => (int) $user['user_id'],
        'uname' => $user['username'],
        'realname' => $user['realname'],
        'email' => $user['email'],
        'user_type' => $user['user_type'] ?? 1,
        'log_in' => 1,
        'logintime' => time(),
        'groups' => array_map('intval', $groups),
        'modules' => array_unique($modules),
        'priv' => $privileges,
        'checksum' => md5(($_SERVER['SERVER_ADDR'] ?? gethostbyname($_SERVER['SERVER_NAME'])) . (defined('SB') ? SB : 'simply_liberate') . 'admin')
    ]);

    // Cookie login
    setcookie('admin_logged_in', '1', [
        'expires' => time() + 3600,
        'path' => defined('SWB') ? SWB : '/',
        'secure' => false,
        'httponly' => true,
        'samesite' => 'Lax',
    ]);

    file_put_contents(__DIR__ . '/session_debug.txt', print_r($_SESSION, true));
    return true;
}

// Ambil token dari URL
$jwt = $_GET['token'] ?? null;
if (!$jwt) {
    http_response_code(400);
    exit('Token kosong');
}

$publicKeyPath = 'C:/xampp/htdocs/SS/dummy-website-magang/nama_proyek/storage/keys/public.pem';
if (!file_exists($publicKeyPath)) {
    http_response_code(500);
    exit('Public key tidak ditemukan');
}

try {
    $decoded = JWT::decode($jwt, new Key(file_get_contents($publicKeyPath), 'RS256'));
    $username = $decoded->name ?? null;

    if (!$username) throw new Exception('Username kosong di token');

    $_SESSION['token'] = $jwt;

    if (!auto_login($username, $slims_db)) {
        http_response_code(401);
        exit('User tidak ditemukan');
    }

    session_write_close();
    header('Location: ../admin/index.php');
    exit();
} catch (Exception $e) {
    error_log('SSO Error: ' . $e->getMessage());
    http_response_code(401);
    exit('Token tidak valid: ' . $e->getMessage());
}
