<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCandidatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('candidates', function (Blueprint $table) {
						$table->increments('id');
						$table->string('first_name', 60);
						$table->string('last_name', 60);
						$table->string('email')->unique();
						$table->string('contact_no');
						$table->integer('job_vacancy_id');
						$table->text('resume');
						$table->text('comment');
						$table->date('application_date');
						$table->string('status', 60);
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
        Schema::drop('candidates');
    }
}
