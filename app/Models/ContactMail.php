<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ContactMail extends \Eloquent
{
    protected $fillable=['f_name','l_name','phone','email','message'];
}
