<?php

use Illuminate\Support\Facades\Route;



Route::get('/','App\Http\Controllers\LoginController@index');
Route::get('/submit','App\Http\Controllers\LoginController@checkUser');

Route::get('/index/{id}','App\Http\Controllers\BalanceController@index');
Route::get('/index/user/create','App\Http\Controllers\BalanceController@create');