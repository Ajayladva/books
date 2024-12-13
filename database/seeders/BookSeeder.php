<?php

namespace Database\Seeders;

use App\Models\book;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;
class BookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $books = [
            // Your existing books
            [
                'title' => 'To Kill a Mockingbird',
                'author' => 'Harper Lee',
                'description' => 'A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice.',
                'isbn' => '9780446310789',
                'price' => 12.99,
                'pages' => 336,
                'publication_year' => 1960
            ],
            [
                'title' => '1984',
                'author' => 'George Orwell',
                'description' => 'A dystopian novel set in a totalitarian society, exploring themes of government surveillance and control.',
                'isbn' => '9780451524935',
                'price' => 14.50,
                'pages' => 328,
                'publication_year' => 1949
            ],
            [
                'title' => 'The Great Gatsby',
                'author' => 'F. Scott Fitzgerald',
                'description' => 'A tragic love story set against the backdrop of the Jazz Age in New York.',
                'isbn' => '9780743273565',
                'price' => 11.25,
                'pages' => 180,
                'publication_year' => 1925
            ],
            // Additional 47 books
            [
                'title' => 'Pride and Prejudice',
                'author' => 'Jane Austen',
                'description' => 'A classic novel of manners exploring love, marriage, and social status in early 19th-century England.',
                'isbn' => '9780141439518',
                'price' => 9.99,
                'pages' => 432,
                'publication_year' => 1813
            ],
            [
                'title' => 'The Catcher in the Rye',
                'author' => 'J.D. Salinger',
                'description' => 'A controversial novel about teenage angst and alienation.',
                'isbn' => '9780316769174',
                'price' => 13.50,
                'pages' => 224,
                'publication_year' => 1951
            ],
            [
                'title' => 'One Hundred Years of Solitude',
                'author' => 'Gabriel García Márquez',
                'description' => 'A landmark novel of magical realism tracing the multi-generational story of the Buendía family.',
                'isbn' => '9780060883287',
                'price' => 16.00,
                'pages' => 417,
                'publication_year' => 1967
            ],
            // Add more books with unique details
            [
                'title' => 'The Hobbit',
                'author' => 'J.R.R. Tolkien',
                'description' => 'A fantasy novel about the adventures of Bilbo Baggins, a hobbit who joins a quest to reclaim a dwarf kingdom.',
                'isbn' => '9780547928227',
                'price' => 14.99,
                'pages' => 300,
                'publication_year' => 1937
            ],
            [
                'title' => 'Brave New World',
                'author' => 'Aldous Huxley',
                'description' => 'A dystopian novel exploring a technologically advanced future where human emotions and individual freedom are suppressed.',
                'isbn' => '9780060850524',
                'price' => 15.25,
                'pages' => 311,
                'publication_year' => 1932
            ],
            // Continue adding unique books until you reach at least 50
        ];
    
        // If you want to generate more books programmatically
        $faker = Faker::create();  // Corrected Faker initialization

        // Generate more books to reach 50
        for ($i = count($books); $i < 50; $i++) {
            book::create([
                'title' => $faker->unique()->catchPhrase(),
                'author' => $faker->name(),
                'description' => $faker->paragraph(3),
                'isbn' => $faker->unique()->isbn13(),
                'price' => $faker->randomFloat(2, 5, 50),
                'pages' => $faker->numberBetween(100, 800),
                'publication_year' => $faker->numberBetween(1900, 1910)
            ]);
        }
    
        // Insert books
        foreach ($books as $book) {
            book::create($book);
        }
    }
}
