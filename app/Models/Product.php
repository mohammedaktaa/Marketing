<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['image','category_id', 'name_en', 'name_ar', 'description_ar','description_en', 'price'];
    protected $primaryKey="product_id";
    const IMAGE_URL_PATH='images/products/';
    const IMAGE_File_PATH = 'storage/images/products/';

    public function category()
    {
        return self::belongsTo(Category::class,'category_id','category_id');
    }
    public function getImageFileSystem()
    {
        return storage_path('app\\public\\' . self::IMAGE_File_PATH . $this->image);

    }

}
