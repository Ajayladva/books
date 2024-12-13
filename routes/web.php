<?php

use App\Http\Controllers\bookController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\reviewsController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', [bookController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');
Route::get('/books/{book}', [bookController::class, 'show'])->name('books.show')->middleware('auth');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});
// Ensure you have a route that matches the edit review path
Route::get('/books/{book}/reviews/{review}/edit', [reviewsController::class, 'index'])->name('reviews.index');
Route::post('/books/{book}/reviews/store', [reviewsController::class, 'store'])->name('reviews.store');
Route::post('/books/{book}/reviews/update', [reviewsController::class, 'update'])->name('reviews.update');
Route::delete('/books/{book}/reviews/{review}/destroy', [reviewsController::class, 'destroy']);

// Route::resource('books.reviews.store', [reviewsController::class))->middleware('auth');
// In routes/web.php

Route::get('/search', [bookController::class, 'search']);

require __DIR__ . '/auth.php';
