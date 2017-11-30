<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\CarouselModel;
use App\Http\Requests\CarouselRequest;
class CarouselController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

        $data = CarouselModel::get();

        return view('admin.carousel',['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.carousel-edit-add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CarouselRequest $request)
    {
        //

        $data = $request->except('_token');

            $file = $data['img'];

            $path = public_path('carouse');

            $newName = 'carouse-'.time().rand(10, 99).'-'.$file->getClientOriginalName();

            $file->move($path,$newName);

            $data['img'] =  'carouse/'.$newName;

            CarouselModel::insert($data);

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
        $data = CarouselModel::where('id',$id)->first();

        return view('admin.carousel-edit-add',['data' => $data,'id' => $id]);
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

            $path = public_path('carouse');

            $newName = 'carouse-'.time().rand(10, 99).'-'.$file->getClientOriginalName();

            $file->move($path,$newName);

            $data['img'] =  'carouse/'.$newName;

        }

        CarouselModel::where('id',$id)->update($data);

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
        if(CarouselModel::where('id',$id)->delete()){

            return back()->with([
                'message'    => '删除成功',
                'alert-type' => 'success',
            ]);

        }
    }
}
