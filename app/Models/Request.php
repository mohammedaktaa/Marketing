<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Request extends \Eloquent
{
    protected $fillable = [ 'name', 'phone','email','delivery_place','delivery_way','shipping_bool','payment_way','paper_type','doc_type',
            'other_choices','description_design','experiences','reason','side_type','print_type','price','is_accepted'];
    protected $primaryKey="request_id";
}
