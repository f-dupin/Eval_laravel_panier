<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class plat_ingredients extends Model
{
    use HasFactory;

    protected $fillable = ['id_ingredient', 'id_plat'];
}
