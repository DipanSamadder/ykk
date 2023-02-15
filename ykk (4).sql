-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 12:37 PM
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
(1, 'dashboard_title', 'YKK', '2023-01-18 11:45:26', '2023-01-24 23:26:05'),
(2, 'dashboard_logo', '31', '2023-01-18 23:45:40', '2023-01-24 23:26:05'),
(3, 'dashboard_copyright', '© 2023, Designed by <a href=\"#\" target=\"_blank\">City innovates</a>', '2023-01-19 00:14:21', '2023-01-19 00:16:22'),
(4, 'dashboard_login_background', '27', '2023-01-19 00:25:33', '2023-01-19 00:30:57'),
(5, 'dashboard_registration_background', '28', '2023-01-19 00:27:24', '2023-01-19 00:29:24'),
(6, 'site_title', 'YKK FASTENING PRODUCTS GROUP / The finest zipper company since 1934', '2023-01-19 00:51:02', '2023-01-24 23:29:02'),
(7, 'site_copyright', '@ copyright Backend', '2023-01-19 00:51:02', '2023-01-19 00:51:24'),
(8, 'site_logo', '31', '2023-01-19 00:51:02', '2023-01-24 23:27:48'),
(9, 'site_login_background', '27', '2023-01-19 00:53:22', '2023-01-19 00:53:38'),
(10, 'site_registration_background', '28', '2023-01-19 00:53:22', '2023-01-19 00:53:38'),
(11, 'dashboard_theme_color', 'light', '2023-01-19 01:12:19', '2023-02-14 03:32:04'),
(12, 'dashboard_base_color', 'orange', '2023-01-19 01:48:03', '2023-02-06 07:47:12'),
(13, 'dashboard_rtl_version', 'null', '2023-01-19 02:14:46', '2023-02-06 07:47:32'),
(14, 'dashboard_mini_sidebar', 'mini_sidebar', '2023-01-19 02:14:46', '2023-01-19 03:21:28'),
(15, 'site_meta_description', 'The YKK Fastening Products Group is trusted world-wide for their impeccable production standards and thorough quality control processes for zippers, hook &amp; loop fasteners, plastic hardware and snap &amp; button products.', '2023-01-19 03:50:04', '2023-01-24 23:29:02'),
(16, 'site_meta_keyword', 'Meta Title (Default)', '2023-01-19 03:53:10', '2023-01-19 03:57:06'),
(17, 'site_fav_icon', '31', '2023-01-19 03:59:56', '2023-01-24 23:27:57'),
(18, 'site_header_phone_number', '0124-4314800', '2023-01-25 01:19:31', '2023-01-25 01:19:42'),
(19, 'site_header_address', 'Global Business Park, 3rd Floor, Tower-A, Mehrauli<br>Gurugram Road, Gurugram 122002 (Haryana), India', '2023-01-25 01:19:31', '2023-01-25 01:22:21'),
(20, 'social_link_name', '[\"fb\",\"yt\",\"li\",\"In\"]', '2023-01-25 04:58:58', '2023-01-25 05:17:44'),
(21, 'social_link_url', '[\"https:\\/\\/facebook.com\\/\",\"https:\\/\\/youtube.com\\/\",\"https:\\/\\/linkedin.com\\/\",\"https:\\/\\/instragram.com\\/\"]', '2023-01-25 04:58:58', '2023-01-25 05:17:44'),
(22, 'site_header_marguee', 'YKK is a complete \'One-stop-shop\' for all your fastening and trimming needs..', '2023-01-25 05:20:01', '2023-01-25 05:20:45'),
(23, 'site_footer_sub_heading', 'YKK India PVT. LTD..', '2023-01-25 05:25:28', '2023-01-25 05:29:52'),
(24, 'site_footer_address', 'Global Business Park, 3rd Floor, Tower-A, MehrauliGurugram Road, Gurugram 122002 (Haryana), India.', '2023-01-25 05:25:28', '2023-01-25 05:29:52'),
(25, 'site_footer_email', 'info@ykk.com.', '2023-01-25 05:25:28', '2023-01-25 05:29:52'),
(26, 'site_footer_phone_number', '0124-4314800.', '2023-01-25 05:25:28', '2023-01-25 05:29:52'),
(27, 'site_footer_google_map', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14027.965455186071!2d77.08155762356225!3d28.47980673072686!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d192cb3960a9f%3A0x17544e61d29296a3!2sYKK%20India%20Pvt.%20Ltd!5e0!3m2!1sen!2sin!4v1622029212049!5m2!1sen!2sin', '2023-01-25 05:33:41', '2023-01-25 06:01:14'),
(28, 'site_footer_copyright', 'YKK India © . All Rights Reserved. | Design &amp; Developed By <a href=\"http://advologysolution.com/\" target=\"blank\">Advology Solution Pvt. Ltd.</a>', '2023-01-25 06:01:15', '2023-01-25 06:01:59'),
(29, 'site_footer_follow_us_content', 'Stay tuned for the latest updates for new arrivals and offers', '2023-01-25 06:03:41', '2023-01-25 06:04:01'),
(30, 'dashboard_fav_icon', '41', '2023-02-14 23:41:15', '2023-02-14 23:41:42'),
(31, 'dashboard_loader_icon', '65', '2023-02-14 23:41:15', '2023-02-14 23:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` int(11) NOT NULL DEFAULT 0,
  `unit_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `meta_key`, `meta_value`, `form_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(60, 'details', '[{\"name\":\"Dipan\"},{\"company_name\":\"City\"},{\"email\":\"dipan@gmail.com\"},{\"phone\":\"7206775286\"},{\"position\":\"Test\"},{\"enter_your_message\":\"\\u201cYKK exists all around the globe, an expanding \\u2018Cycle of Goodness.\\u2019 \\u201d\\n\\nYKK was founded by Tadao Yoshida in Higashi Nihonbashi, Tokyo as San-es Shokai, in January 1934, with its main focus on production and marketing of fastening products. Later in February 1938 it was renamed to Yoshida Kogyosho. In January 1946, the company registered the YKK trademark which stands for Yoshida Kogyo K.K. YKK presently has operations in 72 countries and regions.\"},{\"created\":\"15-02-2023 09:43:02 AM\"}]', 45, 2, '2023-02-15 04:13:02', '2023-02-15 04:13:02'),
(61, 'details', '[{\"name\":\"Text\"},{\"company_name\":\"Test\"},{\"email\":\"Dipan@gmail.com\"},{\"phone\":\"7206775826\"},{\"position\":\"Test\"},{\"enter_your_message\":\"Test\"},{\"created\":\"15-02-2023 09:53:26 AM\"}]', 45, 3, '2023-02-15 04:23:26', '2023-02-15 04:23:26'),
(62, 'details', '[{\"full_name\":\"Test\"},{\"email\":\"email@gmail.co\"},{\"phone\":\"8423423233\"},{\"position\\/designation\":\"32423423\"},{\"skill\":null},{\"created\":\"15-02-2023 10:21:11 AM\"}]', 47, 4, '2023-02-15 04:51:11', '2023-02-15 04:51:11');

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
(7, 'Home', 'header_menu', 10, 'http://127.0.0.1:8000/', 1, 1, 0, '{\"target\":\"1\",\"class\":null}', 0, '2023-02-02 18:30:00', '2023-02-06 07:42:04'),
(8, 'About Us', 'header_menu', 20, 'http://127.0.0.1:8000/p/about-us', 1, 1, 0, '{\"target\":\"0\",\"class\":null}', 0, '2023-02-02 18:30:00', '2023-02-06 07:42:04'),
(9, 'CSR', 'header_menu', 50, 'http://127.0.0.1:8000/p/csr', 1, 1, 0, '{\"target\":\"0\",\"class\":null}', 0, '2023-02-02 18:30:00', '2023-02-06 07:42:04'),
(10, 'Philosophy', 'header_menu', 40, 'http://127.0.0.1:8000/p/philosophy', 1, 1, 0, '{\"target\":\"0\",\"class\":null}', 0, '2023-02-02 18:30:00', '2023-02-06 04:21:56'),
(11, 'Contact Us', 'header_menu', 70, 'http://127.0.0.1:8000/p/contact-us', 1, 1, 0, '{\"target\":\"0\",\"class\":\"btn\"}', 0, '2023-02-02 18:30:00', '2023-02-06 07:42:50'),
(12, 'Career', 'header_menu', 30, 'http://127.0.0.1:8000/p/career', 1, 1, 0, '{\"target\":\"0\",\"class\":null}', 0, '2023-02-02 18:30:00', '2023-02-11 01:22:30'),
(13, 'Products', 'header_menu', 60, 'http://127.0.0.1:8000/p/product', 1, 1, 0, '{\"target\":\"0\",\"class\":null}', 0, '2023-02-02 18:30:00', '2023-02-13 00:22:35'),
(14, 'MD Message', 'header_menu', 30, 'http://127.0.0.1:8000/p/md-message', 2, 1, 8, '{\"target\":\"0\",\"class\":null}', 0, '2023-02-02 18:30:00', '2023-02-06 04:16:15'),
(16, 'YKK India History', 'header_menu', 30, 'http://127.0.0.1:8000/p/ykk-india-history', 2, 1, 8, '{\"target\":\"0\",\"class\":null}', 0, '2023-02-02 18:30:00', '2023-02-07 10:45:18'),
(17, 'Quality Standard', 'header_menu', 40, 'http://127.0.0.1:8000/p/quality-standard', 2, 1, 8, '{\"target\":\"0\",\"class\":null}', 0, '2023-02-02 18:30:00', '2023-02-06 03:11:16'),
(18, 'YKK Group History', 'header_menu', 20, 'http://127.0.0.1:8000/p/ykk-group-history', 2, 1, 8, '{\"target\":\"0\",\"class\":null}', 0, '2023-02-02 18:30:00', '2023-02-07 07:06:09'),
(19, 'Blog', 'header_menu', 50, 'http://127.0.0.1:8000/p/events--blogs', 1, 1, 0, '{\"target\":\"0\",\"class\":null}', 0, '2023-02-10 18:30:00', '2023-02-11 04:08:25');

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
(45, '2023_01_23_125615_create_menus_table', 5),
(46, '2023_02_02_082129_create_posts_table', 6),
(47, '2023_02_02_082441_create_post_categories_table', 6),
(48, '2023_02_02_082506_create_post_comments_table', 6),
(49, '2023_02_02_082541_create_page_metas_table', 6),
(51, '2023_02_02_083158_create_page_sections_table', 7),
(52, '2023_02_11_051613_create_contact_forms_table', 8);

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
(1, 'custom_page', 'About Us', 'about-us', 'Test', '38', 'about_us_template', 0, 1, NULL, 20, 0, 'About Us | Meta Title', 'About Us | Meta Description', 'About Us,Keyword meta', '2023-01-17 18:30:00', '2023-02-13 03:41:23'),
(2, 'custom_page', 'Contact Us', 'contact-us', 'Test', '67', 'contact_us_template', 0, 1, NULL, 0, 0, 'Contact Us', 'Contact Us', 'Contact Us', '2023-01-17 18:30:00', '2023-02-06 03:56:56'),
(3, 'custom_page', 'Home', 'home', NULL, '32', 'default_template', 0, 1, NULL, 0, 0, 'Home', 'Home', 'Home', '2023-01-24 18:30:00', '2023-02-02 03:29:54'),
(4, 'custom_page', 'CSR', 'csr', NULL, '45', 'csr_template', 0, 1, NULL, 0, 0, 'CRS', 'CRS', 'CRS', '2023-02-02 18:30:00', '2023-02-03 02:33:32'),
(5, 'custom_page', 'Philosophy', 'philosophy', NULL, '56', 'philosophy_template', 0, 1, NULL, 0, 0, 'Philosophy', 'Philosophy', 'Philosophy', '2023-02-02 18:30:00', '2023-02-03 05:50:56'),
(6, 'custom_page', 'MD Message', 'md-message', '<p><br></p>', '59', 'md_message_template', 0, 1, NULL, 0, 0, 'MD Message', 'MD Message', 'MD Message', '2023-02-05 18:30:00', '2023-02-06 00:30:21'),
(7, 'custom_page', 'Quality Standard', 'quality-standard', '<p><br></p>', '61', 'quality_standard_template', 0, 1, NULL, 0, 0, 'Quality Standard', 'Quality Standard', 'Quality Standard', '2023-02-05 18:30:00', '2023-02-06 01:17:18'),
(15, 'offices', 'YKK INDIA PVT. LTD.', '-', 'OFFICE NO. 809 & 810, 8TH FLOOR, BW-58 SECTOR-32, LOGIX CITY CENTRE, NOIDA GAUTAM BUDH NAGAR, UTTAR PRADESH-201301', NULL, NULL, 0, 1, '{\"section\":\"NOIDA\",\"email\":\"info@ykk.com\",\"phone\":\"0120-4139554 0120-4553622\"}', 30, 0, NULL, NULL, NULL, '2023-02-06 06:51:55', '2023-02-06 07:01:04'),
(16, 'offices', 'YKK INDIA PVT. LTD.', '-', 'Global Business Park, 3rd Floor, Tower-A, Mehrauli Gurugram Road, Gurugram 122002 (Haryana), India', NULL, NULL, 0, 1, '{\"section\":null,\"email\":\"info@ykk.com\",\"phone\":\"0124-4314800 Fax No. : 124-4314899\"}', 10, 0, NULL, NULL, NULL, '2023-02-06 06:52:01', '2023-02-06 07:00:13'),
(17, 'offices', 'YKK INDIA PVT. LTD.', '-', 'Office no. 401, 4th Floor Krishna Tower, opposite Green Park Stadium, Civil Lines, Kanpur (U.P.)- 208001', NULL, NULL, 0, 1, '{\"section\":\"KANPUR\",\"email\":\"info@ykk.com\",\"phone\":\"9818144988 9311374351\"}', 30, 0, NULL, NULL, NULL, '2023-02-06 07:01:48', '2023-02-06 07:01:48'),
(18, 'offices', 'YKK INDIA PVT. LTD.', '-', '505, 5TH FLOOR, BALAJI TOWER-6 (AIRPORT PLAZA), TONK ROAD, JAIPUR-302018 RAJASTHAN', NULL, NULL, 0, 1, '{\"section\":\"JAIPUR\",\"email\":\"info@ykk.com\",\"phone\":\"+91-141-2553698\"}', 50, 0, NULL, NULL, NULL, '2023-02-06 07:02:19', '2023-02-06 07:02:19'),
(19, 'offices', 'YKK INDIA PVT. LTD.', '-', 'NO.32/1575-A1, NH BYE PASS (OPP. TO EMC HOSPITAL) PALARIVATTOM, ERNAKULAM-682028 (KERELA)', NULL, NULL, 0, 1, '{\"section\":\"KOCHI\",\"email\":\"info@ykk.com\",\"phone\":\"+91-484-4044140\"}', 50, 0, NULL, NULL, NULL, '2023-02-06 07:02:42', '2023-02-11 01:50:52'),
(23, 'history_timeline', '1934', '-', 'San-es Shokai founded by Tadao Yoshida in Higashi Nihonbashi, Tokyo; production and marketing of fastening products begins.', '68', NULL, 0, 1, '{\"month\":\"FEBRUARY\",\"cat\":\"group\"}', 10, 0, NULL, NULL, NULL, '2023-02-07 05:44:37', '2023-02-07 06:42:30'),
(24, 'history_timeline', '1938', '-', 'San-es Shokai renamed Yoshida Kogyosho.', NULL, NULL, 0, 1, '{\"month\":\"FEBRUARY\",\"cat\":\"group\"}', 20, 0, NULL, NULL, NULL, '2023-02-07 05:49:38', '2023-02-07 06:42:54'),
(25, 'history_timeline', '1942', '-', 'Yoshida Kogyosho reorganized as a limited company.', NULL, NULL, 0, 1, '{\"month\":\"FEBRUARY\",\"cat\":\"group\"}', 30, 0, NULL, NULL, NULL, '2023-02-07 06:03:34', '2023-02-07 10:06:14'),
(26, 'history_timeline', '1945', '-', 'Komatsugawa Plant burned down and dissolved for a time.', NULL, NULL, 0, 1, '{\"month\":\"MAY\",\"cat\":\"group\"}', 40, 0, NULL, NULL, NULL, '2023-02-07 06:44:00', '2023-02-07 10:06:25'),
(27, 'history_timeline', '1945', '-', 'Yoshida Kogyosho purchased UozuTekkousho K.K. and renamed Yoshida Kogyo K.K.', NULL, NULL, 0, 1, '{\"month\":\"AUGUST\",\"cat\":\"group\"}', 40, 0, NULL, NULL, NULL, '2023-02-07 06:44:28', '2023-02-07 06:44:28'),
(28, 'history_timeline', '1946', '-', 'YKK® registered as a trademark of Yoshida Kogyo K.K.', NULL, NULL, 0, 1, '{\"month\":\"JANUARY\",\"cat\":\"group\"}', 60, 0, NULL, NULL, NULL, '2023-02-07 06:44:50', '2023-02-07 06:44:50'),
(29, 'history_timeline', '1951', '-', 'Kurobe Plant commences operations in Kurobe City, Toyama Prefecture.', NULL, NULL, 0, 1, '{\"month\":\"MARCH\",\"cat\":\"group\"}', 70, 0, NULL, NULL, NULL, '2023-02-07 06:45:18', '2023-02-07 10:06:38'),
(37, 'custom_page', 'YKK Group History', 'ykk-group-history', '<p><br></p>', '69', 'group_timeline_template', 0, 1, NULL, 0, 0, 'YKK Group History', 'YKK Group History', 'YKK Group History', '2023-02-06 18:30:00', '2023-02-07 07:04:07'),
(38, 'history_timeline', '1988', '-', 'Headquarters relocated to AsakusaKaminarimon, Taito-ku, Tokyo.', NULL, NULL, 0, 1, '{\"month\":\"MARCH\",\"cat\":\"group\"}', 80, 0, NULL, NULL, NULL, '2023-02-07 10:18:43', '2023-02-07 10:27:05'),
(39, 'history_timeline', '1994', '-', 'Yoshida Kogyo K.K. establishes its first overseas affiliate and begins production and marketing of fastening products in New Zealand.', NULL, NULL, 0, 1, '{\"month\":\"MARCH\",\"cat\":\"group\"}', 90, 0, NULL, NULL, NULL, '2023-02-07 10:19:02', '2023-02-07 10:56:06'),
(40, 'custom_page', 'YKK India History', 'ykk-india-history', '<p><br></p>', '70', 'india_timeline_template', 0, 1, NULL, 0, 0, 'YKK India History', 'YKK India History', 'YKK India History', '2023-02-06 18:30:00', '2023-02-07 10:45:37'),
(41, 'history_timeline', '1995', '-', 'Establishment of YKK INDIA PVT LTD', '71', NULL, 0, 1, '{\"month\":\"JANUARY\",\"cat\":\"indian\"}', 10, 0, NULL, NULL, NULL, '2023-02-07 10:55:57', '2023-02-07 10:55:57'),
(42, 'history_timeline', '1997', '-', 'Factory Inauguration and Production Start', '72', NULL, 0, 1, '{\"month\":\"JANUARY\",\"cat\":\"indian\"}', 20, 0, NULL, NULL, NULL, '2023-02-07 10:56:44', '2023-02-07 10:56:44'),
(43, 'history_timeline', '1998', '-', 'Inauguration of branch offices – Mumbai, Chennai, Kolkata & Bangalore', '73', NULL, 0, 1, '{\"month\":\"JANUARY\",\"cat\":\"indian\"}', 30, 0, NULL, NULL, NULL, '2023-02-07 11:25:46', '2023-02-07 11:25:46'),
(45, 'contact_form', 'Customer Query', '-', NULL, NULL, NULL, 0, 1, '[{\"type\":\"text\",\"label\":\"Name\",\"order\":\"10\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"50\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"required\\\"}\"},{\"type\":\"text\",\"label\":\"Company Name\",\"order\":\"20\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"50\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"no\\\"}\"},{\"type\":\"email\",\"label\":\"Email\",\"order\":\"30\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"50\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"required\\\"}\"},{\"type\":\"phone\",\"label\":\"Phone\",\"order\":\"40\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"50\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"required\\\"}\"},{\"type\":\"text\",\"label\":\"Position\",\"order\":\"50\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"100\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"no\\\"}\"},{\"type\":\"textarea\",\"label\":\"Enter Your Message\",\"order\":\"50\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"100\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"no\\\"}\"},{\"type\":\"button\",\"label\":\"Send\",\"order\":\"9999\",\"setting\":\"{\\\"class_name\\\":\\\"white-btn\\\",\\\"width\\\":\\\"25\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"no\\\"}\"}]', 10, 0, NULL, NULL, NULL, '2023-02-10 23:56:14', '2023-02-15 04:11:28'),
(46, 'custom_page', 'Career', 'career', '<p><br></p>', '79', 'career_template', 0, 1, NULL, 0, 0, 'Career', 'Career', 'Career', '2023-02-10 18:30:00', '2023-02-12 23:59:20'),
(47, 'contact_form', 'Post your Resume', '-', NULL, NULL, NULL, 0, 1, '[{\"type\":\"text\",\"label\":\"Full Name\",\"order\":\"10\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"100\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"required\\\"}\"},{\"type\":\"email\",\"label\":\"Email Id\",\"order\":\"20\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"100\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"required\\\"}\"},{\"type\":\"phone\",\"label\":\"Contact Number\",\"order\":\"30\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"100\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"required\\\"}\"},{\"type\":\"text\",\"label\":\"Position\\/Designation\",\"order\":\"40\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"100\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"required\\\"}\"},{\"type\":\"text\",\"label\":\"Skill\",\"order\":\"50\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"100\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"no\\\"}\"},{\"type\":\"button\",\"label\":\"Submit\",\"order\":\"99999\",\"setting\":\"{\\\"class_name\\\":null,\\\"width\\\":\\\"100\\\",\\\"label_setting\\\":\\\"hide\\\",\\\"is_required\\\":\\\"no\\\"}\"}]', 0, 0, NULL, NULL, NULL, '2023-02-11 01:35:32', '2023-02-11 01:40:54'),
(48, 'custom_page', 'Events & Blogs', 'events--blogs', '<p><br></p>', '81', 'blogs_template', 0, 1, NULL, 0, 0, 'Events & Blogs', 'Events & Blogs', 'Events & Blogs', '2023-02-10 18:30:00', '2023-02-11 04:12:14'),
(49, 'custom_page', 'Product', 'product', '<p><br></p>', '83', 'products_template', 0, 1, NULL, 0, 0, 'Product', 'Product', 'Product', '2023-02-12 18:30:00', '2023-02-13 00:39:39'),
(50, 'products', 'Product', 'product', '<p><br></p>', '83', 'products_template', 0, 1, NULL, 0, 0, 'Product', 'Product', 'Product', '2023-02-12 18:30:00', '2023-02-13 00:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `page_metas`
--

CREATE TABLE `page_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_metas`
--

INSERT INTO `page_metas` (`id`, `meta_key`, `meta_value`, `page_id`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'setting_page_name_hide', 'yes', 3, 0, '2023-02-02 03:28:37', '2023-02-02 03:28:37'),
(2, 'setting_page_banner_slider', 'slider', 3, 0, '2023-02-02 03:28:37', '2023-02-02 05:25:04'),
(3, 'setting_page_slider_heading', '[\"YKK INDIA PVT LTD.\",\"YKK INDIA PVT LTD..\",\"YKK INDIA PVT LTD...\"]', 3, 0, '2023-02-02 03:28:37', '2023-02-02 05:24:02'),
(4, 'setting_page_slider_content', '[\"NATULON\\u00ae zippers have diverted 57,93 million Plastic bottles from Landfills.\",\"NATULON\\u00ae zippers have diverted 57,93 million Plastic bottles from Landfills...\",\"NATULON\\u00ae zippers have diverted 57,93 million Plastic bottles from Landfills....\"]', 3, 0, '2023-02-02 03:28:37', '2023-02-02 05:24:02'),
(5, 'setting_page_slider_btn_link', '[\"#.\",\"fsd.\",\"#\"]', 3, 0, '2023-02-02 03:28:37', '2023-02-02 05:24:02'),
(6, 'setting_page_slider_btn_link2', '[\"#\",\"fsd.\",\"#\"]', 3, 0, '2023-02-02 03:28:37', '2023-02-02 05:24:02'),
(7, 'setting_page_slider_image', '[\"35\",\"33\",\"34\"]', 3, 0, '2023-02-02 03:28:38', '2023-02-02 04:21:57'),
(8, 'home_slider_text_0', 'Test', 3, 0, '2023-02-02 03:33:49', '2023-02-02 03:33:49'),
(11, 'home_globalgreenbusiness_text_0', 'YKK: A New Global Green Business Frontier', 3, 5, '2023-02-02 05:57:41', '2023-02-02 05:57:41'),
(12, 'home_globalgreenbusiness_file_1', '36', 3, 5, '2023-02-02 05:57:41', '2023-02-02 05:57:41'),
(13, 'home_globalgreenbusiness_editor_2', '<p style=\"color: rgb(27, 27, 27); font-family: &quot;Playfair Display&quot;, serif; font-size: 16px;\">Awareness and concern of people around the Globe about Green and Healthy Surrounding are at hype. This is what encouraged the team of YKK to create a new global green business frontier where they can recycle hazardous plastic materials to adopt and offer Green and Sustainable solutions to everyone.</p><p style=\"color: rgb(27, 27, 27); font-family: &quot;Playfair Display&quot;, serif; font-size: 16px;\">The increase in consciousness for a sustainable and green lifestyle is encouraging the consumers to pay close attention to the recycled materials. Consumers are no longer attracted to the brand name and hefty price of the product but now they are more conscious about the brand’s social responsibility like promoting Green Environment and Plastic-Free surroundings.</p><p style=\"color: rgb(27, 27, 27); font-family: &quot;Playfair Display&quot;, serif; font-size: 16px;\">Stand with us to make the World a Better Place to Live.</p>', 3, 5, '2023-02-02 05:57:41', '2023-02-02 05:57:41'),
(14, 'home_initiative_text_0', 'An Initiative To Create Green Ecosystem', 3, 6, '2023-02-02 06:03:09', '2023-02-02 06:03:09'),
(15, 'home_initiative_editor_1', '<p>Plastics are all around us and it is toilsome to get rid of them completely. But, the act of recycling plastics can create a big difference to live a clean, healthy and efficient lifestyle.</p>\r\n					<ul>\r\n					    \r\n					    <li><b>The more we recycle, the more sustainable life we choose.</b></li>\r\n                        <li><b>Recycled plastics to shape new products.</b></li>\r\n                        <li><b>Enhance shelf life of products.</b></li>\r\n                        <li><b>Eco system accelerates with recycled product.</b></li>\r\n\r\n					</ul>', 3, 6, '2023-02-02 06:03:09', '2023-02-02 06:03:09'),
(16, 'home_newproduct_file_repeter_0', '[\"37\",\"38\",\"39\"]', 3, 7, '2023-02-02 06:16:57', '2023-02-02 06:16:57'),
(17, 'home_newproduct_text_1', 'New Product..', 3, 7, '2023-02-02 06:16:57', '2023-02-02 06:19:16'),
(18, 'home_newproduct_editor_2', 'We focus on our customers’ needs and requirements. Based on this approach, we continue to develop new and unique products on a regular basis. YKK Fastening Group has 8 Research and Development Centers across the world. One of the R&amp;D center is in India. Ykk India is proud to be the part of it. Through the R&amp;D Center in YKK INDIA, we are able to pursue our continuous objective of fulfilling every customer request...', 3, 7, '2023-02-02 06:16:58', '2023-02-02 06:19:16'),
(19, 'home_newproduct_button_3', '#l..', 3, 7, '2023-02-02 06:16:58', '2023-02-02 06:19:16'),
(20, 'home_newproduct_button_4', '#r..', 3, 7, '2023-02-02 06:16:58', '2023-02-02 06:19:16'),
(21, 'home_quality_text_0', 'YKK Quality..', 3, 8, '2023-02-02 06:36:07', '2023-02-02 06:38:43'),
(22, 'home_quality_editor_1', 'YKK has been and will continue to be the company that customers think of when presented with the word “Quality.” This was no fate or accident. Ever since YKK has opened its doors for business, we have set a high-quality standard called: “YFS”, an acronym for “YKK Fastening Standards.” Through decades of research and rigorous testing, YKK has achieved the ability to consistently manufacture and supply high-quality fastening products of anywhere in the world and at any time. Hence, YKK Quality is not just Japanese Quality; it is a Global Standard..', 3, 8, '2023-02-02 06:36:07', '2023-02-02 06:38:44'),
(23, 'home_quality_file_2', '40', 3, 8, '2023-02-02 06:36:07', '2023-02-02 06:40:00'),
(24, 'setting_page_name_hide', 'yes', 1, 0, '2023-02-02 07:17:11', '2023-02-06 07:32:11'),
(25, 'setting_page_banner_slider', 'banner', 1, 0, '2023-02-02 07:17:11', '2023-02-06 07:31:56'),
(26, 'setting_page_slider_heading', '[\"YKK INDIA PVT LTD\",\"YKK INDIA PVT LTD\"]', 1, 0, '2023-02-02 07:17:11', '2023-02-02 07:49:48'),
(27, 'setting_page_slider_content', '[\"So far, YKK INDIA PVT LTD has recycled and reused an equivalent to 527,553 plastic bottles through our Eco-Friendly NATULON\\u00ae zippers.\",\"So far, YKK INDIA PVT LTD has recycled and reused an equivalent to 527,553 plastic bottles through our Eco-Friendly NATULON\\u00ae zippers.\"]', 1, 0, '2023-02-02 07:17:11', '2023-02-02 07:49:48'),
(28, 'setting_page_slider_btn_link', '[\"#\",null]', 1, 0, '2023-02-02 07:17:11', '2023-02-02 07:49:48'),
(29, 'setting_page_slider_btn_link2', '[null,null]', 1, 0, '2023-02-02 07:17:11', '2023-02-02 07:49:48'),
(30, 'setting_page_slider_image', '[\"35\",\"34\"]', 1, 0, '2023-02-02 07:17:11', '2023-02-02 07:49:48'),
(31, 'aboutus_about_file_0', '36', 1, 9, '2023-02-02 07:53:33', '2023-02-02 07:53:33'),
(32, 'aboutus_about_text_1', 'YKK India Private Limited', 1, 9, '2023-02-02 07:53:34', '2023-02-02 07:53:34'),
(33, 'aboutus_about_button_2', '#', 1, 9, '2023-02-02 07:53:34', '2023-02-02 07:53:34'),
(34, 'aboutus_ykkgroup_text_0', 'YKK Group', 1, 10, '2023-02-02 08:04:09', '2023-02-02 08:04:09'),
(35, 'aboutus_ykkgroup_editor_1', '<p>“YKK exists all around the globe, an expanding ‘Cycle of Goodness.’ ”</p>\r\nYKK was founded by Ta<a href=\"http://#\" style=\"background-color: rgb(156, 156, 148);\"><font color=\"#000000\">dao Yoshida in H</font></a>igashi Nihonbashi, Tokyo as San-es Shokai, in January 1934, with its main focus on production and marketing of fastening products. Later in February 1938 it was renamed to Yoshida Kogyosho. In January 1946, the company registered the YKK trademark which stands for Yoshida Kogyo K.K. YKK presently has operations in 72 countries and regions.', 1, 10, '2023-02-02 08:04:09', '2023-02-02 08:10:32'),
(36, 'aboutus_ykkgroup_file_2', '41', 1, 10, '2023-02-02 08:04:09', '2023-02-02 08:05:22'),
(37, 'aboutus_networksection_file_0', '42', 1, 11, '2023-02-02 08:13:01', '2023-02-02 08:13:01'),
(38, 'aboutus_networksection_file_1', '43', 1, 11, '2023-02-02 08:13:02', '2023-02-02 08:13:02'),
(39, 'aboutus_networksection_file_2', '44', 1, 11, '2023-02-02 08:13:02', '2023-02-02 08:13:02'),
(40, 'setting_page_name_hide', 'no', 4, 0, '2023-02-03 02:02:39', '2023-02-03 05:45:47'),
(41, 'setting_page_banner_slider', 'banner', 4, 0, '2023-02-03 02:02:39', '2023-02-03 05:45:39'),
(42, 'setting_page_slider_heading', 'null', 4, 0, '2023-02-03 02:02:40', '2023-02-03 02:02:40'),
(43, 'setting_page_slider_content', 'null', 4, 0, '2023-02-03 02:02:40', '2023-02-03 02:02:40'),
(44, 'setting_page_slider_btn_link', 'null', 4, 0, '2023-02-03 02:02:40', '2023-02-03 02:02:40'),
(45, 'setting_page_slider_btn_link2', 'null', 4, 0, '2023-02-03 02:02:40', '2023-02-03 02:02:40'),
(46, 'setting_page_slider_image', 'null', 4, 0, '2023-02-03 02:02:40', '2023-02-03 02:02:40'),
(47, 'csr_csractivity_text_0', 'CSR Activity', 4, 12, '2023-02-03 02:10:54', '2023-02-03 02:10:54'),
(48, 'csr_csractivity_editor_1', '<p class=\"wow fadeInUp animated\" style=\"visibility: visible;\">YKK, an organization working with its values since ages. Here we work with a Philosophy.</p>\r\n              <h6 class=\"wow fadeInUp fs-22 mb-0 animated\" style=\"visibility: visible;\">“No one prosper without rendering benefits to others”.</h6>', 4, 12, '2023-02-03 02:10:54', '2023-02-03 02:10:54'),
(49, 'csr_csractivity_file_2', '52', 4, 12, '2023-02-03 02:10:54', '2023-02-03 02:10:54'),
(50, 'csr_csr2cbluesection_editor_0', 'we are not only considering growth &amp; development of ours as a company and our employees, but to our customers &amp; also to the society we are living in. We feel that its our moral responsibility to support and be a part of developing our society. With these thoughts we have taken initiatives under our Corporate Social Responsibility. Different activities are:', 4, 13, '2023-02-03 02:13:56', '2023-02-03 05:21:44'),
(51, 'csr_csr2cbluesection_text_repeter_1', '[\"Empowering females by providing vocational training in stitching\",\"Medical support to nearby villages\",\"Support for educating children\",\"Support for orphan children\",\"Being a part of deaddiction drive\"]', 4, 13, '2023-02-03 02:13:56', '2023-02-03 02:13:56'),
(52, 'csr_csrempowerment_text_0', 'Women Empowerment', 4, 14, '2023-02-03 02:25:57', '2023-02-03 02:25:57'),
(53, 'csr_csrempowerment_editor_1', 'Our purpose for initiating this activity is to make females economically independent, so that they can support themselves and their families. For strengthening females of our society, we have started in house Vocational Training Centre in the year 2007. So far we have completed 15 training batches and trained total 120 females from nearby villages. Out of these 120 trained females, 9 are working as operators in YKK India, Bawal Plant and few are doing their own work.', 4, 14, '2023-02-03 02:25:57', '2023-02-03 02:25:57'),
(54, 'csr_csrempowerment_file_2', '55', 4, 14, '2023-02-03 02:25:57', '2023-02-03 02:25:57'),
(55, 'csr_csrcomputerlab_editor_0', 'In this centre, every year vocational training session starts in from July and finishes in June . During this one year period training is provided in different areas i.e Basics for English, Basics of Computers, Personality Development, General Knowledge &amp; Handicrafts (Stitching, Knitting &amp; Crafting). For all these areas we have predefined syllabus for the whole year, which is taken care by qualified teaching staff in respective areas. Every teacher is having sufficient relevant experience in her field. According to this syllabus they impart training to the students for whole year. At the end of the session students are awarded with Certificate and Sewing machines.', 4, 15, '2023-02-03 02:26:27', '2023-02-03 02:26:27'),
(56, 'csr_csrcomputerlab_file_1', '46', 4, 15, '2023-02-03 02:26:27', '2023-02-03 02:26:27'),
(57, 'csr_csreducationsegment_file_0', '49', 4, 16, '2023-02-03 02:27:01', '2023-02-03 02:27:01'),
(58, 'csr_csreducationsegment_text_1', 'Education Segment:', 4, 16, '2023-02-03 02:27:01', '2023-02-03 02:27:01'),
(59, 'csr_csreducationsegment_editor_2', 'Although there is a revolution in education sector now a days and there is remarkable development in this but still at many places basic infrastructure is not up to the mark if we talk about primary education. So under CSR we have undertaken to support to improve infrastructure in near by School.', 4, 16, '2023-02-03 02:27:02', '2023-02-03 02:27:02'),
(60, 'csr_csrrenovation_text_0', 'Jalalpur Primary school renovation in 2015', 4, 17, '2023-02-03 02:27:49', '2023-02-03 02:27:49'),
(61, 'csr_csrrenovation_text_repeter_1', '[\"School Building Repair & Painting\",\"Park Development\",\"Provided Tables & Chairs\",\"Provided Fans & Tube lights.\"]', 4, 17, '2023-02-03 02:27:49', '2023-02-03 02:27:49'),
(62, 'csr_csrrenovation_file_2', '53', 4, 17, '2023-02-03 02:27:49', '2023-02-03 02:27:49'),
(63, 'csr_csrdevelopment_file_repeter_0', '[\"50\",\"51\"]', 4, 18, '2023-02-03 02:28:35', '2023-02-03 02:28:35'),
(64, 'csr_csrdevelopment_text_1', 'Development of Orphan Home', 4, 18, '2023-02-03 02:28:36', '2023-02-03 02:28:36'),
(65, 'csr_csrdevelopment_editor_2', 'In surrounding area, Rewari, YKK India adopted an Orphan Home for its renovation with a view to uplift the living standards for the Orphan children.<br><br>\r\n\r\nIn the year 2019-20 we Undertaken &amp; contributed in the renovation of orphanage “ Astha Kunj “ run by Haryana state council for child welfare Rewari . Astha Kunj is a shelter Home for orphan children age up to 18 yrs .', 4, 18, '2023-02-03 02:28:36', '2023-02-03 02:28:36'),
(66, 'csr_csrdeaddictiondrive_text_0', 'Being a part of deaddiction drive', 4, 19, '2023-02-03 02:29:02', '2023-02-03 02:29:02'),
(67, 'csr_csrdeaddictiondrive_editor_1', 'Vehicle has been handed over to District Child welfare officer by Factory Manager and other senior officials of YKK. This is used for drug addiction centre in 2019.', 4, 19, '2023-02-03 02:29:02', '2023-02-03 02:29:02'),
(68, 'csr_csrdeaddictiondrive_file_2', '54', 4, 19, '2023-02-03 02:29:02', '2023-02-03 02:29:02'),
(69, 'csr_csrsupport_file_repeter_0', '[\"47\",\"48\"]', 4, 20, '2023-02-03 02:29:43', '2023-02-03 02:29:43'),
(70, 'csr_csrsupport_text_1', 'Support in – COVID – 19 Pandemic', 4, 20, '2023-02-03 02:29:43', '2023-02-03 02:29:43'),
(71, 'csr_csrsupport_editor_2', 'As a committed organization for supporting society, we wanted to stand strong to support society during this tough pandemic period.<br><br>\r\n\r\nWith an objective to provide support to community for fighting against COVID- 19, YKK India has initiated a drive for creating awareness among the underprivileged in nearby areas by distributing face mask, Sanitizers &amp; soaps.', 4, 20, '2023-02-03 02:29:44', '2023-02-03 02:29:44'),
(72, 'csr_csrcommittee_text_0', 'Composition of CSR Committee', 4, 21, '2023-02-03 02:30:08', '2023-02-03 02:30:08'),
(73, 'csr_csrcommittee_editor_1', '<p class=\"wow fadeInUp animated\" style=\"visibility: visible;\">The CSR Committee shall be headed by the Board of Director/s of the company. The constitution/ re-constitution of the CSR Committee shall be done by the Board of Directors of the company from time to time as per the applicable requirements of the Companies Act, 2013.</p>\r\n          <b class=\"wow fadeInUp fs-20 mb-2 animated\" style=\"visibility: visible;\"> CSR Committee of the Board is as under: </b>\r\n          <div class=\"openings table mt-2\">\r\n              <table class=\"text-left\">\r\n                 <thead>\r\n                   <tr>\r\n                     <th>S.No.</th>\r\n                     <th>Name</th>\r\n                     <th>Designation / Member of the Board</th>\r\n                   </tr>\r\n                 </thead>\r\n                 <tbody>\r\n                   <tr>\r\n                     <td>1</td>\r\n                     <td>Mr. Reisuke Aratani</td>\r\n                     <td>Managing Director</td>\r\n                   </tr>\r\n                   <tr>\r\n                     <td>2</td>\r\n                     <td>Mr. Hirohisa Saida</td>\r\n                     <td>Director &amp; Factory Manager</td>\r\n                   </tr> \r\n                 </tbody>\r\n              </table>\r\n           </div>\r\n           <b class=\"wow fadeInUp fs-20 mb-2 animated\" style=\"visibility: visible;\"> CSR Coordinating &amp; Governance Body: </b>\r\n          <div class=\"openings table mt-2\">\r\n              <table class=\"text-left\">\r\n                 <thead>\r\n                   <tr>\r\n                     <th>S.No.</th>\r\n                     <th>Name</th>\r\n                     <th>Designation / Member of the Board</th>\r\n                   </tr>\r\n                 </thead>\r\n                 <tbody>\r\n                   <tr>\r\n                     <td>1</td>\r\n                     <td>Mr. Ajay Chandorkar</td>\r\n                     <td>General Manager GA &amp; HR</td>\r\n                   </tr>\r\n                   <tr>\r\n                     <td>2</td>\r\n                     <td>Mr. Gulshan Dhingra</td>\r\n                     <td>Head of Finance</td>\r\n                   </tr> \r\n                   <tr>\r\n                     <td>3</td>\r\n                     <td>Mr. Debojyoti Das</td>\r\n                     <td>Legal &amp; Compliance</td>\r\n                   </tr> \r\n                   <tr>\r\n                     <td>4</td>\r\n                     <td>Mr. Kumud Pandey</td>\r\n                     <td>Manager Purchase &amp; Procurement</td>\r\n                   </tr> \r\n                   <tr>\r\n                     <td>5</td>\r\n                     <td>Ms. Pooja Sharma</td>\r\n                     <td>Planning &amp; Execution (GA &amp; HR)</td>\r\n                   </tr> \r\n                 </tbody>\r\n              </table>\r\n           </div>', 4, 21, '2023-02-03 02:30:08', '2023-02-03 02:31:10'),
(74, 'setting_page_name_hide', 'no', 5, 0, '2023-02-03 05:48:41', '2023-02-03 05:48:41'),
(75, 'setting_page_banner_slider', 'banner', 5, 0, '2023-02-03 05:48:42', '2023-02-03 05:51:16'),
(76, 'setting_page_slider_heading', 'null', 5, 0, '2023-02-03 05:48:42', '2023-02-03 05:48:42'),
(77, 'setting_page_slider_content', 'null', 5, 0, '2023-02-03 05:48:42', '2023-02-03 05:48:42'),
(78, 'setting_page_slider_btn_link', 'null', 5, 0, '2023-02-03 05:48:42', '2023-02-03 05:48:42'),
(79, 'setting_page_slider_btn_link2', 'null', 5, 0, '2023-02-03 05:48:42', '2023-02-03 05:48:42'),
(80, 'setting_page_slider_image', 'null', 5, 0, '2023-02-03 05:48:42', '2023-02-03 05:48:42'),
(81, 'philosophy_philosophycycleofgoodness_text_0', 'Cycle of Goodness', 5, 22, '2023-02-03 06:13:41', '2023-02-03 06:13:41'),
(82, 'philosophy_philosophycycleofgoodness_file_1', '57', 5, 22, '2023-02-03 06:13:41', '2023-02-03 06:13:56'),
(83, 'philosophy_philosophycycleofgoodness_editor_2', 'As an important member of society, a company survives through coexistence. When the benefits are shared, the value of the company\'s existence will be recognized by society.<br><br>\r\n\r\nWhen pursuing his business, YKK\'s founder, Tadao Yoshida, was most concerned with that aspect, and would find a path leading to mutual prosperity. He believed that using ingenuity and inventiveness in business activities and constantly creating new value would lead to the prosperity of clients and business partners and make it possible to contribute to society. This type of thinking is referred to as the \"Cycle of Goodness,\" and has always served as the foundation of our business activities. We have inherited this way of thinking, and have established it as the YKK Philosophy.', 5, 22, '2023-02-03 06:13:41', '2023-02-03 06:13:41'),
(84, 'philosophy_philosophyhighersignificance_text_0', 'YKK seeks corporate value of higher significance.', 5, 23, '2023-02-03 06:15:03', '2023-02-03 06:15:03'),
(85, 'philosophy_philosophyhighersignificance_file_1', '58', 5, 23, '2023-02-03 06:15:03', '2023-02-03 06:15:03'),
(86, 'philosophy_philosophyhighersignificance_editor_2', '<strong>Seeeking <span class=\"t-blue\"> corporate value </span> of higher significance,<br>\r\nYKK will pursure innovative <span class=\"t-blue\">quality</span> in the seven key areas shown above.</strong>', 5, 23, '2023-02-03 06:15:04', '2023-02-03 06:15:04'),
(87, 'philosophy_philosophyhighersignificance_editor_3', '<p class=\"wow fadeInUp text-justify animated\" style=\"visibility: visible;\">YKK Group companies seek to delight our customers, earn the high regard of society and make our employees happy and proud.</p>\r\n<p class=\"wow fadeInUp text-justify animated\" style=\"visibility: visible;\">We are improving the quality of our products, technology, and management as the means to achieve this.</p>\r\n<p class=\"wow fadeInUp text-justify animated\" style=\"visibility: visible;\">We make fairness the fundamental standard for all YKK Group business operations, and this is the basis for our management decisions.</p>', 5, 23, '2023-02-03 06:15:04', '2023-02-03 06:26:02'),
(88, 'philosophy_philosophycorevalues_text_0', 'CORE VALUES', 5, 24, '2023-02-03 06:15:56', '2023-02-03 06:15:56'),
(89, 'philosophy_philosophycorevalues_text_1', 'Permeation of the Management Principle and Core Values', 5, 24, '2023-02-03 06:15:56', '2023-02-03 06:15:56'),
(90, 'philosophy_philosophycorevalues_editor_2', 'The YKK Philosophy, which has been passed down since the founding of the company, has always served as the foundation for business activities and has supported the Group\'s expansion. In 1994, developing the Philosophy in keeping with the times, we launched the Management Principle, \"YKK seeks corporate value of higher significance.\" Since then, we have been promoting the MANAGEMENT PRINCIPLEs and Philosophy throughout our organization so that each employee understands and inherits them in order to ensure their succession down the generations. We have also been expanding our promotion activities in our overseas companies and have further solidified the position of the Management Principles throughout the Group.', 5, 24, '2023-02-03 06:15:56', '2023-02-03 06:15:56'),
(91, 'philosophy_philosophycorevalues_editor_3', 'Do not fear failure; experience builds success.<br> / Create opportunities for employees.<br> Insist on quality in everything.<br> Build trust, transparency and respect.', 5, 24, '2023-02-03 06:15:56', '2023-02-03 06:15:56'),
(92, 'setting_page_name_hide', 'no', 6, 0, '2023-02-06 00:21:19', '2023-02-06 00:21:19'),
(93, 'setting_page_banner_slider', 'banner', 6, 0, '2023-02-06 00:21:19', '2023-02-06 00:30:21'),
(94, 'setting_page_slider_heading', 'null', 6, 0, '2023-02-06 00:21:19', '2023-02-06 00:21:19'),
(95, 'setting_page_slider_content', 'null', 6, 0, '2023-02-06 00:21:19', '2023-02-06 00:21:19'),
(96, 'setting_page_slider_btn_link', 'null', 6, 0, '2023-02-06 00:21:19', '2023-02-06 00:21:19'),
(97, 'setting_page_slider_btn_link2', 'null', 6, 0, '2023-02-06 00:21:19', '2023-02-06 00:21:19'),
(98, 'setting_page_slider_image', 'null', 6, 0, '2023-02-06 00:21:19', '2023-02-06 00:21:19'),
(99, 'mdmessage_mdmessagedirector_file_0', '60', 6, 25, '2023-02-06 00:47:00', '2023-02-06 00:47:00'),
(100, 'mdmessage_mdmessagedirector_editor_1', '<strong>Reisuke Aratani</strong>\r\nManaging Director,  YKK India Private Limited', 6, 25, '2023-02-06 00:47:00', '2023-02-06 01:05:49'),
(101, 'mdmessage_mdmessagedirector_text_2', 'Managing Director Message', 6, 25, '2023-02-06 00:47:00', '2023-02-06 00:47:00'),
(102, 'mdmessage_mdmessagedirector_editor_3', 'In 1995, YKK Group expanded their wings into India by the incorporation of YKK INDIA PIVATE LIMITED. In continuance of the above quote, the founder, Tadao Yoshida, expresses that YKK needs to show respect for customs, practices, and traditions in each place. I believe that the way of thinking is essential, especially for the country with long history such as India. In order to prosper along with the country, with respect to its religion, language, culture, and food etc., it is important to constantly bear in mind the need to think locally and work with communities by following the YKK philosophy “Cycle of Goodness”.<br><br>\r\n\r\n　\r\nAs a Managing director, I promise that we will operate the company with a company principle, “Seeking corporate value of higher significance.” and pursue innovative quality in the following key areas: fairness, customers, society, employees, products, technology, and management. Last but not least, We commit ourselves to strictly follow compliance as foundation of business and we, all members of the company, make decision and take action by following a company policy, “Do the right things, Do things right”.<br><br>\r\n\r\n　\r\nThrough the philosophy, principle, and policy, we continuously seek to become a better manufacturing company constantly contributing to the lives of people all over India and taking on challenges for bright future.', 6, 25, '2023-02-06 00:47:00', '2023-02-06 00:47:00'),
(103, 'setting_page_name_hide', 'no', 7, 0, '2023-02-06 01:16:52', '2023-02-06 01:16:52'),
(104, 'setting_page_banner_slider', 'banner', 7, 0, '2023-02-06 01:16:53', '2023-02-06 01:17:00'),
(105, 'setting_page_slider_heading', 'null', 7, 0, '2023-02-06 01:16:53', '2023-02-06 01:16:53'),
(106, 'setting_page_slider_content', 'null', 7, 0, '2023-02-06 01:16:53', '2023-02-06 01:16:53'),
(107, 'setting_page_slider_btn_link', 'null', 7, 0, '2023-02-06 01:16:53', '2023-02-06 01:16:53'),
(108, 'setting_page_slider_btn_link2', 'null', 7, 0, '2023-02-06 01:16:53', '2023-02-06 01:16:53'),
(109, 'setting_page_slider_image', 'null', 7, 0, '2023-02-06 01:16:53', '2023-02-06 01:16:53'),
(110, 'qualitystandard_qsqualitymanagement_text_0', 'YKK Quality Management', 7, 26, '2023-02-06 01:24:19', '2023-02-06 01:24:19'),
(111, 'qualitystandard_qsqualitymanagement_editor_1', 'Quality is not an accidental happening. Our highest endeavour maintains it.', 7, 26, '2023-02-06 01:24:19', '2023-02-06 01:24:19'),
(112, 'qualitystandard_qsworldwidenetwork_file_0', '63', 7, 27, '2023-02-06 01:25:38', '2023-02-06 01:25:38'),
(113, 'qualitystandard_qsworldwidenetwork_text_1', 'YKK Worldwide Network', 7, 27, '2023-02-06 01:25:38', '2023-02-06 01:25:38'),
(114, 'qualitystandard_qsworldwidenetwork_editor_2', 'Many manufacturers are now producing in multiple locations around the world as the globalization of manufacturing continues to expand. Maintaining stable and constant quality has become one of the key concerns for many global manufacturers. In order to support these companies, YKK has set up YFS - YKK Fastening Standards to provide products of the same quality level, wherever and whenever they are purchased. Each YKK production site conducts various quality tests and reports the results to Japan HQ on a regular basis in order to maintain and assure constant quality level.', 7, 27, '2023-02-06 01:25:38', '2023-02-06 01:25:38'),
(115, 'qualitystandard_qstestingmethods_text_0', 'Testing Methods', 7, 28, '2023-02-06 01:26:06', '2023-02-06 01:26:06'),
(116, 'qualitystandard_qstestingmethods_editor_1', 'There are various methods by which to evaluate zipper strength. The basic strength can be determined based on the results of the following inspection methods, from which overall strength appropriate for respective uses can be judged.（Based on JIS-S3015 and ASTM D2061）', 7, 28, '2023-02-06 01:26:06', '2023-02-06 01:26:06'),
(117, 'qualitystandard_qstestingmethods_file_2', '62', 7, 28, '2023-02-06 01:26:06', '2023-02-06 01:26:06'),
(118, 'qualitystandard_qstestingmethods_text_3', 'YKK INDIA PRIVATE LIMITED', 7, 28, '2023-02-06 01:26:06', '2023-02-06 01:26:06'),
(119, 'qualitystandard_qsoeko_file_0', '64', 7, 29, '2023-02-06 01:26:30', '2023-02-06 01:26:30'),
(120, 'qualitystandard_qsoeko_text_1', 'OEKO-TEX STANDARD-100', 7, 29, '2023-02-06 01:26:30', '2023-02-06 01:26:30'),
(121, 'qualitystandard_qsoeko_editor_2', 'Oeko-tex standard 100 is a normative document published by the International association for research &amp; testing in the field of Textile ecology. It is an international certification system for textiles, limiting the use of Harmful substances testing. Each Year YKK India’s products are submitted to authorize testing lab for testing &amp; certification (Certificate Ref: HKX-19367) for class-1 (baby articles), to comply with the human ecological requirements of standards presently established. The certified articles fulfill the requirements of Annex XVII of REACH (incl. the use of azo colorants, nickel release, etc.), the American requirement regarding total content of lead in children’s articles (CPSIA; with the exception of accessories made from glass) and of the Chinese standard GB 18401:2010 (labelling requirements were not verified).', 7, 29, '2023-02-06 01:26:31', '2023-02-06 01:26:31'),
(122, 'qualitystandard_qsiso_text_0', 'ISO 9001 : 2015', 7, 30, '2023-02-06 01:26:57', '2023-02-06 01:26:57'),
(123, 'qualitystandard_qsiso_editor_1', 'YKK India has obtained ISO 9001:2015 certification from TUV SUD Asia pacific for its Quality Management System.', 7, 30, '2023-02-06 01:26:57', '2023-02-06 01:27:20'),
(124, 'qualitystandard_qsiso_file_2', '65', 7, 30, '2023-02-06 01:26:58', '2023-02-06 01:26:58'),
(125, 'qualitystandard_qscertification_file_0', '66', 7, 31, '2023-02-06 01:27:46', '2023-02-06 01:27:46'),
(126, 'qualitystandard_qscertification_text_1', 'UL CERTIFICATION', 7, 31, '2023-02-06 01:27:47', '2023-02-06 01:27:47'),
(127, 'qualitystandard_qscertification_editor_2', 'Metal zippers with “CONEX TAPE” is certified with UL certification (Ref: MH63811) for various Flame Resistant standards.', 7, 31, '2023-02-06 01:27:47', '2023-02-06 01:27:47'),
(128, 'qualitystandard_qscpsia_text_0', 'CPSIA COMPLIANCE', 7, 32, '2023-02-06 01:29:09', '2023-02-06 01:29:09'),
(129, 'qualitystandard_qscpsia_editor_1', 'The lead content of the surface coating & substrate of the products manufactured by YKK India complies with the lead content requirements of CPSIA (Consumer Product Safety Act) for Children Products. The phthalate content of the products manufactured by YKK India complies phthalate requirements mentioned in CPSIA (Consumer Product Safety Act) Section 108 for Toys safety & Children’s Care Articles.', 7, 32, '2023-02-06 01:29:09', '2023-02-06 01:29:48'),
(130, 'qualitystandard_qscpsia_file_2', NULL, 7, 32, '2023-02-06 01:29:09', '2023-02-06 01:29:09'),
(131, 'qualitystandard_qscpsia_text_2', 'CPSIA', 7, 32, '2023-02-06 01:29:48', '2023-02-06 01:29:48'),
(132, 'setting_page_name_hide', 'no', 2, 0, '2023-02-06 03:55:45', '2023-02-06 03:55:45'),
(133, 'setting_page_banner_slider', 'banner', 2, 0, '2023-02-06 03:55:45', '2023-02-06 03:56:56'),
(134, 'setting_page_slider_heading', 'null', 2, 0, '2023-02-06 03:55:45', '2023-02-06 03:55:45'),
(135, 'setting_page_slider_content', 'null', 2, 0, '2023-02-06 03:55:45', '2023-02-06 03:55:45'),
(136, 'setting_page_slider_btn_link', 'null', 2, 0, '2023-02-06 03:55:45', '2023-02-06 03:55:45'),
(137, 'setting_page_slider_btn_link2', 'null', 2, 0, '2023-02-06 03:55:46', '2023-02-06 03:55:46'),
(138, 'setting_page_slider_image', 'null', 2, 0, '2023-02-06 03:55:46', '2023-02-06 03:55:46'),
(139, 'contactus_contactdetails_file_0', '68', 2, 33, '2023-02-06 04:02:44', '2023-02-06 04:03:06'),
(145, 'setting_page_name_hide', 'no', 37, 0, '2023-02-07 07:04:06', '2023-02-07 07:04:06'),
(146, 'setting_page_banner_slider', 'banner', 37, 0, '2023-02-07 07:04:06', '2023-02-07 07:04:06'),
(147, 'setting_page_slider_heading', 'null', 37, 0, '2023-02-07 07:04:06', '2023-02-07 07:04:06'),
(148, 'setting_page_slider_content', 'null', 37, 0, '2023-02-07 07:04:07', '2023-02-07 07:04:07'),
(149, 'setting_page_slider_btn_link', 'null', 37, 0, '2023-02-07 07:04:07', '2023-02-07 07:04:07'),
(150, 'setting_page_slider_btn_link2', 'null', 37, 0, '2023-02-07 07:04:07', '2023-02-07 07:04:07'),
(151, 'setting_page_slider_image', 'null', 37, 0, '2023-02-07 07:04:07', '2023-02-07 07:04:07'),
(152, 'ykkgrouphistory_grouphistory_text_0', 'History of YKK..', 37, 35, '2023-02-07 10:31:51', '2023-02-07 10:33:18'),
(153, 'ykkgrouphistory_grouphistory_editor_1', 'Our turmoil and initiative can’t change history, but it is likely to change the future...', 37, 35, '2023-02-07 10:31:51', '2023-02-07 10:33:18'),
(154, 'ykkindiahistory_indiahistory_text_0', 'YKK India History', 40, 36, '2023-02-07 10:37:44', '2023-02-07 10:37:44'),
(155, 'ykkindiahistory_indiahistory_editor_1', 'Our turmoil and initiative can’t change history, but it is likely to change the future.', 40, 36, '2023-02-07 10:37:44', '2023-02-07 10:37:44'),
(156, 'setting_page_name_hide', 'no', 40, 0, '2023-02-07 10:38:06', '2023-02-07 10:38:06'),
(157, 'setting_page_banner_slider', 'banner', 40, 0, '2023-02-07 10:38:06', '2023-02-07 10:45:37'),
(158, 'setting_page_slider_heading', 'null', 40, 0, '2023-02-07 10:38:06', '2023-02-07 10:38:06'),
(159, 'setting_page_slider_content', 'null', 40, 0, '2023-02-07 10:38:06', '2023-02-07 10:38:06'),
(160, 'setting_page_slider_btn_link', 'null', 40, 0, '2023-02-07 10:38:07', '2023-02-07 10:38:07'),
(161, 'setting_page_slider_btn_link2', 'null', 40, 0, '2023-02-07 10:38:07', '2023-02-07 10:38:07'),
(162, 'setting_page_slider_image', 'null', 40, 0, '2023-02-07 10:38:07', '2023-02-07 10:38:07'),
(163, 'send_mail', 'dip@gmail.com', 45, 37, '2023-02-10 23:57:09', '2023-02-10 23:57:09'),
(164, 'send_mail2', 'Null', 45, 37, '2023-02-10 23:57:09', '2023-02-10 23:57:09'),
(165, 'admin_template', 'admin_template', 45, 37, '2023-02-10 23:57:09', '2023-02-10 23:57:09'),
(166, 'user_template', 'user_template', 45, 37, '2023-02-10 23:57:09', '2023-02-10 23:57:09'),
(167, 'layout', 'contact_layout', 45, 37, '2023-02-10 23:57:09', '2023-02-10 23:57:09'),
(168, 'success_msg', 'Success Message', 45, 37, '2023-02-10 23:57:09', '2023-02-10 23:57:09'),
(169, 'mail_body', 'Body Message', 45, 37, '2023-02-10 23:57:09', '2023-02-10 23:57:09'),
(170, 'redirect', '#', 45, 37, '2023-02-10 23:57:09', '2023-02-10 23:57:09'),
(171, 'career_careerdetails_text_0', 'Why YKK?', 46, 38, '2023-02-11 01:12:33', '2023-02-11 01:12:33'),
(172, 'career_careerdetails_editor_1', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', 46, 38, '2023-02-11 01:12:33', '2023-02-11 01:12:33'),
(173, 'career_careerdetails_editor_2', NULL, 46, 38, '2023-02-11 01:12:34', '2023-02-11 01:12:34'),
(174, 'career_careerdetails_text_2', 'Current Openings', 46, 38, '2023-02-11 01:13:16', '2023-02-11 01:13:16'),
(175, 'career_careerdetails_editor_3', '<table class=\"text-left\">\r\n<thead>\r\n<tr>\r\n<th>S.No.</th>\r\n<th>Designation</th>\r\n<th>Department</th>\r\n<th>Location</th>\r\n<th>Job Description</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td><a href=\"\"></a></td>\r\n</tr>\r\n\r\n<tr>\r\n<td colspan=\"5\" style=\"text-align:center\">No Opening Found.</td>\r\n</tr>\r\n\r\n\r\n</tbody>\r\n</table>', 46, 38, '2023-02-11 01:13:16', '2023-02-11 01:13:16'),
(176, 'setting_page_name_hide', 'no', 46, 0, '2023-02-11 01:15:00', '2023-02-11 01:15:00'),
(177, 'setting_page_banner_slider', 'banner', 46, 0, '2023-02-11 01:15:00', '2023-02-11 01:15:17'),
(178, 'setting_page_slider_heading', 'null', 46, 0, '2023-02-11 01:15:00', '2023-02-11 01:15:00'),
(179, 'setting_page_slider_content', 'null', 46, 0, '2023-02-11 01:15:00', '2023-02-11 01:15:00'),
(180, 'setting_page_slider_btn_link', 'null', 46, 0, '2023-02-11 01:15:00', '2023-02-11 01:15:00'),
(181, 'setting_page_slider_btn_link2', 'null', 46, 0, '2023-02-11 01:15:00', '2023-02-11 01:15:00'),
(182, 'setting_page_slider_image', 'null', 46, 0, '2023-02-11 01:15:00', '2023-02-11 01:15:00'),
(183, 'send_mail', 'dipan@gmail.com', 47, 39, '2023-02-11 01:40:19', '2023-02-11 01:40:19'),
(184, 'send_mail2', 'dipan@gmail.com', 47, 39, '2023-02-11 01:40:19', '2023-02-11 01:40:19'),
(185, 'admin_template', 'admin_template', 47, 39, '2023-02-11 01:40:20', '2023-02-11 01:40:20'),
(186, 'user_template', 'user_template', 47, 39, '2023-02-11 01:40:20', '2023-02-11 01:40:20'),
(187, 'layout', 'sidebar_layout', 47, 39, '2023-02-11 01:40:20', '2023-02-11 04:15:01'),
(188, 'success_msg', 'Success Message (Notification)', 47, 39, '2023-02-11 01:40:20', '2023-02-11 01:40:20'),
(189, 'mail_body', 'Body Message (Mail)', 47, 39, '2023-02-11 01:40:20', '2023-02-11 01:40:20'),
(190, 'redirect', '0', 47, 39, '2023-02-11 01:40:20', '2023-02-11 01:40:20'),
(191, 'setting_page_name_hide', 'no', 48, 0, '2023-02-11 03:34:28', '2023-02-11 03:34:28'),
(192, 'setting_page_banner_slider', 'banner', 48, 0, '2023-02-11 03:34:28', '2023-02-11 03:34:28'),
(193, 'setting_page_slider_heading', 'null', 48, 0, '2023-02-11 03:34:28', '2023-02-11 03:34:28'),
(194, 'setting_page_slider_content', 'null', 48, 0, '2023-02-11 03:34:28', '2023-02-11 03:34:28'),
(195, 'setting_page_slider_btn_link', 'null', 48, 0, '2023-02-11 03:34:28', '2023-02-11 03:34:28'),
(196, 'setting_page_slider_btn_link2', 'null', 48, 0, '2023-02-11 03:34:28', '2023-02-11 03:34:28'),
(197, 'setting_page_slider_image', 'null', 48, 0, '2023-02-11 03:34:28', '2023-02-11 03:34:28'),
(198, 'setting_page_name_hide', 'no', 49, 0, '2023-02-13 00:35:51', '2023-02-13 00:35:51'),
(199, 'setting_page_banner_slider', 'banner', 49, 0, '2023-02-13 00:35:51', '2023-02-13 00:39:39'),
(200, 'setting_page_slider_heading', 'null', 49, 0, '2023-02-13 00:35:51', '2023-02-13 00:35:51'),
(201, 'setting_page_slider_content', 'null', 49, 0, '2023-02-13 00:35:51', '2023-02-13 00:35:51'),
(202, 'setting_page_slider_btn_link', 'null', 49, 0, '2023-02-13 00:35:51', '2023-02-13 00:35:51'),
(203, 'setting_page_slider_btn_link2', 'null', 49, 0, '2023-02-13 00:35:51', '2023-02-13 00:35:51'),
(204, 'setting_page_slider_image', 'null', 49, 0, '2023-02-13 00:35:51', '2023-02-13 00:35:51'),
(205, 'product_productssustainable_file_0', '84', 49, 40, '2023-02-13 01:20:17', '2023-02-13 01:20:17'),
(206, 'product_productssustainable_text_1', 'Sustainable Products', 49, 40, '2023-02-13 01:20:17', '2023-02-13 01:20:17'),
(207, 'product_productssustainable_editor_2', 'YKK will continue developing and introducing sustainable products. NATULON®, Organic Cotton and plant-based zippers are some of our representative sustainable products.', 49, 40, '2023-02-13 01:20:17', '2023-02-13 01:42:01'),
(208, 'product_productssustainable_button_3', 'http://127.0.0.1:8000/p/product', 49, 40, '2023-02-13 01:20:18', '2023-02-13 01:20:18'),
(209, 'product_productindia_text_0', 'YKK India’s Produced Items', 49, 41, '2023-02-13 01:21:22', '2023-02-13 01:21:22'),
(210, 'product_productindia_editor_1', 'YKK produces a vast range of zippers, suitable for every application from high fashion to heavy industry. Whatever your needs, YKK can supply the fastening solution. Every zipper is made to the highest quality standards and with the attention to detail that has made YKK number one worldwide. YKK is a complete \'One-stop-shop\' for all your fastening and trimming needs. In order to ensure that the product chosen is appropriate for the application, please consult our nearest YKK office or use our <a href=\"http://127.0.0.1:8000/p/product\">E-Catalogue</a>.', 49, 41, '2023-02-13 01:21:22', '2023-02-13 01:41:49'),
(211, 'product_productindia_file_2', '85', 49, 41, '2023-02-13 01:21:22', '2023-02-13 01:21:22'),
(212, 'product_productglobal_file_0', '86', 49, 42, '2023-02-13 01:21:51', '2023-02-13 01:21:51'),
(213, 'product_productglobal_text_1', 'YKK’s Global Items', 49, 42, '2023-02-13 01:21:51', '2023-02-13 01:21:51'),
(214, 'product_productglobal_editor_2', 'Many manufacturers are now producing in multiple locations around the world as the globalization of manufacturing continues to expand. Maintaining stable and constant quality has become one of the key concerns for many global manufacturers. In order to support these companies, YKK has set up YFS - YKK Fastening Standards to provide products of the same quality level, wherever and whenever they are purchased. Each YKK production site conducts various quality tests and reports the results to Japan HQ on a regular basis in order to maintain and assure constant quality level.', 49, 42, '2023-02-13 01:21:51', '2023-02-13 01:21:51'),
(215, 'product_productglobal_button_3', 'http://127.0.0.1:8000/p/product', 49, 42, '2023-02-13 01:21:51', '2023-02-13 01:21:51'),
(216, 'product_productdigital_text_0', 'Digital Showroom', 49, 43, '2023-02-13 01:22:13', '2023-02-13 01:22:13'),
(217, 'product_productdigital_editor_1', NULL, 49, 43, '2023-02-13 01:22:13', '2023-02-13 01:22:13'),
(218, 'product_productdigital_button_2', 'http://127.0.0.1:8000/p/product', 49, 43, '2023-02-13 01:22:13', '2023-02-13 01:22:13'),
(219, 'product_productdigital_file_3', '87', 49, 43, '2023-02-13 01:22:13', '2023-02-13 01:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `page_sections`
--

CREATE TABLE `page_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `meta_fields` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_sections`
--

INSERT INTO `page_sections` (`id`, `title`, `page_id`, `order`, `meta_fields`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Global Green Business', 3, 0, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"file\",\"label\":\"Image\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-02 05:56:13', '2023-02-02 05:56:56'),
(6, 'Initiative', 3, 10, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-02 06:01:44', '2023-02-02 06:01:58'),
(7, 'New Product', 3, 30, '[{\"type\":\"file_repeter\",\"label\":\"Product Images\"},{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"button\",\"label\":\"Button Link left\"},{\"type\":\"button\",\"label\":\"Button Link right\"}]', 1, '2023-02-02 06:10:35', '2023-02-02 06:13:48'),
(8, 'Quality', 3, 40, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"file\",\"label\":\"Image\"}]', 1, '2023-02-02 06:34:47', '2023-02-02 06:35:32'),
(9, 'About', 1, 10, '[{\"type\":\"file\",\"label\":\"Image\"},{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"button\",\"label\":\"Button\"}]', 1, '2023-02-02 07:50:52', '2023-02-02 07:51:57'),
(10, 'YKK Group', 1, 20, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Description\"},{\"type\":\"file\",\"label\":\"Image\"}]', 1, '2023-02-02 08:00:00', '2023-02-02 08:00:41'),
(11, 'Network section', 1, 30, '[{\"type\":\"file\",\"label\":\"Top Image\"},{\"type\":\"file\",\"label\":\"Left Image\"},{\"type\":\"file\",\"label\":\"Right Image\"}]', 1, '2023-02-02 08:11:18', '2023-02-02 08:12:05'),
(12, 'CSR Activity', 4, 0, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"file\",\"label\":\"Right Image\"}]', 1, '2023-02-03 02:03:48', '2023-02-03 02:04:36'),
(13, 'CSR 2C Blue Section', 4, 10, '[{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"text_repeter\",\"label\":\"Listing\"}]', 1, '2023-02-03 02:12:17', '2023-02-03 02:15:54'),
(14, 'CSR Empowerment', 4, 20, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"file\",\"label\":\"Image\"}]', 1, '2023-02-03 02:17:00', '2023-02-03 02:18:41'),
(15, 'CSR Computer Lab', 4, 40, '[{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"file\",\"label\":\"Image\"}]', 1, '2023-02-03 02:19:03', '2023-02-03 02:22:09'),
(16, 'CSR Education Segment', 4, 50, '[{\"type\":\"file\",\"label\":\"Image\"},{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-03 02:19:33', '2023-02-03 02:22:40'),
(17, 'CSR Renovation', 4, 60, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"text_repeter\",\"label\":\"Listing\"},{\"type\":\"file\",\"label\":\"Image\"}]', 1, '2023-02-03 02:19:46', '2023-02-03 02:23:07'),
(18, 'CSR Development', 4, 70, '[{\"type\":\"file_repeter\",\"label\":\"Image Repeter\"},{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-03 02:20:08', '2023-02-03 02:23:35'),
(19, 'CSR Deaddiction Drive', 4, 80, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"file\",\"label\":\"Image\"}]', 1, '2023-02-03 02:20:26', '2023-02-03 02:23:58'),
(20, 'CSR Support', 4, 90, '[{\"type\":\"file_repeter\",\"label\":\"Image Repeter\"},{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-03 02:20:41', '2023-02-03 02:24:32'),
(21, 'CSR Committee', 4, 110, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-03 02:20:59', '2023-02-03 02:25:00'),
(22, 'Philosophy Cycle of Goodness', 5, 0, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"file\",\"label\":\"Image\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-03 05:55:46', '2023-02-03 06:00:51'),
(23, 'Philosophy  Higher Significance', 5, 20, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"file\",\"label\":\"Image\"},{\"type\":\"editor\",\"label\":\"Content Bellow Image\"},{\"type\":\"editor\",\"label\":\"Right Content\"}]', 1, '2023-02-03 05:56:04', '2023-02-03 05:59:30'),
(24, 'Philosophy Core Values', 5, 30, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"text\",\"label\":\"Sub Heading\"},{\"type\":\"editor\",\"label\":\"Left Content\"},{\"type\":\"editor\",\"label\":\"Right Content\"}]', 1, '2023-02-03 05:56:32', '2023-02-03 06:00:09'),
(25, 'MD Message Director', 6, 10, '[{\"type\":\"file\",\"label\":\"Photo\"},{\"type\":\"editor\",\"label\":\"Designation\"},{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Message Content\"}]', 1, '2023-02-06 00:31:40', '2023-02-06 00:35:46'),
(26, 'QS Quality Management', 7, 0, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-06 01:18:14', '2023-02-06 01:18:33'),
(27, 'QS Worldwide Network', 7, 20, '[{\"type\":\"file\",\"label\":\"Image\"},{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-06 01:18:56', '2023-02-06 01:19:49'),
(28, 'QS Testing Methods', 7, 30, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"file\",\"label\":\"Image\"},{\"type\":\"text\",\"label\":\"Bellow Heading\"}]', 1, '2023-02-06 01:19:43', '2023-02-06 01:20:38'),
(29, 'QS OEKO', 7, 40, '[{\"type\":\"file\",\"label\":\"Image\"},{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-06 01:20:56', '2023-02-06 01:21:48'),
(30, 'QS ISO', 7, 50, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"file\",\"label\":\"Image\"}]', 1, '2023-02-06 01:21:42', '2023-02-06 01:22:13'),
(31, 'QS Certification', 7, 60, '[{\"type\":\"file\",\"label\":\"Image\"},{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-06 01:22:46', '2023-02-06 01:23:08'),
(32, 'QS CPSIA', 7, 80, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"text\",\"label\":\"Text Image\"}]', 1, '2023-02-06 01:23:26', '2023-02-06 01:29:29'),
(33, 'Contact Details', 2, 0, '[{\"type\":\"file\",\"label\":\"Image\"}]', 1, '2023-02-06 04:02:05', '2023-02-06 04:02:24'),
(35, 'Group History', 37, 10, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-07 10:30:46', '2023-02-07 10:31:24'),
(36, 'India History', 40, 20, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"}]', 1, '2023-02-07 10:37:01', '2023-02-07 10:37:19'),
(37, 'form_setting_45', 45, 10, NULL, 1, '2023-02-10 23:57:09', '2023-02-10 23:57:09'),
(38, 'Career Details', 46, 0, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"text\",\"label\":\"Heading 2\"},{\"type\":\"editor\",\"label\":\"Content 2\"}]', 1, '2023-02-11 01:08:10', '2023-02-11 01:12:24'),
(39, 'form_setting_47', 47, 0, NULL, 1, '2023-02-11 01:40:19', '2023-02-11 01:40:19'),
(40, 'Products Sustainable', 49, 0, '[{\"type\":\"file\",\"label\":\"Image\"},{\"type\":\"text\",\"label\":\"heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"button\",\"label\":\"Button Link\"}]', 1, '2023-02-13 00:40:34', '2023-02-13 01:16:13'),
(41, 'Product India', 49, 20, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"file\",\"label\":\"Image\"}]', 1, '2023-02-13 01:02:16', '2023-02-13 01:17:06'),
(42, 'Product Global', 49, 30, '[{\"type\":\"file\",\"label\":\"Image\"},{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"button\",\"label\":\"Button Link\"}]', 1, '2023-02-13 01:02:37', '2023-02-13 01:17:49'),
(43, 'Product Digital', 49, 40, '[{\"type\":\"text\",\"label\":\"Heading\"},{\"type\":\"editor\",\"label\":\"Content\"},{\"type\":\"button\",\"label\":\"Button link\"},{\"type\":\"file\",\"label\":\"Image\"}]', 1, '2023-02-13 01:02:58', '2023-02-13 01:18:24');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` int(11) NOT NULL DEFAULT 0,
  `catalogue` int(11) NOT NULL DEFAULT 0,
  `thumbnail` int(11) NOT NULL DEFAULT 0,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor` int(11) NOT NULL DEFAULT 0,
  `comment_status` int(11) NOT NULL DEFAULT 0,
  `comment_count` int(11) NOT NULL DEFAULT 0,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `type`, `title`, `slug`, `content`, `excerpt`, `banner`, `catalogue`, `thumbnail`, `category_id`, `author`, `visitor`, `comment_status`, `comment_count`, `meta_title`, `meta_description`, `keywords`, `visibility`, `order`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'Test 22', 'test22', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', NULL, 0, 82, 80, '[\"1\"]', 'admin', 20, 0, 0, 'Test', 'Test', 'Test', '1', 0, '2023-02-01 18:30:00', '2023-02-12 23:34:00'),
(2, 'posts', 'Test', 'test', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', NULL, 0, 0, 80, '[\"1\"]', 'admin', 0, 0, 0, 'Test', 'Test', 'Test', '1', 0, '2023-02-01 18:30:00', '2023-02-11 04:05:55'),
(3, 'posts', 'Great people make', 'great-people-make', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', NULL, 0, 22, 80, '[\"1\"]', 'admin', 0, 0, 0, 'Great people make', 'Test', 'Test', '1', 0, '2023-02-01 18:30:00', '2023-02-13 04:52:15'),
(4, 'posts', 'Great company YKK', 'test-2', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', NULL, 0, 0, 80, '[\"1\"]', 'admin', 0, 0, 0, 'Test', 'Test', 'Test', '1', 0, '2023-02-01 18:30:00', '2023-02-11 04:05:55'),
(5, 'posts', 'Great company YKK 2', 'test-2', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', NULL, 0, 0, 80, '[\"1\"]', 'admin', 0, 0, 0, 'Test', 'Test', 'Test', '1', 0, '2023-02-01 18:30:00', '2023-02-11 04:05:55'),
(6, 'posts', 'Test', 'test', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', NULL, 0, 0, 80, '[\"1\"]', 'admin', 0, 0, 0, 'Test', 'Test', 'Test', '1', 0, '2023-02-01 18:30:00', '2023-02-11 04:05:55'),
(7, 'posts', 'Great people make', 'test-2', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', NULL, 0, 0, 80, '[\"1\"]', 'admin', 0, 0, 0, 'Test', 'Test', 'Test', '1', 0, '2023-02-01 18:30:00', '2023-02-11 04:05:55'),
(8, 'posts', 'Great company YKK', 'test-2', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', NULL, 0, 0, 80, '[\"1\"]', 'admin', 0, 0, 0, 'Test', 'Test', 'Test', '1', 0, '2023-02-01 18:30:00', '2023-02-11 04:05:55'),
(9, 'posts', 'Great company YKK 2', 'test-2', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', NULL, 0, 0, 80, '[\"1\"]', 'admin', 0, 0, 0, 'Test', 'Test', 'Test', '1', 0, '2023-02-01 18:30:00', '2023-02-11 04:05:55'),
(10, 'posts', 'Great company YKK 2a', 'test-2', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', NULL, 0, 0, 80, '[\"1\"]', 'admin', 0, 0, 0, 'Test', 'Test', 'Test', '1', 0, '2023-02-01 18:30:00', '2023-02-11 04:05:55'),
(11, 'posts', 'Great company YKK 2a22', 'test-2', 'Great people make YKK a great company YKK is looking for people who are proud to work for a manufacturing company. Someone who adds value to our products, to our customers’ products, and to the ultimate consumers we work with. YKK’s corporate strategy is to provide customers with a first class service, excellent product, product knowledge and outstanding customer service. YKK’s investment to innovation and commitment to our product development separates us from other companies. We want to create value, we are ethical, and provide equal opportunities for everyone. As an YKK employee, you’re expected to set ambitious goals– and do your best to achieve them and we will do our best to live up to your expectations. If you can adapt to changing circumstances and new challenges, we think you’ll find YKK a rewarding place to grow.', NULL, 0, 0, 80, '[\"1\"]', 'admin', 0, 0, 0, 'Test', 'Test', 'Test', '1', 0, '2023-02-01 18:30:00', '2023-02-11 04:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `slug`, `excerpt`, `content`, `banner`, `type`, `thumbnail`, `parent_id`, `level`, `order`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test', NULL, NULL, 0, 'posts', 27, 0, 1, 0, 'Test', 'Test', '2023-02-02 03:51:14', '2023-02-02 03:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) NOT NULL DEFAULT 0,
  `comment_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_author_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_author_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_author_IP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_approved` int(11) NOT NULL DEFAULT 0,
  `comment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `comment_parent` bigint(20) NOT NULL DEFAULT 0,
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
(6, 'Editor', '[\"1\",\"5\",\"6\",\"71\",\"8\",\"9\",\"73\",\"11\",\"12\",\"13\",\"14\",\"15\",\"75\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"29\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"78\",\"81\"]', '2022-07-28 18:30:00', '2023-02-15 05:27:48'),
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
(6, 'Media Add', 'media_add', 1, 5, '2023-01-19 11:16:46', '2023-02-13 07:47:19'),
(8, 'Media Delete', 'media_delete', 1, 5, '2023-01-19 11:16:46', '2023-01-19 11:16:46'),
(9, 'Pages', 'pages', 1, 0, '2023-01-19 11:44:34', '2023-02-13 08:48:03'),
(11, 'Pages Edit', 'pages_edit', 1, 9, '2023-01-19 11:44:34', '2023-01-19 11:44:34'),
(12, 'Pages Delete', 'pages_delete', 1, 9, '2023-01-19 11:44:34', '2023-01-19 11:44:34'),
(13, 'Users', 'users', 1, 0, NULL, '2023-02-14 00:05:22'),
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
(29, 'Frontend Setting', 'frontend-setting', 1, 0, '2023-01-19 12:12:58', '2023-01-19 12:12:58'),
(41, 'Office', 'office', 1, 0, '2023-02-13 07:24:45', '2023-02-13 07:24:45'),
(42, 'Office Add', 'office_add', 1, 41, '2023-02-13 07:24:45', '2023-02-13 07:24:45'),
(43, 'Office Edit', 'office_edit', 1, 41, '2023-02-13 07:24:45', '2023-02-13 07:24:45'),
(44, 'Office Delete', 'office_delete', 1, 41, '2023-02-13 07:24:45', '2023-02-13 07:24:45'),
(45, 'Timelines', 'timelines', 1, 0, '2023-02-13 07:24:59', '2023-02-13 07:24:59'),
(46, 'Timelines Add', 'timelines_add', 1, 45, '2023-02-13 07:24:59', '2023-02-13 07:24:59'),
(47, 'Timelines Edit', 'timelines_edit', 1, 45, '2023-02-13 07:24:59', '2023-02-13 07:24:59'),
(48, 'Timelines Delete', 'timelines_delete', 1, 45, '2023-02-13 07:24:59', '2023-02-13 07:24:59'),
(49, 'Sections', 'sections', 1, 0, '2023-02-13 07:25:11', '2023-02-13 07:25:11'),
(50, 'Sections Add', 'sections_add', 1, 49, '2023-02-13 07:25:11', '2023-02-13 07:25:11'),
(51, 'Sections Edit', 'sections_edit', 1, 49, '2023-02-13 07:25:11', '2023-02-13 07:25:11'),
(52, 'Sections Delete', 'sections_delete', 1, 49, '2023-02-13 07:25:11', '2023-02-13 07:25:11'),
(53, 'Posts', 'posts', 1, 0, '2023-02-13 07:28:56', '2023-02-13 07:28:56'),
(54, 'Posts Add', 'posts_add', 1, 53, '2023-02-13 07:28:56', '2023-02-13 07:28:56'),
(55, 'Posts Edit', 'posts_edit', 1, 53, '2023-02-13 07:28:56', '2023-02-13 07:28:56'),
(56, 'Posts Delete', 'posts_delete', 1, 53, '2023-02-13 07:28:56', '2023-02-13 07:28:56'),
(57, 'Contact Forms', 'contact-forms', 1, 0, '2023-02-13 07:29:13', '2023-02-13 07:29:13'),
(58, 'Contact Forms Add', 'contact-forms_add', 1, 57, '2023-02-13 07:29:13', '2023-02-13 07:29:13'),
(59, 'Contact Forms Edit', 'contact-forms_edit', 1, 57, '2023-02-13 07:29:13', '2023-02-13 07:29:13'),
(60, 'Contact Forms Delete', 'contact-forms_delete', 1, 57, '2023-02-13 07:29:13', '2023-02-13 07:29:13'),
(61, 'Menus', 'menus', 1, 0, '2023-02-13 07:30:43', '2023-02-13 07:30:43'),
(62, 'Menus Add', 'menus_add', 1, 61, '2023-02-13 07:30:43', '2023-02-13 07:30:43'),
(63, 'Menus Edit', 'menus_edit', 1, 61, '2023-02-13 07:30:43', '2023-02-13 07:30:43'),
(64, 'Menus Delete', 'menus_delete', 1, 61, '2023-02-13 07:30:44', '2023-02-13 07:30:44'),
(71, 'Media Edit', 'media_edit', 1, 5, NULL, '2023-02-13 08:06:56'),
(73, 'Pages Add', 'pages_add', 1, 9, '2023-01-19 11:44:34', '2023-01-19 11:44:34'),
(75, 'User Delete', 'users_delete', 1, 13, NULL, '2023-02-14 00:45:28'),
(78, 'Contact Form Leads', 'contact-form-leads', 1, 0, NULL, '2023-02-15 01:33:23'),
(81, 'Contact Form Leads Delete', 'contact-form-leads_delete', 1, 78, NULL, '2023-02-15 01:31:32');

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
(22, 'Kurukshetra University 3rd', 'Kurukshetra University 3rd', 'uploads/media/mQbAVqEoEoa7Y6OvA22SZ6AB8AhUWk80jp5Yx2Wg.pdf', 1, 150533, 'pdf', 'document', '2023-01-18 12:31:05', '2023-01-18 12:31:05'),
(27, 'signin', 'signin', 'uploads/media/saN0jVscqvx2mwkBcXLgGpE9aojWsIMmYUFfd8Dc.svg', 1, 13234, 'svg', 'image', '2023-01-19 00:25:22', '2023-01-19 00:25:22'),
(28, 'signup', 'signup', 'uploads/media/FrqDTW0HQGad3cO3rn9poyh91eW0Eg5wxajOUyOp.svg', 1, 26352, 'svg', 'image', '2023-01-19 00:25:22', '2023-01-19 00:25:22'),
(31, 'logo', 'logo', 'uploads/media/lnpyQ5jRAYy42t8VlAU0LxJ32Z1FXFqyYyPJpV2D.png', 1, 10358, 'png', 'image', '2023-01-24 23:24:52', '2023-01-24 23:24:52'),
(32, 'dipan-pic', 'dipan-pic', 'uploads/media/Qn445gS98QcIybjZwWMmJy4wqWIsh0gv0USkuyP2.jpg', 1, 166345, 'jpg', 'image', '2023-01-24 23:25:26', '2023-01-24 23:25:26'),
(33, '10_2028885661', '10_2028885661', 'uploads/media/1vyeERD4Fwp5yWFRjmVYX3IwvWqRpULsAjLLvIpv.jpg', 1, 198466, 'jpg', 'image', '2023-02-02 04:02:24', '2023-02-02 04:02:24'),
(34, '09_1604082741', '09_1604082741', 'uploads/media/mLi9hEy1fCywv3BbSPCpJk1KXF2AKaHTtbNZUGed.jpg', 1, 137928, 'jpg', 'image', '2023-02-02 04:02:28', '2023-02-02 04:02:28'),
(35, 'slide-3_1449463579', 'slide-3_1449463579', 'uploads/media/XALG7zEkJcHNIPUH21g13OFpU65AYRVWyWrqI5XL.jpg', 1, 2205011, 'jpg', 'image', '2023-02-02 04:02:33', '2023-02-02 04:02:33'),
(36, 'about', 'about', 'uploads/media/iayP8ud9dz91HQDhWwQgWDH8taDQUJMqakbdlr8q.png', 1, 401911, 'png', 'image', '2023-02-02 05:57:13', '2023-02-02 05:57:13'),
(37, 'new-products-2', 'new-products-2', 'uploads/media/imW5F9T2farlTcm3EsObP121gmTi5haul2Fjknqf.jpg', 1, 216745, 'jpg', 'image', '2023-02-02 06:15:59', '2023-02-02 06:15:59'),
(38, 'new-products-3', 'new-products-3', 'uploads/media/kEFVoTxN28GSGS2RH8owo794bnp1HFxF7ph83MNu.jpg', 1, 260157, 'jpg', 'image', '2023-02-02 06:16:06', '2023-02-02 06:16:06'),
(39, 'new-products-1', 'new-products-1', 'uploads/media/UVpBeC8sm2IfCscKnQ98Zuakk8qnDdsu1Gx8CfOS.jpg', 1, 153919, 'jpg', 'image', '2023-02-02 06:16:09', '2023-02-02 06:16:09'),
(40, 'YKK-Quality', 'YKK-Quality', 'uploads/media/X9cb71C46b3sFLwkigTZnmZUsphrYxkDnfQxaRgu.jpg', 1, 190757, 'jpg', 'image', '2023-02-02 06:36:17', '2023-02-02 06:36:17'),
(41, 'logo', 'logo', 'uploads/media/b6dBYjbIqCJwhxqgkam5iIbtqdP2qd2B7PZXHyXc.png', 1, 10358, 'png', 'image', '2023-02-02 08:04:29', '2023-02-02 08:04:29'),
(42, 'ykkgroup (1)', 'ykkgroup (1)', 'uploads/media/EpnwKjqWZj10Fe7xYffHJB0bAITMx9na7EEP9rpS.png', 1, 376737, 'png', 'image', '2023-02-02 08:12:39', '2023-02-02 08:12:39'),
(43, 'global network (1)', 'global network (1)', 'uploads/media/Ko4c6peJGXBkw9sB5qm7dFo2qg52uUqS3YlIGcsD.png', 1, 60148, 'png', 'image', '2023-02-02 08:12:43', '2023-02-02 08:12:43'),
(44, 'global map (1)', 'global map (1)', 'uploads/media/VXqzCE6p4BBdJ9AlxwyEj2xniCECoGM3TlZfcYbo.png', 1, 179146, 'png', 'image', '2023-02-02 08:12:45', '2023-02-02 08:12:45'),
(45, 'csr-banner_849459301', 'csr-banner_849459301', 'uploads/media/edLr04UXG2kV8knaOaWOXqmBbpb1Hyy7CFahNn1B.jpg', 1, 266507, 'jpg', 'image', '2023-02-03 01:59:01', '2023-02-03 01:59:01'),
(46, 'computer-class', 'computer-class', 'uploads/media/HUoeTBIHvgMUzc6T0F38RKJDVV1rFV7IthJ7kNWc.png', 1, 186865, 'png', 'image', '2023-02-03 02:00:36', '2023-02-03 02:00:36'),
(47, 'covid-1', 'covid-1', 'uploads/media/Np0KVGxJ6vkZvuM4PhriZUx90ZYElm4POObKfZz4.png', 1, 141548, 'png', 'image', '2023-02-03 02:00:41', '2023-02-03 02:00:41'),
(48, 'covid-2', 'covid-2', 'uploads/media/m14yJZHEXqVChjL3lzW7RadPC3lNVfMaGMCaIe7N.png', 1, 125285, 'png', 'image', '2023-02-03 02:00:48', '2023-02-03 02:00:48'),
(49, 'education', 'education', 'uploads/media/I2j6Nk9lhJlzzsGfFmgZTVE43JJqeWJ06OB83YAI.png', 1, 215119, 'png', 'image', '2023-02-03 02:00:54', '2023-02-03 02:00:54'),
(50, 'orphan-home-1', 'orphan-home-1', 'uploads/media/sxYj2Y8vTlCBSwZMVM7ne1tVYu8fjMcOU84phF9K.png', 1, 104762, 'png', 'image', '2023-02-03 02:01:00', '2023-02-03 02:01:00'),
(51, 'orphan-home-2', 'orphan-home-2', 'uploads/media/7vmIkHKfP8b8ynXN2MhlIHo9coJobNnNo4RL12h0.png', 1, 112256, 'png', 'image', '2023-02-03 02:01:05', '2023-02-03 02:01:05'),
(52, 'school', 'school', 'uploads/media/IUdsKB79WfkdfDCFOniKDdlf6LGEbTEz1CmwWjRE.png', 1, 338901, 'png', 'image', '2023-02-03 02:01:12', '2023-02-03 02:01:12'),
(53, 'school-renovation', 'school-renovation', 'uploads/media/VW2QwLx9eFHuoSaGRD8Frp4sX856W2EDiIMfNuxM.png', 1, 250999, 'png', 'image', '2023-02-03 02:01:19', '2023-02-03 02:01:19'),
(54, 'team', 'team', 'uploads/media/K4za2qfE7aCUqaS4qOQWIsxVVmc9HL0DdC78Ki8f.png', 1, 244166, 'png', 'image', '2023-02-03 02:01:24', '2023-02-03 02:01:24'),
(55, 'woman-empowerment', 'woman-empowerment', 'uploads/media/8mjQQp0R7V9PV2ZB5V5P1Klt9gmHtxgL7lpGCMMZ.png', 1, 312528, 'png', 'image', '2023-02-03 02:01:30', '2023-02-03 02:01:30'),
(56, 'philosophy-banner_1774584180', 'philosophy-banner_1774584180', 'uploads/media/yIng02cEwlkQ1jjvZLzrC9CWVBIWhhuMtOqp384B.jpg', 1, 227870, 'jpg', 'image', '2023-02-03 05:48:02', '2023-02-03 05:48:02'),
(57, 'cycle-of-goodness', 'cycle-of-goodness', 'uploads/media/4EmcoLSwElSm7nRDbV2nZAw6g68KVge8l0AGg5CB.png', 1, 54394, 'png', 'image', '2023-02-03 06:13:36', '2023-02-03 06:13:36'),
(58, 'goodness', 'goodness', 'uploads/media/KZIJPscZWUb7KZGgEZKYEvdiBFg6dFzM7rxdvcuZ.png', 1, 116232, 'png', 'image', '2023-02-03 06:13:38', '2023-02-03 06:13:38'),
(59, 'md-message_576496335', 'md-message_576496335', 'uploads/media/as9HQCIzDawrDlwFPBV2iU1fusdA2sXEWrfuHlL2.jpg', 1, 119203, 'jpg', 'image', '2023-02-06 00:30:03', '2023-02-06 00:30:03'),
(60, 'tadao-yoshida', 'tadao-yoshida', 'uploads/media/NFifO57NJmazaY3EfClW9scLmZLXDxaW0rLWErmY.png', 1, 210004, 'png', 'image', '2023-02-06 00:45:31', '2023-02-06 00:45:31'),
(61, 'quantity-standard_513189690', 'quantity-standard_513189690', 'uploads/media/x4kQMgKXADFOB4nQLUwVYV81y3MTLTc9Vr0jobJW.jpg', 1, 535369, 'jpg', 'image', '2023-02-06 01:16:40', '2023-02-06 01:16:40'),
(62, 'testing-menthod', 'testing-menthod', 'uploads/media/EekOg9reTAMDR8CBwDgRHgJZHGLLbeNwdAsZPJTr.png', 1, 11024, 'png', 'image', '2023-02-06 01:24:51', '2023-02-06 01:24:51'),
(63, 'network-map', 'network-map', 'uploads/media/R2v7NdDUxjJNiuueQn1rWLnQFuSfnW9S8SKrchBO.jpg', 1, 65221, 'jpg', 'image', '2023-02-06 01:24:54', '2023-02-06 01:24:54'),
(64, 'oeko-tex-standard', 'oeko-tex-standard', 'uploads/media/s4AXRnbAblF1GXbyg93X2qr1KCL0zBZbu7syXX29.png', 1, 31990, 'png', 'image', '2023-02-06 01:24:58', '2023-02-06 01:24:58'),
(65, 'tuv-logo', 'tuv-logo', 'uploads/media/UYAKSg2KUTw5QKCE0MyBVLiGonTGm8Rti87edMWK.png', 1, 45667, 'png', 'image', '2023-02-06 01:25:00', '2023-02-06 01:25:00'),
(66, 'ul', 'ul', 'uploads/media/9GuvjNys3aFQIpl7wCGF0Rb8vng0vgVEtT1nS7E0.png', 1, 7029, 'png', 'image', '2023-02-06 01:25:04', '2023-02-06 01:25:04'),
(67, 'contact-banner_84655880', 'contact-banner_84655880', 'uploads/media/WlRDuVt4tIRDQOVKTkBxHAXAxYkGZCRNnEJTdJ2o.jpg', 1, 96272, 'jpg', 'image', '2023-02-06 03:56:42', '2023-02-06 03:56:42'),
(68, 'india-map', 'india-map', 'uploads/media/inPrhFBpkqdzlrjFGRbKNSvqWnysje5JgTALL6VJ.png', 1, 111082, 'png', 'image', '2023-02-06 04:03:00', '2023-02-06 04:03:00'),
(69, 'ykk-group-history_458174415', 'ykk-group-history_458174415', 'uploads/media/h95UgJHXU0DGFpvzlD89rnLnbtbLmDr85ZdVsNLp.jpg', 1, 612076, 'jpg', 'image', '2023-02-07 07:03:34', '2023-02-07 07:03:34'),
(70, 'ykk-india-history_881429079', 'ykk-india-history_881429079', 'uploads/media/bGIhJaw2xszi3mzOserbf5z7yN2hL9o2r0gMqrlZ.jpg', 1, 484868, 'jpg', 'image', '2023-02-07 10:36:24', '2023-02-07 10:36:24'),
(71, 'ykk-1', 'ykk-1', 'uploads/media/v49xMp8RRHBbFQV1qMOP6te4nqlXMK33gjljfeyC.png', 1, 101476, 'png', 'image', '2023-02-07 10:52:53', '2023-02-07 10:52:53'),
(72, 'ykk-2', 'ykk-2', 'uploads/media/DIcBPpbeUuJKOsQy9KsEaApdmp3sdBysfKadUEge.png', 1, 111715, 'png', 'image', '2023-02-07 10:52:57', '2023-02-07 10:52:57'),
(73, 'ykk-3', 'ykk-3', 'uploads/media/rYa50L2W6Dn53IueiGym0g6MubyMGFRdrljk8OiW.png', 1, 77177, 'png', 'image', '2023-02-07 10:53:04', '2023-02-07 10:53:04'),
(74, 'ykk-4', 'ykk-4', 'uploads/media/3o2NMctdmVS90cNbnov1oaoFlQCViSrzpxBjVpPd.png', 1, 76754, 'png', 'image', '2023-02-07 10:53:13', '2023-02-07 10:53:13'),
(75, 'ykk-5', 'ykk-5', 'uploads/media/d1M3a8Y3scmKl8vDuVRF8iBOnWYP6CHReijNsNqF.png', 1, 111856, 'png', 'image', '2023-02-07 10:53:21', '2023-02-07 10:53:21'),
(76, 'ykk-6', 'ykk-6', 'uploads/media/nr426bheHBxhRWdxNigu4n0lKEA66V4XxNigUCQx.png', 1, 164586, 'png', 'image', '2023-02-07 10:53:28', '2023-02-07 10:53:28'),
(77, 'ykk-7', 'ykk-7', 'uploads/media/XvqTdai7V0JCNJNgSghVsIPscdZadhoz5T2e2TxS.png', 1, 181247, 'png', 'image', '2023-02-07 10:53:38', '2023-02-07 10:53:38'),
(78, 'ykk-8', 'ykk-8', 'uploads/media/ZSeQ7zDFsCwi8rgXwTCDqRwdUjOxTQmxDXWscg0o.png', 1, 181626, 'png', 'image', '2023-02-07 10:53:46', '2023-02-07 10:53:46'),
(79, 'career-banner_54918826', 'career-banner_54918826', 'uploads/media/6v3TcZmRlMTwm1pDw8AIpqBI6q5mL0vB6zs8TIWB.jpg', 1, 222542, 'jpg', 'image', '2023-02-11 01:03:59', '2023-02-11 01:03:59'),
(80, 'mumbai_265460824', 'mumbai_265460824', 'uploads/media/CI45ndzYGakehFUAu9thOYdYnZh3SPYYtubHYdzF.png', 1, 102737, 'png', 'image', '2023-02-11 03:33:01', '2023-02-11 03:33:01'),
(81, 'blog-banner_170647264', 'blog-banner_170647264', 'uploads/media/yz6bEFkTq6hkBB8KQWtI7g2n6kFLgxXtr4TlyMbk.jpg', 1, 251901, 'jpg', 'image', '2023-02-11 03:34:08', '2023-02-11 03:34:08'),
(82, 'YKK-Zipper-Catalogue', 'YKK-Zipper-Catalogue', 'uploads/media/st3jQvdxqqwvLdMXDGf1KGwuoTQtFPT1o10WiyDY.pdf', 1, 26895050, 'pdf', 'document', '2023-02-11 06:34:17', '2023-02-11 06:34:17'),
(83, 'product-banner_720955288', 'product-banner_720955288', 'uploads/media/SykQW4P6OrXoYlUds5SmFimFVW2zjZBORPNI4eH3.jpg', 1, 90722, 'jpg', 'image', '2023-02-13 00:39:27', '2023-02-13 00:39:27'),
(84, 'sus-product', 'Sus Products', 'uploads/media/6ixjCKyVJ3PAzJIjdm1HMnpIGGeD35YKNBpG8G7R.jpg', 1, 105406, 'jpg', 'image', '2023-02-13 01:19:15', '2023-02-13 03:11:01'),
(85, 'plant', 'Plant Test', 'uploads/media/ysU3L7bMrv4pAV9VxuTMiILuNHCcUOPppdZvGIan.png', 1, 195365, 'png', 'image', '2023-02-13 01:19:18', '2023-02-13 07:59:25'),
(86, 'network-map-sm', 'Network Map', 'uploads/media/LlcxDawAIuYaoNEH5eMea26JNvtU3Tnd3GoP49VG.jpg', 1, 170553, 'jpg', 'image', '2023-02-13 01:19:22', '2023-02-13 03:09:24'),
(87, 'digitalshowroom', 'Digital Show Room', 'uploads/media/rJqZEGtM6IxLT7HeAm6BL4wKYX4PmJltlv7A799W.png', 1, 176537, 'png', 'image', '2023-02-13 01:19:25', '2023-02-13 03:10:13'),
(93, 'logo (1)', 'logo (1)', 'uploads/media/kfTIo1DpQ1G9hAfqtXisWvH6DOTHuGo2mIWolc9d.png', 6, 828, 'png', 'image', '2023-02-13 08:43:03', '2023-02-13 08:43:03');

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
(1, 'Admin..', 'superadmin@gmail.com', NULL, '$2y$10$jJxwLzZA4xjlnXx2n8rJj.vmQ6rE10OWrtI4FXkqmaYC4NGBSTcTK', '7206775826', 'admin', '31', NULL, NULL, NULL, NULL, 0, 0, NULL, '2023-01-17 04:01:53', '2023-02-02 02:00:57'),
(6, 'Sub Admin', 'admin@gmail.com', NULL, '$2y$10$jDilBhxRd7SuOFaxAOEuPeDxndT/Y.3AAyKsYfq5kLhQkaaw9wac.', '7206775827', 'subadmin', NULL, NULL, NULL, NULL, NULL, 1, 6, 'Y3qvLJvTB5VW5cG1ez7a5DhRP8x9hshegeIHAMtpsyyFYKYoVkc3i48WHYdF', '2023-02-12 18:30:00', '2023-02-14 03:17:28'),
(7, 'Contact Us22', 'superadmin22@gmail.com', NULL, '$2y$10$bQbl3/9mQL.cWmGaNs4KuuSPi5my/il8uDTcV9IDfap2XLQC88c.S', '720677582622', 'subadmin', '93', NULL, NULL, NULL, NULL, 0, 0, NULL, '2023-02-14 01:31:28', '2023-02-14 01:31:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_forms`
--
ALTER TABLE `contact_forms`
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
-- Indexes for table `page_metas`
--
ALTER TABLE `page_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_sections`
--
ALTER TABLE `page_sections`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `page_metas`
--
ALTER TABLE `page_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `page_sections`
--
ALTER TABLE `page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
