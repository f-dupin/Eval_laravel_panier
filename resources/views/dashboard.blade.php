<x-app-layout>
    <form action="/rechercheIngredient/" method="GET">
        <label for="ingredient">Liste des plats contenant l'ingredient suivant : </label>
        <select name="ingredient" id="ingredient-select">
            @foreach($Ingredients as $ingredient)
                <option value="{{ $ingredient->id_ingredient }}">{{ $ingredient->libelle }}</option>
            @endforeach
        </select>
        <button type="submit">OK</button>
    </form>
    <form>
        <label for="recherche_plat">Liste des plats contenant le mot suivant : </label>
        <input type="text" name="recherche_plat">
        <button type="submit">OK</button>
    </form>
    <form>
        <p>Liste des plats par fourchette de prix, par origine et par origine de plat</p>
        <label for="recherche_plat">Choisir prix mini : </label>
        <input type="number" name="prix_min">
        <label for="recherche_plat">Choisir prix max : </label>
        <input type="number" name="prix_max">
        <button type="submit">OK</button>
    </form>
    <form>
        <label for="origin">Origine : </label>
        <select name="origin" id="origin-select">
            @foreach($Origines as $origine)
                <option value="{{ $origine->id_origine }}">{{ $origine->libelle }}</option>
            @endforeach
        </select>
        <button type="submit">OK</button>
    </form>
</x-app-layout>
