<?php

/**
 * Custom API Router for SLiMS
 */

require_once __DIR__ . '/../../sysconfig.inc.php'; // ini penting untuk $sysconf dan $dbs

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405); // Method Not Allowed
    header('Content-Type: application/json');
    echo json_encode(['error' => 'Method Not Allowed. Use POST']);
    exit();
}

$header = getallheaders();

if (isset($header['SLiMS-Http-Cache']) || isset($header['slims-http-cache'])) {
    if ($sysconf['http']['cache']['lifetime'] > 0) {
        header(
            'Cache-Control: max-age=' . $sysconf['http']['cache']['lifetime']
        );
    }
}

// Controller loader
require_once __DIR__ . '/controllers/BiblioController.php';
require_once __DIR__ . '/controllers/LoanController.php';
// tambah controller lain jika perlu

// Parse route
$request = $_POST['p'] ?? ''; // pastikan URL pakai ?p=...

$x_api_key = $header['x-api-key'] ?? null;

if ($x_api_key == "682c2217-9640-8013-b99e-e8087ab0593c"){
    switch ($request) {
        case 'api/biblio/popular':
            $controller = new BiblioController($sysconf, $dbs);
            $controller->getPopular();
            break;

        case 'api/biblio/all':
            $controller = new BiblioController($sysconf, $dbs);
            $controller->getAll();
            break;

        case 'api/loan/summary':
            $controller = new LoanController($sysconf, $dbs);
            $controller->getSummary();
            break;

        default:
            http_response_code(404);
            echo json_encode(['error' => 'Not Found']);
            break;
    }
} else {
    echo json_encode(['error' => 'invalid api key']);
}

exit();
