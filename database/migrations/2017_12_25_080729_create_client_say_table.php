<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateClientSayTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('client_say', function(Blueprint $table)
		{
			$table->integer('client_say_id', true);
			$table->string('client_name', 100);
			$table->string('say', 2000);
			$table->string('work');
			$table->char('active', 1)->nullable()->default('A');
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
		Schema::drop('client_say');
	}

}
