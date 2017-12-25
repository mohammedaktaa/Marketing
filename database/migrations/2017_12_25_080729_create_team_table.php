<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateTeamTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('team', function(Blueprint $table)
		{
			$table->integer('team_id', true);
			$table->string('name_en', 200);
			$table->string('name_ar', 200);
			$table->string('job_title_en');
			$table->string('job_title_ar');
			$table->string('facebook')->nullable();
			$table->string('linkedin')->nullable();
			$table->string('google')->nullable();
			$table->integer('team_order');
			$table->string('image')->nullable();
			$table->char('active', 2)->nullable();
			$table->timestamps();
			$table->softDeletes();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('team');
	}

}
