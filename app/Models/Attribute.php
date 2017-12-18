<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Attribute extends Model
{
    protected $fillable = [ 'text'];
    protected $primaryKey="attribute_id";

    public function attributePage()
    {
        return self::hasMany(Attribute_page::class,'attribute_id','attribute_id');
    }
    public function page()
    {
        return self::belongsToMany(Page::class,'attribute_page','attribute_id','page_id')->withPivot('value');
    }
}
