-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 22 2021 г., 12:06
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `internetmag`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `code`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Мобильные телефоны', 'mobiles', 'В этом разделе вы найдёте самые популярные мобильные телефонамы по отличным ценам!', NULL, NULL, NULL),
(2, 'Портативная техника', 'portable', 'Раздел с портативной техникой', NULL, NULL, NULL),
(3, 'Бытовая техника', 'technix', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2021_10_13_023106_create_products_table', 1),
(5, '2021_10_13_023643_create_categories_table', 1),
(6, '2021_10_14_140143_create_orders_table', 2),
(7, '2021_10_14_140346_create_order_product_table', 2),
(8, '2021_10_21_001014_update_order_product_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `status`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(30, 0, NULL, NULL, '2021-10-20 09:05:53', '2021-10-20 09:05:53'),
(31, 1, '4eda', '+7 (902) 905-21-60', '2021-10-20 20:53:50', '2021-10-20 22:49:10'),
(32, 1, 'Admin', '+7 (950) 920-50-57', '2021-10-20 22:49:15', '2021-10-20 22:50:23'),
(33, 1, 'Roman Mareev', '+7 (902) 905-21-60', '2021-10-20 22:50:40', '2021-10-20 23:08:29'),
(34, 1, 'Admin', '+7 (902) 905-21-60', '2021-10-20 23:10:25', '2021-10-20 23:10:35'),
(35, 0, NULL, NULL, '2021-10-20 23:15:25', '2021-10-20 23:15:25'),
(36, 1, 'Юрий', '+79648996541', '2021-10-22 05:08:09', '2021-10-22 05:33:51'),
(37, 0, NULL, NULL, '2021-10-22 05:36:42', '2021-10-22 05:36:42');

-- --------------------------------------------------------

--
-- Структура таблицы `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `count` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `count`, `created_at`, `updated_at`) VALUES
(1, 13, 2, 1, NULL, NULL),
(2, 13, 2, 1, NULL, NULL),
(3, 13, 5, 1, NULL, NULL),
(4, 13, 1, 1, NULL, NULL),
(5, 13, 1, 1, NULL, NULL),
(6, 13, 5, 1, NULL, NULL),
(7, 25, 8, 1, NULL, NULL),
(8, 25, 1, 1, NULL, NULL),
(9, 25, 8, 1, NULL, NULL),
(10, 25, 8, 1, NULL, NULL),
(11, 25, 8, 1, NULL, NULL),
(12, 25, 8, 1, NULL, NULL),
(13, 25, 8, 1, NULL, NULL),
(14, 27, 1, 1, NULL, NULL),
(15, 27, 1, 1, NULL, NULL),
(16, 27, 1, 1, NULL, NULL),
(17, 29, 1, 1, NULL, NULL),
(18, 30, 1, 1, NULL, NULL),
(34, 31, 2, 3, '2021-10-20 21:39:27', '2021-10-20 22:10:07'),
(35, 31, 4, 1, '2021-10-20 21:53:04', '2021-10-20 22:26:11'),
(37, 31, 1, 3, '2021-10-20 22:31:51', '2021-10-20 22:46:39'),
(38, 32, 1, 1, '2021-10-20 22:49:15', '2021-10-20 22:49:15'),
(39, 33, 5, 2, '2021-10-20 22:50:40', '2021-10-20 22:50:40'),
(40, 34, 1, 2, '2021-10-20 23:10:25', '2021-10-20 23:10:28'),
(41, 35, 1, 1, '2021-10-20 23:15:25', '2021-10-20 23:20:11'),
(42, 35, 9, 1, '2021-10-20 23:15:42', '2021-10-20 23:20:04'),
(43, 36, 1, 2, '2021-10-22 05:08:09', '2021-10-22 05:08:12'),
(44, 36, 2, 1, '2021-10-22 05:33:24', '2021-10-22 05:33:24'),
(45, 36, 7, 1, '2021-10-22 05:33:29', '2021-10-22 05:33:29'),
(46, 37, 5, 1, '2021-10-22 05:38:25', '2021-10-22 05:38:25');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `code`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'iPhone X 64GB', 'iphone_x_64', 'Отличный продвинутый телефон с памятью на 64 gb', NULL, 71990, NULL, NULL),
(2, 1, 'iPhone X 256GB', 'iphone_x_256', 'Отличный продвинутый телефон с памятью на 256 gb', NULL, 89990, NULL, NULL),
(3, 1, 'HTC One S', 'htc_one_s', 'Зачем платить за лишнее? Легендарный HTC One S', NULL, 12490, NULL, NULL),
(4, 1, 'iPhone 5SE', 'iphone_5se', 'Отличный классический iPhone', NULL, 17221, NULL, NULL),
(5, 2, 'Наушники Beats Audio', 'beats_audio', 'Отличный звук от Dr. Dre', NULL, 20221, NULL, NULL),
(6, 2, 'Камера GoPro', 'gopro', 'Снимай самые яркие моменты с помощью этой камеры', NULL, 12000, NULL, NULL),
(7, 2, 'Камера Panasonic HC-V770', 'panasonic_hc-v770', 'Для серьёзной видео съемки нужна серьёзная камера. Panasonic HC-V770 для этих целей лучший выбор!', NULL, 27900, NULL, NULL),
(8, 3, 'Кофемашина DeLongi', 'delongi', 'Хорошее утро начинается с хорошего кофе!', NULL, 25200, NULL, NULL),
(9, 3, 'Холодильник Haier', 'haier', 'Для большой семьи большой холодильник!', NULL, 40200, NULL, NULL),
(10, 3, 'Блендер Moulinex', 'moulinex', 'Для самых смелых идей', NULL, 4200, NULL, NULL),
(11, 3, 'Мясорубка Bosch', 'bosch', 'Любите домашние котлеты? Вам определенно стоит посмотреть на эту мясорубку!', NULL, 9200, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Roman', '4eda777@mail.ru', NULL, '$2y$10$KFV0KKFxxuq7Vjax2P6DW.QxpRg/6xJ4DIwO2/tibjPTzrCQphHdC', NULL, '2021-10-22 03:47:21', '2021-10-22 03:47:21'),
(2, 'Admin', 'Admin@admin.ru', NULL, '$2y$10$X6rki9I4WxRsnYnKL.Oz8ut9wN9Fi7mkJggBeFti5JnWFzBY2SqK2', NULL, '2021-10-22 05:01:21', '2021-10-22 05:01:21');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
