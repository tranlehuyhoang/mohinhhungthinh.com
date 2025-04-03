<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjectsTable extends Migration
{
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->string('banner'); // Cột banner
            $table->text('images'); // Cột images (có thể lưu dưới dạng JSON)
            $table->string('title'); // Cột title
            $table->foreignId('category_id')->constrained('project_categories')->onDelete('cascade'); // Danh mục
            $table->text('short_desc'); // Cột mô tả ngắn
            $table->text('content'); // Cột nội dung
            $table->timestamps(); // Cột created_at và updated_at
        });
    }

    public function down()
    {
        Schema::dropIfExists('projects');
    }
}