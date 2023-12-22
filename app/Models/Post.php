<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\View\Component;


class Post extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $with = ['category', 'author'];

    public function scopeFilter($query, array $filters) // Post::newQuery()->filter()
    {
        $query->when($filters['search'] ?? false, fn($query, $search) =>
            $query->where(fn($query) =>
                $query->where('title', 'like', '%' . $search .'%')
                ->orWhere('body', 'like', '%' . $search .'%')
            )
        );
        
        $query->when($filters['category'] ?? false, fn($query, $category) =>
            $query->whereHas('category', fn($query) => 
                $query->where('slug',$category)
            )
        );

        $query->when($filters['author'] ?? false, fn($query, $author) =>
            $query->whereHas('author', fn($query) => 
                $query->where('username',$author)
            )
        );
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function category()
    {
        //hasOne, hasMany, belongsTo, belongsToMany
        //belongsTo relationship
        return $this->belongsTo(Category::class);//first eloquent category
    }

    // Change the user() to -> author() and at second argument in User::class , the foreign key will called author_id
    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    // protected $fillable = ['title', 'excerpt', 'body'];

    // public function getRouteKeyName()
    // {
    //     return parent::getRouteKeyName();
    // }
}

