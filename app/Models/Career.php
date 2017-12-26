<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Career extends \Eloquent
{
    protected $fillable = ['title_en','content_en', 'title_ar','content_ar', 'type','city_id'];

    public function city()
    {
        return self::belongsTo(City::class,'city_id','city_id');
    }
}
