<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCurrentWeathersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('current_weathers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('city_id');
            $table->float('temperature', 4, 2);
            $table->smallInteger('condition');
            $table->smallInteger('pressure');
            $table->smallInteger('humidity');
            $table->float('wind', 4, 2);
            $table->string('icon', 3);
            $table->integer('fixed_weather');
            $table->integer('sunrise');
            $table->integer('sunset');
            $table->smallInteger('difference_in_time')->default(10800);// 3 часа разницы с UA
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
        Schema::dropIfExists('current_weathers');
    }
}
