<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class plat extends Model
{
    use HasFactory;

    protected $fillable = ['id_plats', 'prix', 'libelle', 'id_origine', 'poids', 'id_type_plat', 'id_type_nourriture'];
}
