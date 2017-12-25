<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateRequestsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('requests', function(Blueprint $table)
		{
			$table->integer('request_id', true);
			$table->string('name')->nullable();
			$table->string('email')->nullable();
			$table->string('phone', 30)->nullable();
			$table->string('delivery_plcae')->nullable();
			$table->string('delivery_way')->nullable();
			$table->char('shipping_bool', 3)->nullable();
			$table->string('payment_way')->nullable();
			$table->string('paper_type')->nullable();
			$table->string('doc_type')->nullable();
			$table->string('print_type')->nullable();
			$table->string('other_choices')->nullable();
			$table->text('description_design', 65535)->nullable();
			$table->text('experiences', 65535)->nullable();
			$table->text('reason', 65535)->nullable();
			$table->string('side_type')->nullable();
			$table->integer('price')->nullable();
			$table->char('is_accepted', 3)->nullable();
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
		Schema::drop('requests');
	}

}
