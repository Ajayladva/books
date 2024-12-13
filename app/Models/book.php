<?php

namespace App\Models;

use App\Http\Controllers\reviewsController;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class book extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'author',
        'description',
        'isbn',
        'price',
        'pages',
        'publication_year'
    ];

    public function reviews()
    {
        return $this->hasMany(reviews::class);
    }

    public function averageRating()
    {
        return $this->reviews()->avg('rating');
    }
}
