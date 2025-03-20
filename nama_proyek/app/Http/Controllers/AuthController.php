<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

class AuthController extends Controller
{
    public function showRegisterForm()
    {
        return view('register');
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string|unique:users,name',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:6',
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        return redirect('/login')->with('success', 'Akun berhasil dibuat! Silakan login.');
    }

    public function showLoginForm()
    {
        if (Auth::check()) {
            return redirect('/home');
        }
        return view('login');
    }

    public function login(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'password' => 'required|min:6',
        ]);

        $credentials = ['name' => $request->name, 'password' => $request->password];

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            Log::info('Login sukses', ['user' => $user]);

            $payload = [
                'sub' => $user->id,
                'name' => $user->name,
                'iat' => time(),
                'exp' => time() + 3600, // Token berlaku 1 jam
            ];
            $token = JWT::encode($payload, env('JWT_SECRET'), 'HS256');

            // Cek apakah pengguna memilih "Remember Me"
            if ($request->has('remember') && $request->remember) {
                DB::table('users')->where('id', $user->id)->update(['remember_token' => $token]);
            }

            if (Auth::check()) {
                return redirect('/home');
            }
            return view('login');
            return response()->json([
                'message' => 'Login berhasil!',
                'token' => $token,
                'remember' => $request->has('remember'),
            ]);
        }

        Log::warning('Login gagal', ['username' => $request->name]);
        return response()->json(['error' => 'Username atau password salah!'], 401);
    }

    public function logout(Request $request)
    {
        $user = Auth::user();
        if ($user) {
            // Hapus token hanya jika sebelumnya disimpan
            DB::table('users')->where('id', $user->id)->update(['remember_token' => null]);

            Auth::logout();
      //      return redirect('/login');

            return response()->json(['message' => 'Logout berhasil!']);
        }
        return response()->json(['error' => 'Unauthorized'], 401);
    }

    public function checkToken(Request $request)
    {
        $token = $request->bearerToken();
        if (!$token) {
            return response()->json(['error' => 'Token tidak ditemukan!'], 401);
        }

        try {
            $decoded = JWT::decode($token, new Key(env('JWT_SECRET'), 'HS256'));
            $user = User::find($decoded->sub);

            // Pastikan token yang digunakan sesuai dengan yang tersimpan
            if (!$user || ($user->remember_token !== $token && !$user->remember_token)) {
                return response()->json(['error' => 'Token tidak valid!'], 401);
            }

            return response()->json(['message' => 'Token valid!', 'user' => $user]);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Token expired atau tidak valid!'], 401);
        }
    }
}
