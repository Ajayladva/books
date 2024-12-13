-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 05:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `isbn` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `pages` int(11) DEFAULT NULL,
  `publication_year` varchar(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `isbn`, `price`, `pages`, `publication_year`, `created_at`, `updated_at`) VALUES
(1, 'Multi-layered discrete hub', 'Harrison Hickle', 'Quibusdam repellendus et eveniet quia sint. Soluta omnis odio nisi quod tenetur quia dolor. Provident sit voluptatem delectus numquam qui.', '9797382207622', 13.23, 121, '1901', '2024-12-11 04:07:19', '2024-12-11 04:07:19'),
(2, 'Integrated exuding knowledgeuser', 'Erwin Hudson', 'Veritatis dignissimos exercitationem eligendi. Quibusdam eaque temporibus quo omnis est alias. Dignissimos qui iure non porro. Doloribus adipisci perspiciatis excepturi nisi itaque earum qui.', '9795017494287', 44.20, 161, '1908', '2024-12-11 04:07:19', '2024-12-11 04:07:19'),
(3, 'Expanded reciprocal core', 'Cassidy Morissette', 'Soluta necessitatibus et est voluptatem eos labore. Nostrum ut doloribus odit odio vero necessitatibus. Tenetur velit aperiam quis. Quis esse aperiam autem provident hic deserunt enim quisquam.', '9797402738136', 48.48, 422, '1901', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(4, 'Innovative even-keeled challenge', 'Nola Tillman', 'Qui corrupti vel eum doloremque et. Ut officiis aut blanditiis id ea voluptas.', '9782660515711', 20.09, 546, '1906', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(5, 'Streamlined 6thgeneration contingency', 'Mrs. Yasmine Cremin PhD', 'Eum incidunt dolore omnis facere eos exercitationem. Fuga et non sunt. Harum inventore dolorem eligendi.', '9796928183697', 15.77, 528, '1902', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(6, 'Optimized static standardization', 'Dr. Carey Parker', 'Voluptas assumenda nemo maxime cupiditate veniam temporibus dolor. Quisquam cumque sit ex veniam. Consequuntur in vel doloremque quibusdam ducimus facilis.', '9786945785325', 24.80, 382, '1901', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(7, 'Devolved even-keeled project', 'Mr. Lee Witting', 'Id accusantium quia adipisci debitis. Qui repudiandae illo deleniti. Hic veniam eum iure quos sint quod voluptatibus voluptatem. Consequatur ipsa consectetur nostrum perspiciatis inventore autem.', '9795402494144', 17.15, 341, '1910', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(8, 'Up-sized regional success', 'Zachary Howe', 'Ut eum ut quia qui fuga natus eum illo. Accusamus et nobis rerum omnis consequatur commodi velit. Cum accusamus quis occaecati neque aperiam nihil et.', '9797562886463', 31.66, 443, '1900', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(9, 'Phased nextgeneration conglomeration', 'Terence Veum', 'Odit eum placeat qui facilis aliquam neque. Libero aliquid aut culpa explicabo quia. Sed molestiae vel quia quia.', '9784785891497', 8.96, 392, '1904', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(10, 'Fully-configurable demand-driven product', 'Zora Sporer DDS', 'Non dolores ratione debitis repudiandae consequuntur dolores molestias. Fugiat eligendi sed explicabo ut explicabo. Iure repellat aspernatur ut reprehenderit facilis quia ut. Mollitia aut totam magni atque qui vero.', '9788980495504', 48.65, 161, '1902', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(11, 'Up-sized transitional approach', 'Rodrick Jenkins', 'Repellat facilis est vel natus. Ut placeat labore voluptates deleniti ad blanditiis. Voluptatem ex consequatur dolor laboriosam nobis. Delectus exercitationem est provident quae sit sed inventore.', '9796098948096', 20.01, 373, '1905', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(12, 'De-engineered fault-tolerant task-force', 'Jordy Mueller', 'Quia dolores rem dolor ut quasi. Rerum soluta laudantium eos et sunt ea molestias. Consequatur aliquam rerum libero ullam quisquam vel aut ut. Sequi et omnis libero reiciendis et.', '9789516718210', 27.48, 334, '1902', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(13, 'Ergonomic hybrid info-mediaries', 'Mr. Corbin Hintz IV', 'Sed ipsam facere consequatur animi consequatur. Pariatur odit sit quas iusto. Id est debitis culpa ut. Rerum exercitationem ea qui autem aut saepe nisi.', '9790618127190', 11.31, 700, '1909', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(14, 'Pre-emptive leadingedge superstructure', 'Allan Klocko', 'Nam fugit dolor totam a ducimus. Qui ut voluptates voluptate modi. Aut laudantium veritatis consequuntur totam. Error voluptate at aliquam temporibus cum sit.', '9785719893105', 26.31, 657, '1902', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(15, 'Secured secondary intranet', 'Mrs. Maria Stamm III', 'Qui ea fugiat illo doloremque. Amet quo quo et repellat.', '9794353083469', 17.78, 587, '1903', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(16, 'Business-focused maximized database', 'Mac Ankunding Sr.', 'Molestiae doloribus et soluta qui ut iste et. Ad veniam laudantium cum molestiae delectus quo accusamus impedit. Vero nobis nesciunt dolorem ut placeat reiciendis voluptatem. Veritatis voluptatem beatae vero.', '9797602015891', 17.80, 318, '1901', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(17, 'Multi-lateral tertiary hardware', 'Trace Rogahn PhD', 'Dolores perferendis vel impedit eveniet quo numquam praesentium. Quia non reiciendis et quo blanditiis et libero. Voluptatum voluptates reprehenderit vel. Temporibus sed blanditiis voluptas omnis non.', '9788726873009', 48.22, 528, '1904', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(18, 'Compatible intermediate capability', 'Dr. Delores Fisher', 'Enim quas mollitia ut ipsam omnis voluptate. Voluptas cum natus quaerat cupiditate ducimus incidunt voluptas. Cumque temporibus qui architecto quis dolor distinctio.', '9790496573881', 23.78, 703, '1907', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(19, 'Expanded tertiary pricingstructure', 'Raheem Labadie', 'Non voluptatibus ut aut laborum molestias. Aut consequatur cupiditate sint a sapiente.', '9794211548109', 9.97, 184, '1907', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(20, 'Multi-channelled composite architecture', 'Estrella Bogisich I', 'Labore possimus delectus suscipit magni consectetur aliquam rem quis. Aut earum eligendi minus. Voluptatem deserunt fugit totam reprehenderit officia. Eos similique magni eum provident a veritatis.', '9789395038072', 20.27, 296, '1904', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(21, 'Vision-oriented responsive budgetarymanagement', 'Carmelo Luettgen', 'Aspernatur nam dicta labore voluptas qui eaque. Et deserunt itaque sunt doloremque sit molestias blanditiis quibusdam. Temporibus qui ipsum sapiente quidem corrupti alias.', '9791768230525', 7.08, 293, '1901', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(22, 'Reverse-engineered 3rdgeneration data-warehouse', 'Rashawn Moen', 'Sed repellat ea eveniet ut expedita et. Et minus ad reprehenderit harum. Accusantium a quos voluptatem incidunt labore perferendis veniam. Qui eos omnis similique aut et quo.', '9791502872271', 24.01, 171, '1901', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(23, 'Digitized impactful customerloyalty', 'Gerardo O\'Kon', 'Velit magnam quis ut quisquam quisquam culpa rem tempore. Fugit exercitationem velit temporibus sed quam saepe. Autem eum possimus quos repudiandae officiis. Adipisci iste neque maiores quisquam.', '9792225088208', 31.66, 760, '1907', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(24, 'Self-enabling real-time product', 'Eveline Bernhard', 'Sunt ex nostrum dolores sapiente quia reprehenderit consectetur. Debitis fugiat omnis exercitationem qui sunt aut dolor. Praesentium sit inventore perspiciatis laborum dolor.', '9781350883758', 31.04, 577, '1904', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(25, 'Optional contextually-based policy', 'Prof. Triston Zboncak', 'Et fugit est quaerat sunt cupiditate aperiam quia. Soluta omnis dolor est rerum accusamus voluptatibus quia eveniet. Repudiandae et debitis minima sit sunt aut maxime est.', '9791889682944', 44.32, 468, '1903', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(26, 'Visionary mission-critical definition', 'Jamel Hand IV', 'Ipsa excepturi consequatur blanditiis nesciunt perferendis culpa fuga. Nemo repudiandae ipsam non dignissimos est unde debitis.', '9792956034345', 29.22, 702, '1902', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(27, 'Team-oriented asynchronous intranet', 'Darion Considine', 'Qui molestiae recusandae amet repellendus laboriosam qui. Deserunt beatae sed ut quia. Deleniti dignissimos debitis doloribus sunt et quo provident.', '9790402924332', 18.31, 442, '1904', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(28, 'Sharable didactic alliance', 'Prof. Marielle Romaguera', 'Minus vero voluptatem non tempora. Cum natus id odio alias et sit asperiores. Culpa vero quam doloremque placeat animi rem ipsum. Voluptas libero quis est earum amet odio nemo ea. Qui nulla in aut vel cumque alias.', '9799204276809', 34.92, 284, '1906', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(29, 'Synergized homogeneous openarchitecture', 'Prof. Gilbert Skiles', 'Ducimus voluptas aut voluptatem autem quia vel. Est sint ut deserunt eos. Minus dicta est incidunt quaerat nihil.', '9788018568828', 29.85, 704, '1900', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(30, 'Digitized multi-state systemengine', 'Terrence Crooks', 'Vel doloremque consequatur et quia molestiae. Consectetur eius qui eos. Molestiae quidem est alias nostrum.', '9793625605880', 32.91, 403, '1902', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(31, 'Cloned systematic strategy', 'Jamal Eichmann DVM', 'Rem saepe dolorum consequatur officiis itaque laboriosam. Minus error vel velit similique vel consectetur nihil. Qui repellendus id quasi veritatis. Distinctio eos incidunt cumque.', '9781269437240', 23.57, 645, '1901', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(32, 'Re-contextualized background encryption', 'Louisa West', 'Eius qui et praesentium earum soluta asperiores nam. Deleniti laborum perferendis numquam illum maiores assumenda. Eum saepe necessitatibus incidunt tenetur voluptates autem dicta quod.', '9791360292327', 41.60, 204, '1901', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(33, 'Secured 24/7 definition', 'Owen Lockman', 'Nisi sunt itaque dolorem adipisci ullam occaecati nam eos. Minima eaque quis rerum omnis aut. Est enim enim dicta atque aliquid consectetur sequi aut.', '9798522955687', 18.52, 624, '1907', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(34, 'Object-based full-range knowledgebase', 'Miss Shanelle Crona Sr.', 'Quasi dolores dolores velit labore animi reprehenderit dolores. Suscipit quis aut aut dignissimos dolorem et est.', '9791506002339', 9.05, 402, '1900', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(35, 'Public-key dedicated attitude', 'Prof. Wiley Wunsch Sr.', 'Debitis accusantium est fugiat commodi asperiores unde. Aut ut illo aut aut magni eum enim. Iusto asperiores quis nulla minima. Et expedita odit distinctio.', '9789509715806', 8.18, 260, '1909', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(36, 'Inverse hybrid framework', 'Trisha Kunde', 'Sequi omnis excepturi in et blanditiis dolores. Corrupti fuga eos quia dolores sed laboriosam dolor. Molestiae nesciunt tempore iste ducimus.', '9787689235480', 26.77, 340, '1906', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(37, 'Vision-oriented intermediate service-desk', 'Salma Pouros IV', 'Ut amet corporis et omnis ut inventore. Nulla laborum qui dolorem.', '9786751462915', 41.79, 346, '1904', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(38, 'Open-architected asymmetric encoding', 'Colten Pagac', 'Vel pariatur officia quis dignissimos. Eligendi omnis velit ducimus eum culpa laborum. Eos quasi sit consequatur voluptatum autem quas. Qui quis aperiam temporibus eligendi magni. Autem ipsa ullam quaerat sit.', '9790768978581', 16.05, 710, '1905', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(39, 'Programmable multi-state toolset', 'Prof. Haskell Schmeler', 'Ab eveniet pariatur rem optio dolor reiciendis quia. Optio atque commodi odio nisi est quas. Veniam maxime cum eos quo iure est. Rerum officiis consequatur hic voluptatibus occaecati cupiditate.', '9783245099671', 22.56, 539, '1900', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(40, 'Extended zeroadministration protocol', 'Margaret Dare', 'Et rerum sunt tempore quia eius omnis ut. Mollitia sed quae praesentium dolorum est pariatur. Vitae sequi modi omnis exercitationem.', '9788039717502', 19.02, 189, '1904', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(41, 'Ergonomic multi-tasking support', 'Tad Cummerata', 'Eum voluptatem quaerat neque. Neque laborum atque consequatur nemo. Repudiandae aspernatur et itaque quis. Sit voluptas consectetur ipsa.', '9791992016971', 19.21, 799, '1909', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(42, 'Fundamental fault-tolerant hierarchy', 'Wilton Abshire', 'Cum ad eum repellat facilis soluta cum. Voluptas porro qui eos ducimus. Iusto dolorem et iure dicta.', '9793563570158', 23.51, 354, '1904', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(43, 'De-engineered analyzing product', 'Brent Auer', 'Et temporibus id minus provident ut. Vel occaecati est voluptas quo deserunt suscipit. Temporibus possimus culpa reiciendis ad dicta. Odio eligendi voluptas reprehenderit saepe molestiae itaque natus.', '9792400237216', 49.48, 381, '1904', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(44, 'Profound multi-tasking intranet', 'Ms. Laila Schneider V', 'Aliquid sed nobis sed nisi. Et non est repellat sit culpa laboriosam. Facilis ab nam alias officiis magni. Quia qui est esse velit.', '9784589694546', 19.52, 332, '1906', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(45, 'To Kill a Mockingbird', 'Harper Lee', 'A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice.', '9780446310789', 12.99, 336, '1960', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(46, '1984', 'George Orwell', 'A dystopian novel set in a totalitarian society, exploring themes of government surveillance and control.', '9780451524935', 14.50, 328, '1949', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(47, 'The Great Gatsby', 'F. Scott Fitzgerald', 'A tragic love story set against the backdrop of the Jazz Age in New York.', '9780743273565', 11.25, 180, '1925', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(48, 'Pride and Prejudice', 'Jane Austen', 'A classic novel of manners exploring love, marriage, and social status in early 19th-century England.', '9780141439518', 9.99, 432, '1813', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(49, 'The Catcher in the Rye', 'J.D. Salinger', 'A controversial novel about teenage angst and alienation.', '9780316769174', 13.50, 224, '1951', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(50, 'One Hundred Years of Solitude', 'Gabriel García Márquez', 'A landmark novel of magical realism tracing the multi-generational story of the Buendía family.', '9780060883287', 16.00, 417, '1967', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(51, 'The Hobbit', 'J.R.R. Tolkien', 'A fantasy novel about the adventures of Bilbo Baggins, a hobbit who joins a quest to reclaim a dwarf kingdom.', '9780547928227', 14.99, 300, '1937', '2024-12-11 04:08:23', '2024-12-11 04:08:23'),
(52, 'Brave New World', 'Aldous Huxley', 'A dystopian novel exploring a technologically advanced future where human emotions and individual freedom are suppressed.', '9780060850524', 15.25, 311, '1932', '2024-12-11 04:08:23', '2024-12-11 04:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2024_12_11_092853_books', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `book_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 'good one', '2024-12-11 04:35:53', '2024-12-11 04:35:53'),
(2, 1, 1, 3, 'hbscbscsd', '2024-12-11 05:13:01', '2024-12-11 05:13:01'),
(3, 1, 1, 2, 'dasada', '2024-12-12 04:43:34', '2024-12-12 04:43:34'),
(6, 1, 1, 2, 'dasadadsasdsa123', '2024-12-12 04:55:54', '2024-12-12 04:59:36'),
(7, 1, 1, 2, 'dsadsad1213test', '2024-12-12 05:00:31', '2024-12-12 05:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ajay', 'sandesh.gupta@eprotect360.com', NULL, '$2y$10$zLOZ3If.0a9Eo/44u9CEgODF2SGgy4x82NoBOObwRCkRPLFitvV4K', NULL, '2024-12-11 04:13:11', '2024-12-11 04:13:11'),
(2, 'hitesh', 'hitesh@gmail.com', NULL, '$2y$10$a26qDdYrq82IGT23qSKyGuVqILgeVemewCMb87kr6AzxTSEE2cQX6', NULL, '2024-12-12 01:12:08', '2024-12-12 01:12:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_isbn_unique` (`isbn`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
