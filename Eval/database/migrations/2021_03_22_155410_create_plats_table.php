<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlatsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::disableForeignKeyConstraints();
        Schema::create('plats', function (Blueprint $table) {
            $table->increments('id_plat');
            $table->integer('prix');
            $table->string('libelle');
            $table->integer('id_origine')->unsigned();
            $table->integer('poids');
            $table->integer('id_type_plat')->unsigned();
            $table->integer('id_type_nourriture')->unsigned();
            $table->foreign('id_origine')
                ->references('id_origine')
                ->on('origine')
                ->onDelete('restrict')
                ->onUpdate('restrict');
            $table->foreign('id_type_plat')
                ->references('id_type_plat')
                ->on('type_plats')
                ->onDelete('restrict')
                ->onUpdate('restrict');
            $table->foreign('id_type_nourriture')
                ->references('id_type_nourriture')
                ->on('type_nourritures')
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
        Schema::dropIfExists('plats');
    }
}
