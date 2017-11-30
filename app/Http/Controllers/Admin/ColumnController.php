<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\NavModel;
use App\Http\Requests\NavStoreRequest;
class ColumnController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        $request->session()->forget('son-id');

        $data = NavModel::where('pid','=', 0)->get();


        return view('admin.column',['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.column-edit-add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(NavStoreRequest $request)
    {
        //
        $data = $request->except('_token');

        $file = $data['header_pic'];

        $path = public_path('column');

        $newName = 'nav-'.time().rand(10, 99).'-'.$file->getClientOriginalName();

        $file->move($path,$newName);

        $data['header_pic'] =  'column/'.$newName;

        NavModel::insert($data);

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
        $data = NavModel::where('id',$id)->first();

        return view('admin.column-edit-add',['id' => $id,'data' => $data]);
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

        if(isset($data['header_pic'])){

            $file = $data['header_pic'];

            $path = public_path('column');

            $newName = 'nav-'.time().rand(10, 99).'-'.$file->getClientOriginalName();

            $file->move($path,$newName);

            $data['header_pic'] =  'column/'.$newName;

        }

        NavModel::where('id',$id)->update($data);

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
        //删除栏目

        if(NavModel::where('id', $id)->delete()){
            NavModel::where('pid', $id)->delete();
            return back()->with([
                'message'    => '删除成功',
                'alert-type' => 'success',
            ]);

        }



    }
}
