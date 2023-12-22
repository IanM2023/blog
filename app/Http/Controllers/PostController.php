<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Gate;
use App\Models\Category;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Validation\Rule;
use Symfony\Component\HttpFoundation\File\UploadedFile as SymfonyUploadedFile;

class PostController extends Controller
{
    //
    public function index()
    {
        // return Post::latest()->filter(
        //     request(['search','category','author'])
        // )->paginate(3);


        // dd(request(['search']));
        return view('posts.index', [
            'posts' => Post::latest()->filter(request(['search','category','author'])
            )->paginate(6)->withQueryString()
            // 'categories' => Category::all(),    
        ]);
    }
    public function show(Post $post)
    {
        return view('posts.show', [
            'post' => $post
        ]);
    }


}
