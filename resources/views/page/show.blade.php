<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            Book Name: {{ __($book->title) }}
        </h2>
    </x-slot>
    <div class="container m-auto mt-3">
        <div class="row">
            <div class="col-md-12">
                {{-- Book Details --}}
                <div class="card mb-4">
                    <div class="card-header">
                        <h3><strong>Price:</strong> ${{ number_format($book->price, 2) }}</h3>
                    </div>
                    <div class="card-body">
                        <p><strong>Author:</strong> {{ $book->author }}</p>
                        <p><strong>Description:</strong> {{ $book->description }}</p>
                        <p><strong>ISBN:</strong> {{ $book->isbn }}</p>
                        <p></p>
                    </div>
                </div>

                {{-- Reviews Section --}}
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h3>Reviews ({{ $reviews->count() }})</h3>
                        <span class="badge bg-primary">
                            Average Rating: {{ number_format($reviews->avg('rating'), 1) }}/5
                        </span>
                    </div>

                    <div class="card-body">
                        {{-- Existing Reviews --}}
                        @forelse($reviews as $review)
                        <div class="review mb-3 p-3 border rounded">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="review-header">
                                    <h5 class="mb-1">{{ $review->user->name }}</h5>
                                    <div class="rating">
                                        @for($i = 1; $i <= 5; $i++)
                                            <span class="text-warning">
                                            {{ $i <= $review->rating ? '★' : '☆' }}
                                            </span>
                                            @endfor
                                    </div>
                                </div>

                                {{-- Edit and Delete Options --}}
                                @auth
                                @if(auth()->user()->id === $review->user_id)
                                <div class="review-actions">
                                    <a href="/books/{{$book->id}}/reviews/{{$review->id}}/edit"
                                        class="btn btn-sm btn-outline-primary me-2">
                                        Edit
                                    </a>
                                    <form action="/books/{{$book->id}}/reviews/{{$review->id}}/destroy"
                                        method="POST" class="d-inline"
                                        onsubmit="return confirm('Are you sure you want to delete this review?');">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-outline-danger">
                                            Delete
                                        </button>
                                    </form>
                                </div>
                                @endif
                                @endauth
                            </div>

                            <p class="text-muted small">{{ $review->created_at->diffForHumans() }}</p>
                            <p>{{ $review->comment }}</p>
                        </div>
                        @empty
                        <p class="text-center text-muted">No reviews yet. Be the first to review!</p>
                        @endforelse
                    </div>

                    {{-- Review Form (Create/Edit) --}}
                    @auth
                    <div class="card-footer">
                        <h4>{{ isset($editReview) ? 'Edit Your Review' : 'Write a Review' }}</h4>
                        <form action="{{ isset($editReview) ? '/books/'.$book->id.'/reviews/update' : '/books/'.$book->id.'/reviews/store' }}"
                            method="POST">
                            @csrf
                            @if(isset($editReview))
                            @method('POST')
                            @endif

                            <div class="mb-3 flex ">
                                <label class="form-label mt-2 mb-2 ">Your Rating : &nbsp;</label>
                                <div class="rating-input p-0">
                                    @for($i = 5; $i >= 1; $i--)
                                    <input type="radio" name="rating" id="rating-{{ $i }}"
                                        value="{{ $i }}"
                                        {{ (isset($editReview) && $editReview->rating == $i) ? 'checked' : '' }}
                                        class="d-none color_change" required>
                                    <label for="rating-{{ $i }}" class="star">★</label>
                                    @endfor
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Your Review</label>
                                <textarea name="comment" class="form-control" rows="4"
                                    placeholder="Share your thoughts about this book">{{ isset($editReview) ? $editReview->comment : '' }}</textarea>
                            </div>
                            <input type="hidden" value="{{ isset($editReview) ? $editReview->id : '' }}" name="id" >
                            <button type="submit" class="btn btn-primary">
                                {{ isset($editReview) ? 'Update Review' : 'Submit Review' }}
                            </button>
                        </form>
                    </div>
                    @else
                    <div class="card-footer text-center">
                        <p>Please <a href="{{ route('login') }}">login</a> to write a review</p>
                    </div>
                    @endauth
                </div>
                {{-- Optional: Related Books Sidebar --}}
                <div class="col-md-4">
                    {{-- You can add related books or book recommendations here --}}
                </div>
            </div>
        </div>
</x-app-layout>

<style>
    .rating-input .star {
        font-size: 2rem;
        color: #ddd;
        cursor: pointer;
    }

    .rating-input input:checked~label,
    .rating-input input:checked~label~label {
        color: gold;
    }

    .rating-input label:hover,
    .rating-input label:hover~label {
        color: gold;
    }
   
</style>
