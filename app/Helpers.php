<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 2017/11/26
 * Time: 下午2:30
 */

use App\User;
use App\Model\GoodsModel;
use App\Model\SpecialModel;
if(!function_exists('user_count')){

    function user_count(){

        return User::count();

    }

}

if(!function_exists('goods_count')){

    function goods_count(){

        return GoodsModel::count();

    }

}

if(!function_exists('special_count')){

    function special_count(){

        return SpecialModel::count();

    }

}