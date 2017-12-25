<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAdvantagesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('advantages', function(Blueprint $table)
		{
			$table->integer('advantage_id', true);
			$table->string('title_en');
			$table->string('title_ar');
			$table->string('content_en');
			$table->string('content_ar');
			$table->string('icon');
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
		Schema::drop('advantages');
	}

}
