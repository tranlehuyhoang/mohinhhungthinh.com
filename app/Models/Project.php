<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    // Nếu bạn muốn chỉ định các trường có thể được gán hàng loạt
    protected $fillable = [
        'banner',
        'images',
        'title',
        'category_id',
        'short_desc',
        'content',
    ];

    // Khai báo mối quan hệ với model ProjectCategory
    public function category()
    {
        return $this->belongsTo(ProjectCategory::class);
    }
}