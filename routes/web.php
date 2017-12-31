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


use App\Models\Page;

Route::group(['prefix' => LaravelLocalization::setLocale()], function () {

    Route::get('/home', 'HomeController@index')->name('home');
//    Route::get('/', 'HomeController@index')->name('home');
    Auth::routes();
    Route::get('logout', 'Auth\LoginController@logout');
    Route::get('page/{page}','HomeController@page')->name('page');
    Route::resource('products', 'ProductController');
    Route::resource('blogs', 'BlogController');
    Route::resource('achievments', 'AchievmentController');
    Route::resource('courses', 'CourseController');
    Route::post('blog/comment/{id}', 'BlogController@comment');
    Route::get('requests', 'HomeController@requests');
    Route::post('request', 'HomeController@request')->middleware('auth');
    Route::post('request-accept/{id}', 'HomeController@acceptRequest')->middleware('auth');
    Route::get('pay/product/{id}', 'ProductController@payNow');
    Route::get('pay-local/product/{id}', 'ProductController@payLocalNow');
    Route::get('pay-local/{sum}', 'HomeController@payLocalNow');
    Route::get('apply-coupon/{sum}', 'HomeController@applyCoupon');
    Route::get('pay-done', 'PaymentController@getDone');
    Route::get('pay-cancel', 'PaymentController@getCancel');
    Route::post('insert', 'PaymentController@insert')->middleware('auht');
    Route::get('insert', 'HomeController@insert')->middleware('auht');
    Route::get('add-cart/{id}/{model}', 'HomeController@addCart')->middleware('auht');
    Route::get('shopping-cart', 'HomeController@shoppingCart');
    Route::get('about/{id}', 'HomeController@about');
    Route::get('careers', 'HomeController@careers');
    Route::get('gallery', 'HomeController@gallery');
    Route::get('career/{id}', 'HomeController@career');
    Route::get('privacy', 'HomeController@privacy');
    Route::post('request/send/{id}', 'HomeController@sendRequest');
    Route::post('contact','HomeController@contact');
    Route::get('services','HomeController@services');
    Route::get('team','HomeController@team');

    Route::get('chart','HomeController@chart')->name('chart');
});

