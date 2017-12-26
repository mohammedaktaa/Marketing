<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Manager extends Model
{
    protected $table = "manager";
    protected $fillable = ['name', 'about_manager', 'overview', 'mission','image_manager'];

    const IMAGE_URL_PATH = 'images/manager/';
    const IMAGE_File_PATH = 'storage/images/manager/';

    public function getImageFileSystem()
    {
        return storage_path('app\\public\\' . self::IMAGE_File_PATH . $this->image_manager);
    }
}
