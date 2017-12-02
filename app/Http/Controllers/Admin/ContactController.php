<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\ContactModel;
use App\Http\Requests\ContactRequest;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\Permission;
use DB;
class ContactController extends Controller
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

        $data = ContactModel::where('pid',setting('site.contact'))->first();

        return view('admin.contact',['data' => $data,'role' => $role,'dataType' => $dataType]);

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
