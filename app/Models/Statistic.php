<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Statistic extends \Eloquent
{
    protected $table="statistics";
    protected $fillable = ['name','value','year'];

}
