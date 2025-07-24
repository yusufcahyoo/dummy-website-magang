<?php

namespace App\Services;

use Firebase\JWT\JWT;
use Firebase\JWT\Key;
use Illuminate\Support\Facades\File;

class JWTService
{
    private static function getPrivateKey()
{
    $path = storage_path('keys/private.pem'); // Ubah path

    if (!file_exists($path)) {
        throw new \Exception("Private key tidak ditemukan di {$path}");
    }

    return file_get_contents($path);
}

private static function getPublicKey()
{
    $path = storage_path('keys/public.pem'); // Ubah path

    if (!file_exists($path)) {
        throw new \Exception("Public key tidak ditemukan di {$path}");
    }

    return file_get_contents($path);
}

    public static function generateToken($user)
    {
        $payload = [
            'iss' => config('app.url'), // Issuer (pengeluar token)
            'sub' => $user->id, // Subject (ID user)
            'name' => $user->name,
            'email' => $user->email,
            'iat' => now()->timestamp, // Issued At
            'exp' => now()->addHours(2)->timestamp // Expiration Time
        ];

        return JWT::encode($payload, self::getPrivateKey(), 'RS256');
    }

    public static function verifyToken($token)
    {
        try {
            return JWT::decode($token, new Key(self::getPublicKey(), 'RS256'));
        } catch (\Exception $e) {
            return null;
        }
    }
}
