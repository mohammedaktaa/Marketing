<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Advantage extends Model
{
    protected $fillable = [ 'title_en', 'title_ar','content_en','content_ar', 'icon'];
    protected $primaryKey="advantage_id";
}
