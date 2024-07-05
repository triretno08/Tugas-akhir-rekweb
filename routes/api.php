<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MahasiswaController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DosenController;
use App\Http\Controllers\MakulController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);

Route::middleware('auth:api')->group(function () {
    Route::get('/mahasiswa', [MahasiswaController::class, 'index']);
    Route::get('/mahasiswa/{nim}', [MahasiswaController::class, 'show']);
    Route::post('/mahasiswa', [MahasiswaController::class, 'store']);
    Route::put('/mahasiswa/{nim}', [MahasiswaController::class, 'update']);
    Route::post('/mahasiswa/update/{nim}', [MahasiswaController::class, 'update']);
    Route::delete('/mahasiswa/{nim}', [MahasiswaController::class, 'destroy']);

    Route::get('/dosen', [DosenController::class, 'index']);
    Route::get('/dosen/{nip}', [DosenController::class, 'show']);
    Route::post('/dosen', [DosenController::class, 'store']);
    Route::post('/dosen/update/{nip}', [DosenController::class, 'update']);
    Route::delete('/dosen/{nip}', [DosenController::class, 'destroy']);

    Route::get('/makul', [MakulController::class, 'index']);
    Route::get('/makul/{kode}', [MakulController::class, 'show']);
    Route::post('/makul', [MakulController::class, 'store']);
    Route::post('/makul/update/{kode}', [MakulController::class, 'update']);
    Route::delete('/makul/{nim}', [MakulController::class, 'destroy']);
});

