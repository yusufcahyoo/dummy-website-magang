<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Admin;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Cookie;
use App\Helpers\JwtHelper;

class AuthController extends Controller
{
    // 🟢 Menampilkan Form Login Admin
    public function showLoginAdmin()
    {
        return view('admin.loginAdmin');
    }

    // 🟢 Menampilkan Form Register Admin
    public function showRegisterAdmin()
    {
        return view('admin.registerAdmin');
    }

    // 🟢 Fungsi Register Admin
    public function registerAdmin(Request $request)
    {
        $request->validate([
            'name' => 'required|string|unique:admins,name',
            'email' => 'required|email|unique:admins,email',
            'password' => 'required|min:3',
        ]);

        Admin::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        return redirect('/admin/loginAdmin')->with('success', 'Admin berhasil didaftarkan! Silakan login.');
    }

    public function homeAdmin()
    {
        $admin = Auth::guard('admin')->user(); // Ambil admin yang sedang login
        return view('admin.homeAdmin', compact('admin')); // Kirim ke view
    }

    public function home()
{
    $user = Auth::user(); // Default ambil dari users
    return view('home', compact('user'));
}


    // 🟢 Menampilkan Form Register User
    public function showRegisterForm()
    {
        if (Auth::check()) {
            return redirect('/home');
        }
        return view('register');
    }

    // 🟢 Fungsi Register User Biasa
    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string|unique:users,name',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:3',
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        return redirect('/login')->with('success', 'Akun berhasil dibuat! Silakan login.');
    }

    // 🟢 Menampilkan Form Login User
    public function showLoginForm()
    {
        if (Auth::check()) {
            return redirect('/home');
        }
        return view('login');
    }

    // 🟢 Fungsi Login User dengan JWT
public function login(Request $request)
{
    $request->validate([
        'name' => 'required|string',
        'password' => 'required|min:3',
    ]);

    $credentials = ['name' => $request->name, 'password' => $request->password];

    if (Auth::attempt($credentials)) {
        $user = Auth::user();
        $token = JwtHelper::generateUserToken($user); // ✅ Pakai generateUserToken
        Log::info('Login user sukses', ['user_id' => $user->id]);

        return redirect('/home')
            ->with('success', 'Login berhasil!')
            ->cookie('jwt_token', $token, 120, '/', null, true, true); // Secure & HttpOnly cookie
    }

    Log::warning('Login user gagal', ['name' => $request->name]);
    return back()->with('error', 'Username atau password salah!');
}

// 🟢 Fungsi Login Admin dengan JWT
public function loginAdmin(Request $request)
{
    $request->validate([
        'email' => 'required|email',
        'password' => 'required|min:3',
    ]);

    $admin = Admin::where('email', $request->email)->first();

    if ($admin && Hash::check($request->password, $admin->password)) {
        Auth::guard('admin')->login($admin);
        $token = JwtHelper::generateAdminToken($admin); // ✅ Pakai generateAdminToken

        Log::info('Login admin sukses', ['admin_id' => $admin->id]);

        return redirect('/admin/homeAdmin')
            ->with('success', 'Login admin berhasil!')
            ->cookie('jwt_token', $token, 120, '/', null, true, true); // Secure & HttpOnly cookie
    }

    Log::warning('Login admin gagal', ['email' => $request->email]);
    return back()->with('error', 'Email atau password salah!');
}


// Logout untuk User Biasa
public function logoutUser()
{
    Auth::logout();

    return redirect('/login')
        ->with('success', 'Logout berhasil!')
        ->cookie('jwt_token', '', -1);
}

// Logout untuk Admin
public function logoutAdmin()
{
    Auth::guard('admin')->logout();

    return redirect('/admin/loginAdmin')
        ->with('success', 'Logout Admin berhasil!')
        ->cookie('jwt_token', '', -1);
}
}
