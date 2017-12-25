<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSeosTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('seos', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->string('title_en', 200);
			$table->string('title_ar', 200);
			$table->string('description_en', 310);
			$table->string('description_ar', 310);
			$table->string('keyword_en', 300);
			$table->string('keyword_ar', 300);
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
		Schema::drop('seos');
	}

}
