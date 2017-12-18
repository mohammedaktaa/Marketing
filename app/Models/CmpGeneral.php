<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CmpGeneral extends Model
{
    protected $primaryKey="general_id";
    protected $fillable = ['value','type'];

}
