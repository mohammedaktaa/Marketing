<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $primaryKey = "blog_id";
    protected $fillable = ['title', 'content', 'image', 'user_id', 'tag_id'];

    const IMAGE_URL_PATH = 'images/blogs/';
    const IMAGE_File_PATH = 'storage/images/blogs/';

    public function tag()
    {
        return self::belongsTo(Tag::class, 'tag_id', 'tag_id');
    }

    public function user()
    {
        return self::belongsTo(User::class, 'user_id', 'id');
    }

    public function comment()
    {
        return self::hasMany(Comment::class, 'blog_id', 'blog_id');
    }

    public function getImageFileSystem()
    {
        return storage_path('app\\public\\' . self::IMAGE_File_PATH . $this->image);
    }

}
