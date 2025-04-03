<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    // Nếu bạn muốn chỉ định các trường có thể được gán hàng loạt
    protected $fillable = [
        'title',
        'slug',
        'category_id',
        'images',
        'short_desc',
        'description',
    ];

    // Định nghĩa mối quan hệ với ProductCategory
    public function category()
    {
        return $this->belongsTo(ProductCategory::class, 'category_id');
    }
    protected $casts = [
        'images' => 'array',
    ];
}