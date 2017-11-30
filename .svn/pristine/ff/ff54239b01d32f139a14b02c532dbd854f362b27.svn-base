<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\NavModel;
use App\Model\RecruitModel;
use App\Model\PermissionsModel;

class JobController extends Controller
{
    public function index(){
        $new = setting('site.recruit');
        $urls = NavModel::where('id', $new)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $new)->value('url');
        }else{
            $active = NavModel::where('id', $new)->value('link');
        }

        $nav = NavModel::where('id', $new)->first();
        $zp = RecruitModel::where('state', 1)->orderBy('time','DESC')->get()->toArray();
        return view('Home.Job.index',compact('nav','active','zp'));
    }

    public function store(Request $request){
        $data = $request->except('_token','_method');

        if(isset($data['img'])){

            $file = $data['img'];

            $path = public_path('job');

            $newName = 'job-'.time().rand(10, 99).'-'.$file->getClientOriginalName();

            $file->move($path,$newName);

            $data['img'] =  'job/'.$newName;

        }
        $data['qz_date'] = date('Y-m-d H:i:s',time());

        PermissionsModel::insert($data);

        return redirect('/jobs')->with('status', '恭喜您，应聘职位成功 :)');

    }
}
