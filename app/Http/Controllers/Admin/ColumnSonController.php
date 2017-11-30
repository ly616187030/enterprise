<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\NavModel;
use App\Http\Requests\NavStoreRequest;
use Session;
class ColumnSonController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //

        $id = $request->session()->get('son-id');

        $data = NavModel::where('pid',$id)->get();

        $name = NavModel::where('id',$id)->value('name');

        return view('admin.column-son',['data' => $data,'name' => $name]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //
        return view('admin.column-edit-add',['son_id' => $request->session()->get('son-id')]);
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

        $data['pid'] = $request->session()->get('son-id');

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
    public function show(Request $request,$id)
    {
        //

        $request->session()->forget('son-id');

        $data = NavModel::where('pid',$id)->get();

        $name = NavModel::where('id',$id)->value('name');

        $request->session()->put('son-id', $id);

        return view('admin.column-son',['data' => $data,'name' => $name]);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request,$id)
    {
        //
        $son_id = $request->session()->get('son-id');

        $data = NavModel::where('id',$id)->first();

        return view('admin.column-edit-add',['id' => $id,'data' => $data, 'son_id' => $son_id]);
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
        //
        if(NavModel::where('id',$id)->delete()){

            return back()->with([
                'message'    => '删除成功',
                'alert-type' => 'success',
            ]);

        }
    }


    public function show_index(){


    }
}
