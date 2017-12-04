<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\JoinUsModel;
use App\Model\NavModel;
use App\Model\StepModel;
class JoinController extends Controller
{
    //
    public function index(){
        $new = setting('site.join-su');
        $urls = NavModel::where('id', $new)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $new)->value('url');
        }else{
            $active = NavModel::where('id', $new)->value('link');
        }

        $nav = NavModel::where('id', $new)->first();
        $con =  JoinUsModel::first();


        //首页步骤
        $step = StepModel::orderBy('sort','ASC')->get();
        return view('Home.Join.index',compact('nav','active','con','step'));
    }
}
