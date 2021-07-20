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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/login','AuthController@login')->name('login');

Route::get('/logout','AuthController@logout');

Route::post('/postlogin','AuthController@postlogin');

Route::group(['middleware' => ['auth','checkRole:users']],function(){

    Route::get('/kominfo','KominfoController@kominfo');

});

Route::group(['middleware' => ['auth','checkRole:admin,users']],function(){

Route::get('/kominfo','KominfoController@kominfo');

Route::get('/kominfo/tambah','KominfoController@tambah');

Route::post('/kominfo/store','KominfoController@store');

Route::get('/kominfo/edit/{id_guru}','KominfoController@edit');

Route::post('/kominfo/update','KominfoController@update');

Route::get('/kominfo/hapus/{id_guru}','KominfoController@hapus');

});

Route::get('/kominfo/invoice/{nik}','InvoiceController@index');

Route::get('/kominfo/kecamatan/{nokec}','InvoiceController@invoiceKecamatan');