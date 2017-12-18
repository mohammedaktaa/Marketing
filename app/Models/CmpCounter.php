<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CmpCounter extends Model
{
    use SoftDeletes;
    protected $primaryKey="counter_id";
    protected $fillable = ['title_en','title_ar','icon','count','code'];

}
