<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Coupon extends \Eloquent
{
    protected $primaryKey="coupon_id";
    protected $fillable=['code','value','expire_date'];
}
