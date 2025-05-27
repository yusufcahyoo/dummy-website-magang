<?php


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\BiblioController;
use App\Http\Controllers\SummaryController;

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

Route::get('/member', [MemberController::class, 'getAllMembers']);

Route::get('/biblio/popular', [BiblioController::class, 'popular']);
Route::get('/biblio/all', [BiblioController::class, 'all']);

Route::get('/loan/summary', [SummaryController::class, 'getSummary']);

Route::middleware(['auth:api'])->get('/getLoggedInMember', [MemberController::class, 'getLoggedInMember']);
Route::post('/api/summary/all', [SummaryController::class, 'postSummaryAll'])
    ->middleware('auth'); // Atau sesuaikan middleware