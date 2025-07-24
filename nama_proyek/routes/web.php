<?php

use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\Request;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SummaryController;
use App\Http\Controllers\BiblioController;

// 🏠 Halaman Utama
Route::get('/', function () {
    return Auth::check() ? redirect('/home') : redirect('/login');
});

// 🔑 Halaman Login User
Route::get('/login', [AuthController::class, 'showLoginForm'])->middleware('guest')->name('login.form');
Route::post('/login', [AuthController::class, 'login'])->name('login');

// 🔐 Halaman Register User
Route::get('/register', [AuthController::class, 'showRegisterForm'])->middleware('guest')->name('register.form');
Route::post('/register', [AuthController::class, 'register'])->name('register');

// 🔓 Logout User
Route::post('/logout', [AuthController::class, 'logoutUser'])->name('logout');

// 🔑 Login Admin
Route::get('admin/loginAdmin', [AuthController::class, 'showLoginAdmin'])->middleware('guest')->name('admin.login.form');
Route::post('admin/loginAdmin', [AuthController::class, 'loginAdmin'])->name('admin.login');

// 🔐 Register Admin
Route::get('admin/registerAdmin', [AuthController::class, 'showRegisterAdmin'])->middleware('guest')->name('admin.register.form');
Route::post('admin/registerAdmin', [AuthController::class, 'registerAdmin'])->name('admin.register');

// 🔓 Logout Admin
Route::post('/admin/logout', [AuthController::class, 'logoutAdmin'])->name('admin.logout');

// 🏠 Home Admin
Route::middleware(['auth:admin'])->group(function () {
    Route::get('/admin/homeAdmin', [AuthController::class, 'homeAdmin'])->name('admin.home');
});

// 🏠 Home User
Route::middleware(['auth'])->group(function () {
    Route::get('/home', [AuthController::class, 'home'])->name('home');
});

// 🔄 SSO ke SLiMS untuk User
Route::get('/sso-to-slims', function (Request $request) {
    $jwt = Cookie::get('jwt_token');

    if (!$jwt) {
        return redirect('/home')->with('error', 'Silakan login terlebih dahulu.');
    }

    $slimsUrl = "http://localhost/SS/slims/sso-login.php?token={$jwt}";
    Log::info("Redirecting to SLiMS SSO: $slimsUrl");

    return redirect($slimsUrl);
});

// 🔄 SSO ke SLiMS untuk Admin
Route::get('/admin-sso-to-slims', function (Request $request) {
    $jwt = Cookie::get('jwt_token');

    if (!$jwt) {
        return redirect('/homeAdmin')->with('error', 'Silakan login sebagai admin terlebih dahulu.');
    }

    $slimsAdminUrl = "http://localhost/SS/slims/admin/sso-admin.php?token={$jwt}";
    Log::info("Redirecting ADMIN to SLiMS Admin SSO: $slimsAdminUrl");

    return redirect($slimsAdminUrl);
})->name('admin.sso');

// ✅ Endpoint untuk menerima SSO Login
Route::middleware('cors')->group(function () {
    Route::post('/sso-login', [AuthController::class, 'ssoLogin'])->name('sso.login');
});
Route::post('/user/summary', [SummaryController::class, 'postSummary'])->middleware('auth');
Route::post('/api/summary', [SummaryController::class, 'fetchLoanSummary']);

Route::post('/api/biblio/popular', [BiblioController::class, 'popular']);
Route::post('/api/biblio/all', [BiblioController::class, 'all']);

Route::middleware(['auth:admin'])->group(function () {
    Route::post('/admin/homeAdmin', [SummaryController::class, 'postSummaryAll'])->name('admin.home.post');
});

