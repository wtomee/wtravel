<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog;
use Storage;
use Illuminate\Support\Facades\DB;
class BlogsController extends Controller
{
    //

    public function index()
    {
        $blogs = Blog::all();

        return view('blogs.index', ['blogs' => $blogs]);

    }

    public function show($id)
    {

        $blog = Blog::find($id);
        return view('blogs.show', ['blog' => $blog]);

    }

    public function edit($id)
    {
    $blog= Blog::find($id);

    return view('blogs.edit', ['blog'=>$blog]);

    }

    public function update(Request $request, $id){
        $blog = Blog::find($id);
        $blog-> megnevezes= $request->megnevezes;
        $blog->bevezeto = $request->bevezeto;
        $blog->leiras = $request->leiras;
        $blog->mettol = $request->mettol;
        $blog->meddig = $request->meddig;
        $blog->letszam = $request->letszam;

        $blog->update();

        return redirect()->route('blog_path',['blog' =>$blog]);
    }
    public function delete($id){
        $blog = Blog::find($id);

        $blog->delete();

        return redirect()->route('blogs_path');
    }

    public function create()
    {
        return view('blogs.create');

    }

    public function store(Request $request)
    {

        $blog = new Blog;
        $path=Storage::putFile('public', $request->file('files'));

        $url = Storage::url($path);

        $blog->megnevezes = $request->megnevezes;
        $blog->bevezeto = $request->bevezeto;
        $blog->image = $url;
        $blog->leiras = $request->leiras;
        $blog->mettol = $request->mettol;
        $blog->meddig = $request->meddig;
        $blog->letszam = $request->letszam;

        $blog->save();
        return redirect()->route('blogs_path');
    }
}
