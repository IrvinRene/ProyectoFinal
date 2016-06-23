<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddModelos extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('modelos', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('modelo');
			$table->int('idmarca')->unsigned();
			$table->int('idagno')->unsigned();
			$table->int('idmotor')->unsigned();

			$table->foreign('idmarca')->references('id')->on('marcas')->onDelete('cascade');
			$table->foreign('idagno')->references('id')->on('agnos')->onDelete('cascade');
			$table->foreign('idmotor')->references('id')->on('motores')->onDelete('cascade');
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
		Schema::drop('modelos');
	}

}
