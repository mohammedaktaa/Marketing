<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    protected $fillable = ['name_en', 'name_ar', 'website', 'order_num', 'logo', 'active'];
    protected $primaryKey = "client_id";
    const LOGO_URL_PATH = 'logos/clients/';
    const LOGO_File_PATH = 'storage/logos/clients/';

    public function getImageFileSystem()
    {
        return storage_path('app\\public\\' . self::LOGO_File_PATH . $this->logo);
    }

}
