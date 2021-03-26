<?php

namespace App\Http\Controllers;

use App\Models\ingredient;
use App\Models\origine;
use Illuminate\Http\Request;

class Plat_Ingredient extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $slug = $_GET['ingredient'];
        $plat_ingredients = \App\Models\plat_ingredient::where('id_ingredient',$slug)
            ->select('plats.id_plat','prix','plats.libelle as NomPlat','poids','type_plats.libelle AS libelleTypePLat','type_nourritures.libelle AS libelleTypeNourritures','origines.libelle AS OriginePlat')
            ->join('plats','plats.id_plat','=', 'plat_ingredients.id_plat')
            ->join('type_plats','type_plats.id_type_plat','=','plats.id_type_plat')
            ->join('type_nourritures','type_nourritures.id_type_nourriture','=','plats.id_type_nourriture')
            ->join('origines','origines.id_origine','=','plats.id_origine')
            ->get();
        return view('index', compact('plat_ingredients'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
