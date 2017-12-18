<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ClientSay extends Model
{
    protected $fillable = ['client_name', 'say', 'work','active'];
    protected $primaryKey="client_say_id";
    protected $table="client_say";

}
