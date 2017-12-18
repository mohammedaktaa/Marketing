<?php

Route::group(['middleware' => 'web', 'prefix' => LaravelLocalization::setLocale().'/admin', 'namespace' => 'Modules\Admin\Http\Controllers'], function()
{
    Route::get('table/{table}','AdminController@table')->name('table');
    Route::get('categories-autocomplete','AutoCompleteController@categoryAutocomplete');
    Route::get('menu-items-autocomplete','AutoCompleteController@menuItemAutocomplete');
    Route::get('icons-autocomplete','AutoCompleteController@iconAutocomplete');
    Route::get('pages-autocomplete','AutoCompleteController@pageAutocomplete');
    Route::get('attributes-autocomplete','AutoCompleteController@attributeAutocomplete');
    Route::put('courses/{id}','AdminController@updateImageCourses');
    Route::put('products/{id}','AdminController@updateImageCourses');
    Route::put('team/{id}','AdminController@updateImageTeam');
    Route::post('upload-image/{resize?}', 'AdminController@uploadImage');
    Route::post('upload-doc/{file}', 'AdminController@uploadDocument');
    Route::get('/', 'AdminController@index')->name('admin-home');
    Route::get('/dashboard', 'AdminController@index')->name('dashboard');
});
