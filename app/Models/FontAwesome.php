<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FontAwesome extends Model
{
    protected $fillable = ['icon', 'content'];
    protected $primaryKey="font_id";
}
