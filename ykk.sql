-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2023 at 05:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ykk`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'dashboard_title', 'City innovates 1', '2023-01-18 11:45:26', '2023-01-19 03:58:11'),
(2, 'dashboard_logo', '26', '2023-01-18 23:45:40', '2023-01-19 00:14:22'),
(3, 'dashboard_copyright', '© 2023, Designed by <a href=\"#\" target=\"_blank\">City innovates</a>', '2023-01-19 00:14:21', '2023-01-19 00:16:22'),
(4, 'dashboard_login_background', '27', '2023-01-19 00:25:33', '2023-01-19 00:30:57'),
(5, 'dashboard_registration_background', '28', '2023-01-19 00:27:24', '2023-01-19 00:29:24'),
(6, 'site_title', 'Multi Backend Meta Title (Default)', '2023-01-19 00:51:02', '2023-01-19 03:57:06'),
(7, 'site_copyright', '@ copyright Backend', '2023-01-19 00:51:02', '2023-01-19 00:51:24'),
(8, 'site_logo', '26', '2023-01-19 00:51:02', '2023-01-19 00:51:14'),
(9, 'site_login_background', '27', '2023-01-19 00:53:22', '2023-01-19 00:53:38'),
(10, 'site_registration_background', '28', '2023-01-19 00:53:22', '2023-01-19 00:53:38'),
(11, 'dashboard_theme_color', 'light', '2023-01-19 01:12:19', '2023-01-19 23:46:32'),
(12, 'dashboard_base_color', 'orange', '2023-01-19 01:48:03', '2023-01-19 23:46:32'),
(13, 'dashboard_rtl_version', 'null', '2023-01-19 02:14:46', '2023-01-19 23:46:32'),
(14, 'dashboard_mini_sidebar', 'mini_sidebar', '2023-01-19 02:14:46', '2023-01-19 03:21:28'),
(15, 'site_meta_description', 'Meta Description Test', '2023-01-19 03:50:04', '2023-01-19 03:57:06'),
(16, 'site_meta_keyword', 'Meta Title (Default)', '2023-01-19 03:53:10', '2023-01-19 03:57:06'),
(17, 'site_fav_icon', '29', '2023-01-19 03:59:56', '2023-01-19 03:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `parent` int(11) NOT NULL DEFAULT 0,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `type`, `order`, `url`, `level`, `user_id`, `parent`, `setting`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Home', 'footer_menu', 10, '#', 1, 1, 0, '{\"target\":\"0\",\"class\":\"fsdfsd\"}', 0, '2023-01-22 18:30:00', '2023-01-24 06:20:47'),
(3, 'About Us', 'header_menu', 10, '#', 1, 1, 0, '{\"target\":\"0\",\"class\":null}', 0, '2023-01-22 18:30:00', '2023-01-24 06:16:44'),
(4, 'Contact Us', 'header_menu', 10, '#', 2, 1, 3, '{\"target\":\"0\",\"class\":\"fsdfsd\"}', 0, '2023-01-22 18:30:00', '2023-01-24 06:16:44'),
(5, 'Tes', 'header_menu', 20, 'sdfsd', 1, 1, 0, '{\"target\":\"0\",\"class\":null}', 0, '2023-01-22 18:30:00', '2023-01-24 06:16:44'),
(6, 'Services', 'footer_menu', 20, '#', 1, 1, 0, '{\"target\":\"0\",\"class\":null}', 0, '2023-01-23 18:30:00', '2023-01-24 06:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(27, '2014_10_12_000000_create_users_table', 1),
(28, '2014_10_12_100000_create_password_resets_table', 1),
(29, '2019_08_19_000000_create_failed_jobs_table', 1),
(30, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(31, '2023_01_13_103240_create_translations_table', 1),
(32, '2023_01_14_051328_create_business_settings_table', 1),
(33, '2023_01_16_070735_create_uploads_table', 1),
(36, '2023_01_17_051117_create_pages_table', 2),
(37, '2023_01_19_123854_create_roles_table', 3),
(40, '2023_01_19_160008_create_role_permissions_table', 4),
(45, '2023_01_23_125615_create_menus_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `meta_fields` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `visitor` bigint(20) NOT NULL DEFAULT 0,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `banner`, `template`, `is_meta`, `status`, `meta_fields`, `order`, `visitor`, `meta_title`, `meta_description`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'custom_page', 'About Us', 'about-us', 'Test', '9', 'default_template', 0, 1, NULL, 20, 0, 'About Us', 'About Us', 'About Us', '2023-01-17 18:30:00', '2023-01-19 07:43:18'),
(2, 'custom_page', 'Contact Us', 'contact-us', 'Test', '29', 'default_template', 0, 1, NULL, 0, 0, 'Contact Us', 'Contact Us', 'Contact Us', '2023-01-17 18:30:00', '2023-01-19 02:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"15\",\"16\",\"18\",\"19\",\"20\",\"22\",\"23\",\"25\",\"26\",\"29\",\"30\",\"31\",\"32\",\"33\",\"35\"]', '2018-10-09 23:09:47', '2022-07-29 18:25:30'),
(2, 'Accountant', '[\"1\",\"10\",\"15\",\"19\"]', '2018-10-09 23:22:09', '2022-07-29 18:18:38'),
(6, 'Editor', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', '2022-07-29 18:20:52', '2022-07-29 18:27:43'),
(7, 'Customer Supprot', '[\"1\",\"9\",\"13\",\"15\",\"17\",\"18\",\"21\",\"26\",\"27\",\"28\"]', '2022-07-28 18:30:00', '2023-01-19 12:42:42'),
(8, 'SEO Team', '[\"5\",\"6\",\"8\",\"9\",\"11\",\"12\",\"14\",\"15\",\"17\",\"18\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"32\",\"33\",\"34\"]', '2023-11-15 18:30:00', '2023-01-19 23:48:48'),
(9, 'Pick up Points', '[\"1\",\"8\",\"13\",\"15\",\"16\"]', '2022-07-29 20:03:20', '2022-07-29 20:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keys` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `name`, `keys`, `status`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', 1, 0, '2023-01-19 11:16:34', '2023-01-19 11:16:34'),
(5, 'Media', 'media', 1, 0, '2023-01-19 11:16:46', '2023-01-19 11:19:34'),
(6, 'Media Add', 'media_add', 0, 5, '2023-01-19 11:16:46', '2023-01-19 11:20:03'),
(8, 'Media Delete', 'media_delete', 1, 5, '2023-01-19 11:16:46', '2023-01-19 11:16:46'),
(9, 'Pages', 'pages', 1, 0, '2023-01-19 11:44:34', '2023-01-19 11:44:34'),
(11, 'Pages Edit', 'pages_edit', 1, 9, '2023-01-19 11:44:34', '2023-01-19 11:44:34'),
(12, 'Pages Delete', 'pages_delete', 1, 9, '2023-01-19 11:44:34', '2023-01-19 11:44:34'),
(13, 'Users', 'users', 1, 0, '2023-01-19 11:45:13', '2023-01-19 11:45:13'),
(14, 'Users Add', 'users_add', 1, 13, '2023-01-19 11:45:13', '2023-01-19 11:45:13'),
(15, 'Users Edit', 'users_edit', 1, 13, '2023-01-19 11:45:13', '2023-01-19 11:45:13'),
(17, 'Roles', 'roles', 1, 0, '2023-01-19 12:12:21', '2023-01-19 12:12:21'),
(18, 'Roles Add', 'roles_add', 1, 17, '2023-01-19 12:12:21', '2023-01-19 12:12:21'),
(19, 'Roles Edit', 'roles_edit', 1, 17, '2023-01-19 12:12:21', '2023-01-19 12:12:21'),
(20, 'Roles Delete', 'roles_delete', 1, 17, '2023-01-19 12:12:21', '2023-01-19 12:12:21'),
(21, 'Permissions', 'permissions', 1, 0, '2023-01-19 12:12:37', '2023-01-19 12:12:37'),
(22, 'Permissions Add', 'permissions_add', 1, 21, '2023-01-19 12:12:37', '2023-01-19 12:12:37'),
(23, 'Permissions Edit', 'permissions_edit', 1, 21, '2023-01-19 12:12:38', '2023-01-19 12:12:38'),
(24, 'Permissions Delete', 'permissions_delete', 1, 21, '2023-01-19 12:12:38', '2023-01-19 12:12:38'),
(25, 'Backend Setting', 'backend-setting', 1, 0, '2023-01-19 12:12:48', '2023-01-19 12:12:48'),
(26, 'Backend Setting Add', 'backend-setting_add', 1, 25, '2023-01-19 12:12:48', '2023-01-19 12:12:48'),
(27, 'Backend Setting Edit', 'backend-setting_edit', 1, 25, '2023-01-19 12:12:48', '2023-01-19 12:12:48'),
(28, 'Backend Setting Delete', 'backend-setting_delete', 1, 25, '2023-01-19 12:12:48', '2023-01-19 12:12:48'),
(29, 'Frontend Setting', 'frontend-setting', 1, 0, '2023-01-19 12:12:58', '2023-01-19 12:12:58'),
(30, 'Frontend Setting Add', 'frontend-setting_add', 1, 29, '2023-01-19 12:12:59', '2023-01-19 12:12:59'),
(31, 'Frontend Setting Edit', 'frontend-setting_edit', 1, 29, '2023-01-19 12:12:59', '2023-01-19 12:12:59'),
(32, 'Frontend Setting Delete', 'frontend-setting_delete', 1, 29, '2023-01-19 12:12:59', '2023-01-19 12:12:59'),
(33, 'Profile', 'profile', 1, 0, '2023-01-19 23:48:10', '2023-01-19 23:48:10'),
(34, 'Profile Add', 'profile_add', 1, 33, '2023-01-19 23:48:10', '2023-01-19 23:48:10'),
(35, 'Profile Edit', 'profile_edit', 1, 33, '2023-01-19 23:48:10', '2023-01-19 23:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1, 'en', 'Log in', 'Log in', '2023-01-17 04:01:36', '2023-01-17 04:01:36'),
(2, 'en', 'email', 'email', '2023-01-17 04:01:36', '2023-01-17 04:01:36'),
(3, 'en', 'Password', 'Password', '2023-01-17 04:01:36', '2023-01-17 04:01:36'),
(4, 'en', 'Remember Me', 'Remember Me', '2023-01-17 04:01:36', '2023-01-17 04:01:36'),
(5, 'en', 'SIGN IN', 'SIGN IN', '2023-01-17 04:01:36', '2023-01-17 04:01:36'),
(6, 'en', 'Forget Password', 'Forget Password', '2023-01-17 04:01:36', '2023-01-17 04:01:36'),
(7, 'en', 'Designed by', 'Designed by', '2023-01-17 04:01:36', '2023-01-17 04:01:36'),
(8, 'en', 'Sign Up', 'Sign Up', '2023-01-17 04:01:43', '2023-01-17 04:01:43'),
(9, 'en', 'Register a new membership', 'Register a new membership', '2023-01-17 04:01:44', '2023-01-17 04:01:44'),
(10, 'en', 'Username', 'Username', '2023-01-17 04:01:44', '2023-01-17 04:01:44'),
(11, 'en', 'Enter Email', 'Enter Email', '2023-01-17 04:01:44', '2023-01-17 04:01:44'),
(12, 'en', 'Confirm Password', 'Confirm Password', '2023-01-17 04:01:44', '2023-01-17 04:01:44'),
(13, 'en', 'I read and agree to the', 'I read and agree to the', '2023-01-17 04:01:44', '2023-01-17 04:01:44'),
(14, 'en', 'You already have a membership', 'You already have a membership', '2023-01-17 04:01:44', '2023-01-17 04:01:44'),
(15, 'en', 'Profile', 'Profile', '2023-01-18 11:58:55', '2023-01-18 11:58:55'),
(16, 'en', 'Information', 'Information', '2023-01-18 11:58:55', '2023-01-18 11:58:55'),
(17, 'en', 'Current Password', 'Current Password', '2023-01-18 11:58:55', '2023-01-18 11:58:55'),
(18, 'en', 'Save Changes', 'Save Changes', '2023-01-18 11:58:55', '2023-01-18 11:58:55'),
(19, 'en', 'Account', 'Account', '2023-01-18 11:58:56', '2023-01-18 11:58:56'),
(20, 'en', 'Settings', 'Settings', '2023-01-18 11:58:56', '2023-01-18 11:58:56'),
(21, 'en', 'First Name', 'First Name', '2023-01-18 11:58:57', '2023-01-18 11:58:57'),
(22, 'en', 'Last Name', 'Last Name', '2023-01-18 11:58:57', '2023-01-18 11:58:57'),
(23, 'en', 'City', 'City', '2023-01-18 11:58:57', '2023-01-18 11:58:57'),
(24, 'en', 'E-mail', 'E-mail', '2023-01-18 11:58:57', '2023-01-18 11:58:57'),
(25, 'en', 'Country', 'Country', '2023-01-18 11:58:57', '2023-01-18 11:58:57'),
(26, 'en', 'Address Line 1', 'Address Line 1', '2023-01-18 11:58:57', '2023-01-18 11:58:57'),
(27, 'en', 'Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.', 'Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.', '2023-01-18 23:53:08', '2023-01-18 23:53:08'),
(28, 'en', 'Submit', 'Submit', '2023-01-18 23:53:08', '2023-01-18 23:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_original_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `file_original_name`, `file_title`, `file_path`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`) VALUES
(8, 'Screenshot (18)', 'Screenshot (18)', 'uploads/media/oRUVraQRaDBNZ44aoVYMdBqSW49psqt4sb2vMghp.png', 1, 1426805, 'png', 'image', '2023-01-18 06:59:28', '2023-01-18 06:59:28'),
(9, 'Screenshot (11)', 'Screenshot (11)', 'uploads/media/zxJiLsUeW22vA4B16TbJ7xbPPXuEwb9Zw404Oz1Z.png', 1, 709074, 'png', 'image', '2023-01-18 06:59:42', '2023-01-18 06:59:42'),
(11, 'Screenshot (10)', 'Screenshot (10)', 'uploads/media/pih6DQYrf18vrYywEZXMp2r2k8PMVlHaczJD0n8D.png', 1, 765864, 'png', 'image', '2023-01-18 07:54:50', '2023-01-18 07:54:50'),
(12, 'Screenshot (2)', 'Screenshot (2)', 'uploads/media/fjN8UxZCBFnWppU7R69rdTzx9cnBmY8CcwisdqT9.png', 1, 843972, 'png', 'image', '2023-01-18 07:55:33', '2023-01-18 07:55:33'),
(13, 'Screenshot (8)', 'Screenshot (8)', 'uploads/media/ZnhOve6rRAxOd7RY4J8yb6YfNCmKnBkYJoQiS05c.png', 1, 1012797, 'png', 'image', '2023-01-18 08:35:24', '2023-01-18 08:35:24'),
(14, 'Screenshot (12)', 'Screenshot (12)', 'uploads/media/bmpcOE26NcIcuVxFkpi4sRUmgkLlieREs5dWCRmw.png', 1, 740894, 'png', 'image', '2023-01-18 08:47:50', '2023-01-18 08:47:50'),
(15, 'Screenshot (6)', 'Screenshot (6)', 'uploads/media/cjevkJ4XNWIpkcfDCu7WlgwKg5KB27iahlbmdnxv.png', 1, 1473447, 'png', 'image', '2023-01-18 08:49:03', '2023-01-18 08:49:03'),
(16, '1', '1', 'uploads/media/5pa9oQBHWNkR0n1GqFgME93PJoSXtmUVDOkVuQsy.jpg', 1, 56661, 'jpg', 'image', '2023-01-18 11:53:53', '2023-01-18 11:53:53'),
(17, '2', '2', 'uploads/media/NZq9KE816tQ2XkiwFDZa8M4zGWn9DrbhpCq4onO7.jpg', 1, 81587, 'jpg', 'image', '2023-01-18 11:53:53', '2023-01-18 11:53:53'),
(18, '3', '3', 'uploads/media/Mv1YzEAtRAmoJ2j02pNN79ceVBzYGfGnqzGuCBAw.jpg', 1, 74862, 'jpg', 'image', '2023-01-18 11:53:53', '2023-01-18 11:53:53'),
(19, '4', '4', 'uploads/media/iLRWXlj1FKM5ER4uH0bDKsC0jjKZ68kw3APrrmUo.jpg', 1, 81513, 'jpg', 'image', '2023-01-18 11:53:53', '2023-01-18 11:53:53'),
(20, '5', '5', 'uploads/media/RNpKDbghgRSkhub6XF9AKAbcT7yKstn4fpWCUxRb.jpg', 1, 108860, 'jpg', 'image', '2023-01-18 11:53:53', '2023-01-18 11:53:53'),
(22, 'Kurukshetra University 3rd', 'Kurukshetra University 3rd', 'uploads/media/mQbAVqEoEoa7Y6OvA22SZ6AB8AhUWk80jp5Yx2Wg.pdf', 1, 150533, 'pdf', 'document', '2023-01-18 12:31:05', '2023-01-18 12:31:05'),
(23, 'avatar2', 'avatar2', 'uploads/media/6qg7SUtqkYRmdOjAGICDXE2hGC5aDEZraS3CJzeE.jpg', 1, 42066, 'jpg', 'image', '2023-01-18 12:50:42', '2023-01-18 12:50:42'),
(24, '298640410_1147735766146324_3039084594893964049_n', '298640410_1147735766146324_3039084594893964049_n', 'uploads/media/n1yvcujBWIsF09XcDUHpCzxY3Z9J1akkJiygVP87.jpg', 1, 45425, 'jpg', 'image', '2023-01-18 12:55:56', '2023-01-18 12:55:56'),
(26, 'cityinnovates', 'cityinnovates', 'uploads/media/0dtTLNqxYmM3zYIA1BKLjI0RPAqkcIOW50mrxXU9.png', 1, 8675, 'png', 'image', '2023-01-19 00:14:14', '2023-01-19 00:14:14'),
(27, 'signin', 'signin', 'uploads/media/saN0jVscqvx2mwkBcXLgGpE9aojWsIMmYUFfd8Dc.svg', 1, 13234, 'svg', 'image', '2023-01-19 00:25:22', '2023-01-19 00:25:22'),
(28, 'signup', 'signup', 'uploads/media/FrqDTW0HQGad3cO3rn9poyh91eW0Eg5wxajOUyOp.svg', 1, 26352, 'svg', 'image', '2023-01-19 00:25:22', '2023-01-19 00:25:22'),
(29, 'Fahim', 'Fahim', 'uploads/media/q2tdMQ9UZFSdHf0bc2bVQBEBEIBAXx7IGmAD07Ca.jpg', 1, 5423, 'jpg', 'image', '2023-01-19 02:03:24', '2023-01-19 02:03:24'),
(30, 'dipan-pic', 'dipan-pic', 'uploads/media/iP1hLxjPIkdfOOSUIKp2DNCBModBPobQkU324uQu.jpg', 1, 166345, 'jpg', 'image', '2023-01-19 07:30:50', '2023-01-19 07:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `user_type`, `avatar_original`, `address`, `country`, `city`, `postal_code`, `banned`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dipan Samadder', 'superadmin@gmail.com', NULL, '$2y$10$jJxwLzZA4xjlnXx2n8rJj.vmQ6rE10OWrtI4FXkqmaYC4NGBSTcTK', '7206775826', 'admin', '30', NULL, NULL, NULL, NULL, 0, 0, NULL, '2023-01-17 04:01:53', '2023-01-23 05:36:59'),
(3, 'Dipan Samadder', 'dipansamadder99@gmail.com', NULL, '$2y$10$Vu2NE7zJEp7urdbxhUWvMuOJrt1Jtui3YrOLLVXlC6lvUvMKyxnO.', '7206775827', 'user', '29', NULL, NULL, NULL, NULL, 0, 0, NULL, '2023-01-18 18:30:00', '2023-01-19 11:36:55'),
(5, 'Dipan Samad', 'dipansamadder9@gmail.com', NULL, '$2y$10$8d1.pbyH53IwobOO7lzVUuP9lxNbRu6jUFo4JaJA4TaWewATGM2kS', '7206775827', 'user', '30', NULL, NULL, NULL, NULL, 1, 1, NULL, '2023-01-03 18:30:00', '2023-01-19 07:38:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
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
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
