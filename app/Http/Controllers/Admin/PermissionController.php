<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\PermissionsModel;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\Permission;
use DB;
class PermissionController extends Controller
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
        return view('admin.permissions',['data' => PermissionsModel::get(),'role' => $role,'dataType' => $dataType]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        PermissionsModel::where('id',$id)->delete();

        return back()->with([
            'message'    => '删除成功',
            'alert-type' => 'success',
        ]);
    }
}
