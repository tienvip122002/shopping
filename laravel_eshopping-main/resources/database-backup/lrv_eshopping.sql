-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 19, 2023 lúc 12:00 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lrv_eshopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Computer', 0, 'computer', NULL, NULL, NULL),
(2, 'Clothe', 0, 'clothe', NULL, NULL, NULL),
(3, 'Laptop', 1, 'laptop', NULL, NULL, NULL),
(4, 'Male clothe', 2, 'male-clothe', NULL, '2023-02-07 02:18:27', NULL),
(5, 'Dell', 3, 'dell', NULL, NULL, NULL),
(6, 'Asus', 3, 'asus', '2023-02-06 03:11:29', '2023-02-06 03:11:29', NULL),
(8, 'House', 0, 'house', '2023-02-06 03:30:23', '2023-02-06 03:30:23', NULL),
(9, 'Gaming Gear Vn', 0, 'gaming-gear-vn', '2023-02-06 03:31:51', '2023-02-07 02:17:07', NULL),
(10, 'Cpu', 9, 'cpu', '2023-02-07 02:29:22', '2023-02-07 02:29:25', '2023-02-07 02:29:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Menu 1', 0, '', NULL, NULL, NULL),
(2, 'Menu 2', 0, '', NULL, NULL, NULL),
(3, 'Menu 1.1', 1, '', NULL, NULL, NULL),
(4, 'Menu 1.2', 1, '', NULL, NULL, NULL),
(5, 'Menu 2.1', 2, '', NULL, NULL, NULL),
(6, 'Menu 1.1.1', 3, '', NULL, NULL, NULL),
(7, 'Menu 1.1.2', 3, '', '2023-02-07 03:37:09', '2023-02-07 03:37:09', NULL),
(8, 'Menu 1.2.1', 4, 'menu-121', '2023-02-07 03:57:02', '2023-02-08 00:48:53', '2023-02-08 00:48:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_06_081745_create_categories_table', 1),
(6, '2023_02_07_092314_add_column_deleted_at_table_categories', 2),
(7, '2023_02_07_093233_create_menus_table', 3),
(8, '2023_02_07_104405_add_column_slug_to_menus_table', 4),
(9, '2023_02_08_073431_add_column_delete_at_to_menus_table', 5),
(10, '2023_02_08_083040_create_products_table', 6),
(11, '2023_02_08_083334_create_product_images_table', 6),
(12, '2023_02_08_083453_create_tags_table', 6),
(13, '2023_02_08_083534_create_product_tags_table', 6),
(14, '2023_02_10_080822_add_column_feature_image_name_to_products_table', 7),
(15, '2023_02_10_082254_add_column_image_name_to_products_image_table', 8),
(16, '2023_02_13_075711_add_column_deleted_at_to_products_table', 9),
(17, '2023_02_14_073814_create_sliders_table', 10),
(18, '2023_02_15_054624_add_column_delete_at_to_sliders', 11),
(19, '2023_02_15_060257_create_settings_table', 12),
(20, '2023_02_15_090450_add_column_type_settings', 13),
(21, '2023_02_16_081414_create_roles_table', 14),
(22, '2023_02_16_081449_create_permissions_table', 14),
(23, '2023_02_16_081614_create_table_role_user', 14),
(24, '2023_02_16_081657_create_table_permission_role', 14),
(25, '2023_02_16_093805_add_column_deleted_at_to_users', 15),
(26, '2023_02_18_084305_add_column_parent_id_permission', 16),
(27, '2023_02_18_093219_add_column_key_code_to_permission_table', 17),
(28, '2023_02_18_103609_add_column_delete_at_role', 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `parent_id`, `key_code`) VALUES
(1, 'categories', 'categories', '2023-02-19 00:35:31', '2023-02-19 00:35:31', 0, NULL),
(2, 'show', 'show', '2023-02-19 00:35:31', '2023-02-19 00:35:31', 1, 'categories_show'),
(3, 'add', 'add', '2023-02-19 00:35:31', '2023-02-19 00:35:31', 1, 'categories_add'),
(4, 'update', 'update', '2023-02-19 00:35:31', '2023-02-19 00:35:31', 1, 'categories_update'),
(5, 'delete', 'delete', '2023-02-19 00:35:31', '2023-02-19 00:35:31', 1, 'categories_delete'),
(6, 'sliders', 'sliders', '2023-02-19 00:36:27', '2023-02-19 00:36:27', 0, NULL),
(7, 'show', 'show', '2023-02-19 00:36:27', '2023-02-19 00:36:27', 6, 'sliders_show'),
(8, 'add', 'add', '2023-02-19 00:36:27', '2023-02-19 00:36:27', 6, 'sliders_add'),
(9, 'update', 'update', '2023-02-19 00:36:27', '2023-02-19 00:36:27', 6, 'sliders_update'),
(10, 'delete', 'delete', '2023-02-19 00:36:27', '2023-02-19 00:36:27', 6, 'sliders_delete'),
(11, 'products', 'products', '2023-02-19 00:36:57', '2023-02-19 00:36:57', 0, NULL),
(12, 'show', 'show', '2023-02-19 00:36:57', '2023-02-19 00:36:57', 11, 'products_show'),
(13, 'add', 'add', '2023-02-19 00:36:57', '2023-02-19 00:36:57', 11, 'products_add'),
(14, 'update', 'update', '2023-02-19 00:36:57', '2023-02-19 00:36:57', 11, 'products_update'),
(15, 'delete', 'delete', '2023-02-19 00:36:57', '2023-02-19 00:36:57', 11, 'products_delete'),
(16, 'users', 'users', '2023-02-19 00:37:03', '2023-02-19 00:37:03', 0, NULL),
(17, 'show', 'show', '2023-02-19 00:37:03', '2023-02-19 00:37:03', 16, 'users_show'),
(18, 'add', 'add', '2023-02-19 00:37:03', '2023-02-19 00:37:03', 16, 'users_add'),
(19, 'update', 'update', '2023-02-19 00:37:03', '2023-02-19 00:37:03', 16, 'users_update'),
(20, 'delete', 'delete', '2023-02-19 00:37:03', '2023-02-19 00:37:03', 16, 'users_delete'),
(21, 'roles', 'roles', '2023-02-19 00:37:09', '2023-02-19 00:37:09', 0, NULL),
(22, 'show', 'show', '2023-02-19 00:37:09', '2023-02-19 00:37:09', 21, 'roles_show'),
(23, 'add', 'add', '2023-02-19 00:37:09', '2023-02-19 00:37:09', 21, 'roles_add'),
(24, 'update', 'update', '2023-02-19 00:37:09', '2023-02-19 00:37:09', 21, 'roles_update'),
(25, 'delete', 'delete', '2023-02-19 00:37:09', '2023-02-19 00:37:09', 21, 'roles_delete'),
(26, 'menus', 'menus', '2023-02-19 00:37:16', '2023-02-19 00:37:16', 0, NULL),
(27, 'show', 'show', '2023-02-19 00:37:16', '2023-02-19 00:37:16', 26, 'menus_show'),
(28, 'add', 'add', '2023-02-19 00:37:16', '2023-02-19 00:37:16', 26, 'menus_add'),
(29, 'update', 'update', '2023-02-19 00:37:16', '2023-02-19 00:37:16', 26, 'menus_update'),
(30, 'delete', 'delete', '2023-02-19 00:37:16', '2023-02-19 00:37:16', 26, 'menus_delete'),
(31, 'settings', 'settings', '2023-02-19 00:37:24', '2023-02-19 00:37:24', 0, NULL),
(32, 'show', 'show', '2023-02-19 00:37:24', '2023-02-19 00:37:24', 31, 'settings_show'),
(33, 'add', 'add', '2023-02-19 00:37:24', '2023-02-19 00:37:24', 31, 'settings_add'),
(34, 'update', 'update', '2023-02-19 00:37:24', '2023-02-19 00:37:24', 31, 'settings_update'),
(35, 'delete', 'delete', '2023-02-19 00:37:24', '2023-02-19 00:37:24', 31, 'settings_delete');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 5, 2, NULL, NULL),
(3, 5, 4, NULL, NULL),
(4, 5, 5, NULL, NULL),
(5, 5, 7, NULL, NULL),
(6, 5, 8, NULL, NULL),
(7, 5, 3, NULL, NULL),
(13, 3, 4, NULL, NULL),
(16, 1, 7, NULL, NULL),
(17, 1, 8, NULL, NULL),
(18, 1, 9, NULL, NULL),
(19, 1, 10, NULL, NULL),
(20, 1, 12, NULL, NULL),
(21, 1, 13, NULL, NULL),
(22, 1, 14, NULL, NULL),
(23, 1, 15, NULL, NULL),
(24, 1, 17, NULL, NULL),
(25, 1, 18, NULL, NULL),
(26, 1, 19, NULL, NULL),
(27, 1, 20, NULL, NULL),
(28, 1, 22, NULL, NULL),
(29, 1, 23, NULL, NULL),
(30, 1, 24, NULL, NULL),
(31, 1, 25, NULL, NULL),
(32, 1, 27, NULL, NULL),
(33, 1, 28, NULL, NULL),
(34, 1, 29, NULL, NULL),
(35, 1, 30, NULL, NULL),
(36, 1, 32, NULL, NULL),
(37, 1, 33, NULL, NULL),
(38, 1, 34, NULL, NULL),
(39, 1, 35, NULL, NULL),
(40, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_name`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Cats', '200000', 'meo3.jpg', '/storage/product/1/1SYPi863S6NQRIDeKAj5.jpg', '<p>Cat is cute :v</p>', 1, 8, '2023-02-10 02:50:37', '2023-02-13 00:02:16', NULL),
(8, 'aasdasdasdasdasdasdads', '200000', NULL, NULL, '<p>asd</p>', 1, 1, '2023-02-15 02:59:22', '2023-02-15 02:59:25', '2023-02-15 02:59:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_name`, `image_path`, `product_id`, `created_at`, `updated_at`) VALUES
(12, 'meo4.jpg', '/storage/product/1/cK7U3pyBBCPTBPdw2ram.jpg', 5, '2023-02-13 00:02:16', '2023-02-13 00:02:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(5, 5, 4, '2023-02-10 02:50:37', '2023-02-10 02:50:37'),
(6, 5, 5, '2023-02-13 00:02:16', '2023-02-13 00:02:16'),
(7, 6, 4, '2023-02-13 00:41:11', '2023-02-13 00:41:11'),
(8, 7, 4, '2023-02-13 01:08:43', '2023-02-13 01:08:43'),
(9, 8, 6, '2023-02-15 02:59:22', '2023-02-15 02:59:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Quan tri he thong', NULL, NULL, NULL),
(2, 'guest', 'Khach hang', NULL, '2023-02-18 03:38:42', '2023-02-18 03:38:42'),
(3, 'developer', 'Phat trien he thong', NULL, NULL, NULL),
(4, 'content', 'Chinh sua noi dung', NULL, NULL, NULL),
(5, 'editer 1', 'editer 1', '2023-02-18 03:13:05', '2023-02-18 03:33:24', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(5, 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`) VALUES
(3, 'phone_contact3', '0123123123ab', '2023-02-15 02:12:02', '2023-02-15 03:22:37', 'Textarea'),
(4, 'phone_contact22', '0773518864', '2023-02-15 03:23:04', '2023-02-15 03:23:04', 'Text');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_name`, `image_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Meo 2', 'Meo 2', 'meo2.jpg', '/storage/slider/1/zNcYRyEFJFz2buONlADz.jpg', '2023-02-14 22:34:47', '2023-02-14 22:34:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Cat', '2023-02-10 02:50:37', '2023-02-10 02:50:37'),
(5, 'Cute', '2023-02-13 00:02:16', '2023-02-13 00:02:16'),
(6, 'asdasd', '2023-02-15 02:59:22', '2023-02-15 02:59:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nhat', 'pnhat1209@gmail.com', NULL, '$2y$10$VO2hmNi1IZk5UqY705Mkberd2scSs8u3ejaEMz/hkwi0cwT2Xp4ES', NULL, NULL, '2023-02-16 02:48:33', '2023-02-16 02:48:33'),
(3, 'Nhat Admin', 'pnhat0914@gmail.com', NULL, '$2y$10$Rb1ViiSTUUtgMpeuoijptOhMXDqKEgdtSm0fCStcO8s24TdvxbZAi', NULL, '2023-02-16 02:07:52', '2023-02-18 23:41:30', NULL),
(4, 'Nhat Guest', 'psam3299@gmail.com', NULL, '$2y$10$yck4LpJceVAFPXEp8nuM3Osc1DfEnZPaOko1/mA90sc3PpzJqgH5G', NULL, '2023-02-16 02:12:17', '2023-02-18 23:41:24', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
