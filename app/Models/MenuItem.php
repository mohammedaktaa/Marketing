<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MenuItem extends Model
{
    protected $table = "menu_items";
    protected $primaryKey = "menu_item_id";
    protected $fillable = ['name_en', 'name_ar', 'target', 'type', 'target_extra', 'is_root','order', 'parent_id'];
    protected $appends = ['url'];

    public function parent()
    {
        return self::belongsTo(self::class, 'parent_id');
    }

    public function children()
    {
        return self::hasMany(self::class, 'parent_id', 'menu_item_id')->orderBy('order');
    }

    public function getUrlAttribute()
    {
        return $this->target?$this->type == 'I' ? route($this->target, $this->target_extra ? [$this->target_extra] : []) : ($this->type == 'V' ? '#' : localizeURL($this->target)):'';
    }
}
