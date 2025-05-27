<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Services\JWTService;

class JWTAuthMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        $token = $request->cookie('jwt_token');

        if (!$token) {
            return redirect('/login')->with('error', 'Silakan login terlebih dahulu.');
        }

        $userData = JWTService::verifyToken($token);

        if (!$userData) {
            return redirect('/login')->with('error', 'Token tidak valid.');
        }

        Auth::loginUsingId($userData->sub);

        return $next($request);
    }
}
