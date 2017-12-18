<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    protected $fillable = ['page_name'];
    protected $primaryKey="page_id";

    public function attributePage()
    {
        return self::hasMany(Attribute_page::class,'page_id','page_id');
    }

    public function attribute()
    {
        return self::belongsToMany(Attribute::class,'attribute_page','page_id','attribute_id')->withPivot('attribute_value');
    }
}
