<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [ // asegura que el modelo Products tenga los campos que especificamos
        "title",
        "description",
        "price",
        "image",
        "category_id",
        "size_id"
    ];

    public function size()
    {
        return $this->belongsTo(Size::class); // <- establece una relacion de muchos a uno
    }

    public function category(){
        return $this->belongsTo(Category::class); // <- establece una relacion de muchos a uno
    }
}
