<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddEvaluciones extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('evaluaciones', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('comentario');
			$table->int('idopcion')->unsigned();
			$table->int('idsucursal')->unsigned();

			$table->foreign('idsopcion')->references('id')->on('opciones')->onDelete('cascade');
			$table->foreign('idsucursal')->references('id')->on('sucursales')->onDelete('cascade');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('evaluaciones');
	}

}
