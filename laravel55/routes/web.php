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


define("ADMINPATH",'/admin/');  //定义管理后台路径

//管理后台
Route::get(ADMINPATH.'login','admin\LoginController@index');

//需要验证权限的页面
Route::middleware(['adminAuth'])->group(function () {

    Route::get(ADMINPATH.'index','admin\IndexController@index');
    Route::get(ADMINPATH.'adminUser','admin\AdminUserController@list');
    Route::get(ADMINPATH.'user','admin\UserController@list');

});


Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
