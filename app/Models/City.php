<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $primaryKey="city_id";
    protected $fillable=["state_id","name_en","name_ar"];
    protected $dates = ['deleted_at'];

}
