<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class type_nourriture extends Model
{
    use HasFactory;

    protected $fillable = ['id_type_nourriture', 'libelle'];
}
