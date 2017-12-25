<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateFontAwesomesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('font_awesomes', function(Blueprint $table)
		{
			$table->integer('font_id', true);
			$table->string('icon', 200);
			$table->string('content', 200);
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
		Schema::drop('font_awesomes');
	}

}
