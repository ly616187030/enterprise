<?php

Route::group(['middleware' => ['Index.menu']], function () {
    Route::get('/', 'Home\IndexController@index');//首页
    Route::get('/product', 'Home\ProductController@index');//产品页面
    Route::get('/product/{id}', 'Home\ProductController@lists');//产品list页面
    Route::get('/product/showpro/{id}', 'Home\ProductController@showpro');//产品show页面
    Route::get('/service', 'Home\ServiceController@index');//专题页面
    Route::get('/service/{id}', 'Home\ServiceController@lists');//专题list页面
    Route::get('/service/shown/{id}', 'Home\ServiceController@shown');//专题show页面
    Route::get('/new', 'Home\NewController@index');//咨询页面
    Route::get('/new/{id}', 'Home\NewController@lists');//咨询list页面
    Route::get('/new/shown/{id}', 'Home\NewController@shown');//咨询show页面
    Route::get('/teams', 'Home\TeamController@index');//团队页面
    Route::get('/teams/{id}', 'Home\TeamController@show');//团队页面
    Route::get('/jobs', 'Home\JobController@index');//招聘信息
    Route::post('/jobs', 'Home\JobController@store');//招聘信息提交
    Route::get('/contactus', 'Home\ContactusController@index');//联系我们
    Route::get('/join-su', 'Home\JoinController@index');//联系我们
});





Route::group(['prefix' => 'admin'], function () {

    Voyager::routes();

    require (__DIR__ . '/admin.php');
});