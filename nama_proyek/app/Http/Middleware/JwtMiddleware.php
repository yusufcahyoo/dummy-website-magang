<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Helpers\JwtHelper;
use Symfony\Component\HttpFoundation\Response;

class JwtMiddleware
{
    public function handle(Request $request, Closure $next): Response {
        $token = $request->bearerToken();

        if (!$token) {
            return response()->json(['message' => 'Token not provided'], 401);
        }

        $decoded = JwtHelper::verifyToken($token);
        if (!$decoded) {
            return response()->json(['message' => 'Invalid token'], 401);
        }

        // Set user info di request untuk digunakan di controller
        $request->attributes->add(['user' => $decoded]);

        return $next($request);
    }
}
