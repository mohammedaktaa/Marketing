<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $fillable = ['title_en', 'title_ar','content_en', 'content_ar', 'place', 'date', 'time', 'image'];
    protected $primaryKey = "course_id";

    const IMAGE_URL_PATH = 'images/courses/';
    const IMAGE_File_PATH = 'storage/images/courses/';

    public function getImageFileSystem()
    {
        return storage_path('app\\public\\' . self::IMAGE_File_PATH . $this->image);

    }
}
