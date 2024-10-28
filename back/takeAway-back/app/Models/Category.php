<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    
    protected $fillable = ['category_id'];

    public function category()
    {
        return $this->hasMany(Product::class); // <- el metodo hasMany establece una relacion de uno a muchos con el modelo Products

    }
}
