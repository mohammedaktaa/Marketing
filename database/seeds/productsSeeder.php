<?php

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;

class productsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        foreach (range(1, 40) as $item) {
            DB::table('products')->insert([
                'name_en' => $faker->name,
                'name_ar' =>' منتج'.$faker->numberBetween(1,25465),
                'image' => 'product.jpg',
                'description_en' => $faker->text(200),
                'description_ar' =>'
شبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.',
                'category_id' => 1,
                'price'=>$faker->numberBetween(500,2000)
            ]);
        }
    }
}
