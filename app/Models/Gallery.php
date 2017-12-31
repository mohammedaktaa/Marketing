<?php

namespace App\Models;

class Gallery extends \Eloquent
{
    protected $fillable = ['image', 'title_en', 'title_ar', 'content_ar','content_en'];
    protected $table="gallery";
    const IMAGE_URL_PATH='images/gallery/';
    const IMAGE_File_PATH = 'storage/images/gallery/';

    public function getImageFileSystem()
    {
        return storage_path('app\\public\\' . self::IMAGE_File_PATH . $this->image);
    }


}
