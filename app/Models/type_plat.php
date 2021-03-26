<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class type_plat extends Model
{
    use HasFactory;

    protected $fillable = ['id_type_plat', 'libelle'];
}
