-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 02:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'esse', 'repudiandae-explicabo-commodi-velit-ut-quidem-veritatis-omnis', '2023-11-30 21:44:41', '2023-11-30 21:44:41'),
(2, 'voluptatem', 'distinctio-aut-est-facere', '2023-11-30 21:44:41', '2023-11-30 21:44:41'),
(3, 'velit', 'iure-nihil-esse-possimus-deserunt', '2023-11-30 21:44:41', '2023-11-30 21:44:41'),
(4, 'et', 'odio-dolorem-doloremque-qui-at-tempora-expedita-soluta', '2023-11-30 21:44:41', '2023-11-30 21:44:41'),
(5, 'ut', 'et-sunt-odit-libero-labore-odit', '2023-11-30 21:44:41', '2023-11-30 21:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(112, '2014_10_12_000000_create_users_table', 1),
(113, '2014_10_12_100000_create_password_resets_table', 1),
(114, '2019_08_19_000000_create_failed_jobs_table', 1),
(115, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(116, '2023_11_22_050624_create_posts_table', 1),
(117, '2023_11_22_092735_create_categories_table', 1),
(118, '2023_11_29_070922_create_comments_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `slug`, `title`, `thumbnail`, `excerpt`, `body`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 1, 1, 'harum-fugit-rerum-totam-quos-qui-neque-ratione', 'Molestias qui ut nemo recusandae vero facilis et.', 'thumbnails/1aLRrovlOlXig52hcArChZpxDmFh8Qft7kCND6za.jpg', '<p>Ipsam est explicabo consectetur quis maxime. Ex minima eum rerum omnis labore natus eos. Minus non dolore dignissimos nihil error dignissimos nihil.</p><p>Nihil est autem consequatur ex. Delectus non fuga voluptatem mollitia. Nobis animi consequatur possimus eaque ut.</p>', '<p>Vero debitis qui et aut. Id quo nihil nemo doloremque est id. Libero nobis est et molestiae quia id dolorum. Dolorem saepe cum iure non sed.</p><p>Dolore nulla ipsum voluptatibus at ipsam quia. Et omnis eum vel ratione. Nobis quos sed quia voluptatem.</p><p>Aut inventore repudiandae omnis quia quibusdam. Explicabo esse repudiandae eius rem rerum. Modi laboriosam dolores sapiente aut eum voluptas. Temporibus reiciendis rerum dolore nihil quisquam neque vitae.</p><p>Laudantium et sit nostrum ea ad molestias. Velit tempora accusantium veritatis ipsum ab recusandae. Sed ipsum perferendis ut facere placeat.</p><p>Distinctio tempore commodi totam. Tempora voluptatibus maxime voluptates aut consequatur dolorem quia. Rerum accusantium ad reiciendis velit odio est facere quidem. Unde eum cumque itaque sint.</p><p>Praesentium eaque nobis quo molestiae cum. Voluptatem hic reiciendis officia quibusdam ex. Ut autem tenetur et. Odit laudantium odio dolore omnis. Consectetur id et assumenda itaque voluptate nisi.</p>', '2023-11-30 21:44:41', '2023-12-04 19:06:09', NULL),
(2, 1, 2, 'ut-fugiat-saepe-ipsam-molestiae', 'Sint sunt non voluptas consequatur quam facere.', 'thumbnails/XZOSS8l2UBomTq3kKLpD9rdRNVZkh8Wx7WVwhH1f.jpg', '<p>Enim laboriosam sed explicabo quam. Molestias quia officiis saepe distinctio praesentium itaque. Aut dolorem est saepe a debitis non quae.</p><p>Vero dolorum est omnis. Voluptate at minus corrupti et praesentium facere. Aliquid eligendi qui quia voluptatem repudiandae quod. Necessitatibus est velit architecto. Culpa itaque ducimus ea dolores voluptate.</p>', '<p>Itaque ut perspiciatis expedita nesciunt. Eaque corrupti est libero ex. Quasi sed aut odio molestiae eum optio. Repellat dolore suscipit et explicabo sed.</p><p>Ullam explicabo dolore eveniet laboriosam. Ducimus id officiis beatae dolores et. Ullam excepturi facilis non quis asperiores delectus. Quis est praesentium placeat perferendis ad consequatur tempora.</p><p>Dolore consectetur laudantium sint est. Omnis illo voluptatum laborum temporibus nihil aliquid.</p><p>Minus laudantium id et at architecto ut. Deleniti quo totam ipsam magni quia corrupti voluptate. Incidunt excepturi recusandae ut quasi est praesentium deleniti. Tempore expedita autem cupiditate natus voluptatem sint.</p><p>Praesentium distinctio corrupti nihil quaerat sed rem. Ducimus soluta numquam quam. Suscipit eveniet ab placeat praesentium delectus perspiciatis.</p><p>In qui iure placeat dolore ipsa ut et est. Porro accusamus et eius velit omnis unde. Accusantium molestias ut eum consequatur quia distinctio maiores.</p>', '2023-11-30 21:44:41', '2023-12-04 19:06:41', NULL),
(3, 1, 3, 'ipsum-quia-architecto-amet-excepturi-officiis', 'Rerum esse eum minus.', 'thumbnails/sypABDhsS3Upy8kpWS1Wd6hRT6l4b4TYiBFyKd02.jpg', '<p>Quos facilis ut cupiditate dolor natus error accusamus iste. Facere blanditiis ipsam blanditiis sed eum. Quia placeat velit veritatis.</p><p>Veniam repellendus et reiciendis accusamus. Explicabo necessitatibus expedita natus sunt rerum omnis nesciunt. Rerum adipisci alias vero est placeat quia aliquam corrupti.</p>', '<p>Possimus veniam eaque veniam et. Dolores beatae totam voluptatem aut consectetur maiores eaque quos. Placeat iste non temporibus nihil eaque. Et qui recusandae qui qui.</p><p>Ea ipsum iure officia accusamus et quis sit. Ipsum repellendus qui sit id rerum. Facilis eum ipsum ullam et ea sit accusamus harum. Unde tempora labore quos delectus deleniti voluptatum.</p><p>Aspernatur saepe quas perspiciatis quia iure nesciunt commodi. Optio laborum et soluta et eos. Minus occaecati fugiat iusto est ipsa.</p><p>Quia quaerat dolorem est sed. Nihil fugiat et architecto quo alias reprehenderit vel. Cum odit quia error sed iure est nulla qui. Ducimus id inventore minus reprehenderit.</p><p>Provident et facere pariatur unde voluptatem similique. Ipsa accusantium earum earum provident asperiores aut rerum. In aperiam et provident nesciunt. Magni et assumenda sunt est necessitatibus aperiam odio.</p><p>Totam at nesciunt mollitia voluptatem accusamus consequuntur. Dolorum ratione vitae rerum ut adipisci nisi. Id eligendi quo at libero.</p>', '2023-11-30 21:44:41', '2023-12-04 19:06:51', NULL),
(4, 1, 4, 'rerum-vitae-debitis-quos-exercitationem', 'Perspiciatis incidunt velit tempore nisi harum blanditiis id voluptas.', 'thumbnails/B26GBMXLdiq32zk3rzRkw7RZq5HtbzVKMBQ1de8E.jpg', '<p>Molestias alias provident ex possimus quas. Possimus atque velit incidunt sit rem eius omnis. Quia nihil optio aut et voluptas.</p><p>Tenetur rerum beatae recusandae. Error vel consequatur iste animi non odio blanditiis. Laborum in culpa quas voluptate rerum culpa id. Autem et voluptatem porro alias hic voluptatem asperiores quo.</p>', '<p>Occaecati aut est voluptatem blanditiis non sint similique. Molestiae illo aut perspiciatis aliquam non.</p><p>Pariatur quia porro sapiente consequatur asperiores accusamus. Doloremque reiciendis magni quo dignissimos. Et sed alias accusantium dolores.</p><p>Officiis sit ut est aut et inventore vel. Minima rerum dicta quas autem. Quidem velit quaerat enim nulla ut perferendis quaerat.</p><p>Eum eaque rerum inventore dolore. Et sint ut non. Repellat voluptas corrupti necessitatibus dolor neque laboriosam.</p><p>Dignissimos exercitationem cupiditate voluptatem eos laudantium sint. Quod molestias consectetur omnis repudiandae voluptatem et. Nihil assumenda ea ut saepe.</p><p>Est corporis quis eum dolorem delectus maiores sit eos. Voluptas recusandae quos est sint eos vitae non sit. Laudantium consectetur neque vel odio dicta repellendus voluptate sed. Aperiam recusandae dolores a quo quibusdam reprehenderit.</p>', '2023-11-30 21:44:41', '2023-12-04 19:07:01', NULL),
(5, 1, 5, 'et-est-aut-aliquid-aut-qui-qui-dolor-distinctio', 'Quae non et eos nobis consequatur eius voluptatem quisquam.', 'thumbnails/GimdhEMRaTYUVput5g7j3VhibThRcOlgmKGwsflz.jpg', '<p>Expedita architecto et inventore quia labore dolore est. Est possimus error doloribus voluptatem. Omnis ratione et assumenda facilis. Vel quis harum veniam qui. Aspernatur quia et aliquid.</p><p>Rerum debitis excepturi natus. Nihil repellat nobis labore cumque. Nam delectus unde minima magnam eos voluptates. Et atque rerum est fugiat quis.</p>', '<p>Aut necessitatibus suscipit culpa. Ut sint sunt cupiditate voluptas. Quo hic et doloribus. Dolores minima odit fugit laborum quibusdam quos delectus.</p><p>Fugiat et vitae aliquid voluptatem assumenda saepe adipisci. Ut possimus veritatis laboriosam ut eos voluptatem. Est voluptas omnis commodi quidem. Qui ea vel quas necessitatibus fuga.</p><p>Harum laborum cumque cumque atque doloremque est est. Ea minus magnam magnam debitis non deserunt.</p><p>Et quidem corporis esse atque vero porro eum. Cupiditate ut ratione incidunt sint dignissimos.</p><p>Amet expedita id aut soluta cumque aut. Et vel vel illo consequuntur sunt. Nostrum optio voluptate sit quis ut earum.</p><p>Minus non et enim minus occaecati nisi nobis sit. Veritatis consequatur earum perspiciatis in qui rerum asperiores. Est omnis reiciendis praesentium ullam id in voluptatibus.</p>', '2023-11-30 21:44:41', '2023-12-04 19:07:10', NULL),
(6, 2, 5, 'sapiente itaque consequuntur explicabo blanditiis?', 'Voluptas sint molestias', 'thumbnails/bWf48Gj0bLLJd5jCR81ZkHBiRFOKGhXsIwbxXhoP.jpg', 'Voluptas sint molestias quasi amet maiores nostrum ullam iste veniam', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea repudiandae veniam accusantium perferendis beatae. Voluptas sint molestias quasi amet maiores nostrum ullam iste veniam, facilis sapiente itaque consequuntur explicabo blanditiis?', '2023-11-30 21:48:28', '2023-12-04 19:05:41', NULL),
(7, 2, 2, 'Lorem ipsum dolor sit amet', 'consectetur adipisicing elit', 'thumbnails/UtLJKjOpnbV14hGGDP6DyPJUm8ZHP6HuuqT9eWqE.jpg', 'facilis sapiente itaque consequuntur explicabo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea repudiandae veniam accusantium perferendis beatae. Voluptas sint molestias quasi amet maiores nostrum ullam iste veniam, facilis sapiente itaque consequuntur explicabo blanditiis?', '2023-11-30 21:58:41', '2023-12-04 19:05:07', NULL),
(8, 2, 3, 'omnis nulla nobis aut eos repellendus quisquam', 'repellendus quisquam', 'thumbnails/tdZ7MUslIHOlPkwATrF7U6Hqmb6G1kEwfDtUQLWm.jpg', 'esse maxime fugit soluta!', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quos consequuntur accusamus modi qui culpa omnis nulla nobis aut eos repellendus quisquam officia iure laudantium architecto cumque, esse maxime fugit soluta!', '2023-11-30 22:16:32', '2023-12-04 19:03:49', NULL),
(9, 2, 4, 'Lorem, ipsum dolor', 'Lorem, ipsum dolor sit amet', 'thumbnails/TMqPmRZxrxk8XYaCVSAxtVkDDKx3pf5XFlm07D2w.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit.', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quos consequuntur accusamus modi qui culpa omnis nulla nobis aut eos repellendus quisquam officia iure laudantium architecto cumque, esse maxime fugit soluta!', '2023-11-30 22:17:53', '2023-12-04 19:01:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gwendolyn21', 'John Doe', 'virgie56@example.com', '2023-11-30 21:44:41', '$2y$10$N.43kvgowI.JacuhY9U7zOh8dDhg9UnVanhljmQq4jjHuyKmDW1Gi', 'FN3syKeiD0', '2023-11-30 21:44:41', '2023-11-30 21:44:41'),
(2, 'DoeJohnn23', 'John', 'DoeJohnn23@gmail.com', NULL, '$2y$10$2YK2fZqz8QAc0XYFXQtHdePXddsJ8LAVyYXwd2gNObj1j1ePGgvt6', NULL, '2023-11-30 21:45:29', '2023-11-30 21:45:29'),
(3, 'Wampu23', 'Wampu', 'Wampu23@gmail.com', NULL, '$2y$10$9G0cfpobtgKY6t0UvzKkweax5JE5UnXucL5LIN.80kT3ASEM0theu', NULL, '2023-12-01 00:59:02', '2023-12-01 00:59:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
