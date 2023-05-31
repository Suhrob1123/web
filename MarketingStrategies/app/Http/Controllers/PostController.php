<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $user=auth()->user();
        $ntf=DB::select("select * from contacts where status=0 ORDER BY id DESC");
        return view('AdminPanel.Posts.add',['user'=>$user,'ntf'=>$ntf]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'url'=>'required|max:255|string',
            'title'=>'required|max:255|string',
            'text'=>'required|string'
        ]);

        $data=new Post();
        $data->title=$request->title;
        $data->text=$request->text;
        $data->url=$request->url;
        $data->save();
        return redirect()->route('Posts');
    }

    /**
     * Display the specified resource.
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $user=auth()->user();
        $data=Post::find($id);
        $ntf=DB::select("select * from contacts where status=0 ORDER BY id DESC");
        return view('AdminPanel.Posts.edit',['user'=>$user,'data'=>$data,'ntf'=>$ntf]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'url'=>'required|max:255|string',
            'title'=>'required|max:255|string',
            'text'=>'required|string'
        ]);

        $data=Post::find($id);
        $data->title=$request->title;
        $data->text=$request->text;
        $data->url=$request->url;

        $data->save();
        return redirect()->route('Posts');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $data=Post::find($id);
        Post::destroy($id);
        return redirect()->back();
    }
}
