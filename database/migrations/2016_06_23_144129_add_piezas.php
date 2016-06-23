<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPiezas extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('piezas', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('iamgen');
			$table->string('pieza');
			$table->string('serie');
			$table->string('marca');
			$table->string('infoadicional');
			$table->int('idsucursal')->unsigned();
			$table->int('idmodelo')->unsigned();

			$table->foreign('idsucursal')->references('id')->on('sucursales')->onDelete('cascade');
			$table->foreign('idmodelo')->references('id')->on('modelos')->onDelete('cascade');
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
		Schema::drop('piezas');
	}

}
