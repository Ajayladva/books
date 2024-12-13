<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class reviews extends Model
{
    use HasFactory;
    protected $fillable = ['book_id', 'user_id', 'rating', 'comment'];

    public function book()
    {
        return $this->belongsTo(book::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    // In app/Policies/ReviewPolicy.php
 
}
