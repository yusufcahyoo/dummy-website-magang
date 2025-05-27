<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

class CheckRole
{
    public function handle(Request $request, Closure $next, $requiredRole)
    {
        $token = $request->cookie('jwt_token');

        if (!$token) {
            Log::warning('JWT token tidak ditemukan.');
            return redirect('/login')->with('error', 'Silakan login dulu.');
        }

        try {
            $publicKey = file_get_contents(storage_path('keys/public.pem'));
            $decoded = JWT::decode($token, new Key($publicKey, 'RS256'));

            if ($decoded->role !== $requiredRole) {
                Log::warning('Akses ditolak. Role tidak sesuai.', [
                    'expected' => $requiredRole,
                    'found' => $decoded->role
                ]);

                if ($decoded->role === 'admin') {
                    return redirect('/admin/homeAdmin')->with('error', 'Anda bukan user biasa.');
                } else {
                    return redirect('/home')->with('error', 'Anda bukan admin.');
                }
            }

            return $next($request);
        } catch (\Exception $e) {
            Log::error('Error validasi JWT', ['error' => $e->getMessage()]);
            return redirect('/login')->with('error', 'Token tidak valid. Silakan login ulang.');
        }
    }
}
