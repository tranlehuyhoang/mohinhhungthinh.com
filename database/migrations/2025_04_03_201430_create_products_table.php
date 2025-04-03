<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('title'); // Cột tiêu đề
            $table->string('slug')->unique(); // Cột slug
            $table->foreignId('category_id')->constrained('product_categories'); // Khóa ngoại đến bảng product_categories
            $table->string('images'); // Cột hình ảnh
            $table->text('short_desc'); // Cột mô tả ngắn
            $table->text('description'); // Cột mô tả chi tiết
            $table->timestamps(); // Cột created_at và updated_at
        });
    }

    public function down()
    {
        Schema::dropIfExists('products');
    }
}