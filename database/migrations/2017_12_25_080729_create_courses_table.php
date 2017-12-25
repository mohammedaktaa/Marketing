<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCoursesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('courses', function(Blueprint $table)
		{
			$table->integer('course_id', true);
			$table->string('title_en');
			$table->string('title_ar');
			$table->text('content_en', 65535)->nullable();
			$table->text('content_ar', 65535)->nullable();
			$table->string('place');
			$table->date('date');
			$table->time('time');
			$table->string('image')->nullable();
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
		Schema::drop('courses');
	}

}
