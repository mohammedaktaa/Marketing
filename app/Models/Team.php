<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Team extends Model
{
    use SoftDeletes;
    protected $table = "team";
    protected $fillable = ['name_en', 'name_ar', 'job_title_en', 'job_title_ar', 'facebook', 'google', 'linkedin', 'team_order', 'image', 'active'];
    protected $primaryKey = "team_id";

    const IMAGE_URL_PATH = 'images/team/';
    const IMAGE_File_PATH = 'storage/images/team/';

    public function getImageFileSystem()
    {
        return storage_path('app\\public\\' . self::IMAGE_File_PATH . $this->pic_name);
    }
}
