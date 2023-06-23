<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DevController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Quote\QuoteController;
use App\Http\Controllers\Order\OrderController;
use App\Http\Controllers\Product\ProductController;

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
Route::any('dev/{method}',[DevController::class, 'index']);
Route::get('permission-error', [AdminController::class, 'permissionError']);
Route::middleware(['check_login'])->group(function () {
	Route::get('/',[HomeController::class, 'index']);
	Route::get('view/{table}', [AdminController::class, 'view']);
	Route::any('insert/{table}', [AdminController::class, 'insert']);
	Route::any('update/{table}/{id}', [AdminController::class, 'update']);
	Route::get('search-table/{table}', [AdminController::class, 'searchTable']);
	Route::any('clone/{table}/{id}', [AdminController::class, 'clone']);
	Route::delete('remove', [AdminController::class, 'remove']);
	Route::delete('multiple-remove', [AdminController::class, 'multipleRemove']);
	Route::post('do-config-data/{table}', [AdminController::class, 'doConfigData']);
	Route::get('get-data-json-customer', [AdminController::class, 'getDataJsonCustomer']);
	Route::get('get-data-json-linking', [AdminController::class, 'getDataJsonLinking']);
	Route::any('config-device-price/{step}', [AdminController::class, 'configDevicePrice']);
	Route::get('get-list-option-ajax/{table}', [AdminController::class, 'getListOptionAjax']);
	Route::post('upload-file', [AdminController::class, 'uploadFile']);

	//quotes routes
	Route::any('create-quote', [QuoteController::class, 'createQuote']);
	Route::get('get-view-customer-data', [QuoteController::class, 'getViewCustomerData']);
	Route::get('get-view-product-quantity', [QuoteController::class, 'getViewProductQuantity']);
	Route::get('add-supply-quote', [QuoteController::class, 'addSupplyQuote']);
	Route::get('add-fill-finish-quote', [QuoteController::class, 'addFillFinishQuote']);
	Route::get('compute-paper-size', [QuoteController::class, 'computePaperSize']);
	Route::get('get-view-product-structure', [QuoteController::class, 'getViewProductStructure']);
	Route::any('profit-config-quote', [QuoteController::class, 'profitConfigQuote']);
	Route::get('get-view-product-structure-data', [QuoteController::class, 'getViewProductStructureData']);
	Route::any('quote-file-export/{id}', [QuoteController::class, 'QuoteFileExport']);
	Route::any('send-quote/{id}', [QuoteController::class, 'sendQuote']);

	//orders routes
	Route::post('apply-order/{stage}/{id}', [OrderController::class, 'applyOrder']);
	Route::post('receive-command/{table}/{id}', [OrderController::class, 'receiveCommand']);
});
