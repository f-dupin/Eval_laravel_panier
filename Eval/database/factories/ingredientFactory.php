<?php

namespace Database\Factories;

use App\Models\ingredient;
use Illuminate\Database\Eloquent\Factories\Factory;

class ingredientFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = ingredient::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //
        ];
    }
}
