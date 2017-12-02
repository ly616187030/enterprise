<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\RecruitModel;
use App\Http\Requests\RecruitRequest;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\Permission;
use DB;
class RecruitController extends Controller
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
        //
        $data = RecruitModel::where('pid',setting('site.recruit'))->get();

        return view('admin.recruit',['data' => $data,'role' => $role,'dataType' => $dataType]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.recruit-edit-add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RecruitRequest $request)
    {
        //
        $data = $request->except('_token');

        $data['pid'] = setting('site.recruit');

        $data['time'] = date('Y-m-d H:i:s',time());

        RecruitModel::insert($data);

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
        $data = RecruitModel::where('id',$id)->first();

        return view('admin.recruit-edit-add',['data' => $data,'id' => $id]);
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

        $data['pid'] = setting('site.recruit');

        $data['time'] = date('Y-m-d H:i:s',time());

        RecruitModel::where('id',$id)->update($data);

        return back()->with([
            'message'    => '编辑成功',
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
        RecruitModel::where('id',$id)->delete();

        return back()->with([
            'message'    => '删除成功',
            'alert-type' => 'success',
        ]);

    }
}
