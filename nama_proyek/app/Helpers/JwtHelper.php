<?php

namespace App\Helpers;

use Firebase\JWT\JWT;
use Firebase\JWT\Key;
use Illuminate\Support\Facades\Config;

class JwtHelper {
    public static function generateToken($user) {
        $payload = [
            'iss' => env('APP_URL'),
            'sub' => $user->id,
            'email' => $user->email,
            'iat' => time(),
            'exp' => time() + 3600 // Token berlaku 1 jam
        ];

        return JWT::encode($payload, env('JWT_SECRET'), 'HS256');
    }

    public static function verifyToken($token) {
        try {
            return JWT::decode($token, new Key(env('JWT_SECRET'), 'HS256'));
        } catch (\Exception $e) {
            return null;
        }
    }
}
