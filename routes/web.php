<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Auth\AuthController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::any('login', [AuthController::class, 'login']);
Route::any('logout', [AuthController::class, 'logout']);
Route::any('dev-update-data',[HomeController::class, 'devUpdateData']);
Route::middleware(['checkLogin'])->group(function () {
	Route::get('/',[HomeController::class, 'index']);
	Route::get('permission-error',[AdminController::class, 'permissionError']);
	Route::get('view/{table}', [AdminController::class, 'view']);
	Route::get('insert/{table}', [AdminController::class, 'insert']);
	Route::get('insert-table/{table}', [AdminController::class, 'insertTable']);
	Route::get('update/{table}/{id}', [AdminController::class, 'update']);
	Route::get('clone/{table}/{id}', [AdminController::class, 'clone']);
	Route::get('grant-permissions', [AdminController::class, 'grantPermission']);
	Route::get('get-permissions', [AdminController::class, 'getPermission']);
	Route::post('do-insert/{table}', [AdminController::class, 'doInsert']);
	Route::post('do-update/{table}/{id}', [AdminController::class, 'doUpdate']);
	Route::post('remove', [AdminController::class, 'remove']);
	Route::post('multiple-remove', [AdminController::class, 'multipleRemove']);
	Route::post('update-permissions/{module_id}/{role_id}', [AdminController::class, 'updatePermission']);
});
