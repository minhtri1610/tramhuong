-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for tramhuong
CREATE DATABASE IF NOT EXISTS `tramhuong` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `tramhuong`;

-- Dumping structure for table tramhuong.wp_commentmeta
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_commentmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Dumping structure for table tramhuong.wp_comments
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_comments: ~1 rows (approximately)
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
REPLACE INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
	(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-25 12:29:54', '2020-02-25 12:29:54', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Dumping structure for table tramhuong.wp_links
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_links: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Dumping structure for table tramhuong.wp_options
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_options: ~132 rows (approximately)
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
REPLACE INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://tramhuong.jp', 'yes'),
	(2, 'home', 'http://tramhuong.jp', 'yes'),
	(3, 'blogname', 'tramhuong', 'yes'),
	(4, 'blogdescription', 'Just another WordPress site', 'yes'),
	(5, 'users_can_register', '0', 'yes'),
	(6, 'admin_email', 'epsminhtri@gmail.com', 'yes'),
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
	(21, 'default_pingback_flag', '1', 'yes'),
	(22, 'posts_per_page', '10', 'yes'),
	(23, 'date_format', 'F j, Y', 'yes'),
	(24, 'time_format', 'g:i a', 'yes'),
	(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
	(26, 'comment_moderation', '0', 'yes'),
	(27, 'moderation_notify', '1', 'yes'),
	(28, 'permalink_structure', '/%postname%/', 'yes'),
	(29, 'rewrite_rules', 'a:156:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:9:"tintuc/?$";s:26:"index.php?post_type=tintuc";s:39:"tintuc/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=tintuc&feed=$matches[1]";s:34:"tintuc/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=tintuc&feed=$matches[1]";s:26:"tintuc/page/([0-9]{1,})/?$";s:44:"index.php?post_type=tintuc&paged=$matches[1]";s:10:"sanpham/?$";s:27:"index.php?post_type=sanpham";s:40:"sanpham/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=sanpham&feed=$matches[1]";s:35:"sanpham/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=sanpham&feed=$matches[1]";s:27:"sanpham/page/([0-9]{1,})/?$";s:45:"index.php?post_type=sanpham&paged=$matches[1]";s:17:"postercategory/?$";s:34:"index.php?post_type=postercategory";s:47:"postercategory/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=postercategory&feed=$matches[1]";s:42:"postercategory/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=postercategory&feed=$matches[1]";s:34:"postercategory/page/([0-9]{1,})/?$";s:52:"index.php?post_type=postercategory&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"tintuc/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"tintuc/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"tintuc/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"tintuc/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"tintuc/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"tintuc/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"tintuc/([^/]+)/embed/?$";s:39:"index.php?tintuc=$matches[1]&embed=true";s:27:"tintuc/([^/]+)/trackback/?$";s:33:"index.php?tintuc=$matches[1]&tb=1";s:47:"tintuc/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?tintuc=$matches[1]&feed=$matches[2]";s:42:"tintuc/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?tintuc=$matches[1]&feed=$matches[2]";s:35:"tintuc/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?tintuc=$matches[1]&paged=$matches[2]";s:42:"tintuc/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?tintuc=$matches[1]&cpage=$matches[2]";s:31:"tintuc/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?tintuc=$matches[1]&page=$matches[2]";s:23:"tintuc/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"tintuc/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"tintuc/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"tintuc/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"tintuc/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"tintuc/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"sanpham/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"sanpham/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"sanpham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"sanpham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"sanpham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"sanpham/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"sanpham/([^/]+)/embed/?$";s:40:"index.php?sanpham=$matches[1]&embed=true";s:28:"sanpham/([^/]+)/trackback/?$";s:34:"index.php?sanpham=$matches[1]&tb=1";s:48:"sanpham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?sanpham=$matches[1]&feed=$matches[2]";s:43:"sanpham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?sanpham=$matches[1]&feed=$matches[2]";s:36:"sanpham/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?sanpham=$matches[1]&paged=$matches[2]";s:43:"sanpham/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?sanpham=$matches[1]&cpage=$matches[2]";s:32:"sanpham/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?sanpham=$matches[1]&page=$matches[2]";s:24:"sanpham/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"sanpham/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"sanpham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"sanpham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"sanpham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"sanpham/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"postercategory/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"postercategory/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"postercategory/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"postercategory/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"postercategory/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"postercategory/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"postercategory/([^/]+)/embed/?$";s:47:"index.php?postercategory=$matches[1]&embed=true";s:35:"postercategory/([^/]+)/trackback/?$";s:41:"index.php?postercategory=$matches[1]&tb=1";s:55:"postercategory/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?postercategory=$matches[1]&feed=$matches[2]";s:50:"postercategory/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?postercategory=$matches[1]&feed=$matches[2]";s:43:"postercategory/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?postercategory=$matches[1]&paged=$matches[2]";s:50:"postercategory/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?postercategory=$matches[1]&cpage=$matches[2]";s:39:"postercategory/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?postercategory=$matches[1]&page=$matches[2]";s:31:"postercategory/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"postercategory/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"postercategory/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"postercategory/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"postercategory/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"postercategory/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
	(30, 'hack_file', '0', 'yes'),
	(31, 'blog_charset', 'UTF-8', 'yes'),
	(32, 'moderation_keys', '', 'no'),
	(33, 'active_plugins', 'a:1:{i:0;s:30:"advanced-custom-fields/acf.php";}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'comment_max_links', '2', 'yes'),
	(37, 'gmt_offset', '0', 'yes'),
	(38, 'default_email_category', '1', 'yes'),
	(39, 'recently_edited', '', 'no'),
	(40, 'template', 'ttheme', 'yes'),
	(41, 'stylesheet', 'ttheme', 'yes'),
	(42, 'comment_whitelist', '1', 'yes'),
	(43, 'blacklist_keys', '', 'no'),
	(44, 'comment_registration', '0', 'yes'),
	(45, 'html_type', 'text/html', 'yes'),
	(46, 'use_trackback', '0', 'yes'),
	(47, 'default_role', 'subscriber', 'yes'),
	(48, 'db_version', '45805', 'yes'),
	(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(50, 'upload_path', '', 'yes'),
	(51, 'blog_public', '1', 'yes'),
	(52, 'default_link_category', '2', 'yes'),
	(53, 'show_on_front', 'posts', 'yes'),
	(54, 'tag_base', '', 'yes'),
	(55, 'show_avatars', '1', 'yes'),
	(56, 'avatar_rating', 'G', 'yes'),
	(57, 'upload_url_path', '', 'yes'),
	(58, 'thumbnail_size_w', '150', 'yes'),
	(59, 'thumbnail_size_h', '150', 'yes'),
	(60, 'thumbnail_crop', '1', 'yes'),
	(61, 'medium_size_w', '300', 'yes'),
	(62, 'medium_size_h', '300', 'yes'),
	(63, 'avatar_default', 'mystery', 'yes'),
	(64, 'large_size_w', '1024', 'yes'),
	(65, 'large_size_h', '1024', 'yes'),
	(66, 'image_default_link_type', 'none', 'yes'),
	(67, 'image_default_size', '', 'yes'),
	(68, 'image_default_align', '', 'yes'),
	(69, 'close_comments_for_old_posts', '0', 'yes'),
	(70, 'close_comments_days_old', '14', 'yes'),
	(71, 'thread_comments', '1', 'yes'),
	(72, 'thread_comments_depth', '5', 'yes'),
	(73, 'page_comments', '0', 'yes'),
	(74, 'comments_per_page', '50', 'yes'),
	(75, 'default_comments_page', 'newest', 'yes'),
	(76, 'comment_order', 'asc', 'yes'),
	(77, 'sticky_posts', 'a:0:{}', 'yes'),
	(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(79, 'widget_text', 'a:0:{}', 'yes'),
	(80, 'widget_rss', 'a:0:{}', 'yes'),
	(81, 'uninstall_plugins', 'a:0:{}', 'no'),
	(82, 'timezone_string', '', 'yes'),
	(83, 'page_for_posts', '0', 'yes'),
	(84, 'page_on_front', '0', 'yes'),
	(85, 'default_post_format', '0', 'yes'),
	(86, 'link_manager_enabled', '0', 'yes'),
	(87, 'finished_splitting_shared_terms', '1', 'yes'),
	(88, 'site_icon', '0', 'yes'),
	(89, 'medium_large_size_w', '768', 'yes'),
	(90, 'medium_large_size_h', '0', 'yes'),
	(91, 'wp_page_for_privacy_policy', '3', 'yes'),
	(92, 'show_comments_cookies_opt_in', '1', 'yes'),
	(93, 'admin_email_lifespan', '1598185793', 'yes'),
	(94, 'initial_db_version', '45805', 'yes'),
	(95, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
	(96, 'fresh_site', '0', 'yes'),
	(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(102, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
	(103, 'cron', 'a:6:{i:1584365396;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1584404996;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1584448194;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1584448223;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1584448233;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
	(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(107, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(108, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(109, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(110, 'nonce_key', '=|$qm%V1O1Sz6FS`n[xO;1N-BxoVJ-;^sLJYwbuV<u]EH%k6*o3]ef$6w6}H!=1G', 'no'),
	(111, 'nonce_salt', 'Alz]y&yqUNv#I]G0# 5]SJeB+:}yRFNppN.|Ms EAdh.lvqx08NQn0!x{]j4R1-r', 'no'),
	(112, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(113, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(114, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(116, 'recovery_keys', 'a:0:{}', 'yes'),
	(117, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1584363172;s:15:"version_checked";s:5:"5.3.2";s:12:"translations";a:0:{}}', 'no'),
	(122, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1584356985;s:7:"checked";a:1:{s:6:"ttheme";s:0:"";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
	(123, 'auth_key', 'Q+sK02C)5aW~D:`MyaL:c~O5=W9:p.[I?dB~-Iht%Puu7yj]MFUP!P>Pq||6[-@P', 'no'),
	(124, 'auth_salt', 'qOc.mUZ?`c9g#O=s,ao%N3o2zXXw[f<Q>Ky20( W-9YeD}r,Nyt}*Waf:V<5P2x`', 'no'),
	(125, 'logged_in_key', 'K**pr !`Ai*3j+9n&y@D2fmfBAKK_{Re)H[pbk(QQNfF&6wDGJ,/Z/;)c`,}1NWU', 'no'),
	(126, 'logged_in_salt', 'dfo7i0;U+7RZ{/[eRN%M748lYu&sAXWg*AMGUQC&;z16{;c9I5PFWr2.#kcV|h61', 'no'),
	(127, 'can_compress_scripts', '1', 'no'),
	(157, 'theme_mods_twentytwenty', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1582953228;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
	(158, 'current_theme', '', 'yes'),
	(159, 'theme_mods_ttheme', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
	(160, 'theme_switched', '', 'yes'),
	(199, 'recently_activated', 'a:0:{}', 'yes'),
	(204, 'acf_version', '5.8.7', 'yes'),
	(207, 'category_children', 'a:0:{}', 'yes'),
	(347, '_site_transient_timeout_theme_roots', '1584364972', 'no'),
	(348, '_site_transient_theme_roots', 'a:1:{s:6:"ttheme";s:7:"/themes";}', 'no'),
	(349, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1584363173;s:7:"checked";a:3:{s:30:"advanced-custom-fields/acf.php";s:5:"5.8.7";s:19:"akismet/akismet.php";s:5:"4.1.3";s:9:"hello.php";s:5:"1.7.2";}s:8:"response";a:1:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":12:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.8.8";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.8.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.3.2";s:12:"requires_php";s:3:"5.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}}}', 'no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Dumping structure for table tramhuong.wp_postmeta
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_postmeta: ~206 rows (approximately)
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
REPLACE INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'default'),
	(2, 3, '_wp_page_template', 'default'),
	(3, 5, '_edit_last', '1'),
	(4, 5, '_edit_lock', '1583593698:1'),
	(5, 15, '_edit_lock', '1583587416:1'),
	(6, 17, '_edit_lock', '1583585830:1'),
	(7, 19, '_edit_lock', '1583159370:1'),
	(8, 21, '_edit_lock', '1583159383:1'),
	(9, 23, '_edit_last', '1'),
	(10, 23, '_edit_lock', '1583589267:1'),
	(11, 24, '_edit_last', '1'),
	(12, 24, '_edit_lock', '1583239264:1'),
	(13, 25, '_wp_attached_file', '2020/03/29098c2f-490c-4e87-afaa-59f9a32da753.jpg'),
	(14, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:48:"2020/03/29098c2f-490c-4e87-afaa-59f9a32da753.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:48:"29098c2f-490c-4e87-afaa-59f9a32da753-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:48:"29098c2f-490c-4e87-afaa-59f9a32da753-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(15, 26, '_wp_attached_file', '2020/03/ba07c3cb-4e33-4549-8528-daf125e1f2fb.jpg'),
	(16, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:247;s:6:"height";i:247;s:4:"file";s:48:"2020/03/ba07c3cb-4e33-4549-8528-daf125e1f2fb.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"ba07c3cb-4e33-4549-8528-daf125e1f2fb-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(17, 27, '_wp_attached_file', '2020/03/d905f83c3c7fa9a8a929292e4cf04274.jpg'),
	(18, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:44:"2020/03/d905f83c3c7fa9a8a929292e4cf04274.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:44:"d905f83c3c7fa9a8a929292e4cf04274-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:44:"d905f83c3c7fa9a8a929292e4cf04274-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"d905f83c3c7fa9a8a929292e4cf04274-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(19, 24, '_thumbnail_id', '26'),
	(20, 24, 'name', 'Nhang loại 01'),
	(21, 24, '_name', 'field_5e5d15d5c9558'),
	(22, 24, 'img01', '25'),
	(23, 24, '_img01', 'field_5e5d15fbc9559'),
	(24, 24, 'img02', '26'),
	(25, 24, '_img02', 'field_5e5d166ac955a'),
	(26, 24, 'img03', '27'),
	(27, 24, '_img03', 'field_5e5d1692c955b'),
	(28, 24, 'size', '30 cm'),
	(29, 24, '_size', 'field_5e5d16abc955c'),
	(30, 24, 'element', 'Tùng Bách, keo Bời Lời & tăm tre'),
	(31, 24, '_element', 'field_5e5d16d1c955d'),
	(32, 24, 'expiry_date', '3 năm kể từ ngày sản xuất'),
	(33, 24, '_expiry_date', 'field_5e5d16f7c955e'),
	(34, 24, 'uses', 'Được sử dụng chủ yếu trong việc dâng hương bàn thờ, chất lượng đảm bảo đáp ứng thỏa mãn nhu cầu của khách hàng.'),
	(35, 24, '_uses', 'field_5e5d172ac955f'),
	(36, 24, 'intro_detail', 'Tùng Bách là một loại gỗ thơm tự nhiên, sau khi xay mịn bột gỗ và gắn kết lại bởi keo bời lời tạo thành <strong>NHANG XANH TÙNG BÁCH</strong>\r\n\r\nNhang Tùng Bách có mùi thơm ngọt ngào, nhẹ nhõm, thanh tịnh, đồng thời có thể làm tỉnh táo tinh thần, cho dù hít sâu cũng không có cảm giác kích thích mũi, khiến cho mọi người đều thấy dễ chịu, sử dụng trong một thời gian dài cũng không cảm thấy khó chịu.\r\n\r\n<strong>Nhang Xanh Có Tác Dụng Gì?</strong>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Sử dụng trong cúng bái, giúp không gian tâm linh trang nghiêm và ấm cúng.</li>\r\n 	<li>Hương thuần khiết để kết nối thế giới tâm linh.</li>\r\n 	<li>Sự thư giãn và mùi thơm thanh thoát giúp cho cơ thể được thoải mái, nhẹ nhàng và bình an.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<b>Hướng Dẫn Sử Dụng</b>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Đầu tiên, dùng bật lửa để thắp một đầu nén nhang, sau đó cắm vào lư/ bát hương cho mùi hương trầm lan tỏa.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<strong>Các Lưu Ý Khi Sử Dụng</strong>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Bảo quản nơi khô ráo</li>\r\n 	<li>Đóng nắp hộp sau khi sử dụng</li>\r\n 	<li>Sản phẩm dùng được trong phòng máy lạnh</li>\r\n</ul>\r\n</li>\r\n</ul>'),
	(37, 24, '_intro_detail', 'field_5e5d1781ae351'),
	(38, 28, 'name', 'Nhang loại 01'),
	(39, 28, '_name', 'field_5e5d15d5c9558'),
	(40, 28, 'img01', '25'),
	(41, 28, '_img01', 'field_5e5d15fbc9559'),
	(42, 28, 'img02', '26'),
	(43, 28, '_img02', 'field_5e5d166ac955a'),
	(44, 28, 'img03', '27'),
	(45, 28, '_img03', 'field_5e5d1692c955b'),
	(46, 28, 'size', '30 cm'),
	(47, 28, '_size', 'field_5e5d16abc955c'),
	(48, 28, 'element', 'Tùng Bách, keo Bời Lời & tăm tre'),
	(49, 28, '_element', 'field_5e5d16d1c955d'),
	(50, 28, 'expiry_date', '3 năm kể từ ngày sản xuất'),
	(51, 28, '_expiry_date', 'field_5e5d16f7c955e'),
	(52, 28, 'uses', 'Được sử dụng chủ yếu trong việc dâng hương bàn thờ, chất lượng đảm bảo đáp ứng thỏa mãn nhu cầu của khách hàng.'),
	(53, 28, '_uses', 'field_5e5d172ac955f'),
	(54, 28, 'intro_detail', 'Tùng Bách là một loại gỗ thơm tự nhiên, sau khi xay mịn bột gỗ và gắn kết lại bởi keo bời lời tạo thành <strong>NHANG XANH TÙNG BÁCH</strong>\r\n\r\nNhang Tùng Bách có mùi thơm ngọt ngào, nhẹ nhõm, thanh tịnh, đồng thời có thể làm tỉnh táo tinh thần, cho dù hít sâu cũng không có cảm giác kích thích mũi, khiến cho mọi người đều thấy dễ chịu, sử dụng trong một thời gian dài cũng không cảm thấy khó chịu.\r\n\r\n<strong>Nhang Xanh Có Tác Dụng Gì?</strong>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Sử dụng trong cúng bái, giúp không gian tâm linh trang nghiêm và ấm cúng.</li>\r\n 	<li>Hương thuần khiết để kết nối thế giới tâm linh.</li>\r\n 	<li>Sự thư giãn và mùi thơm thanh thoát giúp cho cơ thể được thoải mái, nhẹ nhàng và bình an.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<b>Hướng Dẫn Sử Dụng</b>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Đầu tiên, dùng bật lửa để thắp một đầu nén nhang, sau đó cắm vào lư/ bát hương cho mùi hương trầm lan tỏa.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<strong>Các Lưu Ý Khi Sử Dụng</strong>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Bảo quản nơi khô ráo</li>\r\n 	<li>Đóng nắp hộp sau khi sử dụng</li>\r\n 	<li>Sản phẩm dùng được trong phòng máy lạnh</li>\r\n</ul>\r\n</li>\r\n</ul>'),
	(55, 28, '_intro_detail', 'field_5e5d1781ae351'),
	(56, 29, '_edit_last', '1'),
	(57, 29, '_edit_lock', '1583239498:1'),
	(58, 29, '_thumbnail_id', '27'),
	(59, 29, 'name', 'Nhang trầm loại 2'),
	(60, 29, '_name', 'field_5e5d15d5c9558'),
	(61, 29, 'img01', '27'),
	(62, 29, '_img01', 'field_5e5d15fbc9559'),
	(63, 29, 'img02', '26'),
	(64, 29, '_img02', 'field_5e5d166ac955a'),
	(65, 29, 'img03', '25'),
	(66, 29, '_img03', 'field_5e5d1692c955b'),
	(67, 29, 'size', '30 cm'),
	(68, 29, '_size', 'field_5e5d16abc955c'),
	(69, 29, 'element', 'Tùng Bách, keo Bời Lời & tăm tre'),
	(70, 29, '_element', 'field_5e5d16d1c955d'),
	(71, 29, 'expiry_date', '3 năm kể từ ngày sản xuất'),
	(72, 29, '_expiry_date', 'field_5e5d16f7c955e'),
	(73, 29, 'uses', 'Sử dụng trong cúng bái, giúp không gian tâm linh trang nghiêm và ấm cúng.\r\nHương thuần khiết để kết nối thế giới tâm linh.\r\nSự thư giãn và mùi thơm thanh thoát giúp cho cơ thể được thoải mái, nhẹ nhàng và bình an.'),
	(74, 29, '_uses', 'field_5e5d172ac955f'),
	(75, 29, 'intro_detail', 'Tùng Bách là một loại gỗ thơm tự nhiên, sau khi xay mịn bột gỗ và gắn kết lại bởi keo bời lời tạo thành <strong>NHANG XANH TÙNG BÁCH</strong>\r\n\r\nNhang Tùng Bách có mùi thơm ngọt ngào, nhẹ nhõm, thanh tịnh, đồng thời có thể làm tỉnh táo tinh thần, cho dù hít sâu cũng không có cảm giác kích thích mũi, khiến cho mọi người đều thấy dễ chịu, sử dụng trong một thời gian dài cũng không cảm thấy khó chịu.\r\n\r\n<strong>Nhang Xanh Có Tác Dụng Gì?</strong>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Sử dụng trong cúng bái, giúp không gian tâm linh trang nghiêm và ấm cúng.</li>\r\n 	<li>Hương thuần khiết để kết nối thế giới tâm linh.</li>\r\n 	<li>Sự thư giãn và mùi thơm thanh thoát giúp cho cơ thể được thoải mái, nhẹ nhàng và bình an.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<b>Hướng Dẫn Sử Dụng</b>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Đầu tiên, dùng bật lửa để thắp một đầu nén nhang, sau đó cắm vào lư/ bát hương cho mùi hương trầm lan tỏa.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<strong>Các Lưu Ý Khi Sử Dụng</strong>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Bảo quản nơi khô ráo</li>\r\n 	<li>Đóng nắp hộp sau khi sử dụng</li>\r\n 	<li>Sản phẩm dùng được trong phòng máy lạnh</li>\r\n</ul>\r\n</li>\r\n</ul>'),
	(76, 29, '_intro_detail', 'field_5e5d1781ae351'),
	(77, 30, 'name', 'Nhang trầm loại 2'),
	(78, 30, '_name', 'field_5e5d15d5c9558'),
	(79, 30, 'img01', '27'),
	(80, 30, '_img01', 'field_5e5d15fbc9559'),
	(81, 30, 'img02', '26'),
	(82, 30, '_img02', 'field_5e5d166ac955a'),
	(83, 30, 'img03', '25'),
	(84, 30, '_img03', 'field_5e5d1692c955b'),
	(85, 30, 'size', '30 cm'),
	(86, 30, '_size', 'field_5e5d16abc955c'),
	(87, 30, 'element', 'Tùng Bách, keo Bời Lời & tăm tre'),
	(88, 30, '_element', 'field_5e5d16d1c955d'),
	(89, 30, 'expiry_date', '3 năm kể từ ngày sản xuất'),
	(90, 30, '_expiry_date', 'field_5e5d16f7c955e'),
	(91, 30, 'uses', 'Sử dụng trong cúng bái, giúp không gian tâm linh trang nghiêm và ấm cúng.\r\nHương thuần khiết để kết nối thế giới tâm linh.\r\nSự thư giãn và mùi thơm thanh thoát giúp cho cơ thể được thoải mái, nhẹ nhàng và bình an.'),
	(92, 30, '_uses', 'field_5e5d172ac955f'),
	(93, 30, 'intro_detail', 'Tùng Bách là một loại gỗ thơm tự nhiên, sau khi xay mịn bột gỗ và gắn kết lại bởi keo bời lời tạo thành <strong>NHANG XANH TÙNG BÁCH</strong>\r\n\r\nNhang Tùng Bách có mùi thơm ngọt ngào, nhẹ nhõm, thanh tịnh, đồng thời có thể làm tỉnh táo tinh thần, cho dù hít sâu cũng không có cảm giác kích thích mũi, khiến cho mọi người đều thấy dễ chịu, sử dụng trong một thời gian dài cũng không cảm thấy khó chịu.\r\n\r\n<strong>Nhang Xanh Có Tác Dụng Gì?</strong>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Sử dụng trong cúng bái, giúp không gian tâm linh trang nghiêm và ấm cúng.</li>\r\n 	<li>Hương thuần khiết để kết nối thế giới tâm linh.</li>\r\n 	<li>Sự thư giãn và mùi thơm thanh thoát giúp cho cơ thể được thoải mái, nhẹ nhàng và bình an.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<b>Hướng Dẫn Sử Dụng</b>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Đầu tiên, dùng bật lửa để thắp một đầu nén nhang, sau đó cắm vào lư/ bát hương cho mùi hương trầm lan tỏa.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<strong>Các Lưu Ý Khi Sử Dụng</strong>\r\n<ul>\r\n 	<li>\r\n<ul>\r\n 	<li>Bảo quản nơi khô ráo</li>\r\n 	<li>Đóng nắp hộp sau khi sử dụng</li>\r\n 	<li>Sản phẩm dùng được trong phòng máy lạnh</li>\r\n</ul>\r\n</li>\r\n</ul>'),
	(94, 30, '_intro_detail', 'field_5e5d1781ae351'),
	(95, 31, '_edit_last', '1'),
	(96, 31, '_edit_lock', '1583758684:1'),
	(97, 32, '_wp_attached_file', '2020/03/bay_gio_va_o_day.jpg'),
	(98, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:586;s:4:"file";s:28:"2020/03/bay_gio_va_o_day.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:28:"bay_gio_va_o_day-300x183.jpg";s:5:"width";i:300;s:6:"height";i:183;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"bay_gio_va_o_day-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"bay_gio_va_o_day-768x469.jpg";s:5:"width";i:768;s:6:"height";i:469;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(99, 31, '_thumbnail_id', '32'),
	(100, 17, '_wp_trash_meta_status', 'publish'),
	(101, 17, '_wp_trash_meta_time', '1583580584'),
	(102, 17, '_wp_desired_post_slug', 'gioi-thieu'),
	(103, 3, '_wp_trash_meta_status', 'draft'),
	(104, 3, '_wp_trash_meta_time', '1583580615'),
	(105, 3, '_wp_desired_post_slug', 'privacy-policy'),
	(106, 2, '_wp_trash_meta_status', 'publish'),
	(107, 2, '_wp_trash_meta_time', '1583580615'),
	(108, 2, '_wp_desired_post_slug', 'sample-page'),
	(109, 38, '_edit_lock', '1583587841:1'),
	(110, 23, '_wp_old_date', '2020-03-03'),
	(111, 23, 'name', 'Nhang loại 01'),
	(112, 23, '_name', 'field_5e5d15d5c9558'),
	(113, 23, 'img01', '26'),
	(114, 23, '_img01', 'field_5e5d15fbc9559'),
	(115, 23, 'img02', ''),
	(116, 23, '_img02', 'field_5e5d166ac955a'),
	(117, 23, 'img03', ''),
	(118, 23, '_img03', 'field_5e5d1692c955b'),
	(119, 23, 'size', '30 cm'),
	(120, 23, '_size', 'field_5e5d16abc955c'),
	(121, 23, 'element', 'Tùng Bách, keo Bời Lời & tăm tre'),
	(122, 23, '_element', 'field_5e5d16d1c955d'),
	(123, 23, 'expiry_date', '3 năm kể từ ngày sản xuất'),
	(124, 23, '_expiry_date', 'field_5e5d16f7c955e'),
	(125, 23, 'uses', 'Công dụng\r\nCông dụng\r\nCông dụng\r\nTùng Bách, keo Bời Lời & tăm tre'),
	(126, 23, '_uses', 'field_5e5d172ac955f'),
	(127, 23, 'intro_detail', 'Công dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng\r\n\r\nCông dụngCông dụng\r\n\r\nCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng\r\n\r\nCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng\r\n\r\nCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng'),
	(128, 23, '_intro_detail', 'field_5e5d1781ae351'),
	(129, 40, 'name', 'Nhang loại 01'),
	(130, 40, '_name', 'field_5e5d15d5c9558'),
	(131, 40, 'img01', '26'),
	(132, 40, '_img01', 'field_5e5d15fbc9559'),
	(133, 40, 'img02', ''),
	(134, 40, '_img02', 'field_5e5d166ac955a'),
	(135, 40, 'img03', ''),
	(136, 40, '_img03', 'field_5e5d1692c955b'),
	(137, 40, 'size', '30 cm'),
	(138, 40, '_size', 'field_5e5d16abc955c'),
	(139, 40, 'element', 'Tùng Bách, keo Bời Lời & tăm tre'),
	(140, 40, '_element', 'field_5e5d16d1c955d'),
	(141, 40, 'expiry_date', '3 năm kể từ ngày sản xuất'),
	(142, 40, '_expiry_date', 'field_5e5d16f7c955e'),
	(143, 40, 'uses', 'Công dụng\r\nCông dụng\r\nCông dụng\r\nTùng Bách, keo Bời Lời & tăm tre'),
	(144, 40, '_uses', 'field_5e5d172ac955f'),
	(145, 40, 'intro_detail', 'Công dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng\r\n\r\nCông dụngCông dụng\r\n\r\nCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng\r\n\r\nCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng\r\n\r\nCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng'),
	(146, 40, '_intro_detail', 'field_5e5d1781ae351'),
	(147, 41, 'name', 'Nhang loại 01'),
	(148, 41, '_name', 'field_5e5d15d5c9558'),
	(149, 41, 'img01', '26'),
	(150, 41, '_img01', 'field_5e5d15fbc9559'),
	(151, 41, 'img02', ''),
	(152, 41, '_img02', 'field_5e5d166ac955a'),
	(153, 41, 'img03', ''),
	(154, 41, '_img03', 'field_5e5d1692c955b'),
	(155, 41, 'size', '30 cm'),
	(156, 41, '_size', 'field_5e5d16abc955c'),
	(157, 41, 'element', 'Tùng Bách, keo Bời Lời & tăm tre'),
	(158, 41, '_element', 'field_5e5d16d1c955d'),
	(159, 41, 'expiry_date', '3 năm kể từ ngày sản xuất'),
	(160, 41, '_expiry_date', 'field_5e5d16f7c955e'),
	(161, 41, 'uses', 'Công dụng\r\nCông dụng\r\nCông dụng\r\nTùng Bách, keo Bời Lời & tăm tre'),
	(162, 41, '_uses', 'field_5e5d172ac955f'),
	(163, 41, 'intro_detail', 'Công dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng\r\n\r\nCông dụngCông dụng\r\n\r\nCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng\r\n\r\nCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng\r\n\r\nCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụngCông dụng'),
	(164, 41, '_intro_detail', 'field_5e5d1781ae351'),
	(165, 42, '_edit_last', '1'),
	(166, 42, '_edit_lock', '1583627294:1'),
	(167, 42, 'name', 'Nhang 04'),
	(168, 42, '_name', 'field_5e5d15d5c9558'),
	(169, 42, 'img01', '26'),
	(170, 42, '_img01', 'field_5e5d15fbc9559'),
	(171, 42, 'img02', '27'),
	(172, 42, '_img02', 'field_5e5d166ac955a'),
	(173, 42, 'img03', '25'),
	(174, 42, '_img03', 'field_5e5d1692c955b'),
	(175, 42, 'size', '30 cm'),
	(176, 42, '_size', 'field_5e5d16abc955c'),
	(177, 42, 'element', 'Tùng Bách, keo Bời Lời & tăm tre'),
	(178, 42, '_element', 'field_5e5d16d1c955d'),
	(179, 42, 'expiry_date', '3 năm kể từ ngày sản xuất'),
	(180, 42, '_expiry_date', 'field_5e5d16f7c955e'),
	(181, 42, 'uses', '3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất'),
	(182, 42, '_uses', 'field_5e5d172ac955f'),
	(183, 42, 'intro_detail', 'Giới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiết3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất'),
	(184, 42, '_intro_detail', 'field_5e5d1781ae351'),
	(185, 43, 'name', 'Nhang 04'),
	(186, 43, '_name', 'field_5e5d15d5c9558'),
	(187, 43, 'img01', '26'),
	(188, 43, '_img01', 'field_5e5d15fbc9559'),
	(189, 43, 'img02', '27'),
	(190, 43, '_img02', 'field_5e5d166ac955a'),
	(191, 43, 'img03', '25'),
	(192, 43, '_img03', 'field_5e5d1692c955b'),
	(193, 43, 'size', '30 cm'),
	(194, 43, '_size', 'field_5e5d16abc955c'),
	(195, 43, 'element', 'Tùng Bách, keo Bời Lời & tăm tre'),
	(196, 43, '_element', 'field_5e5d16d1c955d'),
	(197, 43, 'expiry_date', '3 năm kể từ ngày sản xuất'),
	(198, 43, '_expiry_date', 'field_5e5d16f7c955e'),
	(199, 43, 'uses', '3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất'),
	(200, 43, '_uses', 'field_5e5d172ac955f'),
	(201, 43, 'intro_detail', 'Giới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiếtGiới thiệu chi tiết3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất3 năm kể từ ngày sản xuất'),
	(202, 43, '_intro_detail', 'field_5e5d1781ae351'),
	(203, 44, '_edit_lock', '1583654562:1'),
	(204, 46, '_edit_last', '1'),
	(205, 46, '_edit_lock', '1583758937:1'),
	(206, 46, '_thumbnail_id', '26');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Dumping structure for table tramhuong.wp_posts
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_posts: ~45 rows (approximately)
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
REPLACE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2020-02-25 12:29:54', '2020-02-25 12:29:54', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-02-25 12:29:54', '2020-02-25 12:29:54', '', 0, 'http://tramhuong.jp/?p=1', 0, 'post', '', 1),
	(2, 1, '2020-02-25 12:29:54', '2020-02-25 12:29:54', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://tramhuong.jp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-03-07 11:30:15', '2020-03-07 11:30:15', '', 0, 'http://tramhuong.jp/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2020-02-25 12:29:54', '2020-02-25 12:29:54', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://tramhuong.jp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-03-07 11:30:15', '2020-03-07 11:30:15', '', 0, 'http://tramhuong.jp/?page_id=3', 0, 'page', '', 0),
	(5, 1, '2020-03-02 14:25:32', '2020-03-02 14:25:32', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"sanpham";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:4:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:6:"author";i:3;s:15:"send-trackbacks";}s:11:"description";s:0:"";}', 'Field Sản Phẩm', 'field-san-pham', 'publish', 'closed', 'closed', '', 'group_5e5d15a926197', '', '', '2020-03-03 12:40:09', '2020-03-03 12:40:09', '', 0, 'http://tramhuong.jp/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
	(6, 1, '2020-03-02 14:25:32', '2020-03-02 14:25:32', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:4:"Tên";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Tên sản phẩm', 'name', 'publish', 'closed', 'closed', '', 'field_5e5d15d5c9558', '', '', '2020-03-02 14:25:32', '2020-03-02 14:25:32', '', 5, 'http://tramhuong.jp/?post_type=acf-field&p=6', 0, 'acf-field', '', 0),
	(7, 1, '2020-03-02 14:25:32', '2020-03-02 14:25:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Hình ảnh 01', 'img01', 'publish', 'closed', 'closed', '', 'field_5e5d15fbc9559', '', '', '2020-03-02 14:25:32', '2020-03-02 14:25:32', '', 5, 'http://tramhuong.jp/?post_type=acf-field&p=7', 1, 'acf-field', '', 0),
	(8, 1, '2020-03-02 14:25:32', '2020-03-02 14:25:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Hình ảnh 02', 'img02', 'publish', 'closed', 'closed', '', 'field_5e5d166ac955a', '', '', '2020-03-02 14:25:32', '2020-03-02 14:25:32', '', 5, 'http://tramhuong.jp/?post_type=acf-field&p=8', 2, 'acf-field', '', 0),
	(9, 1, '2020-03-02 14:25:33', '2020-03-02 14:25:33', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Hình ảnh 03', 'img03', 'publish', 'closed', 'closed', '', 'field_5e5d1692c955b', '', '', '2020-03-02 14:25:33', '2020-03-02 14:25:33', '', 5, 'http://tramhuong.jp/?post_type=acf-field&p=9', 3, 'acf-field', '', 0),
	(10, 1, '2020-03-02 14:25:33', '2020-03-02 14:25:33', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:14:"3 tấc (30cm)";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Kích thước', 'size', 'publish', 'closed', 'closed', '', 'field_5e5d16abc955c', '', '', '2020-03-02 14:25:33', '2020-03-02 14:25:33', '', 5, 'http://tramhuong.jp/?post_type=acf-field&p=10', 4, 'acf-field', '', 0),
	(11, 1, '2020-03-02 14:25:33', '2020-03-02 14:25:33', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Thành phần', 'element', 'publish', 'closed', 'closed', '', 'field_5e5d16d1c955d', '', '', '2020-03-02 14:25:33', '2020-03-02 14:25:33', '', 5, 'http://tramhuong.jp/?post_type=acf-field&p=11', 5, 'acf-field', '', 0),
	(12, 1, '2020-03-02 14:25:33', '2020-03-02 14:25:33', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:35:"3 năm kể từ ngày sản xuất";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Hạn sử dụng', 'expiry_date', 'publish', 'closed', 'closed', '', 'field_5e5d16f7c955e', '', '', '2020-03-02 14:25:33', '2020-03-02 14:25:33', '', 5, 'http://tramhuong.jp/?post_type=acf-field&p=12', 6, 'acf-field', '', 0),
	(13, 1, '2020-03-02 14:25:33', '2020-03-02 14:25:33', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Công dụng', 'uses', 'publish', 'closed', 'closed', '', 'field_5e5d172ac955f', '', '', '2020-03-02 14:25:33', '2020-03-02 14:25:33', '', 5, 'http://tramhuong.jp/?post_type=acf-field&p=13', 7, 'acf-field', '', 0),
	(14, 1, '2020-03-02 14:26:53', '2020-03-02 14:26:53', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Giới thiệu chi tiết', 'intro_detail', 'publish', 'closed', 'closed', '', 'field_5e5d1781ae351', '', '', '2020-03-02 14:26:53', '2020-03-02 14:26:53', '', 5, 'http://tramhuong.jp/?post_type=acf-field&p=14', 8, 'acf-field', '', 0),
	(15, 1, '2020-03-02 14:31:07', '2020-03-02 14:31:07', '', 'sản phẩm', '', 'publish', 'closed', 'closed', '', 'san-pham', '', '', '2020-03-02 14:31:07', '2020-03-02 14:31:07', '', 0, 'http://tramhuong.jp/?page_id=15', 0, 'page', '', 0),
	(16, 1, '2020-03-02 14:31:07', '2020-03-02 14:31:07', '', 'sản phẩm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-03-02 14:31:07', '2020-03-02 14:31:07', '', 15, 'http://tramhuong.jp/2020/03/02/15-revision-v1/', 0, 'revision', '', 0),
	(17, 1, '2020-03-02 14:31:36', '2020-03-02 14:31:36', '', 'giới thiệu', '', 'trash', 'closed', 'closed', '', 'gioi-thieu__trashed', '', '', '2020-03-07 11:29:45', '2020-03-07 11:29:45', '', 0, 'http://tramhuong.jp/?page_id=17', 0, 'page', '', 0),
	(18, 1, '2020-03-02 14:31:36', '2020-03-02 14:31:36', '', 'giới thiệu', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-03-02 14:31:36', '2020-03-02 14:31:36', '', 17, 'http://tramhuong.jp/2020/03/02/17-revision-v1/', 0, 'revision', '', 0),
	(19, 1, '2020-03-02 14:31:53', '2020-03-02 14:31:53', '', 'tin tức', '', 'publish', 'closed', 'closed', '', 'tin-tuc', '', '', '2020-03-02 14:31:53', '2020-03-02 14:31:53', '', 0, 'http://tramhuong.jp/?page_id=19', 0, 'page', '', 0),
	(20, 1, '2020-03-02 14:31:53', '2020-03-02 14:31:53', '', 'tin tức', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-03-02 14:31:53', '2020-03-02 14:31:53', '', 19, 'http://tramhuong.jp/2020/03/02/19-revision-v1/', 0, 'revision', '', 0),
	(21, 1, '2020-03-02 14:32:03', '2020-03-02 14:32:03', '', 'liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2020-03-02 14:32:03', '2020-03-02 14:32:03', '', 0, 'http://tramhuong.jp/?page_id=21', 0, 'page', '', 0),
	(22, 1, '2020-03-02 14:32:03', '2020-03-02 14:32:03', '', 'liên hệ', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-03-02 14:32:03', '2020-03-02 14:32:03', '', 21, 'http://tramhuong.jp/2020/03/02/21-revision-v1/', 0, 'revision', '', 0),
	(23, 1, '2020-03-07 13:33:59', '2020-03-07 13:33:59', '', 'Nhang loại 1', '', 'publish', 'open', 'open', '', 'nhang-loai-1', '', '', '2020-03-07 13:33:59', '2020-03-07 13:33:59', '', 0, 'http://tramhuong.jp/?post_type=sanpham&#038;p=23', 0, 'sanpham', '', 0),
	(24, 1, '2020-03-03 12:43:25', '2020-03-03 12:43:25', '', 'Nhang trầm loại 1', '', 'publish', 'open', 'open', '', 'nhang-tram-loai-1', '', '', '2020-03-03 12:43:25', '2020-03-03 12:43:25', '', 0, 'http://tramhuong.jp/?post_type=sanpham&#038;p=24', 0, 'sanpham', '', 0),
	(25, 1, '2020-03-03 12:41:52', '2020-03-03 12:41:52', '', '29098c2f-490c-4e87-afaa-59f9a32da753', '', 'inherit', 'open', 'closed', '', '29098c2f-490c-4e87-afaa-59f9a32da753', '', '', '2020-03-03 12:41:52', '2020-03-03 12:41:52', '', 24, 'http://tramhuong.jp/wp-content/uploads/2020/03/29098c2f-490c-4e87-afaa-59f9a32da753.jpg', 0, 'attachment', 'image/jpeg', 0),
	(26, 1, '2020-03-03 12:41:53', '2020-03-03 12:41:53', '', 'ba07c3cb-4e33-4549-8528-daf125e1f2fb', '', 'inherit', 'open', 'closed', '', 'ba07c3cb-4e33-4549-8528-daf125e1f2fb', '', '', '2020-03-03 12:41:53', '2020-03-03 12:41:53', '', 24, 'http://tramhuong.jp/wp-content/uploads/2020/03/ba07c3cb-4e33-4549-8528-daf125e1f2fb.jpg', 0, 'attachment', 'image/jpeg', 0),
	(27, 1, '2020-03-03 12:41:53', '2020-03-03 12:41:53', '', 'd905f83c3c7fa9a8a929292e4cf04274', '', 'inherit', 'open', 'closed', '', 'd905f83c3c7fa9a8a929292e4cf04274', '', '', '2020-03-03 12:41:53', '2020-03-03 12:41:53', '', 24, 'http://tramhuong.jp/wp-content/uploads/2020/03/d905f83c3c7fa9a8a929292e4cf04274.jpg', 0, 'attachment', 'image/jpeg', 0),
	(28, 1, '2020-03-03 12:43:25', '2020-03-03 12:43:25', '', 'Nhang trầm loại 1', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-03-03 12:43:25', '2020-03-03 12:43:25', '', 24, 'http://tramhuong.jp/2020/03/03/24-revision-v1/', 0, 'revision', '', 0),
	(29, 1, '2020-03-03 12:44:42', '2020-03-03 12:44:42', '', 'Nhang trầm loại 2', '', 'publish', 'open', 'open', '', 'nhang-tram-loai-2', '', '', '2020-03-03 12:44:42', '2020-03-03 12:44:42', '', 0, 'http://tramhuong.jp/?post_type=sanpham&#038;p=29', 0, 'sanpham', '', 0),
	(30, 1, '2020-03-03 12:44:42', '2020-03-03 12:44:42', '', 'Nhang trầm loại 2', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-03-03 12:44:42', '2020-03-03 12:44:42', '', 29, 'http://tramhuong.jp/2020/03/03/29-revision-v1/', 0, 'revision', '', 0),
	(31, 1, '2020-03-03 12:49:18', '2020-03-03 12:49:18', '<img class="size-medium wp-image-32 aligncenter" src="http://tramhuong.jp/wp-content/uploads/2020/03/bay_gio_va_o_day-300x183.jpg" alt="" width="300" height="183" />\r\n\r\n<b>Đức Phật thuyết pháp hơn 300 hội, không có thời pháp nào giống nhau. Đó là điều quan trọng mà chúng ta ghi nhận được. Vì Đức Phật thuyết pháp trên căn bản tùy nơi, tùy lúc, tùy người, tức tùy theo trình độ khác nhau của người nghe pháp mà Phật nói pháp khác nhau để làm lợi ích cho cuộc đời. Theo dấu chân Phật, thể hiện tinh thần này, chúng ta làm gì, nói gì cũng nhằm đem lợi ích cho mọi người.</b>\r\n<div align="left">Ngành sư phạm hoằng pháp cũng vậy, nhằm đào tạo con người biết sống thích hợp với hoàn cảnh để làm công việc theo ý nghĩa Phật dạy như vừa nói. Thật vậy, Phật luôn giảng dạy “Bây giờ và ở đây”, nghĩa là nhà hoằng pháp phải biết mình đang ở đâu và nên làm gì, nói gì.</div>\r\n<div align="left"></div>\r\n<div align="left">Riêng tôi thành công trong việc hành đạo nhờ ý thức lý này. Thí dụ trước kia tôi sinh hoạt ở tu viện Thiên Chúa giáo ở La Mã cũng biết rõ tôi đang ở Tòa thánh và chung quanh là các Hồng y, Giám mục… Tôi phải lựa pháp nào mà các vị này nghe được, hiểu được và chấp nhận được, nên tôi nói không làm mất lòng họ và nhân đó, tôi cũng có thêm bạn.</div>\r\n<div align="left"></div>\r\n<div align="left">Thực tế cho thấy một số giảng sư không thành công vì mất Chánh niệm, nói chuyện với người khác tôn giáo mà tưởng là Phật tử, đang ở nhà thờ mà tưởng ở chùa…</div>\r\n<div align="left"></div>\r\n<div align="left">Vì vậy, các anh em giảng sư tương lai phải luôn suy nghĩ “Bây giờ và ở đây” để nói những gì thích hợp, làm những gì mà người chấp nhận là thành công.</div>\r\n<div align="left"></div>\r\n<div align="left">Điều thứ hai, Phật dạy những vị chưa đắc La-hán không nên đi hoằng pháp vì chưa đoạn tận mười triền cái, còn tham sân si vi tế, tướng giải thoát của Tỳ-kheo chưa hiện nên nói pháp giải thoát bị phản tác dụng. Giảng sư phải luôn cân nhắc điều này.</div>\r\n<div align="left"></div>\r\n<div align="left">Xưa kia, tôi hầu Hòa thượng Thiện Hoa là Trưởng ban Hoằng pháp. Tôi thấy ngài không thay đổi sắc mặt dù khó khăn, nguy hiểm, hay việc tốt lành xảy ra. Ngài dạy rằng dù được chư Thiên cúng dường, cung kính, hay bị hủy báng, chúng ta cũng không thay đổi, phải luôn có Chánh niệm. Thầy tu chưa có Chánh niệm không nên ra ngoại giới, cố rèn cho được Chánh niệm.</div>\r\n<div align="left"></div>\r\n<div align="left">Điều thứ ba thuộc về thân giáo. Phật dạy phải thường đọc giới bổn. 250 giới của Tỳ-kheo đi vào lòng chúng ta, thể hiện thành cử chỉ, hành động và thành tựu 3.000 oai nghi. Oai nghi của Tỳ-kheo quan trọng. Muốn trở thành nhà hoằng pháp tương lai phải rèn luyện oai nghi trước nhất, đó là điều căn bản anh em phải nhớ. Và đề thi sắp tới, những gì tôi giảng mà anh em có những tâm đắc thì mới diễn tả được tâm đắc đó, như vậy bảo đảm có điểm trên trung bình, ra trường được. Huynh đệ cố gắng tốt nghiệp với điểm cao và trở thành nhà hoằng pháp tài đức.</div>\r\n<div align="left"></div>\r\n<div align="left">Hôm nay là buổi giảng cuối cùng có Phật tử tham dự đông, tôi gợi một số ý về kinh Pháp hoa mà tôi chuyên thọ trì, nghiên cứu.</div>\r\n<div align="left"></div>\r\n<div align="left">Trước hết, chúng ta nghĩ kinh Pháp hoa có phải là một bộ kinh khác, riêng biệt hay không. Chúng ta thường chia ra kinh Pháp hoa, kinh Hoa nghiêm, kinh Bát-nhã, kinh Di Đà, kinh Duy Ma… Chúng ta chia như vậy, nhưng tổng hợp lại tất cả các kinh này là một. Có thể nói phương tiện thì nhiều, nhưng tập hợp lại, nó là một, tức Nhứt Phật thừa, nghĩa là tất cả mọi người tu theo pháp Phật đều thành Phật, không phải người này tu thành La-hán, người kia tu thành Bồ-tát, người nọ thành Phật.</div>\r\n<div align="left"></div>\r\n<div align="left">Tất cả kinh Phật đều là phương tiện dẫn chúng ta đến cửa giải thoát và vào Niết-bàn là chính; nhưng nhận thức của từng người khác nhau, ở từng chặng đường khác nhau nên có kết quả sai biệt.</div>\r\n<div align="left"></div>\r\n<div align="left">Ta nghiên cứu kinh Pháp hoa phải kết hợp với tất cả các kinh Phật nói. Phật nói trong kinh Pháp hoa rằng tất cả Phật quá khứ nói pháp, Ngài cũng nói pháp như vậy và tất cả chư Phật tương lai cũng sẽ nói pháp như vậy.</div>\r\n<div align="left"></div>\r\n<div align="left">Phật dạy trong tất cả loài chúng sanh chỉ loài người có trí tuệ và phát huy trí tuệ  thành Phật gọi là Phật thừa. Và trí tuệ loài người được phát triển theo từng giai đoạn lịch sử khác nhau, nhưng trí tuệ phát triển nghĩa là đi lên. Thật vậy, lịch sử văn minh loài người cho thấy hiểu biết của loài người ở 2.000 năm trước hoàn toàn khác với tri thức của nhân loại trong thời hiện đại. Nhưng điều đặc biệt là trí tuệ loài người nâng cao đến bậc nào cũng bắt gặp được trí tuệ Phật. Không phải những gì Phật nói mấy ngàn năm trước mà bây giờ trở thành lỗi thời. Giáo pháp Phật dạy từ nghìn xưa cho đến ngày nay vẫn luôn đúng gọi là thường pháp hay chân lý.</div>\r\n<div align="left"></div>\r\n<div align="left">Như vậy, nếu nói Pháp hoa là chân lý thì được không. Không được. Nhưng theo Nhật Liên, kinh Pháp hoa là trí tuệ cao nhất của loài người. Tuy nhiên, như đã nói trí tuệ loài người cao nhất của thiên niên kỷ trước khác với trí tuệ loài người ở thế kỷ ngày nay.\r\nVì vậy, chúng ta đặt vấn đề ở thế kỷ XXI được mệnh danh là đỉnh cao trí tuệ và con người đạt đến mức độ nào thì dùng đó rọi vào giáo pháp để chúng ta hiểu rõ thêm đạo Phật.</div>\r\n<div align="left"></div>\r\n<div align="left">Có thể khẳng định Phật giáo ở thời thần quyền thì Phật giáo rất thần quyền và ở thời dân chủ, Phật giáo cũng rất dân chủ. Điều này thể hiện sâu sắc rằng Phật giáo thích hợp với mọi thời đại mới có thể tồn tại vững chắc dài lâu như vậy.</div>\r\n<div align="left"></div>\r\n<div align="left">Vì vậy, Phật dạy rằng kinh điển mà Ngài nói tồn tại trong sự sống con người, trong sự hiểu biết của con người, trong niềm tin của con người. Chừng nào con người không hiểu, không tin, không áp dụng giáo pháp thì đạo Phật tự tiêu diệt. Điều hiển nhiên rằng đạo Phật gắn liền mật thiết với cuộc sống con người. Lý này được Phật dạy là thế gian tướng thường trụ, nghĩa là giáo pháp thường trụ trong sự sống của con người.</div>\r\n<div align="left"></div>\r\n<div align="left">Vì thế, Phật giáo quy định đồng thể Tam bảo là từ Tam bảo của con người tiến lên Tam bảo chân lý, tức Phật bảo là trí tuệ cao tột, Pháp bảo là nguyên tắc sống thánh thiện tuyệt đối và Tăng bảo là sự hòa hợp thanh tịnh trọn vẹn. Tam bảo này hiện hữu là Phật giáo sinh tồn. Thí dụ điển hình như trường chúng ta có cả ngàn Tăng Ni sinh nội trú, nhưng chúng ta tu học hòa hợp, phát huy trí tuệ, nên trường phát triển được. Ngày nào chúng ta không hòa hợp thì không còn Phật giáo.</div>\r\n<div align="left"></div>\r\n<div align="left">Ý thức rõ quy luật này, chúng ta phải giữ sự hòa hợp, phải tu cho được tánh hòa hợp, dù ở chỗ nào cũng phải thể hiện tình đoàn kết hòa hợp được ví như nước ở bầu thì tròn, ở ống thì dài.</div>\r\n<div align="left"></div>\r\n<div align="left">Như đã nói, tôi ở tu viện Thiên Chúa giáo được các vị lãnh đạo Tòa thánh chấp nhận. Tại sao tôi lại ở đó. Khi tôi sang Nhật, một Hòa thượng thỉnh tôi về chùa. Tôi nói ngài Tổng Giám mục đã thỉnh trước rồi. Hòa thượng này rất ngạc nhiên tại sao họ lại thỉnh tôi. Tôi nói tôi quen vị này ở Hội nghị Tôn giáo thế giới ở Ý. Ông nói khi nào Hòa thượng sang Nhật phải tới nhà thờ ở. Hòa thượng Nhật nói không được ở nhà thờ, phải ở chùa. Tôi đáp suốt đời ở chùa rồi, ở nhà thờ một lần cho biết. Và trải qua một đêm chia sẻ với ngài Tổng Giám mục rất thú vị. Ông nói về cầu nguyện theo Thiên Chúa giáo, tôi nói về thiền của Phật giáo; ông nói về đức tin của con Chúa, tôi nói về năng lực của con người phải phát triển được trí tuệ vô thượng như Phật.</div>\r\n<div align="left"></div>\r\n<div align="left">Thể hiện tánh hòa hợp, ở chùa thì sống theo chùa, ở nhà thờ sống theo nhà thờ, không chống nhau. Nhưng cùng là Phật giáo mà tông này chống tông khác là sai. Chẳng những Tăng-già hòa hợp, các Phật tử cũng phải hòa hợp, không phải đệ  tử của thầy này chống lại đệ tử của thầy khác.</div>\r\n<div align="left"></div>\r\n<div align="left">Muốn hòa hợp, phải có nguyên tắc sống gọi là pháp. Các huynh đệ ở trường có quy định phải tuân thủ thì hòa hợp. Một người không tuân thủ, mình nhắc nhở để giúp họ không vi phạm nội quy, nhưng nhắc rồi mà vẫn không tuân thủ thì mời ra để Tăng đoàn thanh tịnh.</div>\r\n<div align="left"></div>\r\n<div align="left">Nguyên tắc sống của tập thể phải tôn trọng, nhưng nếu nguyên tắc này lỗi thời thì khó có thể bắt mọi người tôn trọng. Vì vậy, tôn trọng bậc trưởng thượng sáng suốt nhất là người có thể đưa ra nguyên tắc sống đúng đắn. Trên căn bản này, Phật dạy sau khi Ngài nhập Niết-bàn, tập thể Tăng-già hòa hợp có thể thay đổi, thêm bớt nguyên tắc (Pháp), nghĩa là giáo pháp Phật không cố định, được phép thay đổi.</div>', 'Bây giờ và ở đây', 'Đức Phật thuyết pháp hơn 300 hội, không có thời pháp nào giống nhau. Đó là điều quan trọng mà chúng ta ghi nhận được. Vì Đức Phật thuyết pháp trên căn bản tùy nơi, tùy lúc, tùy người, tức tùy theo trình độ khác nhau của người nghe pháp mà Phật nói pháp khác nhau để làm lợi ích cho cuộc đời. Theo dấu chân Phật, thể hiện tinh thần này, chúng ta làm gì, nói gì cũng nhằm đem lợi ích cho mọi người.', 'publish', 'open', 'open', '', 'bay-gio-va-o-day', '', '', '2020-03-03 13:01:46', '2020-03-03 13:01:46', '', 0, 'http://tramhuong.jp/?post_type=tintuc&#038;p=31', 0, 'tintuc', '', 0),
	(32, 1, '2020-03-03 12:48:22', '2020-03-03 12:48:22', '', 'bay_gio_va_o_day', '', 'inherit', 'open', 'closed', '', 'bay_gio_va_o_day', '', '', '2020-03-03 12:48:22', '2020-03-03 12:48:22', '', 31, 'http://tramhuong.jp/wp-content/uploads/2020/03/bay_gio_va_o_day.jpg', 0, 'attachment', 'image/jpeg', 0),
	(33, 1, '2020-03-03 12:49:18', '2020-03-03 12:49:18', '<img class="size-medium wp-image-32 aligncenter" src="http://tramhuong.jp/wp-content/uploads/2020/03/bay_gio_va_o_day-300x183.jpg" alt="" width="300" height="183" />\r\n\r\n<b>Đức Phật thuyết pháp hơn 300 hội, không có thời pháp nào giống nhau. Đó là điều quan trọng mà chúng ta ghi nhận được. Vì Đức Phật thuyết pháp trên căn bản tùy nơi, tùy lúc, tùy người, tức tùy theo trình độ khác nhau của người nghe pháp mà Phật nói pháp khác nhau để làm lợi ích cho cuộc đời. Theo dấu chân Phật, thể hiện tinh thần này, chúng ta làm gì, nói gì cũng nhằm đem lợi ích cho mọi người.</b>\r\n<div align="left">Ngành sư phạm hoằng pháp cũng vậy, nhằm đào tạo con người biết sống thích hợp với hoàn cảnh để làm công việc theo ý nghĩa Phật dạy như vừa nói. Thật vậy, Phật luôn giảng dạy “Bây giờ và ở đây”, nghĩa là nhà hoằng pháp phải biết mình đang ở đâu và nên làm gì, nói gì.</div>\r\n<div align="left"></div>\r\n<div align="left">Riêng tôi thành công trong việc hành đạo nhờ ý thức lý này. Thí dụ trước kia tôi sinh hoạt ở tu viện Thiên Chúa giáo ở La Mã cũng biết rõ tôi đang ở Tòa thánh và chung quanh là các Hồng y, Giám mục… Tôi phải lựa pháp nào mà các vị này nghe được, hiểu được và chấp nhận được, nên tôi nói không làm mất lòng họ và nhân đó, tôi cũng có thêm bạn.</div>\r\n<div align="left"></div>\r\n<div align="left">Thực tế cho thấy một số giảng sư không thành công vì mất Chánh niệm, nói chuyện với người khác tôn giáo mà tưởng là Phật tử, đang ở nhà thờ mà tưởng ở chùa…</div>\r\n<div align="left"></div>\r\n<div align="left">Vì vậy, các anh em giảng sư tương lai phải luôn suy nghĩ “Bây giờ và ở đây” để nói những gì thích hợp, làm những gì mà người chấp nhận là thành công.</div>\r\n<div align="left"></div>\r\n<div align="left">Điều thứ hai, Phật dạy những vị chưa đắc La-hán không nên đi hoằng pháp vì chưa đoạn tận mười triền cái, còn tham sân si vi tế, tướng giải thoát của Tỳ-kheo chưa hiện nên nói pháp giải thoát bị phản tác dụng. Giảng sư phải luôn cân nhắc điều này.</div>\r\n<div align="left"></div>\r\n<div align="left">Xưa kia, tôi hầu Hòa thượng Thiện Hoa là Trưởng ban Hoằng pháp. Tôi thấy ngài không thay đổi sắc mặt dù khó khăn, nguy hiểm, hay việc tốt lành xảy ra. Ngài dạy rằng dù được chư Thiên cúng dường, cung kính, hay bị hủy báng, chúng ta cũng không thay đổi, phải luôn có Chánh niệm. Thầy tu chưa có Chánh niệm không nên ra ngoại giới, cố rèn cho được Chánh niệm.</div>\r\n<div align="left"></div>\r\n<div align="left">Điều thứ ba thuộc về thân giáo. Phật dạy phải thường đọc giới bổn. 250 giới của Tỳ-kheo đi vào lòng chúng ta, thể hiện thành cử chỉ, hành động và thành tựu 3.000 oai nghi. Oai nghi của Tỳ-kheo quan trọng. Muốn trở thành nhà hoằng pháp tương lai phải rèn luyện oai nghi trước nhất, đó là điều căn bản anh em phải nhớ. Và đề thi sắp tới, những gì tôi giảng mà anh em có những tâm đắc thì mới diễn tả được tâm đắc đó, như vậy bảo đảm có điểm trên trung bình, ra trường được. Huynh đệ cố gắng tốt nghiệp với điểm cao và trở thành nhà hoằng pháp tài đức.</div>\r\n<div align="left"></div>\r\n<div align="left">Hôm nay là buổi giảng cuối cùng có Phật tử tham dự đông, tôi gợi một số ý về kinh Pháp hoa mà tôi chuyên thọ trì, nghiên cứu.</div>\r\n<div align="left"></div>\r\n<div align="left">Trước hết, chúng ta nghĩ kinh Pháp hoa có phải là một bộ kinh khác, riêng biệt hay không. Chúng ta thường chia ra kinh Pháp hoa, kinh Hoa nghiêm, kinh Bát-nhã, kinh Di Đà, kinh Duy Ma… Chúng ta chia như vậy, nhưng tổng hợp lại tất cả các kinh này là một. Có thể nói phương tiện thì nhiều, nhưng tập hợp lại, nó là một, tức Nhứt Phật thừa, nghĩa là tất cả mọi người tu theo pháp Phật đều thành Phật, không phải người này tu thành La-hán, người kia tu thành Bồ-tát, người nọ thành Phật.</div>\r\n<div align="left"></div>\r\n<div align="left">Tất cả kinh Phật đều là phương tiện dẫn chúng ta đến cửa giải thoát và vào Niết-bàn là chính; nhưng nhận thức của từng người khác nhau, ở từng chặng đường khác nhau nên có kết quả sai biệt.</div>\r\n<div align="left"></div>\r\n<div align="left">Ta nghiên cứu kinh Pháp hoa phải kết hợp với tất cả các kinh Phật nói. Phật nói trong kinh Pháp hoa rằng tất cả Phật quá khứ nói pháp, Ngài cũng nói pháp như vậy và tất cả chư Phật tương lai cũng sẽ nói pháp như vậy.</div>\r\n<div align="left"></div>\r\n<div align="left">Phật dạy trong tất cả loài chúng sanh chỉ loài người có trí tuệ và phát huy trí tuệ  thành Phật gọi là Phật thừa. Và trí tuệ loài người được phát triển theo từng giai đoạn lịch sử khác nhau, nhưng trí tuệ phát triển nghĩa là đi lên. Thật vậy, lịch sử văn minh loài người cho thấy hiểu biết của loài người ở 2.000 năm trước hoàn toàn khác với tri thức của nhân loại trong thời hiện đại. Nhưng điều đặc biệt là trí tuệ loài người nâng cao đến bậc nào cũng bắt gặp được trí tuệ Phật. Không phải những gì Phật nói mấy ngàn năm trước mà bây giờ trở thành lỗi thời. Giáo pháp Phật dạy từ nghìn xưa cho đến ngày nay vẫn luôn đúng gọi là thường pháp hay chân lý.</div>\r\n<div align="left"></div>\r\n<div align="left">Như vậy, nếu nói Pháp hoa là chân lý thì được không. Không được. Nhưng theo Nhật Liên, kinh Pháp hoa là trí tuệ cao nhất của loài người. Tuy nhiên, như đã nói trí tuệ loài người cao nhất của thiên niên kỷ trước khác với trí tuệ loài người ở thế kỷ ngày nay.\r\nVì vậy, chúng ta đặt vấn đề ở thế kỷ XXI được mệnh danh là đỉnh cao trí tuệ và con người đạt đến mức độ nào thì dùng đó rọi vào giáo pháp để chúng ta hiểu rõ thêm đạo Phật.</div>\r\n<div align="left"></div>\r\n<div align="left">Có thể khẳng định Phật giáo ở thời thần quyền thì Phật giáo rất thần quyền và ở thời dân chủ, Phật giáo cũng rất dân chủ. Điều này thể hiện sâu sắc rằng Phật giáo thích hợp với mọi thời đại mới có thể tồn tại vững chắc dài lâu như vậy.</div>\r\n<div align="left"></div>\r\n<div align="left">Vì vậy, Phật dạy rằng kinh điển mà Ngài nói tồn tại trong sự sống con người, trong sự hiểu biết của con người, trong niềm tin của con người. Chừng nào con người không hiểu, không tin, không áp dụng giáo pháp thì đạo Phật tự tiêu diệt. Điều hiển nhiên rằng đạo Phật gắn liền mật thiết với cuộc sống con người. Lý này được Phật dạy là thế gian tướng thường trụ, nghĩa là giáo pháp thường trụ trong sự sống của con người.</div>\r\n<div align="left"></div>\r\n<div align="left">Vì thế, Phật giáo quy định đồng thể Tam bảo là từ Tam bảo của con người tiến lên Tam bảo chân lý, tức Phật bảo là trí tuệ cao tột, Pháp bảo là nguyên tắc sống thánh thiện tuyệt đối và Tăng bảo là sự hòa hợp thanh tịnh trọn vẹn. Tam bảo này hiện hữu là Phật giáo sinh tồn. Thí dụ điển hình như trường chúng ta có cả ngàn Tăng Ni sinh nội trú, nhưng chúng ta tu học hòa hợp, phát huy trí tuệ, nên trường phát triển được. Ngày nào chúng ta không hòa hợp thì không còn Phật giáo.</div>\r\n<div align="left"></div>\r\n<div align="left">Ý thức rõ quy luật này, chúng ta phải giữ sự hòa hợp, phải tu cho được tánh hòa hợp, dù ở chỗ nào cũng phải thể hiện tình đoàn kết hòa hợp được ví như nước ở bầu thì tròn, ở ống thì dài.</div>\r\n<div align="left"></div>\r\n<div align="left">Như đã nói, tôi ở tu viện Thiên Chúa giáo được các vị lãnh đạo Tòa thánh chấp nhận. Tại sao tôi lại ở đó. Khi tôi sang Nhật, một Hòa thượng thỉnh tôi về chùa. Tôi nói ngài Tổng Giám mục đã thỉnh trước rồi. Hòa thượng này rất ngạc nhiên tại sao họ lại thỉnh tôi. Tôi nói tôi quen vị này ở Hội nghị Tôn giáo thế giới ở Ý. Ông nói khi nào Hòa thượng sang Nhật phải tới nhà thờ ở. Hòa thượng Nhật nói không được ở nhà thờ, phải ở chùa. Tôi đáp suốt đời ở chùa rồi, ở nhà thờ một lần cho biết. Và trải qua một đêm chia sẻ với ngài Tổng Giám mục rất thú vị. Ông nói về cầu nguyện theo Thiên Chúa giáo, tôi nói về thiền của Phật giáo; ông nói về đức tin của con Chúa, tôi nói về năng lực của con người phải phát triển được trí tuệ vô thượng như Phật.</div>\r\n<div align="left"></div>\r\n<div align="left">Thể hiện tánh hòa hợp, ở chùa thì sống theo chùa, ở nhà thờ sống theo nhà thờ, không chống nhau. Nhưng cùng là Phật giáo mà tông này chống tông khác là sai. Chẳng những Tăng-già hòa hợp, các Phật tử cũng phải hòa hợp, không phải đệ  tử của thầy này chống lại đệ tử của thầy khác.</div>\r\n<div align="left"></div>\r\n<div align="left">Muốn hòa hợp, phải có nguyên tắc sống gọi là pháp. Các huynh đệ ở trường có quy định phải tuân thủ thì hòa hợp. Một người không tuân thủ, mình nhắc nhở để giúp họ không vi phạm nội quy, nhưng nhắc rồi mà vẫn không tuân thủ thì mời ra để Tăng đoàn thanh tịnh.</div>\r\n<div align="left"></div>\r\n<div align="left">Nguyên tắc sống của tập thể phải tôn trọng, nhưng nếu nguyên tắc này lỗi thời thì khó có thể bắt mọi người tôn trọng. Vì vậy, tôn trọng bậc trưởng thượng sáng suốt nhất là người có thể đưa ra nguyên tắc sống đúng đắn. Trên căn bản này, Phật dạy sau khi Ngài nhập Niết-bàn, tập thể Tăng-già hòa hợp có thể thay đổi, thêm bớt nguyên tắc (Pháp), nghĩa là giáo pháp Phật không cố định, được phép thay đổi.</div>', 'Bây giờ và ở đây', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-03-03 12:49:18', '2020-03-03 12:49:18', '', 31, 'http://tramhuong.jp/2020/03/03/31-revision-v1/', 0, 'revision', '', 0),
	(34, 1, '2020-03-03 13:01:46', '2020-03-03 13:01:46', '<img class="size-medium wp-image-32 aligncenter" src="http://tramhuong.jp/wp-content/uploads/2020/03/bay_gio_va_o_day-300x183.jpg" alt="" width="300" height="183" />\r\n\r\n<b>Đức Phật thuyết pháp hơn 300 hội, không có thời pháp nào giống nhau. Đó là điều quan trọng mà chúng ta ghi nhận được. Vì Đức Phật thuyết pháp trên căn bản tùy nơi, tùy lúc, tùy người, tức tùy theo trình độ khác nhau của người nghe pháp mà Phật nói pháp khác nhau để làm lợi ích cho cuộc đời. Theo dấu chân Phật, thể hiện tinh thần này, chúng ta làm gì, nói gì cũng nhằm đem lợi ích cho mọi người.</b>\r\n<div align="left">Ngành sư phạm hoằng pháp cũng vậy, nhằm đào tạo con người biết sống thích hợp với hoàn cảnh để làm công việc theo ý nghĩa Phật dạy như vừa nói. Thật vậy, Phật luôn giảng dạy “Bây giờ và ở đây”, nghĩa là nhà hoằng pháp phải biết mình đang ở đâu và nên làm gì, nói gì.</div>\r\n<div align="left"></div>\r\n<div align="left">Riêng tôi thành công trong việc hành đạo nhờ ý thức lý này. Thí dụ trước kia tôi sinh hoạt ở tu viện Thiên Chúa giáo ở La Mã cũng biết rõ tôi đang ở Tòa thánh và chung quanh là các Hồng y, Giám mục… Tôi phải lựa pháp nào mà các vị này nghe được, hiểu được và chấp nhận được, nên tôi nói không làm mất lòng họ và nhân đó, tôi cũng có thêm bạn.</div>\r\n<div align="left"></div>\r\n<div align="left">Thực tế cho thấy một số giảng sư không thành công vì mất Chánh niệm, nói chuyện với người khác tôn giáo mà tưởng là Phật tử, đang ở nhà thờ mà tưởng ở chùa…</div>\r\n<div align="left"></div>\r\n<div align="left">Vì vậy, các anh em giảng sư tương lai phải luôn suy nghĩ “Bây giờ và ở đây” để nói những gì thích hợp, làm những gì mà người chấp nhận là thành công.</div>\r\n<div align="left"></div>\r\n<div align="left">Điều thứ hai, Phật dạy những vị chưa đắc La-hán không nên đi hoằng pháp vì chưa đoạn tận mười triền cái, còn tham sân si vi tế, tướng giải thoát của Tỳ-kheo chưa hiện nên nói pháp giải thoát bị phản tác dụng. Giảng sư phải luôn cân nhắc điều này.</div>\r\n<div align="left"></div>\r\n<div align="left">Xưa kia, tôi hầu Hòa thượng Thiện Hoa là Trưởng ban Hoằng pháp. Tôi thấy ngài không thay đổi sắc mặt dù khó khăn, nguy hiểm, hay việc tốt lành xảy ra. Ngài dạy rằng dù được chư Thiên cúng dường, cung kính, hay bị hủy báng, chúng ta cũng không thay đổi, phải luôn có Chánh niệm. Thầy tu chưa có Chánh niệm không nên ra ngoại giới, cố rèn cho được Chánh niệm.</div>\r\n<div align="left"></div>\r\n<div align="left">Điều thứ ba thuộc về thân giáo. Phật dạy phải thường đọc giới bổn. 250 giới của Tỳ-kheo đi vào lòng chúng ta, thể hiện thành cử chỉ, hành động và thành tựu 3.000 oai nghi. Oai nghi của Tỳ-kheo quan trọng. Muốn trở thành nhà hoằng pháp tương lai phải rèn luyện oai nghi trước nhất, đó là điều căn bản anh em phải nhớ. Và đề thi sắp tới, những gì tôi giảng mà anh em có những tâm đắc thì mới diễn tả được tâm đắc đó, như vậy bảo đảm có điểm trên trung bình, ra trường được. Huynh đệ cố gắng tốt nghiệp với điểm cao và trở thành nhà hoằng pháp tài đức.</div>\r\n<div align="left"></div>\r\n<div align="left">Hôm nay là buổi giảng cuối cùng có Phật tử tham dự đông, tôi gợi một số ý về kinh Pháp hoa mà tôi chuyên thọ trì, nghiên cứu.</div>\r\n<div align="left"></div>\r\n<div align="left">Trước hết, chúng ta nghĩ kinh Pháp hoa có phải là một bộ kinh khác, riêng biệt hay không. Chúng ta thường chia ra kinh Pháp hoa, kinh Hoa nghiêm, kinh Bát-nhã, kinh Di Đà, kinh Duy Ma… Chúng ta chia như vậy, nhưng tổng hợp lại tất cả các kinh này là một. Có thể nói phương tiện thì nhiều, nhưng tập hợp lại, nó là một, tức Nhứt Phật thừa, nghĩa là tất cả mọi người tu theo pháp Phật đều thành Phật, không phải người này tu thành La-hán, người kia tu thành Bồ-tát, người nọ thành Phật.</div>\r\n<div align="left"></div>\r\n<div align="left">Tất cả kinh Phật đều là phương tiện dẫn chúng ta đến cửa giải thoát và vào Niết-bàn là chính; nhưng nhận thức của từng người khác nhau, ở từng chặng đường khác nhau nên có kết quả sai biệt.</div>\r\n<div align="left"></div>\r\n<div align="left">Ta nghiên cứu kinh Pháp hoa phải kết hợp với tất cả các kinh Phật nói. Phật nói trong kinh Pháp hoa rằng tất cả Phật quá khứ nói pháp, Ngài cũng nói pháp như vậy và tất cả chư Phật tương lai cũng sẽ nói pháp như vậy.</div>\r\n<div align="left"></div>\r\n<div align="left">Phật dạy trong tất cả loài chúng sanh chỉ loài người có trí tuệ và phát huy trí tuệ  thành Phật gọi là Phật thừa. Và trí tuệ loài người được phát triển theo từng giai đoạn lịch sử khác nhau, nhưng trí tuệ phát triển nghĩa là đi lên. Thật vậy, lịch sử văn minh loài người cho thấy hiểu biết của loài người ở 2.000 năm trước hoàn toàn khác với tri thức của nhân loại trong thời hiện đại. Nhưng điều đặc biệt là trí tuệ loài người nâng cao đến bậc nào cũng bắt gặp được trí tuệ Phật. Không phải những gì Phật nói mấy ngàn năm trước mà bây giờ trở thành lỗi thời. Giáo pháp Phật dạy từ nghìn xưa cho đến ngày nay vẫn luôn đúng gọi là thường pháp hay chân lý.</div>\r\n<div align="left"></div>\r\n<div align="left">Như vậy, nếu nói Pháp hoa là chân lý thì được không. Không được. Nhưng theo Nhật Liên, kinh Pháp hoa là trí tuệ cao nhất của loài người. Tuy nhiên, như đã nói trí tuệ loài người cao nhất của thiên niên kỷ trước khác với trí tuệ loài người ở thế kỷ ngày nay.\r\nVì vậy, chúng ta đặt vấn đề ở thế kỷ XXI được mệnh danh là đỉnh cao trí tuệ và con người đạt đến mức độ nào thì dùng đó rọi vào giáo pháp để chúng ta hiểu rõ thêm đạo Phật.</div>\r\n<div align="left"></div>\r\n<div align="left">Có thể khẳng định Phật giáo ở thời thần quyền thì Phật giáo rất thần quyền và ở thời dân chủ, Phật giáo cũng rất dân chủ. Điều này thể hiện sâu sắc rằng Phật giáo thích hợp với mọi thời đại mới có thể tồn tại vững chắc dài lâu như vậy.</div>\r\n<div align="left"></div>\r\n<div align="left">Vì vậy, Phật dạy rằng kinh điển mà Ngài nói tồn tại trong sự sống con người, trong sự hiểu biết của con người, trong niềm tin của con người. Chừng nào con người không hiểu, không tin, không áp dụng giáo pháp thì đạo Phật tự tiêu diệt. Điều hiển nhiên rằng đạo Phật gắn liền mật thiết với cuộc sống con người. Lý này được Phật dạy là thế gian tướng thường trụ, nghĩa là giáo pháp thường trụ trong sự sống của con người.</div>\r\n<div align="left"></div>\r\n<div align="left">Vì thế, Phật giáo quy định đồng thể Tam bảo là từ Tam bảo của con người tiến lên Tam bảo chân lý, tức Phật bảo là trí tuệ cao tột, Pháp bảo là nguyên tắc sống thánh thiện tuyệt đối và Tăng bảo là sự hòa hợp thanh tịnh trọn vẹn. Tam bảo này hiện hữu là Phật giáo sinh tồn. Thí dụ điển hình như trường chúng ta có cả ngàn Tăng Ni sinh nội trú, nhưng chúng ta tu học hòa hợp, phát huy trí tuệ, nên trường phát triển được. Ngày nào chúng ta không hòa hợp thì không còn Phật giáo.</div>\r\n<div align="left"></div>\r\n<div align="left">Ý thức rõ quy luật này, chúng ta phải giữ sự hòa hợp, phải tu cho được tánh hòa hợp, dù ở chỗ nào cũng phải thể hiện tình đoàn kết hòa hợp được ví như nước ở bầu thì tròn, ở ống thì dài.</div>\r\n<div align="left"></div>\r\n<div align="left">Như đã nói, tôi ở tu viện Thiên Chúa giáo được các vị lãnh đạo Tòa thánh chấp nhận. Tại sao tôi lại ở đó. Khi tôi sang Nhật, một Hòa thượng thỉnh tôi về chùa. Tôi nói ngài Tổng Giám mục đã thỉnh trước rồi. Hòa thượng này rất ngạc nhiên tại sao họ lại thỉnh tôi. Tôi nói tôi quen vị này ở Hội nghị Tôn giáo thế giới ở Ý. Ông nói khi nào Hòa thượng sang Nhật phải tới nhà thờ ở. Hòa thượng Nhật nói không được ở nhà thờ, phải ở chùa. Tôi đáp suốt đời ở chùa rồi, ở nhà thờ một lần cho biết. Và trải qua một đêm chia sẻ với ngài Tổng Giám mục rất thú vị. Ông nói về cầu nguyện theo Thiên Chúa giáo, tôi nói về thiền của Phật giáo; ông nói về đức tin của con Chúa, tôi nói về năng lực của con người phải phát triển được trí tuệ vô thượng như Phật.</div>\r\n<div align="left"></div>\r\n<div align="left">Thể hiện tánh hòa hợp, ở chùa thì sống theo chùa, ở nhà thờ sống theo nhà thờ, không chống nhau. Nhưng cùng là Phật giáo mà tông này chống tông khác là sai. Chẳng những Tăng-già hòa hợp, các Phật tử cũng phải hòa hợp, không phải đệ  tử của thầy này chống lại đệ tử của thầy khác.</div>\r\n<div align="left"></div>\r\n<div align="left">Muốn hòa hợp, phải có nguyên tắc sống gọi là pháp. Các huynh đệ ở trường có quy định phải tuân thủ thì hòa hợp. Một người không tuân thủ, mình nhắc nhở để giúp họ không vi phạm nội quy, nhưng nhắc rồi mà vẫn không tuân thủ thì mời ra để Tăng đoàn thanh tịnh.</div>\r\n<div align="left"></div>\r\n<div align="left">Nguyên tắc sống của tập thể phải tôn trọng, nhưng nếu nguyên tắc này lỗi thời thì khó có thể bắt mọi người tôn trọng. Vì vậy, tôn trọng bậc trưởng thượng sáng suốt nhất là người có thể đưa ra nguyên tắc sống đúng đắn. Trên căn bản này, Phật dạy sau khi Ngài nhập Niết-bàn, tập thể Tăng-già hòa hợp có thể thay đổi, thêm bớt nguyên tắc (Pháp), nghĩa là giáo pháp Phật không cố định, được phép thay đổi.</div>', 'Bây giờ và ở đây', 'Đức Phật thuyết pháp hơn 300 hội, không có thời pháp nào giống nhau. Đó là điều quan trọng mà chúng ta ghi nhận được. Vì Đức Phật thuyết pháp trên căn bản tùy nơi, tùy lúc, tùy người, tức tùy theo trình độ khác nhau của người nghe pháp mà Phật nói pháp khác nhau để làm lợi ích cho cuộc đời. Theo dấu chân Phật, thể hiện tinh thần này, chúng ta làm gì, nói gì cũng nhằm đem lợi ích cho mọi người.', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-03-03 13:01:46', '2020-03-03 13:01:46', '', 31, 'http://tramhuong.jp/2020/03/03/31-revision-v1/', 0, 'revision', '', 0),
	(36, 1, '2020-03-07 11:30:15', '2020-03-07 11:30:15', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://tramhuong.jp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-03-07 11:30:15', '2020-03-07 11:30:15', '', 3, 'http://tramhuong.jp/2020/03/07/3-revision-v1/', 0, 'revision', '', 0),
	(37, 1, '2020-03-07 11:30:15', '2020-03-07 11:30:15', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://tramhuong.jp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-07 11:30:15', '2020-03-07 11:30:15', '', 2, 'http://tramhuong.jp/2020/03/07/2-revision-v1/', 0, 'revision', '', 0),
	(38, 1, '2020-03-07 11:30:55', '2020-03-07 11:30:55', '', 'giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2020-03-07 11:30:55', '2020-03-07 11:30:55', '', 0, 'http://tramhuong.jp/?page_id=38', 0, 'page', '', 0),
	(39, 1, '2020-03-07 11:30:55', '2020-03-07 11:30:55', '', 'giới thiệu', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-03-07 11:30:55', '2020-03-07 11:30:55', '', 38, 'http://tramhuong.jp/2020/03/07/38-revision-v1/', 0, 'revision', '', 0),
	(40, 1, '2020-03-07 13:33:59', '2020-03-07 13:33:59', '', 'Nhang loại 1', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-03-07 13:33:59', '2020-03-07 13:33:59', '', 23, 'http://tramhuong.jp/2020/03/07/23-revision-v1/', 0, 'revision', '', 0),
	(41, 1, '2020-03-07 13:55:26', '2020-03-07 13:55:26', '', 'Nhang loại 1', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2020-03-07 13:55:26', '2020-03-07 13:55:26', '', 23, 'http://tramhuong.jp/2020/03/07/23-autosave-v1/', 0, 'revision', '', 0),
	(42, 1, '2020-03-08 00:28:14', '2020-03-08 00:28:14', '', 'Nhang trầm 4', '', 'publish', 'open', 'open', '', 'nhang-tram-4', '', '', '2020-03-08 00:28:14', '2020-03-08 00:28:14', '', 0, 'http://tramhuong.jp/?post_type=sanpham&#038;p=42', 0, 'sanpham', '', 0),
	(43, 1, '2020-03-08 00:28:14', '2020-03-08 00:28:14', '', 'Nhang trầm 4', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-03-08 00:28:14', '2020-03-08 00:28:14', '', 42, 'http://tramhuong.jp/42-revision-v1/', 0, 'revision', '', 0),
	(44, 1, '2020-03-08 08:05:05', '2020-03-08 08:05:05', '', 'giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2020-03-08 08:05:05', '2020-03-08 08:05:05', '', 0, 'http://tramhuong.jp/?page_id=44', 0, 'page', '', 0),
	(45, 1, '2020-03-08 08:05:05', '2020-03-08 08:05:05', '', 'giỏ hàng', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-03-08 08:05:05', '2020-03-08 08:05:05', '', 44, 'http://tramhuong.jp/44-revision-v1/', 0, 'revision', '', 0),
	(46, 1, '2020-03-09 13:01:00', '2020-03-09 13:01:00', 'eeeeeeeeeeeeeeeeewwwwwww\r\n\r\nưeeeeeeeeeeeeeeeeeeeeeeeeee\r\n\r\nưeeeeeeeeeeeeeeeeeeeeeeee\r\n\r\nưeeeeeeeeeeeeeeeeeeeeeeeeeeeee\r\n\r\neeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee\r\n\r\nưeeeeeeeeeeeeeeeeeeeeeee', 'Tin 2', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'publish', 'open', 'open', '', 'tin-2', '', '', '2020-03-09 13:01:00', '2020-03-09 13:01:00', '', 0, 'http://tramhuong.jp/?post_type=tintuc&#038;p=46', 0, 'tintuc', '', 0),
	(47, 1, '2020-03-09 13:01:00', '2020-03-09 13:01:00', 'eeeeeeeeeeeeeeeeewwwwwww\r\n\r\nưeeeeeeeeeeeeeeeeeeeeeeeeee\r\n\r\nưeeeeeeeeeeeeeeeeeeeeeeee\r\n\r\nưeeeeeeeeeeeeeeeeeeeeeeeeeeeee\r\n\r\neeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee\r\n\r\nưeeeeeeeeeeeeeeeeeeeeeee', 'Tin 2', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-03-09 13:01:00', '2020-03-09 13:01:00', '', 46, 'http://tramhuong.jp/46-revision-v1/', 0, 'revision', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Dumping structure for table tramhuong.wp_termmeta
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_termmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Dumping structure for table tramhuong.wp_terms
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_terms: ~3 rows (approximately)
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
REPLACE INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Uncategorized', 'uncategorized', 0),
	(2, 'Nhang', 'nhang', 0),
	(3, 'Tin tức', 'tin-tuc', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Dumping structure for table tramhuong.wp_term_relationships
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_term_relationships: ~7 rows (approximately)
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
REPLACE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0),
	(23, 2, 0),
	(24, 2, 0),
	(29, 2, 0),
	(31, 3, 0),
	(42, 2, 0),
	(46, 3, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Dumping structure for table tramhuong.wp_term_taxonomy
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_term_taxonomy: ~3 rows (approximately)
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
REPLACE INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 1),
	(2, 2, 'category', '', 0, 4),
	(3, 3, 'category', '', 0, 2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Dumping structure for table tramhuong.wp_usermeta
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_usermeta: ~24 rows (approximately)
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
REPLACE INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'nickname', 'admintramhuong'),
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
	(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(13, 1, 'wp_user_level', '10'),
	(14, 1, 'dismissed_wp_pointers', ''),
	(15, 1, 'show_welcome_panel', '1'),
	(16, 1, 'session_tokens', 'a:1:{s:64:"16a2f4dfc1839b22351e9e610d6206f6df43495f4c4ec928c0d094a2c5fbf15b";a:4:{s:10:"expiration";i:1583930979;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36";s:5:"login";i:1583758179;}}'),
	(17, 1, 'wp_dashboard_quick_press_last_post_id', '35'),
	(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
	(19, 1, 'closedpostboxes_sanpham', 'a:0:{}'),
	(20, 1, 'metaboxhidden_sanpham', 'a:4:{i:0;s:13:"trackbacksdiv";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
	(21, 1, 'wp_user-settings', 'editor_expand=off&libraryContent=browse'),
	(22, 1, 'wp_user-settings-time', '1583239400'),
	(23, 1, 'closedpostboxes_tintuc', 'a:0:{}'),
	(24, 1, 'metaboxhidden_tintuc', 'a:4:{i:0;s:13:"trackbacksdiv";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Dumping structure for table tramhuong.wp_users
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tramhuong.wp_users: ~1 rows (approximately)
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
REPLACE INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'admintramhuong', '$P$Biby9tQhQrR418F.OtyWECZrg4Rrcy/', 'admintramhuong', 'epsminhtri@gmail.com', '', '2020-02-25 12:29:54', '', 0, 'admintramhuong');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
