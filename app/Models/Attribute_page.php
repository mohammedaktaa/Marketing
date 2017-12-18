<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Attribute_page extends Model
{
    protected $fillable = ['attribute_id', 'page_id', 'attribute_value'];
    protected $table = "attribute_page";

    public function attribute()
    {
        return self::belongsTo(Attribute::class, 'attribute_id', 'attribute_id');
    }

    public function page()
    {
        return self::belongsTo(Page::class, 'page_id', 'page_id');
    }
}
