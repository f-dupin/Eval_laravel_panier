<x-app-layout>
    @foreach($plat_ingredients as $plat)
        <h1>{{$plat->NomPlat}}</h1>
        <p><b>Poids : </b>{{$plat->poids}} gramme</p>
        <p><b>Prix : </b>{{$plat->prix}} €</p>
        <p><b>A servir en tant que : </b>{{$plat->libelleTypePlat}}</p>
        <p><b>Pour les  : </b>{{$plat->libelleTypeNourritures}}</p>
        <p><b>Origine : </b>{{$plat->OriginePlat}}</p>
    @endforeach
</x-app-layout>
