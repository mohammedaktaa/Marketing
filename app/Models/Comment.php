<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Comment extends Model
{
    use SoftDeletes;
//    protected $primaryKey="comment_id";
    protected $fillable = ['user_id', 'content', 'blog_id'];
    protected $table = "comments";

    public function blog()
    {
        return self::belongsTo(Blog::class, 'blog_id', 'blog_id');
    }

}
