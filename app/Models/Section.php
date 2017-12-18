<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    protected $primaryKey="section_id";
    protected $fillable = ['value','name_en','name_ar','order'];

}
