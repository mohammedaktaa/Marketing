<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Seo extends Model
{
    protected $fillable=['title_en','title_ar','keyword_en','description_en','description_ar','keyword_ar'];
}
