<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddInventario extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('inventario', function(Blueprint $table)
		{
			$table->increments('id');
			$table->int('cantidad');
			$table->int('idpieza')->unsigned();
			$table->int('idsucursal')->unsigned();

			$table->foreign('idpieza')->references('id')->on('piezas')->onDelete('cascade');	
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
		Schema::drop('inventario');
	}

}
