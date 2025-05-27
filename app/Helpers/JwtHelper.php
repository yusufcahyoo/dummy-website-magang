<?php

namespace App\Helpers;

use Firebase\JWT\JWT;
use Firebase\JWT\Key;

class JwtHelper
{
    protected static function getPrivateKey()
    {
        return file_get_contents(storage_path('keys/private.pem'));
    }

    protected static function getPublicKey()
    {
        return file_get_contents(storage_path('keys/public.pem'));
    }

    protected static function basePayload($user, $role)
    {
        return [
            'iss' => env('APP_URL'),         // Issuer
            'sub' => $user->id,              // Subject: User ID
            'role' => $role,                 // Role
            'name' => $user->name ?? null,    // Optional: Name
            'email' => $user->email ?? null,  // Optional: Email
            'iat' => time(),                  // Issued at
            'exp' => time() + (60 * 60),       // Expired in 1 hour
        ];
    }

    public static function generateAdminToken($admin)
    {
        $payload = self::basePayload($admin, 'admin');
        return JWT::encode($payload, self::getPrivateKey(), 'RS256');
    }

    public static function generateUserToken($user)
    {
        $payload = self::basePayload($user, 'user');
        return JWT::encode($payload, self::getPrivateKey(), 'RS256');
    }

    public static function verifyToken($token)
    {
        return JWT::decode($token, new Key(self::getPublicKey(), 'RS256'));
    }

    public static function getPayload($token)
    {
        try {
            $decoded = self::verifyToken($token);
            return (array) $decoded;
        } catch (\Exception $e) {
            return null;
        }
    }

    public static function getRole($token)
    {
        $payload = self::getPayload($token);
        return $payload['role'] ?? null;
    }

    public static function getUserId($token)
    {
        $payload = self::getPayload($token);
        return $payload['sub'] ?? null;
    }
}
