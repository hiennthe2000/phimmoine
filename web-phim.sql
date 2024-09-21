-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 20, 2024 lúc 09:30 PM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web-phim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://webphim.local', 'yes'),
(2, 'home', 'http://webphim.local', 'yes'),
(3, 'blogname', 'Web phim', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nguyenthehien25062000@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:99:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:49:\"quoc-gia/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?quoc_gia=$matches[1]&feed=$matches[2]\";s:44:\"quoc-gia/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?quoc_gia=$matches[1]&feed=$matches[2]\";s:25:\"quoc-gia/([^/]+)/embed/?$\";s:41:\"index.php?quoc_gia=$matches[1]&embed=true\";s:37:\"quoc-gia/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?quoc_gia=$matches[1]&paged=$matches[2]\";s:19:\"quoc-gia/([^/]+)/?$\";s:30:\"index.php?quoc_gia=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"advanced-forms/advanced-forms.php\";i:2;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'web-phim', 'yes'),
(41, 'stylesheet', 'web-phim', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1725413763', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'WPLANG', 'vi', 'yes'),
(104, 'user_count', '2', 'no'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Bài viết mới</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:236:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Phản hồi gần đây</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:148:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Lưu trữ</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:153:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Chuyên mục</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:9:{i:1718076964;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1718112964;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1718112981;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1718156164;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1718156181;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1718156184;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1718415364;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1718608794;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.4.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(126, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1709861795;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(153, 'current_theme', 'EPAL Solution Corp.', 'yes'),
(154, 'theme_mods_web-phim', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"menu_main\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(155, 'theme_switched', '', 'yes'),
(162, 'finished_updating_comment_type', '1', 'yes'),
(170, 'recently_activated', 'a:0:{}', 'yes'),
(171, 'acf_version', '6.1.4', 'yes'),
(172, 'af_version', '1.9.3.1', 'yes'),
(178, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(190, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:37:\"Yêu cầu HTTPS không thành công.\";}}', 'yes'),
(191, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":5,\"critical\":2}', 'yes'),
(280, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(326, 'category_children', 'a:0:{}', 'yes'),
(333, 'options_logo_web', '43', 'no'),
(334, '_options_logo_web', 'field_6635da1f1efc8', 'no'),
(338, 'options_name_website', 'Phimmoine', 'no'),
(339, '_options_name_website', 'field_6635f24b89df2', 'no'),
(341, 'options_banner_footer', '49', 'no'),
(342, '_options_banner_footer', 'field_6635f62410fc8', 'no'),
(355, 'options_movie_future_0_chosee_post', '35', 'no'),
(356, '_options_movie_future_0_chosee_post', 'field_663660af7ddf1', 'no'),
(357, 'options_movie_future_1_chosee_post', '35', 'no'),
(358, '_options_movie_future_1_chosee_post', 'field_663660af7ddf1', 'no'),
(359, 'options_movie_future_2_chosee_post', '35', 'no'),
(360, '_options_movie_future_2_chosee_post', 'field_663660af7ddf1', 'no'),
(361, 'options_movie_future', '3', 'no'),
(362, '_options_movie_future', 'field_663660717ddf0', 'no'),
(471, 'db_upgraded', '', 'yes'),
(474, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.5.4.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.5.4.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.4\";s:7:\"version\";s:5:\"6.5.4\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.4-partial-3.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.4\";s:7:\"version\";s:5:\"6.5.4\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.5.3\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.4-partial-3.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.4-rollback-3.zip\";}s:7:\"current\";s:5:\"6.5.4\";s:7:\"version\";s:5:\"6.5.4\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.5.3\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1718074132;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(475, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1718074135;s:7:\"checked\";a:1:{s:8:\"web-phim\";s:4:\"2019\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(477, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:31:\"nguyenthehien25062000@gmail.com\";s:7:\"version\";s:5:\"6.5.3\";s:9:\"timestamp\";i:1715566195;}', 'no'),
(498, 'can_compress_scripts', '1', 'yes'),
(581, 'quoc_gia_children', 'a:0:{}', 'yes'),
(582, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(634, '_site_transient_timeout_browser_c92baae71318dc81de51a663df2f8b4f', '1718422807', 'no'),
(635, '_site_transient_browser_c92baae71318dc81de51a663df2f8b4f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"125.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(636, '_site_transient_timeout_php_check_5d752ba2016ea61f3d144fd3524590fe', '1718422808', 'no'),
(637, '_site_transient_php_check_5d752ba2016ea61f3d144fd3524590fe', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(695, '_transient_timeout_acf_plugin_updates', '1718246934', 'no'),
(696, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.3.1.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20240606\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.4\";}}', 'no'),
(697, '_site_transient_timeout_theme_roots', '1718075934', 'no'),
(698, '_site_transient_theme_roots', 'a:1:{s:8:\"web-phim\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(699, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1718074136;s:8:\"response\";a:3:{s:33:\"advanced-forms/advanced-forms.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/advanced-forms\";s:4:\"slug\";s:14:\"advanced-forms\";s:6:\"plugin\";s:33:\"advanced-forms/advanced-forms.php\";s:11:\"new_version\";s:7:\"1.9.3.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/advanced-forms/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/advanced-forms.1.9.3.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/advanced-forms/assets/icon-256x256.png?rev=1894254\";s:2:\"1x\";s:67:\"https://ps.w.org/advanced-forms/assets/icon-128x128.png?rev=1894251\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/advanced-forms/assets/banner-1544x500.png?rev=1894253\";s:2:\"1x\";s:69:\"https://ps.w.org/advanced-forms/assets/banner-772x250.png?rev=1894253\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"5.4.0\";s:6:\"tested\";s:5:\"6.5.4\";s:12:\"requires_php\";s:3:\"7.1\";s:16:\"requires_plugins\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.8.2\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:5:\"6.4.4\";s:12:\"requires_php\";s:3:\"5.6\";s:16:\"requires_plugins\";a:0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.3.1.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20240606\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.4\";s:33:\"advanced-forms/advanced-forms.php\";s:7:\"1.9.3.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.8.1\";}}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'tpl-home.php'),
(3, 2, '_edit_lock', '1717384346:1'),
(4, 2, '_edit_last', '1'),
(5, 7, '_menu_item_type', 'post_type'),
(6, 7, '_menu_item_menu_item_parent', '0'),
(7, 7, '_menu_item_object_id', '2'),
(8, 7, '_menu_item_object', 'page'),
(9, 7, '_menu_item_target', ''),
(10, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(11, 7, '_menu_item_xfn', ''),
(12, 7, '_menu_item_url', ''),
(14, 8, '_menu_item_type', 'custom'),
(15, 8, '_menu_item_menu_item_parent', '0'),
(16, 8, '_menu_item_object_id', '8'),
(17, 8, '_menu_item_object', 'custom'),
(18, 8, '_menu_item_target', ''),
(19, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 8, '_menu_item_xfn', ''),
(21, 8, '_menu_item_url', ''),
(23, 9, '_menu_item_type', 'custom'),
(24, 9, '_menu_item_menu_item_parent', '0'),
(25, 9, '_menu_item_object_id', '9'),
(26, 9, '_menu_item_object', 'custom'),
(27, 9, '_menu_item_target', ''),
(28, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 9, '_menu_item_xfn', ''),
(30, 9, '_menu_item_url', ''),
(32, 10, '_menu_item_type', 'custom'),
(33, 10, '_menu_item_menu_item_parent', '0'),
(34, 10, '_menu_item_object_id', '10'),
(35, 10, '_menu_item_object', 'custom'),
(36, 10, '_menu_item_target', ''),
(37, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 10, '_menu_item_xfn', ''),
(39, 10, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(41, 11, '_menu_item_type', 'custom'),
(42, 11, '_menu_item_menu_item_parent', '0'),
(43, 11, '_menu_item_object_id', '11'),
(44, 11, '_menu_item_object', 'custom'),
(45, 11, '_menu_item_target', ''),
(46, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 11, '_menu_item_xfn', ''),
(48, 11, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(50, 12, '_menu_item_type', 'custom'),
(51, 12, '_menu_item_menu_item_parent', '8'),
(52, 12, '_menu_item_object_id', '12'),
(53, 12, '_menu_item_object', 'custom'),
(54, 12, '_menu_item_target', ''),
(55, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 12, '_menu_item_xfn', ''),
(57, 12, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(59, 13, '_menu_item_type', 'custom'),
(60, 13, '_menu_item_menu_item_parent', '8'),
(61, 13, '_menu_item_object_id', '13'),
(62, 13, '_menu_item_object', 'custom'),
(63, 13, '_menu_item_target', ''),
(64, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 13, '_menu_item_xfn', ''),
(66, 13, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(68, 14, '_menu_item_type', 'custom'),
(69, 14, '_menu_item_menu_item_parent', '8'),
(70, 14, '_menu_item_object_id', '14'),
(71, 14, '_menu_item_object', 'custom'),
(72, 14, '_menu_item_target', ''),
(73, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 14, '_menu_item_xfn', ''),
(75, 14, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(77, 15, '_menu_item_type', 'custom'),
(78, 15, '_menu_item_menu_item_parent', '8'),
(79, 15, '_menu_item_object_id', '15'),
(80, 15, '_menu_item_object', 'custom'),
(81, 15, '_menu_item_target', ''),
(82, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 15, '_menu_item_xfn', ''),
(84, 15, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(86, 16, '_menu_item_type', 'custom'),
(87, 16, '_menu_item_menu_item_parent', '8'),
(88, 16, '_menu_item_object_id', '16'),
(89, 16, '_menu_item_object', 'custom'),
(90, 16, '_menu_item_target', ''),
(91, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 16, '_menu_item_xfn', ''),
(93, 16, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(95, 17, '_menu_item_type', 'custom'),
(96, 17, '_menu_item_menu_item_parent', '8'),
(97, 17, '_menu_item_object_id', '17'),
(98, 17, '_menu_item_object', 'custom'),
(99, 17, '_menu_item_target', ''),
(100, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 17, '_menu_item_xfn', ''),
(102, 17, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(104, 18, '_menu_item_type', 'custom'),
(105, 18, '_menu_item_menu_item_parent', '8'),
(106, 18, '_menu_item_object_id', '18'),
(107, 18, '_menu_item_object', 'custom'),
(108, 18, '_menu_item_target', ''),
(109, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 18, '_menu_item_xfn', ''),
(111, 18, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(113, 19, '_menu_item_type', 'custom'),
(114, 19, '_menu_item_menu_item_parent', '9'),
(115, 19, '_menu_item_object_id', '19'),
(116, 19, '_menu_item_object', 'custom'),
(117, 19, '_menu_item_target', ''),
(118, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 19, '_menu_item_xfn', ''),
(120, 19, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(122, 20, '_menu_item_type', 'custom'),
(123, 20, '_menu_item_menu_item_parent', '9'),
(124, 20, '_menu_item_object_id', '20'),
(125, 20, '_menu_item_object', 'custom'),
(126, 20, '_menu_item_target', ''),
(127, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 20, '_menu_item_xfn', ''),
(129, 20, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(131, 21, '_menu_item_type', 'custom'),
(132, 21, '_menu_item_menu_item_parent', '9'),
(133, 21, '_menu_item_object_id', '21'),
(134, 21, '_menu_item_object', 'custom'),
(135, 21, '_menu_item_target', ''),
(136, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 21, '_menu_item_xfn', ''),
(138, 21, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(140, 22, '_menu_item_type', 'custom'),
(141, 22, '_menu_item_menu_item_parent', '9'),
(142, 22, '_menu_item_object_id', '22'),
(143, 22, '_menu_item_object', 'custom'),
(144, 22, '_menu_item_target', ''),
(145, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 22, '_menu_item_xfn', ''),
(147, 22, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(149, 23, '_menu_item_type', 'custom'),
(150, 23, '_menu_item_menu_item_parent', '9'),
(151, 23, '_menu_item_object_id', '23'),
(152, 23, '_menu_item_object', 'custom'),
(153, 23, '_menu_item_target', ''),
(154, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 23, '_menu_item_xfn', ''),
(156, 23, '_menu_item_url', 'http://webphim.local/wp-admin/nav-menus.php?menu=2'),
(162, 26, '_edit_lock', '1717989988:1'),
(163, 26, '_edit_last', '1'),
(168, 29, '_wp_attached_file', '2024/03/movie-4.png'),
(169, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:900;s:4:\"file\";s:19:\"2024/03/movie-4.png\";s:8:\"filesize\";i:260317;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"movie-4-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:129401;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"movie-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:53315;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 35, '_edit_lock', '1717989463:1'),
(183, 35, '_edit_last', '1'),
(184, 36, '_wp_attached_file', '2024/04/Descendants_of_the_Sun-p1.jpg'),
(185, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:336;s:6:\"height\";i:480;s:4:\"file\";s:37:\"2024/04/Descendants_of_the_Sun-p1.jpg\";s:8:\"filesize\";i:56437;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"Descendants_of_the_Sun-p1-210x300.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20494;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"Descendants_of_the_Sun-p1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8651;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 35, '_thumbnail_id', '36'),
(188, 35, 'link_movie', 'https://vk.com/video_ext.php?oid=739623089&id=456239538&hd=4'),
(189, 35, '_link_movie', 'field_65eab63efca46'),
(190, 35, 'hd_moive', 'HD'),
(191, 35, '_hd_moive', 'field_65eab83204eb2'),
(192, 35, 'time_movie', '60'),
(193, 35, '_time_movie', 'field_65eab85204eb3'),
(194, 35, 'post_views_count', '107'),
(198, 41, '_edit_lock', '1714811408:1'),
(199, 41, '_edit_last', '1'),
(200, 43, '_wp_attached_file', '2024/05/logo_web_png.png'),
(201, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2024/05/logo_web_png.png\";s:8:\"filesize\";i:55270;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"logo_web_png-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22106;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"logo_web_png-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9493;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 49, '_wp_attached_file', '2024/05/banner_footer.png'),
(207, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2549;s:6:\"height\";i:449;s:4:\"file\";s:25:\"2024/05/banner_footer.png\";s:8:\"filesize\";i:185543;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"banner_footer-300x53.png\";s:5:\"width\";i:300;s:6:\"height\";i:53;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12176;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"banner_footer-1024x180.png\";s:5:\"width\";i:1024;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:64409;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"banner_footer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9822;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"banner_footer-768x135.png\";s:5:\"width\";i:768;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43579;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"banner_footer-1536x271.png\";s:5:\"width\";i:1536;s:6:\"height\";i:271;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:111867;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"banner_footer-2048x361.png\";s:5:\"width\";i:2048;s:6:\"height\";i:361;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:166871;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 50, '_edit_lock', '1714900405:1'),
(215, 50, '_edit_last', '1'),
(216, 53, '_wp_attached_file', '2024/05/hero-bg.jpg'),
(217, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:911;s:4:\"file\";s:19:\"2024/05/hero-bg.jpg\";s:8:\"filesize\";i:105194;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"hero-bg-300x142.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5238;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"hero-bg-1024x486.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:486;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40610;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"hero-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2285;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"hero-bg-768x364.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:364;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24656;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"hero-bg-1536x729.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:729;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81039;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 2, 'slide_banner_0_image', '53'),
(219, 2, '_slide_banner_0_image', 'field_66364c823a5fd'),
(220, 2, 'slide_banner_1_image', '53'),
(221, 2, '_slide_banner_1_image', 'field_66364c823a5fd'),
(222, 2, 'slide_banner_2_image', '53'),
(223, 2, '_slide_banner_2_image', 'field_66364c823a5fd'),
(224, 2, 'slide_banner', '3'),
(225, 2, '_slide_banner', 'field_6635f8723a5fc'),
(226, 2, 'slide_banner_0_post_movie', '35'),
(227, 2, '_slide_banner_0_post_movie', 'field_663651bf00101'),
(228, 2, 'slide_banner_1_post_movie', '35'),
(229, 2, '_slide_banner_1_post_movie', 'field_663651bf00101'),
(230, 2, 'slide_banner_2_post_movie', '35'),
(231, 2, '_slide_banner_2_post_movie', 'field_663651bf00101'),
(232, 57, '_edit_lock', '1714841771:1'),
(233, 57, '_edit_last', '1'),
(234, 2, 'movie_item_future_0_item_future', '35'),
(235, 2, '_movie_item_future_0_item_future', 'field_66374a788f175'),
(236, 2, 'movie_item_future', '6'),
(237, 2, '_movie_item_future', 'field_66374a3a8f174'),
(238, 2, 'movie_item_hot', '5'),
(239, 2, '_movie_item_hot', 'field_66374aee8f178'),
(240, 2, 'movie_item_view', '5'),
(241, 2, '_movie_item_view', 'field_66374b6c8f17a'),
(242, 2, 'movie_item_hot_0_item_hot', '35'),
(243, 2, '_movie_item_hot_0_item_hot', 'field_66374b2f8f179'),
(244, 2, 'movie_item_view_0_item_view', '35'),
(245, 2, '_movie_item_view_0_item_view', 'field_66374bba8f17b'),
(246, 72, '_edit_lock', '1714904067:1'),
(247, 72, '_edit_last', '1'),
(248, 72, '_thumbnail_id', '29'),
(250, 72, 'link_movie', ''),
(251, 72, '_link_movie', 'field_65eab63efca46'),
(252, 72, 'hd_moive', 'HD'),
(253, 72, '_hd_moive', 'field_65eab83204eb2'),
(254, 72, 'time_movie', '120 phút'),
(255, 72, '_time_movie', 'field_65eab85204eb3'),
(256, 72, 'post_views_count', '4'),
(257, 74, '_edit_lock', '1715405988:1'),
(258, 74, '_edit_last', '1'),
(259, 74, '_thumbnail_id', '36'),
(261, 74, 'link_movie', ''),
(262, 74, '_link_movie', 'field_65eab63efca46'),
(263, 74, 'hd_moive', ''),
(264, 74, '_hd_moive', 'field_65eab83204eb2'),
(265, 74, 'time_movie', ''),
(266, 74, '_time_movie', 'field_65eab85204eb3'),
(267, 76, '_edit_lock', '1715406001:1'),
(268, 76, '_edit_last', '1'),
(269, 76, '_thumbnail_id', '29'),
(271, 76, 'link_movie', ''),
(272, 76, '_link_movie', 'field_65eab63efca46'),
(273, 76, 'hd_moive', ''),
(274, 76, '_hd_moive', 'field_65eab83204eb2'),
(275, 76, 'time_movie', ''),
(276, 76, '_time_movie', 'field_65eab85204eb3'),
(277, 78, '_edit_lock', '1717563188:1'),
(278, 78, '_edit_last', '1'),
(279, 78, '_thumbnail_id', '36'),
(281, 78, 'link_movie', ''),
(282, 78, '_link_movie', 'field_65eab63efca46'),
(283, 78, 'hd_moive', ''),
(284, 78, '_hd_moive', 'field_65eab83204eb2'),
(285, 78, 'time_movie', ''),
(286, 78, '_time_movie', 'field_65eab85204eb3'),
(287, 80, '_edit_lock', '1717496561:1'),
(288, 80, '_edit_last', '1'),
(289, 80, '_thumbnail_id', '36'),
(291, 80, 'link_movie', ''),
(292, 80, '_link_movie', 'field_65eab63efca46'),
(293, 80, 'hd_moive', ''),
(294, 80, '_hd_moive', 'field_65eab83204eb2'),
(295, 80, 'time_movie', ''),
(296, 80, '_time_movie', 'field_65eab85204eb3'),
(297, 2, 'movie_item_future_1_item_future', '74'),
(298, 2, '_movie_item_future_1_item_future', 'field_66374a788f175'),
(299, 2, 'movie_item_future_2_item_future', '76'),
(300, 2, '_movie_item_future_2_item_future', 'field_66374a788f175'),
(301, 2, 'movie_item_future_3_item_future', '78'),
(302, 2, '_movie_item_future_3_item_future', 'field_66374a788f175'),
(303, 2, 'movie_item_future_4_item_future', '80'),
(304, 2, '_movie_item_future_4_item_future', 'field_66374a788f175'),
(305, 2, 'movie_item_future_5_item_future', '72'),
(306, 2, '_movie_item_future_5_item_future', 'field_66374a788f175'),
(307, 2, 'movie_item_hot_1_item_hot', '74'),
(308, 2, '_movie_item_hot_1_item_hot', 'field_66374b2f8f179'),
(309, 2, 'movie_item_hot_2_item_hot', '76'),
(310, 2, '_movie_item_hot_2_item_hot', 'field_66374b2f8f179'),
(311, 2, 'movie_item_hot_3_item_hot', '78'),
(312, 2, '_movie_item_hot_3_item_hot', 'field_66374b2f8f179'),
(313, 2, 'movie_item_hot_4_item_hot', '72'),
(314, 2, '_movie_item_hot_4_item_hot', 'field_66374b2f8f179'),
(315, 2, 'movie_item_view_1_item_view', '78'),
(316, 2, '_movie_item_view_1_item_view', 'field_66374bba8f17b'),
(317, 2, 'movie_item_view_2_item_view', '80'),
(318, 2, '_movie_item_view_2_item_view', 'field_66374bba8f17b'),
(319, 2, 'movie_item_view_3_item_view', '72'),
(320, 2, '_movie_item_view_3_item_view', 'field_66374bba8f17b'),
(321, 2, 'movie_item_view_4_item_view', '76'),
(322, 2, '_movie_item_view_4_item_view', 'field_66374bba8f17b'),
(323, 80, 'post_views_count', '15'),
(328, 78, 'post_views_count', '15'),
(329, 74, 'post_views_count', '23'),
(333, 76, 'post_views_count', '5'),
(349, 7, '_wp_old_date', '2024-03-08'),
(350, 8, '_wp_old_date', '2024-03-08'),
(351, 12, '_wp_old_date', '2024-03-08'),
(352, 13, '_wp_old_date', '2024-03-08'),
(353, 14, '_wp_old_date', '2024-03-08'),
(354, 15, '_wp_old_date', '2024-03-08'),
(355, 16, '_wp_old_date', '2024-03-08'),
(356, 17, '_wp_old_date', '2024-03-08'),
(357, 18, '_wp_old_date', '2024-03-08'),
(358, 9, '_wp_old_date', '2024-03-08'),
(359, 19, '_wp_old_date', '2024-03-08'),
(360, 20, '_wp_old_date', '2024-03-08'),
(361, 21, '_wp_old_date', '2024-03-08'),
(362, 22, '_wp_old_date', '2024-03-08'),
(363, 23, '_wp_old_date', '2024-03-08'),
(364, 10, '_wp_old_date', '2024-03-08'),
(365, 11, '_wp_old_date', '2024-03-08'),
(366, 102, '_edit_lock', '1717847283:1'),
(367, 102, '_edit_last', '1'),
(368, 102, '_wp_page_template', 'tpl-new.php'),
(369, 106, '_edit_lock', '1717989300:1'),
(370, 106, '_edit_last', '1'),
(371, 106, '_wp_trash_meta_status', 'publish'),
(372, 106, '_wp_trash_meta_time', '1717989447'),
(373, 106, '_wp_desired_post_slug', 'group_66666d1396452'),
(375, 35, 'episode', 'Tập 4'),
(376, 35, '_episode', 'field_66667050f2016');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2024-03-08 01:36:04', '2024-03-08 01:36:04', '<h1 style=\"text-align: center;\">PhimMoiNe.Online Chào mừng bạn</h1>\r\n<h2>PhimMoiNe là điểm đến lý tưởng</h2>\r\n<h3>PhimMoiNe là điểm đến lý tưởng</h3>\r\n<h4>PhimMoiNe là điểm đến lý tưởng</h4>\r\n<h5>PhimMoiNe là điểm đến lý tưởng</h5>\r\n<h6>PhimMoiNe là điểm đến lý tưởng</h6>\r\n&nbsp;\r\n\r\nPhimMoiNe là điểm đến lý tưởng cho những người yêu điện ảnh. Tại đây, chúng tôi tự hào mang đến cho bạn trải nghiệm xem phim tuyệt vời với hàng ngàn bộ phim đa dạng thể loại, từ những tác phẩm kinh điển đến những bộ phim mới nhất và hot nhất trên thị trường.\r\n\r\nTrang web của chúng tôi được thiết kế thân thiện và dễ sử dụng, giúp bạn dễ dàng tìm kiếm và chọn lựa phim yêu thích. Với hệ thống phân loại phim rõ ràng theo thể loại, quốc gia, năm phát hành và đánh giá từ người xem, bạn sẽ nhanh chóng tìm thấy bộ phim phù hợp với sở thích. Bên cạnh đó <a href=\"https://phimmoiv2.net/\">phimmoine</a>, chúng tôi còn có mục đề xuất phim dựa trên lịch sử xem của bạn, giúp bạn khám phá thêm nhiều tác phẩm thú vị mà có thể bạn chưa từng biết đến.\r\n\r\nChất lượng phim là một trong những ưu tiên hàng đầu của chúng tôi. Tất cả các bộ phim trên PhimMoiNe.Online đều có độ phân giải cao, âm thanh sống động và phụ đề chuẩn xác, mang lại cho bạn những giây phút thư giãn và giải trí hoàn hảo. Chúng tôi liên tục cập nhật những bộ phim mới nhất, đảm bảo bạn không bỏ lỡ bất kỳ siêu phẩm nào đang được công chiếu.\r\n\r\nNgoài ra, PhimMoiNe.Online còn cung cấp nhiều thông tin bổ ích về phim như tóm tắt nội dung, trailer, đánh giá và nhận xét từ cộng đồng yêu phim. Điều này giúp bạn có cái nhìn tổng quan và lựa chọn được bộ phim phù hợp với tâm trạng và sở thích cá nhân trong web <a href=\"https://phimmoine.online/nhung-canh-en-dau-tien/\">phimmoine</a>.\r\n\r\nHãy truy cập PhimMoiNe.Online ngay hôm nay để trải nghiệm thế giới điện ảnh đa sắc màu và không giới hạn. Chúng tôi luôn nỗ lực để trở thành người bạn đồng hành tin cậy của bạn trên hành trình khám phá và thưởng thức những bộ phim tuyệt vời nhất.', 'Trang chủ', '', 'publish', 'closed', 'open', '', 'trang-mau', '', '', '2024-06-01 03:38:28', '2024-06-01 03:38:28', '', 0, 'http://webphim.local/?page_id=2', 0, 'page', '', 0),
(4, 0, '2024-03-08 01:36:05', '2024-03-08 01:36:05', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-03-08 01:36:05', '2024-03-08 01:36:05', '', 0, 'http://webphim.local/2024/03/08/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:15', ' ', '', '', 'publish', 'closed', 'closed', '', '7', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:15', '', 'Thể loại', '', 'publish', 'closed', 'closed', '', 'the-loai', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=8', 2, 'nav_menu_item', '', 0),
(9, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:16', '', 'Quốc gia', '', 'publish', 'closed', 'closed', '', 'quoc-gia', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=9', 10, 'nav_menu_item', '', 0),
(10, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:16', '', 'Phim bộ', '', 'publish', 'closed', 'closed', '', 'phim-bo', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=10', 16, 'nav_menu_item', '', 0),
(11, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:16', '', 'Phim lẻ', '', 'publish', 'closed', 'closed', '', 'phim-le', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=11', 17, 'nav_menu_item', '', 0),
(12, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:15', '', 'Thể loại 1', '', 'publish', 'closed', 'closed', '', 'the-loai-1', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=12', 3, 'nav_menu_item', '', 0),
(13, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:15', '', 'Thể loại 2', '', 'publish', 'closed', 'closed', '', 'the-loai-2', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=13', 4, 'nav_menu_item', '', 0),
(14, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:15', '', 'Thể loại 3', '', 'publish', 'closed', 'closed', '', 'the-loai-3', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=14', 5, 'nav_menu_item', '', 0),
(15, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:15', '', 'Thể loại 4', '', 'publish', 'closed', 'closed', '', 'the-loai-4', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=15', 6, 'nav_menu_item', '', 0),
(16, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:16', '', 'Thể loại 5', '', 'publish', 'closed', 'closed', '', 'the-loai-5', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=16', 7, 'nav_menu_item', '', 0),
(17, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:16', '', 'Thể loại 6', '', 'publish', 'closed', 'closed', '', 'the-loai-6', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=17', 8, 'nav_menu_item', '', 0),
(18, 1, '2024-06-08 03:58:08', '2024-03-08 06:51:16', '', 'Thể loại 7', '', 'publish', 'closed', 'closed', '', 'the-loai-7', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=18', 9, 'nav_menu_item', '', 0),
(19, 1, '2024-06-08 03:58:08', '2024-03-08 06:52:57', '', 'Việt Nam', '', 'publish', 'closed', 'closed', '', 'viet-nam', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=19', 11, 'nav_menu_item', '', 0),
(20, 1, '2024-06-08 03:58:08', '2024-03-08 06:52:57', '', 'Thái Lan', '', 'publish', 'closed', 'closed', '', 'thai-lan', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=20', 12, 'nav_menu_item', '', 0),
(21, 1, '2024-06-08 03:58:08', '2024-03-08 06:52:57', '', 'Nga', '', 'publish', 'closed', 'closed', '', 'nga', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=21', 13, 'nav_menu_item', '', 0),
(22, 1, '2024-06-08 03:58:08', '2024-03-08 06:52:57', '', 'Trung quốc', '', 'publish', 'closed', 'closed', '', 'trung-quoc', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=22', 14, 'nav_menu_item', '', 0),
(23, 1, '2024-06-08 03:58:08', '2024-03-08 06:52:57', '', 'Hàn quốc', '', 'publish', 'closed', 'closed', '', 'han-quoc', '', '', '2024-06-08 03:58:08', '2024-06-08 03:58:08', '', 0, 'http://webphim.local/?p=23', 15, 'nav_menu_item', '', 0),
(26, 1, '2024-03-08 06:55:26', '2024-03-08 06:55:26', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Link phim', 'link-phim', 'publish', 'closed', 'closed', '', 'group_65eab63d8671d', '', '', '2024-06-10 03:18:21', '2024-06-10 03:18:21', '', 0, 'http://webphim.local/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2024-03-08 06:55:26', '2024-03-08 06:55:26', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Link phim', 'link_movie', 'publish', 'closed', 'closed', '', 'field_65eab63efca46', '', '', '2024-03-08 06:55:26', '2024-03-08 06:55:26', '', 26, 'http://webphim.local/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(29, 1, '2024-03-08 06:57:39', '2024-03-08 06:57:39', '', 'movie-4', '', 'inherit', 'open', 'closed', '', 'movie-4', '', '', '2024-03-08 06:57:39', '2024-03-08 06:57:39', '', 0, 'http://webphim.local/wp-content/uploads/2024/03/movie-4.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2024-03-08 07:04:15', '2024-03-08 07:04:15', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Chất lượng', 'hd_moive', 'publish', 'closed', 'closed', '', 'field_65eab83204eb2', '', '', '2024-03-08 07:04:15', '2024-03-08 07:04:15', '', 26, 'http://webphim.local/?post_type=acf-field&p=31', 1, 'acf-field', '', 0),
(32, 1, '2024-03-08 07:04:15', '2024-03-08 07:04:15', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Thời lượng', 'time_movie', 'publish', 'closed', 'closed', '', 'field_65eab85204eb3', '', '', '2024-03-08 07:04:15', '2024-03-08 07:04:15', '', 26, 'http://webphim.local/?post_type=acf-field&p=32', 2, 'acf-field', '', 0),
(35, 1, '2024-04-15 09:27:30', '2024-04-15 09:27:30', '<h2>Review phim gặp lại chị bầu - Phim chị bầu full HD</h2>\r\nKịch bản của bộ phim \"Gặp Lại Chị Bầu\" mang đến cho khán giả những cảm xúc thân thuộc và gần gũi với thực tế cuộc sống. Bộ phim truyền tải thông điệp về tình yêu và tình thân, rằng \"Ai cũng có tuổi trẻ nhiều khát khao. Còn gia đình là mái ấm luôn đón chờ mỗi người trở về.\"\r\n\r\nĐây là một tác phẩm của đạo diễn Nhất Trung, rất phù hợp để cả gia đình quây quần bên nhau và xem phim hay tháng 6. Để có những trải nghiệm trọn vẹn, hãy tìm và xem \"Gặp Lại Chị Bầu\" trong phiên bản <a href=\"https://kenh14.vn/gap-lai-chi-bau-cau-chuyen-thieu-cam-xuc-nhu-chinh-dien-xuat-cua-anh-tu-20240205161723474.chn\">phim chị bầu full HD.</a>\r\n\r\nBộ phim không chỉ dừng lại ở việc khơi gợi những cảm xúc gia đình mà còn đưa người xem quay về những ký ức đẹp của âm nhạc và điện ảnh cuối thập niên 1990. Đặc biệt, Làn Sóng Xanh - một chương trình tiêu biểu của thời hoàng kim nhạc Việt - được tái hiện sống động qua giai điệu \"Tình Thôi Xót Xa\" của Lam Trường.\r\n\r\nKhông dừng lại ở đó, sự xuất hiện của Đan Trường trong vai trò khách mời cũng làm sống lại những kỷ niệm đẹp. Anh thể hiện chính mình thời mới nổi với loạt hit như \"Đi Về Nơi Xa,\" \"Kiếp Ve Sầu\" cùng kiểu tóc hai mái đặc trưng đã trở thành biểu tượng.\r\n\r\n<img class=\"alignnone wp-image-346 aligncenter\" src=\"https://phimmoine.online/wp-content/uploads/2024/05/phim-gap-lai-chi-bau-300x200.webp\" alt=\"\" width=\"413\" height=\"275\" />\r\n\r\nTrong phim còn có những cảnh tri ân điện ảnh đương thời, điển hình là phân đoạn nhắc đến bộ phim \"Cầu Thang Tối\" - một tác phẩm gây tiếng vang lớn do đạo diễn Đào Bá Sơn thực hiện năm 1998. Những chi tiết này không chỉ làm phong phú thêm nội dung mà còn tạo nên sự kết nối chặt chẽ giữa phim và cuộc sống thực tế, mang lại cho người xem cảm giác gần gũi và thân thuộc. Để hiểu rõ hơn về những giá trị này, bạn nên tìm và xem \"Gặp Lại Chị Bầu.\"\r\n<h2>Tóm tắt phim gặp lại chị bầu - Phim hay tháng 6</h2>\r\nĐạo diễn Nhất Trung đã khéo léo lồng ghép những yếu tố văn hóa đại chúng vào tác phẩm của mình. Tạo nên một bộ phim không chỉ giải trí mà còn đầy ý nghĩa. Bộ phim như một bức tranh tái hiện lại một thời kỳ đẹp đẽ của âm nhạc và điện ảnh Việt Nam.\r\n\r\nĐồng thời gửi gắm thông điệp về giá trị của gia đình và tình yêu. Tác phẩm không chỉ dừng lại ở việc gợi nhớ về những kỷ niệm đẹp, mà còn tạo ra một không gian để khán giả trải nghiệm lại những giây phút hạnh phúc bên người thân. Để có trải nghiệm hình ảnh tốt nhất, hãy xem <a href=\"https://phimmoine.online/em-la-cua-em-full-hd-phim-viet/\">phim chị bầu full HD.</a>\r\n\r\nNhất Trung đã thành công trong việc đưa khán giả trở về với quá khứ, đồng thời nhắc nhở về những giá trị vĩnh cửu của tình yêu và gia đình. Bộ phim chắc chắn sẽ là một lựa chọn lý tưởng cho những ai muốn tìm về những kỷ niệm xưa cũ, để hiểu và trân trọng hơn những giá trị tinh thần quý báu.\r\n\r\n<img class=\"alignnone size-medium wp-image-362 aligncenter\" src=\"https://phimmoine.online/wp-content/uploads/2024/05/phim-gap-lai-chi-bau-full-hd-300x169.webp\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\nĐây là một tác phẩm không chỉ dành cho thế hệ đã trải qua thời kỳ hoàng kim của nhạc Việt, mà còn là cơ hội để thế hệ trẻ hiểu thêm về lịch sử và văn hóa âm nhạc của đất nước.\r\n\r\nTóm lại, tác phẩm của đạo diễn Nhất Trung không chỉ là một bộ phim giải trí đơn thuần mà còn là một bản hòa tấu đầy cảm xúc về tình yêu, gia đình và những giá trị văn hóa đã và đang định hình đời sống tinh thần của người Việt. Hãy cùng gia đình thưởng thức bộ phim này trong kỳ nghỉ lễ, để cùng nhau ôn lại những kỷ niệm đẹp và thêm gắn kết tình thân. Đừng quên tìm và xem \"Gặp Lại Chị Bầu\" trong phiên bản phim chị bầu full HD để có trải nghiệm tốt nhất.\r\n\r\nCũng có thể xem đây là một bộ phim hay tháng 6 đáng để trãi nghiệm và suy ngẫm, cùng bật lên và xem nhé ! Chúc mọi người xem phim vui vẻ ^^', 'Tập 1. Cuộc gặp gỡ Hậu Duệ Mặt Trời - 16 Tập', '', 'publish', 'open', 'open', '', 'tap-1-cuoc-gap-go-hau-due-mat-troi-16-tap', '', '', '2024-06-10 03:18:49', '2024-06-10 03:18:49', '', 0, 'http://webphim.local/?p=35', 0, 'post', '', 0),
(36, 1, '2024-04-15 09:27:25', '2024-04-15 09:27:25', '', 'Descendants_of_the_Sun-p1', '', 'inherit', 'open', 'closed', '', 'descendants_of_the_sun-p1', '', '', '2024-04-15 09:27:25', '2024-04-15 09:27:25', '', 35, 'http://webphim.local/wp-content/uploads/2024/04/Descendants_of_the_Sun-p1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2024-05-04 06:48:27', '2024-05-04 06:48:27', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'group_6635da1e4a81d', '', '', '2024-05-04 08:31:38', '2024-05-04 08:31:38', '', 0, 'http://webphim.local/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2024-05-04 06:48:27', '2024-05-04 06:48:27', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Logo', 'logo_web', 'publish', 'closed', 'closed', '', 'field_6635da1f1efc8', '', '', '2024-05-04 06:48:27', '2024-05-04 06:48:27', '', 41, 'http://webphim.local/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(43, 1, '2024-05-04 06:49:50', '2024-05-04 06:49:50', '', 'logo_web_png', '', 'inherit', 'open', 'closed', '', 'logo_web_png', '', '', '2024-05-04 06:49:50', '2024-05-04 06:49:50', '', 0, 'http://webphim.local/wp-content/uploads/2024/05/logo_web_png.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2024-05-04 08:31:32', '2024-05-04 08:31:32', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Tên website', 'name_website', 'publish', 'closed', 'closed', '', 'field_6635f24b89df2', '', '', '2024-05-04 08:31:32', '2024-05-04 08:31:32', '', 41, 'http://webphim.local/?post_type=acf-field&p=45', 1, 'acf-field', '', 0),
(49, 1, '2024-05-04 08:49:52', '2024-05-04 08:49:52', '', 'banner_footer', '', 'inherit', 'open', 'closed', '', 'banner_footer', '', '', '2024-05-04 08:49:52', '2024-05-04 08:49:52', '', 0, 'http://webphim.local/wp-content/uploads/2024/05/banner_footer.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2024-05-04 14:57:23', '2024-05-04 14:57:23', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"tpl-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Trang chủ', 'trang-chu', 'publish', 'closed', 'closed', '', 'group_6635f871d04f6', '', '', '2024-05-05 09:12:53', '2024-05-05 09:12:53', '', 0, 'http://webphim.local/?post_type=acf-field-group&#038;p=50', 0, 'acf-field-group', '', 0),
(51, 1, '2024-05-04 14:57:23', '2024-05-04 14:57:23', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Slide banner', 'slide_banner', 'publish', 'closed', 'closed', '', 'field_6635f8723a5fc', '', '', '2024-05-05 09:06:14', '2024-05-05 09:06:14', '', 50, 'http://webphim.local/?post_type=acf-field&#038;p=51', 1, 'acf-field', '', 0),
(52, 1, '2024-05-04 14:57:23', '2024-05-04 14:57:23', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Ảnh đại diện', 'image', 'publish', 'closed', 'closed', '', 'field_66364c823a5fd', '', '', '2024-05-04 14:57:23', '2024-05-04 14:57:23', '', 51, 'http://webphim.local/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2024-05-04 14:58:41', '2024-05-04 14:58:41', '', 'hero-bg', '', 'inherit', 'open', 'closed', '', 'hero-bg', '', '', '2024-05-04 14:58:41', '2024-05-04 14:58:41', '', 2, 'http://webphim.local/wp-content/uploads/2024/05/hero-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2024-05-04 15:19:23', '2024-05-04 15:19:23', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Bài viết', 'post_movie', 'publish', 'closed', 'closed', '', 'field_663651bf00101', '', '', '2024-05-04 15:19:23', '2024-05-04 15:19:23', '', 51, 'http://webphim.local/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(57, 1, '2024-05-04 16:23:14', '2024-05-04 16:23:14', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"content\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'content', 'content', 'publish', 'closed', 'closed', '', 'group_66366070a5855', '', '', '2024-05-04 16:36:18', '2024-05-04 16:36:18', '', 0, 'http://webphim.local/?post_type=acf-field-group&#038;p=57', 0, 'acf-field-group', '', 0),
(58, 1, '2024-05-04 16:23:14', '2024-05-04 16:23:14', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Phim nổi bậc', 'movie_future', 'publish', 'closed', 'closed', '', 'field_663660717ddf0', '', '', '2024-05-04 16:23:14', '2024-05-04 16:23:14', '', 57, 'http://webphim.local/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2024-05-04 16:23:14', '2024-05-04 16:23:14', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Chọn bài viết', 'chosee_post', 'publish', 'closed', 'closed', '', 'field_663660af7ddf1', '', '', '2024-05-04 16:23:14', '2024-05-04 16:23:14', '', 58, 'http://webphim.local/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2024-05-05 09:06:14', '2024-05-05 09:06:14', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'field_663747788f170', '', '', '2024-05-05 09:06:14', '2024-05-05 09:06:14', '', 50, 'http://webphim.local/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 1, '2024-05-05 09:06:14', '2024-05-05 09:06:14', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Phim nổi bậc', 'phim_moi', 'publish', 'closed', 'closed', '', 'field_6637492b8f171', '', '', '2024-05-05 09:06:14', '2024-05-05 09:06:14', '', 50, 'http://webphim.local/?post_type=acf-field&p=61', 2, 'acf-field', '', 0),
(62, 1, '2024-05-05 09:06:14', '2024-05-05 09:06:14', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Phim nổi bậc', 'movie_item_future', 'publish', 'closed', 'closed', '', 'field_66374a3a8f174', '', '', '2024-05-05 09:06:14', '2024-05-05 09:06:14', '', 50, 'http://webphim.local/?post_type=acf-field&p=62', 3, 'acf-field', '', 0),
(63, 1, '2024-05-05 09:06:14', '2024-05-05 09:06:14', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Chọn phim', 'item_future', 'publish', 'closed', 'closed', '', 'field_66374a788f175', '', '', '2024-05-05 09:12:53', '2024-05-05 09:12:53', '', 62, 'http://webphim.local/?post_type=acf-field&#038;p=63', 0, 'acf-field', '', 0),
(64, 1, '2024-05-05 09:06:14', '2024-05-05 09:06:14', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Phim hay nhất', 'phim_moi_copy', 'publish', 'closed', 'closed', '', 'field_663749cd8f172', '', '', '2024-05-05 09:06:14', '2024-05-05 09:06:14', '', 50, 'http://webphim.local/?post_type=acf-field&p=64', 4, 'acf-field', '', 0),
(65, 1, '2024-05-05 09:06:14', '2024-05-05 09:06:14', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Phim hay nhất', 'movie_item_hot', 'publish', 'closed', 'closed', '', 'field_66374aee8f178', '', '', '2024-05-05 09:06:14', '2024-05-05 09:06:14', '', 50, 'http://webphim.local/?post_type=acf-field&p=65', 5, 'acf-field', '', 0),
(66, 1, '2024-05-05 09:06:14', '2024-05-05 09:06:14', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Phim hay', 'item_hot', 'publish', 'closed', 'closed', '', 'field_66374b2f8f179', '', '', '2024-05-05 09:06:14', '2024-05-05 09:06:14', '', 65, 'http://webphim.local/?post_type=acf-field&p=66', 0, 'acf-field', '', 0),
(67, 1, '2024-05-05 09:06:14', '2024-05-05 09:06:14', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Phim xem nhiều', 'phim_moi_copy2', 'publish', 'closed', 'closed', '', 'field_66374a178f173', '', '', '2024-05-05 09:06:14', '2024-05-05 09:06:14', '', 50, 'http://webphim.local/?post_type=acf-field&p=67', 6, 'acf-field', '', 0),
(68, 1, '2024-05-05 09:06:14', '2024-05-05 09:06:14', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Phim xem nhiều', 'movie_item_view', 'publish', 'closed', 'closed', '', 'field_66374b6c8f17a', '', '', '2024-05-05 09:06:14', '2024-05-05 09:06:14', '', 50, 'http://webphim.local/?post_type=acf-field&p=68', 7, 'acf-field', '', 0),
(69, 1, '2024-05-05 09:06:14', '2024-05-05 09:06:14', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Phim xem nhiều', 'item_view', 'publish', 'closed', 'closed', '', 'field_66374bba8f17b', '', '', '2024-05-05 09:06:14', '2024-05-05 09:06:14', '', 68, 'http://webphim.local/?post_type=acf-field&p=69', 0, 'acf-field', '', 0),
(72, 1, '2024-05-05 09:42:38', '2024-05-05 09:42:38', 'fsdafs', 'fdasf', '', 'publish', 'open', 'open', '', 'fdasf', '', '', '2024-06-05 04:56:01', '2024-06-05 04:56:01', '', 0, 'http://webphim.local/?p=72', 0, 'post', '', 0),
(74, 1, '2024-05-11 05:42:08', '2024-05-11 05:42:08', '', 'Vở Kịch Của Em ft Vây Giữ', '', 'publish', 'open', 'open', '', 'vo-kich-cua-em-ft-vay-giu', '', '', '2024-06-05 04:56:01', '2024-06-05 04:56:01', '', 0, 'http://webphim.local/?p=74', 0, 'post', '', 0),
(76, 1, '2024-05-11 05:42:21', '2024-05-11 05:42:21', '', 'Vở Kịch Của Em ft Vây Giữ', '', 'publish', 'open', 'open', '', 'vo-kich-cua-em-ft-vay-giu-2', '', '', '2024-06-05 04:56:01', '2024-06-05 04:56:01', '', 0, 'http://webphim.local/?p=76', 0, 'post', '', 0),
(78, 1, '2024-05-11 05:42:35', '2024-05-11 05:42:35', '', 'Vở Kịch Của Em ft Vây Giữ', '', 'publish', 'open', 'open', '', 'vo-kich-cua-em-ft-vay-giu-3', '', '', '2024-06-05 04:56:01', '2024-06-05 04:56:01', '', 0, 'http://webphim.local/?p=78', 0, 'post', '', 0),
(80, 1, '2024-05-11 05:42:54', '2024-05-11 05:42:54', 'là bộ phim được làm trong bối cảnh, thủ đô Paris hoa lệ thế kỷ 17. Không ai không biết đến tiếng tăm lẫy lừng của ba chàng ngự lâm quân Athos, Porthos và Aramis.\r\n\r\nTừng sở hữu những chiến tích oai hùng như đánh cắp thành công bản vẽ chiếc. tàu bay hiện đại đầu tiên của thời ấy từ căn hầm tuyệt mật. Bộ ba chàng ngự lâm dường như không ngần. Ngại trước bất cứ kẻ thù, trước mọi khó khăn hay nguy hiểm nào.\r\n\r\nNhưng thật không may cho<a href=\"https://tuoitre.vn/\">ba chàng lính ngự lâm.</a>Mọi kế hoạch của họ lại hoàn toàn đổ vỡ trước một mỹ nữ xinh đẹp nhưng mưu mô. Nàng Milady de Winter. Người đẹp này đã cho họ một cú lừa ngoạn mục, khiến họ rơi vào tình thế dở khóc. Dở cười, mất hết tinh thần và nhuệ khí.\r\n\r\nTuy nhiên, với ba chàng ngự lâm pháo thủ anh hùng, phong độ chỉ là nhất thời, đẳng cấp mới là mãi mãi. Ba năm sau sai lầm đó, với sự gia nhập của chàng. Ngự lâm trẻ tuổi tài năng D’Artagnan, các chàng linh ngự lâm đứng trước cơ hội. Giành lại tất cả những gì đã mất đi.\r\n\r\nĐó cũng chính là lúc nước Pháp lâm nguy, ngai vàng của đức. Vua đang bị đe doạ và nguy cơ chiến tranh lan rộng đang ngày một gần kề. Kẻ thù của họ một lần nữa lại là cô nàng Milady xinh đẹp nguy hiểm chết người. nhưng đó thật sự không phải mối lo lớn nhất của họ.\r\n\r\nDường như đằng sau người phụ nữ xảo quyệt đó còn có bàn tay. Thao túng của một kẻ thù giấu mặt mưu mô gấp bội.\r\n\r\nlà bộ phim được làm trong bối cảnh, thủ đô Paris hoa lệ thế kỷ 17. Không ai không biết đến tiếng tăm lẫy lừng của ba chàng ngự lâm quân Athos, Porthos và Aramis.\r\n\r\nTừng sở hữu những chiến tích oai hùng như đánh cắp thành công bản vẽ chiếc. tàu bay hiện đại đầu tiên của thời ấy từ căn hầm tuyệt mật. Bộ ba chàng ngự lâm dường như không ngần. Ngại trước bất cứ kẻ thù, trước mọi khó khăn hay nguy hiểm nào.\r\n\r\nNhưng thật không may cho<a href=\"https://tuoitre.vn/\">ba chàng lính ngự lâm.</a>Mọi kế hoạch của họ lại hoàn toàn đổ vỡ trước một mỹ nữ xinh đẹp nhưng mưu mô. Nàng Milady de Winter. Người đẹp này đã cho họ một cú lừa ngoạn mục, khiến họ rơi vào tình thế dở khóc. Dở cười, mất hết tinh thần và nhuệ khí.\r\n\r\nTuy nhiên, với ba chàng ngự lâm pháo thủ anh hùng, phong độ chỉ là nhất thời, đẳng cấp mới là mãi mãi. Ba năm sau sai lầm đó, với sự gia nhập của chàng. Ngự lâm trẻ tuổi tài năng D’Artagnan, các chàng linh ngự lâm đứng trước cơ hội. Giành lại tất cả những gì đã mất đi.\r\n\r\nĐó cũng chính là lúc nước Pháp lâm nguy, ngai vàng của đức. Vua đang bị đe doạ và nguy cơ chiến tranh lan rộng đang ngày một gần kề. Kẻ thù của họ một lần nữa lại là cô nàng Milady xinh đẹp nguy hiểm chết người. nhưng đó thật sự không phải mối lo lớn nhất của họ.\r\n\r\nDường như đằng sau người phụ nữ xảo quyệt đó còn có bàn tay. Thao túng của một kẻ thù giấu mặt mưu mô gấp bội.', 'Vở Kịch Của Em ft Vây Giữaaaa aaa aaaa aaaa aaa aaaa aaa aaa', '', 'publish', 'open', 'open', '', 'vo-kich-cua-em-ft-vay-giu-4', '', '', '2024-06-05 04:56:01', '2024-06-05 04:56:01', '', 0, 'http://webphim.local/?p=80', 0, 'post', '', 0),
(86, 1, '2024-06-04 10:21:19', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-04 10:21:19', '0000-00-00 00:00:00', '', 0, 'http://webphim.local/?p=86', 0, 'post', '', 0),
(101, 1, '2024-06-08 03:40:08', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-08 03:40:08', '0000-00-00 00:00:00', '', 0, 'http://webphim.local/?p=101', 0, 'post', '', 0),
(102, 1, '2024-06-08 08:11:23', '2024-06-08 08:11:23', '', 'Phim mới nhất - Xem phim online - Phim nhanh - Phim miễn phí', '', 'publish', 'closed', 'closed', '', 'phim-moi-nhat', '', '', '2024-06-08 08:12:47', '2024-06-08 08:12:47', '', 0, 'http://webphim.local/?page_id=102', 0, 'page', '', 0),
(106, 1, '2024-06-10 03:07:49', '2024-06-10 03:07:49', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Bài viết', 'bai-viet', 'trash', 'closed', 'closed', '', 'group_66666d1396452__trashed', '', '', '2024-06-10 03:17:27', '2024-06-10 03:17:27', '', 0, 'http://webphim.local/?post_type=acf-field-group&#038;p=106', 0, 'acf-field-group', '', 0),
(109, 1, '2024-06-10 03:18:21', '2024-06-10 03:18:21', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"hide_admin\";i:0;s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Tập phim', 'episode', 'publish', 'closed', 'closed', '', 'field_66667050f2016', '', '', '2024-06-10 03:18:21', '2024-06-10 03:18:21', '', 26, 'http://webphim.local/?post_type=acf-field&p=109', 3, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa phân loại', 'khong-phan-loai', 0),
(2, 'Menu main', 'menu-main', 0),
(3, 'Cổ trang', 'co-trang', 0),
(4, 'Kinh dị', 'kinh-di', 0),
(5, 'Võ thuật', 'vo-thuat', 0),
(6, 'Chiến tranh', 'chien-tranh', 0),
(7, 'Tình cảm', 'tinh-cam', 0),
(8, 'Việt nam', 'viet-nam', 0),
(9, 'Hàn quốc', 'han-quoc', 0),
(10, 'Mỹ', 'my', 0),
(11, 'Thái lan', 'thai-lan', 0),
(12, 'Trung quốc', 'trung-quoc', 0),
(13, 'Vi', 'vi', 0),
(14, 'Việt Nam', 'viet-nam', 0),
(15, 'Âu Mỹ', 'au-my', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(35, 3, 0),
(35, 4, 0),
(35, 5, 0),
(35, 6, 0),
(35, 7, 0),
(35, 8, 0),
(35, 9, 0),
(35, 10, 0),
(35, 11, 0),
(35, 12, 0),
(35, 14, 0),
(72, 3, 0),
(72, 4, 0),
(72, 5, 0),
(72, 6, 0),
(72, 7, 0),
(72, 8, 0),
(72, 14, 0),
(74, 1, 0),
(74, 6, 0),
(74, 8, 0),
(74, 14, 0),
(76, 1, 0),
(76, 6, 0),
(76, 8, 0),
(76, 14, 0),
(78, 1, 0),
(78, 6, 0),
(78, 8, 0),
(78, 14, 0),
(80, 1, 0),
(80, 6, 0),
(80, 8, 0),
(80, 14, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 17),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 6),
(7, 7, 'category', '', 0, 2),
(8, 8, 'post_tag', '', 0, 6),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 0),
(14, 14, 'quoc_gia', '', 0, 6),
(15, 15, 'quoc_gia', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'hiennthe'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"ce4bdbb3f6fd04f4fcee58fd7d796bd2fe50d0d7168ce9f843ff7124de9b06ea\";a:4:{s:10:\"expiration\";i:1718422561;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1717212961;}s:64:\"39b9eb6cfbaedee0faedef4ecd905c0d046d4cbe49a99ee06dd77088abce80d2\";a:4:{s:10:\"expiration\";i:1718673997;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1717464397;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '101'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 2, 'nickname', 'nestart-group'),
(20, 2, 'first_name', ''),
(21, 2, 'last_name', ''),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'syntax_highlighting', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'locale', ''),
(30, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(31, 2, 'wp_user_level', '10'),
(32, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-03-08T01:37:04.068Z\";}'),
(33, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(34, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(35, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:61:\"submitdiv,postimagediv,formatdiv,categorydiv,tagsdiv-post_tag\";s:6:\"normal\";s:72:\"postexcerpt,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(36, 1, 'screen_layout_post', '2'),
(37, 1, 'wp_user-settings', 'libraryContent=browse'),
(38, 1, 'wp_user-settings-time', '1709881060'),
(39, 1, 'nav_menu_recently_edited', '2'),
(40, 1, 'closedpostboxes_page', 'a:0:{}'),
(41, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'hiennthe', '$P$BuYfNg5uTKvCKUwOQ2/yCO9huEkl9w0', 'hiennthe', 'nguyenthehien25062000@gmail.com', 'http://webphim.local', '2024-03-08 01:36:04', '', 0, 'hiennthe'),
(2, 'nestart-group', '$P$Bz8xTTHJRp/fvNJEMqhVsYYWjp/d5N.', 'nestart-group', 'minhlq@epalsoft.net', '', '2024-03-08 01:36:36', '', 0, 'nestart-group');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
