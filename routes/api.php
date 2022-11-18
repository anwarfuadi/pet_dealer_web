<?php

use App\Http\Controllers\CustomerController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::apiResource('customer', CustomerController::class);
Route::get('customer/{email}/{password}', 'App\Http\Controllers\CustomerController@findCustomer');

Route::apiResource('category', CategoryController::class);

Route::get('product/new', 'App\Http\Controllers\ProductController@newProduct');
Route::get('product/popular', 'App\Http\Controllers\ProductController@popularProduct');
Route::get('product/category/{category_id}', 'App\Http\Controllers\ProductController@productByCategory');
Route::get('product/search/{term}', 'App\Http\Controllers\ProductController@search');
Route::apiResource('product', ProductController::class);
