<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PublicController extends Controller
{
    public function index(){
        $auth="Admin";
        if(auth()->user()==null){
            $auth="Login";
        }
        return view('Public.index',['auth'=>$auth]);
    }
    public function about(){
        $auth="Admin";
        if(auth()->user()==null){
            $auth="Login";
        }
        return view('Public.about',['auth'=>$auth]);
    }
    public function services(){
        $auth="Admin";
        if(auth()->user()==null){
            $auth="Login";
        }
        return view('Public.services',['auth'=>$auth]);
    }
    public function crypto(){
        $auth="Admin";
        if(auth()->user()==null){
            $auth="Login";
        }
        return view('Public.crypto',['auth'=>$auth]);
    }
    public function videodars(){
        $auth="Admin";
        if(auth()->user()==null){
            $auth="Login";
        }
        $data=Post::all()->sortKeysDesc();
        return view('Public.videodars',['data'=>$data],['auth'=>$auth]);
    }
    public function contact(){
        $auth="Admin";
        if(auth()->user()==null){
            $auth="Login";
        }
        return view('Public.contact',['auth'=>$auth]);
    }
}
