<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;

// 🏠 Halaman Utama (Redirect ke home jika sudah login, ke login jika belum)
Route::get('/', function () {
    return Auth::check() ? redirect('/home') : redirect('/login');
});

// 🔑 Halaman Login
Route::get('/login', [AuthController::class, 'showLoginForm'])->middleware('guest')->name('login.form');
Route::post('/login', [AuthController::class, 'login'])->name('login');

// 🔐 Halaman Register
Route::get('/register', [AuthController::class, 'showRegisterForm'])->middleware('guest')->name('register.form');
Route::post('/register', [AuthController::class, 'register'])->name('register');

// 🔓 Logout (Keluar dari akun)
Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth')->name('logout');

// 🏠 Halaman Home (Hanya Bisa Diakses Jika Sudah Login)
Route::get('/home', function () {
    return view('home');
})->middleware('auth')->name('home');

// 🎉 Halaman Welcome (Hanya Bisa Diakses Jika Sudah Login)
Route::get('/welcome', function () {
    return view('welcome');
})->middleware('auth')->name('welcome');
