<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Model\NavModel;
use App\Model\SpecialModel;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function index(){
        $zhuanti = setting('site.special');
        $urls = NavModel::where('id', $zhuanti)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $zhuanti)->value('url');
        }else{
            $active = NavModel::where('id', $zhuanti)->value('link');
        }

        $nav = NavModel::where('id', $zhuanti)->first()->toArray();
        $nav['child'] = NavModel::where('pid', $zhuanti)->orderBy('sort','asc')->get()->toArray();

        foreach ($nav['child'] as $key => $v){
            $nav['child'][$key]['imgg'] = SpecialModel::where('pid',$v['id'])->orderBy('id', 'DESC')->value('img');
        }
        return view('Home.Service.index',compact('nav','active'));
    }

    public function lists(Request $request,$id){
        $zhuanti = setting('site.special');
        $urls = NavModel::where('id', $zhuanti)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $zhuanti)->value('url');
        }else{
            $active = NavModel::where('id', $zhuanti)->value('link');
        }

        $nav = NavModel::where('id', $zhuanti)->first();
        $nav['child'] = NavModel::where('pid', $zhuanti)->orderBy('sort','asc')->get()->toArray();

        $content= $request->get('content');
        if(!empty($content)){//查询为空
            $zt = '';
            $ztc = SpecialModel::where('state',1)
                ->where('title','like','%'.$content.'%')
                ->orderBy('sort','ASC')
                ->paginate(10);
        }else{//不查询
            $ztc = '';
            $content = '';
            $zt = SpecialModel::where('state',1)
                ->where('pid',$id)
                ->orderBy('sort','ASC')
                ->paginate(10);
            $tuijian = SpecialModel::orderBy('sort','ASC')->skip(0)->take(6)->get()->toArray();
        }
        return view('Home.Service.lists',compact('nav','tuijian','content','zt','ztc','id','active'));
    }

    public function shown(Request $request,$id){
        SpecialModel::where('id',$id)->increment('preview_quantity');

        $zhuanti = setting('site.special');
        $urls = NavModel::where('id', $zhuanti)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $zhuanti)->value('url');
        }else{
            $active = NavModel::where('id', $zhuanti)->value('link');
        }
        $nav = NavModel::where('id', $zhuanti)->first();
        $nav['child'] = NavModel::where('pid', $zhuanti)->orderBy('sort','asc')->get()->toArray();

        $content= $request->get('content');
        if(!empty($content)){//查询不为空
            $zt = '';
            $ztc = SpecialModel::where('state',1)
                ->where('title','like','%'.$content.'%')
                ->orderBy('sort','ASC')
                ->paginate(10);
        }else{//不查询
            $ztc = '';
            $content = '';
            $zt = SpecialModel::where('state',1)
                ->where('id',$id)
                ->first();
            $ztpre = SpecialModel::where('state',1)->where('id','<',$id)->first();
            $ztnext = SpecialModel::where('state',1)->where('id','>',$id)->first();
            $tuijian = SpecialModel::orderBy('sort','ASC')->skip(0)->take(6)->get()->toArray();
        }
        return view('Home.Service.shown',compact('nav','tuijian','content','zt','ztpre','ztnext','ztc','id','active'));
    }
}
