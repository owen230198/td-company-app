<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Notify extends Model
{
    protected $table = 'notifies';
    protected $protectFields = false;
    protected $guarded = [];
}
