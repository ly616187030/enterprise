<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Model\NavModel;
use App\Model\GoodsModel;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(Request $request){
        $anli = setting('site.product');
        $urls = NavModel::where('id', $anli)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $anli)->value('url');
        }else{
            $active = NavModel::where('id', $anli)->value('link');
        }

        $nav = NavModel::where('id', $anli)->first()->toArray();
        $nav['child'] = NavModel::where('pid', $anli)->orderBy('sort','asc')->get()->toArray();

        $content= $request->get('content');
        if(!empty($content)){
            $cp = GoodsModel::where('state',1)
                ->where('goods_name','like','%'.$content.'%')
                ->orderBy('sort','ASC')
                ->paginate(12);
        }else{
            $content = '';
            $cp = GoodsModel::where('state',1)
                ->orderBy('sort','ASC')
                ->paginate(12);
        }
        foreach ($cp as $key => $v){
            $cp[$key]['thumb'] = explode(',',$v['thumb'])[0];
        }
        return view('Home.Product.index',compact('nav','content','cp','active'));
    }

    public function lists(Request $request,$id){
        $anli = setting('site.product');
        $urls = NavModel::where('id', $anli)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $anli)->value('url');
        }else{
            $active = NavModel::where('id', $anli)->value('link');
        }

        $nav = NavModel::where('id', $anli)->first()->toArray();
        $nav['child'] = NavModel::where('pid', $anli)->orderBy('sort','asc')->get()->toArray();

        $content= $request->get('content');
        if(!empty($content)){//查询不为空
            $cp = GoodsModel::where('state',1)
                ->where('pid',$id)
                ->where('goods_name','like','%'.$content.'%')
                ->orderBy('sort','ASC')
                ->paginate(12);
        }else{
            $content = '';
            $cp = GoodsModel::where('state',1)
                ->where('pid',$id)
                ->orderBy('sort','ASC')
                ->paginate(12);
        }
        foreach ($cp as $key => $v){
            $cp[$key]['thumb'] = explode(',',$v['thumb'])[0];
        }
        return view('Home.Product.lists',compact('nav','content','cp','id','active'));
    }

    public function showpro(Request $request,$id){
        $anli = setting('site.product');
        $urls = NavModel::where('id', $anli)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $anli)->value('url');
        }else{
            $active = NavModel::where('id', $anli)->value('link');
        }

        $nav = NavModel::where('id', $anli)->first()->toArray();
        $nav['child'] = NavModel::where('pid', $anli)->orderBy('sort','asc')->get()->toArray();

        $nav['pid'] = GoodsModel::where('id',$id)->value('pid');
        $cp = GoodsModel::where('id',$id)->first()->toArray();
        if($cp['thumb']!=''){
            $cp['img'] = explode(',',$cp['thumb']);
        }else{
            $cp['img'] = '';
        }
        if(count($cp['img'])>1){
            array_pop($cp['img']);
        }

        $tuijian = GoodsModel::orderBy('sort','ASC')->skip(0)->take(6)->get()->toArray();
        foreach ($tuijian as $key => $v){
            $tuijian[$key]['thumb'] = explode(',',$v['thumb'])[0];
        }
        return view('Home.Product.showpro',compact('cp','tuijian','nav','active'));
    }
}
