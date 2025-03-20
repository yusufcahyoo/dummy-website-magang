<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\User;
use App\Helpers\JwtHelper;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/login', function (Request $request) {
    $credentials = $request->validate([
        'email' => 'required|email',
        'password' => 'required'
    ]);

    if (!Auth::attempt($credentials)) {
        return response()->json(['message' => 'Unauthorized'], 401);
    }

    $user = Auth::user();
    $token = JwtHelper::generateToken($user);

    return response()->json(['token' => $token]);
});

//Route::middleware('jwt.auth')->get('/profile', function (Request $request) {
//    return response()->json(['user' => $request->attributes->get('user')]);
//});

Route::middleware('jwt.auth')->get('/user', function (Request $request) {
    return response()->json(['user' => auth()->user()]);
});

Route::get('/check-token', [AuthController::class, 'checkToken']);



