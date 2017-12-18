<?php

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;

class BlogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        foreach (range(1, 500) as $item) {
            DB::table('blogs')->insert([
                'title' => $faker->title,
                'content' => $faker->email,
                'image' => 'product.jpg',
                'tag_id' => $faker->numberBetween(1, 4),
                'user_id' => $faker->numberBetween(1, 10)
            ]);
        }
    }
}
