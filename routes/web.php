<?php

use Illuminate\Support\Facades\Route;

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
use App\Http\Controllers\plat;
use App\Http\Controllers\Plat_Ingredient;




Route::resource('plat', plat::class);

Route::get('/rechercheIngredient', [\App\Http\Controllers\Plat_Ingredient::class, 'index']);
Route::middleware(['auth:sanctum', 'verified'])->get('/', [\App\Http\Controllers\plat::class, 'index'])->name('dashboard');
