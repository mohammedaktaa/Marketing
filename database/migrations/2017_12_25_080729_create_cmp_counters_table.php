<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCmpCountersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('cmp_counters', function(Blueprint $table)
		{
			$table->integer('counter_id', true);
			$table->string('title_en', 200);
			$table->string('title_ar', 200);
			$table->integer('count');
			$table->string('icon', 40);
			$table->string('code', 50);
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
		Schema::drop('cmp_counters');
	}

}
