<?php

namespace App\Http\Controllers;

use App\Models\book;
use App\Models\reviews;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class reviewsController extends Controller
{
    public function store(Request $request, book $book)
    {
        $request->validate([
            'rating' => 'required|integer|min:1|max:5',
            'comment' => 'nullable|string|max:500'
        ]);

        reviews::create([
            'book_id' => $book->id,
            'user_id' => Auth::id(),
            'rating' => $request->rating,
            'comment' => $request->comment
        ]);

        return redirect()->back()->with('success', 'Review submitted successfully!');
    }
    public function edit(Book $book, reviews $review)
    {
        // Ensure the user can only edit their own review
        $this->authorize('update', $review);

        return view('page.show', [
            'book' => $book,
            'reviews' => $book->reviews,
            'editReview' => $review
        ]);
    }

    public function index(book $book, reviews $review)
    {
        // Optional: Add additional checks if needed
        $reviews = reviews::where('book_id', $book->id)->get();

        // return view('page.show', compact('book','reviews'));

        return view('page.show', [
            'book' => $book,
            'reviews' => $book->reviews,
            'editReview' => $review
        ]);
    }

    public function update(Request $request, Book $book)
    {
        // $this->authorize('update', $review);

        $validatedData = $request->validate([
            'rating' => 'required|integer|min:1|max:5',
            'comment' => 'required|string|max:1000'
        ]);

        reviews::where('id', $request->id)
            ->where('book_id', $book->id)
            ->where('user_id', Auth::id())
            ->update([
                'rating' => $request->rating,
                'comment' => $request->comment
            ]);


        return redirect()->route('books.show', $book)
            ->with('success', 'Review updated successfully');
    }

    public function destroy(Book $book, reviews $review)
    {

        $review::where('id', $review->id)->delete();

        return redirect()->route('books.show', $book)
            ->with('success', 'Review deleted successfully');
    }
}
