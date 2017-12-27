<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Style extends Model
{
    protected $fillable = [ 'value'];
    protected $primaryKey="style_id";
}
