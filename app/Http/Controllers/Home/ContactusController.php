<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\NavModel;
use App\Model\ContactModel;

class ContactusController extends Controller
{
    public function index(){
        $new = setting('site.contact');
        $urls = NavModel::where('id', $new)->value('url_status');
        if($urls==1){
            $active = NavModel::where('id', $new)->value('url');
        }else{
            $active = NavModel::where('id', $new)->value('link');
        }

        $nav = NavModel::where('id', $new)->first();
        $con =  ContactModel::first();
        return view('Home.Contactus.index',compact('nav','active','con'));
    }
}
