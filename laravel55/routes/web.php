<?php

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


Route::get('test', function(){

    echo phpinfo();
});

$admin_path = '/admin/';


Route::get('user/{userid?}', 'UserController@index');
Route::get($admin_path.'login','admin\LoginController@index');
Route::get($admin_path.'index','admin\IndexController@index');

