<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaniersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::disableForeignKeyConstraints();
        Schema::create('paniers', function (Blueprint $table) {
            $table->integer('id_personne')->unsigned();
            $table->integer('id_plat')->unsigned();
            $table->integer('quantite');
            $table->foreign('id_plat')
                ->references('id_plat')
                ->on('plats')
                ->onDelete('restrict')
                ->onUpdate('restrict');
            $table->foreign('id_personne')
                ->references('id')
                ->on('users')
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
        Schema::dropIfExists('paniers');
    }
}
