<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\NavModel;
use App\Model\TeamModel;
class TeamController extends Controller
{
    //

    public function index(){

        $team = setting('site.team');

        $urls = NavModel::where('id', $team)->value('url_status');

        if($urls==1){
            $active = NavModel::where('id', $team)->value('url');
        }else{
            $active = NavModel::where('id', $team)->value('link');
        }

        $nav = NavModel::where('id', $team)->first();

        $nav['child'] = NavModel::where('pid', $team)->orderBy('sort','asc')->get()->toArray();

        $teams = TeamModel::where('state',1)->get();

        return view('Home.Team.index',compact('nav','active','teams'));

    }


    public function show($id){

        $team = setting('site.team');

        $urls = NavModel::where('id', $team)->value('url_status');

        if($urls==1){
            $active = NavModel::where('id', $team)->value('url');
        }else{
            $active = NavModel::where('id', $team)->value('link');
        }

        $nav = NavModel::where('id', $team)->first();

        $nav['child'] = NavModel::where('pid', $team)->orderBy('sort','asc')->get()->toArray();


        $teams = TeamModel::where('pid',$id)->first();

        return view('Home.Team.show',compact('nav','active','teams'));
    }
}
