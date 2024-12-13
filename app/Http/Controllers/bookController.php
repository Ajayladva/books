<?php

namespace App\Http\Controllers;

use App\Models\book;
use App\Models\reviews;
use Illuminate\Http\Request;

class bookController extends Controller
{
    public function index()
    {
        $books = book::paginate(6);  // 6 books per page
        return view('dashboard', compact('books'));
    }

    public function show(book $book)
    {
        // Optional: Add additional checks if needed
        $reviews = reviews::where('book_id', $book->id)->get();

        return view('page.show', compact('book', 'reviews'));
    }

    // In your BookController

    public function search(Request $request)
    {
        // Get the search query from the URL
        $query = $request->input('query');

        $books = Book::join('reviews', 'books.id', '=', 'reviews.book_id')
            ->where('books.title', 'like', '%' . $query . '%')
            ->orWhere('reviews.rating', 'like', '%' . $query . '%')
            ->select('books.*') // Select fields you need
            ->paginate(6);


        // Return the search results view with the books
        return view('dashboard', compact('books'));
    }
}
