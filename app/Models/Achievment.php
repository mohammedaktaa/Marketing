<?php

namespace App\Models;

class Achievment extends \Eloquent
{
    protected $fillable = ['image', 'title_en', 'title_ar', 'content_ar','content_en'];
    protected $primaryKey="achievment_id";
    const IMAGE_URL_PATH='images/achievments/';
    const IMAGE_File_PATH = 'storage/images/achievments/';

    public function getImageFileSystem()
    {
        return storage_path('app\\public\\' . self::IMAGE_File_PATH . $this->image);
    }


}
