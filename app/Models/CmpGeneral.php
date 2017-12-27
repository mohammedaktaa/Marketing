<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CmpGeneral extends Model
{
    protected $primaryKey="general_id";
    protected $fillable = ['value','type','image'];

    const IMAGE_URL_PATH='images/generals/';
    const IMAGE_File_PATH = 'storage/images/generals/';


    public function getImageFileSystem()
    {
        return storage_path('app\\public\\' . self::IMAGE_File_PATH . $this->image);
    }

}
