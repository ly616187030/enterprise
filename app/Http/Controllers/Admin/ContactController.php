<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\ContactModel;
use App\Http\Requests\ContactRequest;
class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

        $data = ContactModel::where('pid',setting('site.contact'))->first();

        return view('admin.contact',['data' => $data]);

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
    public function store(ContactRequest $request)
    {
        //

        $list = ContactModel::where('pid',setting('site.contact'))->first();

        $data = $request->except('_token');

        $data['pid'] = setting('site.contact');

        $file = $data['img'];

        $path = public_path('contact');

        $newName = 'contact-'.time().rand(10, 99).'-'.$file->getClientOriginalName();

        $file->move($path,$newName);

        $data['img'] =  'contact/'.$newName;

       if(count($list) > 0){

               ContactModel::where('pid',setting('site.contact'))->update($data);

               return back()->with([
                   'message'    => '编辑成功',
                   'alert-type' => 'success',
               ]);

       }else{

               ContactModel::insert($data);

               return back()->with([
                   'message'    => '新增成功',
                   'alert-type' => 'success',
               ]);



       }


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
    }
}
