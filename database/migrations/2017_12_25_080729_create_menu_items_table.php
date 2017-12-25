<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMenuItemsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('menu_items', function(Blueprint $table)
		{
			$table->integer('menu_item_id', true);
			$table->string('name_en', 200);
			$table->string('name_ar', 200);
			$table->string('target', 500)->nullable();
			$table->string('target_extra', 50)->nullable();
			$table->char('type', 1)->default('I');
			$table->char('order', 5)->nullable();
			$table->char('is_root', 1)->default('N');
			$table->integer('parent_id')->nullable();
			$table->softDeletes();
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
		Schema::drop('menu_items');
	}

}
