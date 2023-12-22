<?php

use App\Models\Post;
use App\Models\Category;
use App\Models\User;
use App\Services\Newsletter;

use \App\Http\Controllers\AdminPostController;
use \App\Http\Controllers\PostController;
use \App\Http\Controllers\RegisterController;
use \App\Http\Controllers\SessionController;
use \App\Http\Controllers\PostCommentsController;
use \App\Http\Controllers\NewsletterController;
use Illuminate\Support\Facades\Route;
use Spatie\YamlFrontMatter\YamlFrontMatter;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [PostController::class, 'index'])->name('home');

    // \Illuminate\Support\Facades\DB::listen(function ($query){
    //     logger($query->sql, $query->bindings);
    // });

    // dd(request('search'));

    // $posts = Post::latest();

    // if(request('search')) {
    //     $posts->where('title', 'like', '%' . request('search') .'%')
    //     ->orWhere('body', 'like', '%' . request('search') .'%');
    // }


    //  return view('posts', [
    //     //latest()-> orderBy contstraint
    //     'posts' => $posts->get(),
    //     'categories' => Category::all()
    // ]);


    // $posts = collect(File::files(resource_path("posts")))
    // ->map(fn($file)=>YamlFrontMatter::parseFile($file))
    // ->map(fn($document)=> new Post(
    //     $document->title,
    //     $document->excerpt,
    //     $document->date,
    //     $document->body(),
    //     $document->slug
    // ));

    // Using collection array
    // Collection can use map twice
    // $posts = collect(File::files(resource_path("posts")))
    //     ->map(function ($file){
    //         $document = YamlFrontMatter::parseFile($file);
    //         return new Post(
    //             $document->title,
    //             $document->excerpt,
    //             $document->date,
    //             $document->body(),
    //             $document->slug
    //         );
    //     });

    // $posts = array_map(function ($file) {
    //     $document = YamlFrontMatter::parseFile($file);

    //     return new Post(
    //         $document->title,
    //         $document->excerpt,
    //         $document->date,
    //         $document->body(),
    //         $document->slug
    //     );
    // }, $files);

    // return view('posts', [
    //     'posts' => $posts
    // ]);

    // $posts = [];

    // foreach ($files as $file) {
    //     $document = YamlFrontMatter::parseFile($file);

    //     $posts[] = new Post(
    //         $document->title,
    //         $document->excerpt,
    //         $document->date,
    //         $document->body(),
    //         $document->slug
    //     );
    // }
    
    // ddd($posts);
    // $document = YamlFrontMatter::parseFile(
    //     resource_path('posts/my-fourth-post.html')
    // );
    // return Post::find('my-first-post'); Can call other page using Post::find()
    // $posts = Post::all();
    // ddd($posts);
    // return view('posts', [
    //     'posts' => $posts
    // ]);

    // return view('posts', [
    //     'posts' => Post::all()
    // ]);
Route::get('posts/{post:slug}', [PostController::class, 'show']);

// Route::get('categories/{category:slug}', function (Category $category){
//     return view('posts', [
//         'posts' => $category->posts,
//         'currentCategory' => $category,
//         'categories' => Category::all()
//     ]);
// })->name('category');

// Route::get('authors/{author:username}', function (User $author){
//     // dd($author);
//     return view('posts.index', [
//         'posts' => $author->posts
//         // 'categories' => Category::all()
//     ]);
// });
// add an argument with key value pair
// Route::get('posts/{post}', function ($slug) {
    
//     //Find a post by its slug and pass it to a view called "post"

//     $post = Post::find($slug);

//     return view('post', [
//         'post' => $post
//     ]);

//     // $path = __DIR__ . "/../resources/posts/{$slug}.html";
//     // // ddd($path);

//     // if (! file_exists($path)) {
//     //     // dd('file does not exist'); // Dump and Die
//     //     // ddd('file does not exist');// Dump and Die, Debug
//     //     // abort(404); // 404 Not Found
//     //     return redirect('/'); // Redirect to a home page or one page to another page
//     // }

//     // $post = cache()->remember("posts.{$slug}", 1200, function () use ($path) {
//     //     var_dump('file_get_contents');
//     //     return file_get_contents($path);
//     // });

//     // if(!file_exists($path =__DIR__ . "/../resources/posts/{$slug}.html")) {
//     //     return redirect('/');
//     // }

//     // $post = cache()->remember("posts.{$slug}", 1200, fn() => file_get_contents($path));
    
//     // return view('post', ['post' => $post]);
// })->where('post', '[A-z_\-]+');

Route::post('newsletter', NewsletterController::class);

Route::post('posts/{post:slug}/comments', [PostCommentsController::class, 'store']);

Route::get('register', [RegisterController::class, 'create'])->middleware('guest');
Route::post('register', [RegisterController::class, 'store'])->middleware('guest');

Route::get('login', [SessionController::class, 'create'])->middleware('guest');
Route::post('login', [SessionController::class, 'store'])->middleware('guest');

Route::post('logout', [SessionController::class, 'destroy'])->middleware('auth');

//Admin Area
Route::middleware('can:admin')->group(function () {

        Route::resource('admin/posts', AdminPostController::class)->except('show');
    // Route::post('admin/posts', [AdminPostController::class, 'store']);
    // Route::get('admin/posts/create', [AdminPostController::class, 'create']);
    // Route::get('admin/posts', [AdminPostController::class, 'index']);
    // Route::get('admin/posts/{post}/edit', [AdminPostController::class, 'edit']);
    // Route::patch('admin/posts/{post}', [AdminPostController::class, 'update']);
    // Route::delete('admin/posts/{post}', [AdminPostController::class, 'destroy']);
});




