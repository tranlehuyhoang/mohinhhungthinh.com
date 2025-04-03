<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIntroductionsTable extends Migration
{
    public function up()
    {
        Schema::create('introductions', function (Blueprint $table) {
            $table->id();
            $table->text('content'); // Cột content
            $table->timestamps(); // Cột created_at và updated_at
        });
    }

    public function down()
    {
        Schema::dropIfExists('introductions');
    }
}