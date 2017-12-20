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

Route::group(['prefix'=>LaravelLocalization::setLocale()],function (){

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', 'HomeController@index');
    Auth::routes();
    Route::get('logout', 'Auth\LoginController@logout');
    Route::get('page/{page}',function ($page){
        $pageContent=Page::where('page_name',$page)->with(['attributePage.page','attributePage.attribute'])->first();
//        dd($pageContent);
       return view('pages.'.$page,compact('pageContent'));
    })->name('page');
Route::resource('products','ProductController');
Route::resource('blogs','BlogController');
Route::resource('courses','CourseController');
Route::post('blog/comment/{id}','BlogController@comment');
});

