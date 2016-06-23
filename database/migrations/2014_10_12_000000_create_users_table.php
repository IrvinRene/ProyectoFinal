<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('usuarios', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('nombre');
			$table->string('apellido');
			$table->string('correo')->unique();
			$table->string('telefono');
			$table->string('contraseña', 60);
			$table->int('idsucursa')->unsigned();
			$table->int('idrol')->unsigned();
			$table->rememberToken();

			$table->foreign('idsucursa')->references('id')->on('sucursales')->onDelete('cascade');
			$table->foreign('idrol')->references('id')->on('roles')->onDelete('cascade');

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
		Schema::drop('users');
	}

}
