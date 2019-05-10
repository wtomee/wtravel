<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    //

    protected $fillable=['megnevezes','bevezeto', 'image','leiras', 'mettol', 'meddig', 'letszam'];
}
