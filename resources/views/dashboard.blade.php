<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Book Collection') }}
        </h2>
    </x-slot>

    <div class="container mt-3">
        <div class="row">
            @foreach($books as $book)
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">{{ $book->title }}</h5>
                        <h6 class="card-subtitle mb-2 text-muted">{{ $book->author }}</h6>
                        <p class="card-text">{{ Str::limit($book->description, 100) }}</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="badge bg-primary">${{ number_format($book->price, 2) }}</span>
                            <a href="{{ route('books.show', $book) }}" class="btn btn-sm btn-outline-secondary">View Details</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>

        <div class="d-flex justify-content-center my-4">
            {{ $books->links('pagination::bootstrap-4') }}
        </div>
    </div>
</x-app-layout>