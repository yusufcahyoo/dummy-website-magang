<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log; // Tambahkan untuk debugging

class AuthController extends Controller
{

    // Tambahkan ini dalam `AuthController.php`
public function showRegisterForm()
{
    return view('register');
}



    // 🟢 Fungsi Register
    public function register(Request $request)
    {
        // Validasi input
        $request->validate([
            'name' => 'required|string|unique:users,name',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:6',
        ]);

        // Simpan ke database
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password), // Enkripsi password
        ]);

        return redirect('/login')->with('success', 'Akun berhasil dibuat! Silakan login.');
    }

    // 🟢 Fungsi Menampilkan Form Login
    public function showLoginForm()
    {
        if (Auth::check()) {
            return redirect('/home'); // Jika sudah login, langsung ke home
        }
        return view('login');
    }

    // 🟢 Fungsi Login
    public function login(Request $request)
    {
        // Validasi input
        $request->validate([
            'name' => 'required|string',
            'password' => 'required|min:6',
        ]);

        // Cek apakah user ada di database berdasarkan `name` atau `email`
        $credentials = ['name' => $request->name, 'password' => $request->password];

        // Coba login dengan kredensial
        if (Auth::attempt($credentials)) {
            Log::info('Login sukses', ['user' => Auth::user()]); // Debugging
            return redirect('/home')->with('success', 'Login berhasil!');
        }

        // Jika gagal login
        Log::warning('Login gagal', ['username' => $request->name]);
        return back()->with('error', 'Username atau password salah!');
    }

    // 🟢 Fungsi Logout
    public function logout()
    {
        Auth::logout();
        return redirect('/')->with('success', 'Logout berhasil!');
    }

}
