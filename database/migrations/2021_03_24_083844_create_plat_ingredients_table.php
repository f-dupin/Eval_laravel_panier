<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlatIngredientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::disableForeignKeyConstraints();
        Schema::create('plat_ingredients', function (Blueprint $table) {
            $table->integer('id_ingredient')->unsigned();
            $table->integer('id_plat')->unsigned();
            $table->foreign('id_ingredient')
                ->references('id_ingredient')
                ->on('ingredients')
                ->onDelete('restrict')
                ->onUpdate('restrict');
            $table->foreign('id_plat')
                ->references('id_plat')
                ->on('plats')
                ->onDelete('restrict')
                ->onUpdate('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('plat_ingredients');
    }
}
