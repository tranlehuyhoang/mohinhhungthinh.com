<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServicesTable extends Migration
{
    public function up()
    {
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            $table->string('banner'); // Cột banner
            $table->string('title'); // Cột tiêu đề
            $table->string('slug')->unique(); // Cột slug
            $table->text('short_desc'); // Cột mô tả ngắn
            $table->text('content'); // Cột nội dung
            $table->timestamps(); // Cột created_at và updated_at
        });
    }

    public function down()
    {
        Schema::dropIfExists('services');
    }
}