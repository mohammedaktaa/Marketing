<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $fillable = ['name_en', 'name_ar', 'content_ar','content_en', 'icon'];
    protected $primaryKey="service_id";

}
