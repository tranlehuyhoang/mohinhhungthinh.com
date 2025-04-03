<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slide extends Model
{
    use HasFactory;

    // Nếu bạn muốn chỉ định các trường có thể được gán hàng loạt
    protected $fillable = [
        'image',
        'link',
    ];
}