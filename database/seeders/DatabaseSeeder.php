<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        //margin with a specific data
        $user = User::factory()->create([
            'name' => 'John Doe'
        ]);
        // Associate the id with the User
        Post::factory(5)->create([
            'user_id' => $user->id
        ]);


        // Only need this if you don't refresh the  databasephp
        // User::truncate();
        // Category::truncate();
        // Post::truncate();

        // Post::factory(5)->create();

        // $user = User::factory()->create();

        // $personal = Category::create([
        //     'name' => 'Personal',
        //     'slug' => 'personal'
        // ]);
        // $family = Category::create([
        //     'name' => 'Family',
        //     'slug' => 'family'
        // ]);
        // $work = Category::create([
        //     'name' => 'Work',
        //     'slug' => 'work'
        // ]);

        // Post::create([
        //     'user_id' => $user->id,
        //     'category_id'=>$family->id,
        //     'title'=> 'My Family Post',
        //     'slug' => 'my-family-post',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates nisi quia dolorum iure quaerat odit distinctio eos nemo earum blanditiis voluptatum molestias nihil ipsam accusamus, maiores, delectus temporibus deleniti doloribus quam. Eius quis dolores magnam voluptatibus expedita sequi, nobis recusandae nostrum illum voluptate asperiores iste quas accusamus! Minima ipsam, fugiat perferendis enim consectetur similique tempore doloribus! Nesciunt maiores minima tenetur porro ut sunt error laudantium alias, aliquam molestias praesentium temporibus tempora fugit nisi neque accusamus ullam molestiae ab eaque placeat magni earum inventore eligendi? Ratione, qui. Esse rerum tenetur sunt nisi dolor numquam, eligendi, odit natus ab maiores nostrum sit.</p>'
        // ]);

        // Post::create([
        //     'user_id' => $user->id,
        //     'category_id'=>$work->id,
        //     'title'=> 'My Work Post',
        //     'slug' => 'my-work-post',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates nisi quia dolorum iure quaerat odit distinctio eos nemo earum blanditiis voluptatum molestias nihil ipsam accusamus, maiores, delectus temporibus deleniti doloribus quam. Eius quis dolores magnam voluptatibus expedita sequi, nobis recusandae nostrum illum voluptate asperiores iste quas accusamus! Minima ipsam, fugiat perferendis enim consectetur similique tempore doloribus! Nesciunt maiores minima tenetur porro ut sunt error laudantium alias, aliquam molestias praesentium temporibus tempora fugit nisi neque accusamus ullam molestiae ab eaque placeat magni earum inventore eligendi? Ratione, qui. Esse rerum tenetur sunt nisi dolor numquam, eligendi, odit natus ab maiores nostrum sit.</p>'
        // ]);
    }
}

