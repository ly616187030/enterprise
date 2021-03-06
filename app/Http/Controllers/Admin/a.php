<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\NavModel;
use App\Model\SpecialModel;
use App\Http\Requests\SpecialRequest;
use Illuminate\Support\Facades\Auth;

class SpecialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $id = [];

        $nav = NavModel::where('pid',setting('site.special'))->select('id')->get()->toArray();

        foreach ($nav as $v => $n){

            array_push($id,$n['id']);

        }

        $data = SpecialModel::whereIn('pid',$id)->get();

        return view('admin.special',['data' => $data]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $nav = NavModel::where('pid',setting('site.special'))->get();

        return view('admin.special-edit-add',['nav' => $nav]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SpecialRequest $request)
    {
        //
        $data = $request->except('_token');

        $file = $data['img'];

        $path = public_path('special');

        $newName = 'special-'.time().rand(10, 99).'-'.$file->getClientOriginalName();

        $file->move($path,$newName);

        $data['img'] =  'special/'.$newName;

        $data['release_time'] = date('Y-m-d H:i:s',time());

        $data['people'] = Auth::user()->name;

        SpecialModel::insert($data);

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
        $data = SpecialModel::where('id',$id)->first();

        $nav = NavModel::where('pid',setting('site.special'))->get();

        return view('admin.special-edit-add',['nav' => $nav,'data' => $data,'id' => $id]);
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

        if(isset($data['img'])){

            $file = $data['img'];

            $path = public_path('special');

            $newName = 'nav-'.time().rand(10, 99).'-'.$file->getClientOriginalName();

            $file->move($path,$newName);

            $data['img'] =  'column/'.$newName;

        }

        $data['release_time'] = date('Y-m-d H:i:s',time());

        $data['people'] = Auth::user()->name;

        SpecialModel::where('id',$id)->update($data);

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
        if(SpecialModel::where('id',$id)->delete()){

            return back()->with([
                'message'    => '删除成功',
                'alert-type' => 'success',
            ]);

        }
    }
}
