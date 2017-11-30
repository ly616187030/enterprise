<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Model\NavModel;
use App\Model\NewsModel;
use Illuminate\Http\Request;

class NewController extends Controller
{
    public function index(Request $request){
        $new = setting('site.news');
        $urls = NavModel::where('id', $new)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $new)->value('url');
        }else{
            $active = NavModel::where('id', $new)->value('link');
        }

        $nav = NavModel::where('id', $new)->first();
        $nav['child'] = NavModel::where('pid', $new)->orderBy('sort','asc')->get()->toArray();

        $content= $request->get('content');
        if(!empty($content)){//查询为空
            $ne = '';
            $nec = NewsModel::where('state',1)
                ->where('title','like','%'.$content.'%')
                ->orderBy('sort','ASC')
                ->paginate(10);
        }else{//不查询
            $nec = '';
            $content = '';
            $ne = NewsModel::where('state',1)
                ->orderBy('sort','ASC')
                ->paginate(10);
            $tuijian = NewsModel::orderBy('sort','ASC')->skip(0)->take(6)->get()->toArray();
        }
        return view('Home.New.index',compact('nav','tuijian','content','ne','nec','active'));
    }

    public function lists(Request $request,$id){
        $new = setting('site.news');
        $urls = NavModel::where('id', $new)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $new)->value('url');
        }else{
            $active = NavModel::where('id', $new)->value('link');
        }

        $nav = NavModel::where('id', $new)->first();
        $nav['child'] = NavModel::where('pid', $new)->orderBy('sort','asc')->get()->toArray();

        $content= $request->get('content');
        if(!empty($content)){//查询为空
            $ne = '';
            $nec = NewsModel::where('state',1)
                ->where('title','like','%'.$content.'%')
                ->orderBy('sort','ASC')
                ->paginate(10);
        }else{//不查询
            $nec = '';
            $content = '';
            $ne = NewsModel::where('state',1)
                ->where('pid',$id)
                ->orderBy('sort','ASC')
                ->paginate(10);
            $tuijian = NewsModel::orderBy('sort','ASC')->skip(0)->take(6)->get()->toArray();
        }
        return view('Home.New.lists',compact('nav','tuijian','content','ne','nec','id','active'));
    }

    public function shown(Request $request,$id){
        NewsModel::where('id',$id)->increment('preview_quantity');

        $new = setting('site.news');
        $urls = NavModel::where('id', $new)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $new)->value('url');
        }else{
            $active = NavModel::where('id', $new)->value('link');
        }
        $nav = NavModel::where('id', $new)->first();
        $nav['child'] = NavModel::where('pid', $new)->orderBy('sort','asc')->get()->toArray();

        $content= $request->get('content');
        if(!empty($content)){//查询不为空
            $ne = '';
            $nec = NewsModel::where('state',1)
                ->where('title','like','%'.$content.'%')
                ->orderBy('sort','ASC')
                ->paginate(10);
        }else{//不查询
            $nec = '';
            $content = '';
            $ne = NewsModel::where('state',1)
                ->where('id',$id)
                ->first();
            $nepre = NewsModel::where('state',1)->where('id','<',$id)->first();
            $nenext = NewsModel::where('state',1)->where('id','>',$id)->first();
            $tuijian = NewsModel::orderBy('sort','ASC')->skip(0)->take(6)->get()->toArray();
        }
        return view('Home.New.shown',compact('nav','tuijian','content','ne','nepre','nenext','nec','id','active'));
    }
}
