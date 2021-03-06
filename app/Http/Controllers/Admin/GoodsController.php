<?php

namespace App\Http\Controllers\Admin;

use App\Model\GoodsModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use App\Model\NavModel;
use App\Http\Requests\GoodsRequest;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\Permission;
use DB;
class GoodsController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //

          $role = [];
          $slug = explode('.', $request->route()->getName())[0];
          $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->value('name');
          $da = Permission::where('table_name',$dataType)->get()->toArray();
          foreach ($da as $v => $n){$permission_id = $n['id'];
              if(DB::table('permission_role')->where(function($query) use($permission_id){$query->where('permission_id',$permission_id)->where('role_id',Auth::user()['role_id']);})->first()){$sa = true;}else{$sa = false;}$role[$n['key']] = $sa;
          }

        $id = [];

        $nav = NavModel::where('pid',setting('site.product'))->select('id')->get()->toArray();

        foreach ($nav as $v => $n){

            array_push($id,$n['id']);

        }

        $data = GoodsModel::whereIn('pid',$id)->get();

        return view('admin.goods',['data' => $data,'role' => $role,'dataType' => $dataType]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

        $nav = NavModel::where('pid',setting('site.product'))->get();

        return view('admin.goods-edit-add',['nav' => $nav]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(GoodsRequest $request)
    {
        //

        $data = $request->except('_token');

            GoodsModel::insert($data);

            return back()->with([
                'message'    => '新增成功',
                'alert-type' => 'success',
            ]);


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //

        $data = GoodsModel::where('id',$id)->first();

        $nav = NavModel::where('pid',setting('site.product'))->get();

        $data->img_d = explode(',',$data->thumb);

        return view('admin.goods-edit-add',['nav' => $nav,'data' => $data,'id' => $id]);


    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $data = $request->except('_token','_method');

        GoodsModel::where('id',$id)->update($data);

            return back()->with([
                'message'    => '更新成功',
                'alert-type' => 'success',
            ]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        if(GoodsModel::where('id',$id)->delete()){

            return back()->with([
                'message'    => '删除成功',
                'alert-type' => 'success',
            ]);

        }
    }



    public function img(Request $request){


        $file = $request->all()['url'];

        $path = public_path('carousel');

        $newName = 'img-'.time().rand(10, 99).'-'.$request->all()['url']->getClientOriginalName();

        $file->move($path,$newName);

        return '/carousel/'.$newName;

    }


    public function delete_img(Request $request){

        $url = public_path($request->all()['name']);

        unlink($url);

        return 1;

    }


    public function details(Request $request){

        $file = $request->all()['wangEditorH5File'];

        if(in_array( strtolower($file->extension()),['png','jpg','gif','jpeg','pneg'])){

            $path = public_path('goods-img');

            $newName = 'details-'.time().rand(10, 99).'-'.$request->all()['wangEditorH5File']->getClientOriginalName();

            $file->move($path,$newName);

            return '/goods-img/'.$newName;

        }

    }
}
