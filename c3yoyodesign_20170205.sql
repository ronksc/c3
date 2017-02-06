-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2017 �?02 ??06 ??01:57
-- 伺服器版本: 5.6.20
-- PHP 版本： 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫： `c3yoyodesign`
--

-- --------------------------------------------------------

--
-- 資料表結構 `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_newsletter`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter` (
`id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `surname` varchar(100) NOT NULL DEFAULT '',
  `sex` char(1) NOT NULL DEFAULT 'n',
  `status` char(1) NOT NULL DEFAULT 'S',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(50) NOT NULL DEFAULT '',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `country` varchar(4) NOT NULL DEFAULT '',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) NOT NULL DEFAULT '',
  `profile_2` varchar(255) NOT NULL DEFAULT '',
  `profile_3` varchar(255) NOT NULL DEFAULT '',
  `profile_4` varchar(255) NOT NULL DEFAULT '',
  `profile_5` varchar(255) NOT NULL DEFAULT '',
  `profile_6` varchar(255) NOT NULL DEFAULT '',
  `profile_7` varchar(255) NOT NULL DEFAULT '',
  `profile_8` varchar(255) NOT NULL DEFAULT '',
  `profile_9` varchar(255) NOT NULL DEFAULT '',
  `profile_10` varchar(255) NOT NULL DEFAULT '',
  `profile_11` varchar(255) NOT NULL DEFAULT '',
  `profile_12` varchar(255) NOT NULL DEFAULT '',
  `profile_13` varchar(255) NOT NULL DEFAULT '',
  `profile_14` varchar(255) NOT NULL DEFAULT '',
  `profile_15` varchar(255) NOT NULL DEFAULT '',
  `profile_16` varchar(255) NOT NULL DEFAULT '',
  `profile_17` varchar(255) NOT NULL DEFAULT '',
  `profile_18` varchar(255) NOT NULL DEFAULT '',
  `profile_19` varchar(255) NOT NULL DEFAULT '',
  `profile_20` varchar(255) NOT NULL DEFAULT '',
  `referrer` varchar(50) NOT NULL DEFAULT '',
  `http_referer` varchar(255) NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0',
  `flow` tinyint(4) NOT NULL DEFAULT '0',
  `unsub_email_id` int(11) NOT NULL DEFAULT '0',
  `unsub_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_newsletter_emails`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter_emails` (
`id` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `message_text` longtext COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `send_on` int(11) NOT NULL DEFAULT '0',
  `track` tinyint(4) NOT NULL DEFAULT '0',
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_ci,
  `preferences` longtext COLLATE utf8mb4_unicode_ci,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `token` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `open_count` int(10) unsigned NOT NULL DEFAULT '0',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_newsletter_sent`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter_sent` (
  `email_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `error` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_newsletter_stats`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter_stats` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` int(11) NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anchor` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4503 ;

--
-- 資料表的匯出資料 `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://c3staging.fp-production.com', 'yes'),
(2, 'home', 'http://c3staging.fp-production.com', 'yes'),
(3, 'blogname', 'C3yoyodesign', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ron@c3yoyodesign.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:250:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"team-member/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"team-member/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"team-member/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"team-member/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"team-member/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"team-member/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"team-member/(.+?)/embed/?$";s:44:"index.php?team-member=$matches[1]&embed=true";s:30:"team-member/(.+?)/trackback/?$";s:38:"index.php?team-member=$matches[1]&tb=1";s:38:"team-member/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?team-member=$matches[1]&paged=$matches[2]";s:45:"team-member/(.+?)/comment-page-([0-9]{1,})/?$";s:51:"index.php?team-member=$matches[1]&cpage=$matches[2]";s:35:"team-member/(.+?)/wc-api(/(.*))?/?$";s:52:"index.php?team-member=$matches[1]&wc-api=$matches[3]";s:41:"team-member/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"team-member/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"team-member/(.+?)(?:/([0-9]+))?/?$";s:50:"index.php?team-member=$matches[1]&page=$matches[2]";s:48:"country/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?country=$matches[1]&feed=$matches[2]";s:43:"country/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?country=$matches[1]&feed=$matches[2]";s:24:"country/([^/]+)/embed/?$";s:40:"index.php?country=$matches[1]&embed=true";s:36:"country/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?country=$matches[1]&paged=$matches[2]";s:18:"country/([^/]+)/?$";s:29:"index.php?country=$matches[1]";s:40:"media-coverage/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"media-coverage/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"media-coverage/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"media-coverage/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"media-coverage/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"media-coverage/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"media-coverage/(.+?)/embed/?$";s:47:"index.php?media-coverage=$matches[1]&embed=true";s:33:"media-coverage/(.+?)/trackback/?$";s:41:"index.php?media-coverage=$matches[1]&tb=1";s:41:"media-coverage/(.+?)/page/?([0-9]{1,})/?$";s:54:"index.php?media-coverage=$matches[1]&paged=$matches[2]";s:48:"media-coverage/(.+?)/comment-page-([0-9]{1,})/?$";s:54:"index.php?media-coverage=$matches[1]&cpage=$matches[2]";s:38:"media-coverage/(.+?)/wc-api(/(.*))?/?$";s:55:"index.php?media-coverage=$matches[1]&wc-api=$matches[3]";s:44:"media-coverage/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:55:"media-coverage/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:37:"media-coverage/(.+?)(?:/([0-9]+))?/?$";s:53:"index.php?media-coverage=$matches[1]&page=$matches[2]";s:36:"c3_product/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"c3_product/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"c3_product/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"c3_product/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"c3_product/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"c3_product/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"c3_product/(.+?)/embed/?$";s:43:"index.php?c3_product=$matches[1]&embed=true";s:29:"c3_product/(.+?)/trackback/?$";s:37:"index.php?c3_product=$matches[1]&tb=1";s:37:"c3_product/(.+?)/page/?([0-9]{1,})/?$";s:50:"index.php?c3_product=$matches[1]&paged=$matches[2]";s:44:"c3_product/(.+?)/comment-page-([0-9]{1,})/?$";s:50:"index.php?c3_product=$matches[1]&cpage=$matches[2]";s:34:"c3_product/(.+?)/wc-api(/(.*))?/?$";s:51:"index.php?c3_product=$matches[1]&wc-api=$matches[3]";s:40:"c3_product/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"c3_product/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"c3_product/(.+?)(?:/([0-9]+))?/?$";s:49:"index.php?c3_product=$matches[1]&page=$matches[2]";s:48:"line-up/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?line-up=$matches[1]&feed=$matches[2]";s:43:"line-up/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?line-up=$matches[1]&feed=$matches[2]";s:24:"line-up/([^/]+)/embed/?$";s:40:"index.php?line-up=$matches[1]&embed=true";s:36:"line-up/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?line-up=$matches[1]&paged=$matches[2]";s:18:"line-up/([^/]+)/?$";s:29:"index.php?line-up=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:18:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:43:"auto-hide-admin-bar/auto-hide-admin-bar.php";i:2;s:33:"duplicate-post/duplicate-post.php";i:3;s:43:"google-analytics-dashboard-for-wp/gadwp.php";i:4;s:33:"hide-admin-bar/hide_admin_bar.php";i:5;s:21:"newsletter/plugin.php";i:6;s:42:"one-click-order-reorder/ced-click-n-go.php";i:8;s:45:"simple-page-ordering/simple-page-ordering.php";i:9;s:37:"tinymce-advanced/tinymce-advanced.php";i:10;s:97:"woo-ecommerce-tracking-for-google-and-facebook/woo-ecommerce-tracking-for-google-and-facebook.php";i:11;s:62:"woocommerce-dynamic-gallery/wc_dynamic_gallery_woocommerce.php";i:12;s:51:"woocommerce-image-hover/woocommerce-image-hover.php";i:13;s:80:"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php";i:14;s:37:"woocommerce-products-filter/index.php";i:15;s:63:"woocommerce-products-per-page/woocommerce-products-per-page.php";i:16;s:65:"woocommerce-quantity-increment/woocommerce-quantity-increment.php";i:17;s:27:"woocommerce/woocommerce.php";i:18;s:24:"wordpress-seo/wp-seo.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:93:"C:\\xampp\\htdocs\\c3yoyodesign/wp-content/plugins/quick-view-woocommerce/xoo-quickview-main.php";i:1;s:0:"";}', 'no'),
(40, 'template', 'c3yoyodesign', 'yes'),
(41, 'stylesheet', 'c3yoyodesign', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:43:"google-analytics-dashboard-for-wp/gadwp.php";a:2:{i:0;s:15:"GADWP_Uninstall";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:133:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:15:"wpseo_bulk_edit";b:1;s:10:"copy_posts";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:13:"function_menu";a:0:{}s:17:"footer_navigation";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:9:{i:1486342881;a:1:{s:10:"newsletter";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"newsletter";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1486344645;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1486364015;a:2:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1486377126;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1486377142;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1486377491;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1486425600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1488844800;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(126, 'recently_activated', 'a:1:{s:45:"quick-view-woocommerce/xoo-quickview-main.php";i:1486104941;}', 'yes'),
(138, 'acf_version', '5.5.5', 'yes'),
(146, 'tadv_settings', 'a:6:{s:9:"toolbar_1";s:106:"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo";s:9:"toolbar_2";s:109:"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,media,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"options";s:15:"menubar,advlist";s:7:"plugins";s:13:"table,advlist";}', 'yes'),
(147, 'tadv_admin_settings', 'a:1:{s:16:"disabled_editors";s:0:"";}', 'yes'),
(148, 'tadv_version', '4000', 'yes'),
(149, 'wpseo', 'a:21:{s:14:"blocking_files";a:0:{}s:15:"ms_defaults_set";b:0;s:7:"version";s:5:"4.2.1";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";b:0;s:16:"environment_type";s:0:"";s:20:"enable_setting_pages";b:0;s:21:"enable_admin_bar_menu";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1480329430;}', 'yes'),
(150, 'wpseo_permalinks', 'a:9:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(151, 'wpseo_titles', 'a:56:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:23:"content-analysis-active";b:1;s:23:"keyword-analysis-active";b:1;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(152, 'wpseo_social', 'a:20:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"bad80849c4087a85da9fc71f96d8b433";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(153, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(154, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(155, 'wpseo_xml', 'a:16:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(156, 'wpseo_flush_rewrite', '1', 'yes'),
(157, 'duplicate_post_copytitle', '1', 'yes'),
(158, 'duplicate_post_copydate', '0', 'yes'),
(159, 'duplicate_post_copystatus', '0', 'yes'),
(160, 'duplicate_post_copyslug', '1', 'yes'),
(161, 'duplicate_post_copyexcerpt', '1', 'yes'),
(162, 'duplicate_post_copycontent', '1', 'yes'),
(163, 'duplicate_post_copypassword', '0', 'yes'),
(164, 'duplicate_post_copyattachments', '0', 'yes'),
(165, 'duplicate_post_copychildren', '0', 'yes'),
(166, 'duplicate_post_copycomments', '0', 'yes'),
(167, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(168, 'duplicate_post_blacklist', '', 'yes'),
(169, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:"post";i:1;s:4:"page";}', 'yes'),
(170, 'duplicate_post_show_row', '1', 'yes'),
(171, 'duplicate_post_show_adminbar', '1', 'yes'),
(172, 'duplicate_post_show_submitbox', '1', 'yes'),
(178, 'wpseo_sitemap_1_cache_validator', 'eNGW', 'no'),
(179, 'wpseo_sitemap_page_cache_validator', '2VG9r', 'no'),
(182, 'wpseo_sitemap_revision_cache_validator', '4FXNo', 'no'),
(223, 'woocommerce_default_country', 'HK:KOWLOON', 'yes'),
(224, 'woocommerce_allowed_countries', 'all', 'yes'),
(225, 'woocommerce_all_except_countries', '', 'yes'),
(226, 'woocommerce_specific_allowed_countries', '', 'yes'),
(227, 'woocommerce_ship_to_countries', '', 'yes'),
(228, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(229, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(230, 'woocommerce_calc_taxes', 'no', 'yes'),
(231, 'woocommerce_demo_store', 'no', 'yes'),
(232, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(233, 'woocommerce_currency', 'USD', 'yes'),
(234, 'woocommerce_currency_pos', 'left', 'yes'),
(235, 'woocommerce_price_thousand_sep', ',', 'yes'),
(236, 'woocommerce_price_decimal_sep', '.', 'yes'),
(237, 'woocommerce_price_num_decimals', '2', 'yes'),
(238, 'woocommerce_weight_unit', 'g', 'yes'),
(239, 'woocommerce_dimension_unit', 'mm', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(240, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(241, 'woocommerce_review_rating_required', 'yes', 'no'),
(242, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(243, 'woocommerce_review_rating_verification_required', 'yes', 'no'),
(244, 'woocommerce_shop_page_id', '8', 'yes'),
(245, 'woocommerce_shop_page_display', '', 'yes'),
(246, 'woocommerce_category_archive_display', '', 'yes'),
(247, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(248, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(249, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(250, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(251, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(252, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(253, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(254, 'woocommerce_manage_stock', 'yes', 'yes'),
(255, 'woocommerce_hold_stock_minutes', '60', 'no'),
(256, 'woocommerce_notify_low_stock', 'yes', 'no'),
(257, 'woocommerce_notify_no_stock', 'yes', 'no'),
(258, 'woocommerce_stock_email_recipient', 'ron@c3yoyodesign.com', 'no'),
(259, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(260, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(261, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(262, 'woocommerce_stock_format', 'low_amount', 'yes'),
(263, 'woocommerce_file_download_method', 'force', 'no'),
(264, 'woocommerce_downloads_require_login', 'no', 'no'),
(265, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(266, 'woocommerce_prices_include_tax', 'no', 'yes'),
(267, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(268, 'woocommerce_shipping_tax_class', '', 'yes'),
(269, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(270, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(271, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(272, 'woocommerce_tax_display_cart', 'excl', 'no'),
(273, 'woocommerce_price_display_suffix', '', 'yes'),
(274, 'woocommerce_tax_total_display', 'itemized', 'no'),
(275, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(276, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(277, 'woocommerce_ship_to_destination', 'billing', 'no'),
(278, 'woocommerce_enable_coupons', 'yes', 'yes'),
(279, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(280, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(281, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(282, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(283, 'woocommerce_cart_page_id', '9', 'yes'),
(284, 'woocommerce_checkout_page_id', '10', 'yes'),
(285, 'woocommerce_terms_page_id', '', 'no'),
(286, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(287, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(288, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(289, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(290, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(291, 'woocommerce_myaccount_page_id', '11', 'yes'),
(292, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(293, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(294, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(295, 'woocommerce_registration_generate_username', 'yes', 'no'),
(296, 'woocommerce_registration_generate_password', 'no', 'no'),
(297, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(298, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(299, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(300, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(301, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(302, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(303, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(304, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(305, 'woocommerce_email_from_name', 'C3yoyodesign', 'no'),
(306, 'woocommerce_email_from_address', 'no-reply@c3yoyodesign.com', 'no'),
(307, 'woocommerce_email_header_image', '/wp-content/themes/c3yoyodesign/assets/img/logo_email.png', 'no'),
(308, 'woocommerce_email_footer_text', 'C3yoyodesign - Powered by WooCommerce', 'no'),
(309, 'woocommerce_email_base_color', '#000000', 'no'),
(310, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(311, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(312, 'woocommerce_email_text_color', '#505050', 'no'),
(313, 'woocommerce_api_enabled', 'yes', 'yes'),
(319, 'wpseo_sitemap_product_type_cache_validator', 'eNHT', 'no'),
(320, 'woocommerce_admin_notices', 'a:1:{i:0;s:13:"theme_support";}', 'yes'),
(322, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(323, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(324, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(325, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(326, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(327, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(328, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(329, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(330, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(331, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(332, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(333, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(334, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(339, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(358, '_transient_shipping-transient-version', '1480329823', 'yes'),
(421, 'wpseo_sitemap_post_cache_validator', '2VlQD', 'no'),
(422, 'wpseo_sitemap_category_cache_validator', '4FXMV', 'no'),
(516, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1480331767;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(517, 'current_theme', 'Roots Theme', 'yes'),
(518, 'theme_mods_c3yoyodesign', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:18:"primary_navigation";i:6;s:13:"function_menu";i:12;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(519, 'theme_switched', '', 'yes'),
(522, 'roots_theme_activation_options', 'a:4:{s:17:"create_front_page";b:0;s:26:"change_permalink_structure";b:0;s:23:"create_navigation_menus";b:0;s:31:"add_pages_to_primary_navigation";b:0;}', 'yes'),
(526, 'wpseo_sitemap_nav_menu_cache_validator', '3KbeG', 'no'),
(527, 'wpseo_sitemap_nav_menu_item_cache_validator', '3Kbf5', 'no'),
(569, 'wetfgf_plugin_notice_shown', 'true', 'yes'),
(607, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(608, 'wpseo_sitemap_23_cache_validator', 'jEDq', 'no'),
(609, 'wpseo_sitemap_24_cache_validator', 'jEE5', 'no'),
(610, 'wpseo_sitemap_25_cache_validator', '44vht', 'no'),
(626, 'wpseo_sitemap_22_cache_validator', '46J64', 'no'),
(642, 'wpseo_sitemap_28_cache_validator', '47CZt', 'no'),
(743, 'wpseo_sitemap_attachment_cache_validator', '4EQnw', 'no'),
(763, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5T1RRMU1qSjhkSGx3WlQxd1pYSnpiMjVoYkh4a1lYUmxQVEl3TVRZdE1URXRNamtnTURnNk16TTZNelU9IjtzOjM6InVybCI7czoyOToiaHR0cDovL2xvY2FsLmMzeW95b2Rlc2lnbi5jb20iO30=', 'yes'),
(791, 'wpseo_sitemap_acf-field-group_cache_validator', '49foN', 'no'),
(801, 'wpseo_sitemap_acf-field_cache_validator', '46aGu', 'no'),
(869, 'wpseo_sitemap_team-member_cache_validator', '4831x', 'no'),
(1030, 'category_children', 'a:0:{}', 'yes'),
(1189, 'ahab_plugin_options', 'a:5:{s:5:"speed";s:3:"200";s:5:"delay";s:4:"1500";s:8:"interval";s:3:"100";s:6:"mobile";s:1:"1";s:5:"admin";s:1:"2";}', 'yes'),
(1190, 'wpseo_sitemap_cache_validator_global', '2Nlut', 'no'),
(1218, 'gadash_options', '{"ga_dash_clientid":"","ga_dash_clientsecret":"","ga_dash_access_front":["administrator"],"ga_dash_access_back":["administrator"],"ga_dash_tableid_jail":"","ga_dash_style":"#1e73be","switch_profile":0,"ga_dash_cachetime":3600,"ga_dash_tracking":1,"ga_dash_tracking_type":"universal","ga_dash_default_ua":"","ga_dash_anonim":0,"ga_dash_userapi":0,"ga_event_tracking":0,"ga_event_downloads":"zip|mp3*|mpe*g|pdf|docx*|pptx*|xlsx*|rar*","ga_track_exclude":[],"ga_target_geomap":"","ga_realtime_pages":10,"ga_dash_token":"","ga_dash_profile_list":[],"ga_enhanced_links":0,"ga_dash_remarketing":0,"ga_dash_network":0,"ga_dash_adsense":0,"ga_speed_samplerate":1,"ga_event_bouncerate":0,"ga_crossdomain_tracking":0,"ga_crossdomain_list":"","ga_author_dimindex":0,"ga_category_dimindex":0,"ga_tag_dimindex":0,"ga_user_dimindex":0,"ga_pubyear_dimindex":0,"ga_pubyearmonth_dimindex":0,"ga_aff_tracking":0,"ga_event_affiliates":"\\/out\\/","automatic_updates_minorversion":1,"backend_item_reports":1,"frontend_item_reports":0,"dashboard_widget":1,"api_backoff":0,"ga_cookiedomain":"","ga_cookiename":"","ga_cookieexpires":"","ga_dash_excludesa":0,"ga_hash_tracking":0,"pagetitle_404":"Page Not Found","maps_api_key":""}', 'yes'),
(1219, 'gadwp_version', '4.9.6', 'yes'),
(1220, 'gadwp_got_updated', '1', 'yes'),
(1221, 'widget_gadwp-frontwidget-report', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1689, 'db_upgraded', '', 'yes'),
(1691, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.7.2-partial-0.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.2";s:7:"version";s:5:"4.7.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:3:"4.7";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.7.2-partial-0.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.2-rollback-0.zip";}s:7:"current";s:5:"4.7.2";s:7:"version";s:5:"4.7.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:3:"4.7";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1486341047;s:15:"version_checked";s:3:"4.7";s:12:"translations";a:0:{}}', 'no'),
(1696, 'can_compress_scripts', '1', 'no'),
(1709, 'wpseo_sitemap_line-up_cache_validator', 'nX7c', 'no'),
(1720, 'wpseo_sitemap_c3_product_cache_validator', '4gVzg', 'no'),
(1737, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1486341057;s:7:"checked";a:4:{s:12:"c3yoyodesign";s:5:"7.0.3";s:13:"twentyfifteen";s:3:"1.7";s:14:"twentyfourteen";s:3:"1.9";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(1741, 'wpseo_sitemap_country_cache_validator', '4832n', 'no'),
(1765, 'wpseo_taxonomy_meta', 'a:1:{s:7:"country";a:9:{i:25;a:2:{s:13:"wpseo_linkdex";s:2:"15";s:19:"wpseo_content_score";s:2:"30";}i:19;a:2:{s:13:"wpseo_linkdex";s:2:"15";s:19:"wpseo_content_score";s:2:"30";}i:20;a:2:{s:13:"wpseo_linkdex";s:2:"15";s:19:"wpseo_content_score";s:2:"30";}i:17;a:2:{s:13:"wpseo_linkdex";s:2:"15";s:19:"wpseo_content_score";s:2:"30";}i:21;a:2:{s:13:"wpseo_linkdex";s:2:"15";s:19:"wpseo_content_score";s:2:"30";}i:18;a:2:{s:13:"wpseo_linkdex";s:2:"15";s:19:"wpseo_content_score";s:2:"30";}i:22;a:2:{s:13:"wpseo_linkdex";s:2:"15";s:19:"wpseo_content_score";s:2:"30";}i:23;a:2:{s:13:"wpseo_linkdex";s:2:"15";s:19:"wpseo_content_score";s:2:"30";}i:24;a:2:{s:13:"wpseo_linkdex";s:2:"15";s:19:"wpseo_content_score";s:2:"30";}}}', 'yes'),
(1895, 'fresh_site', '0', 'yes'),
(1962, 'line-up_children', 'a:0:{}', 'yes'),
(2060, 'wpseo_sitemap_product_cache_validator', 'eNHq', 'no'),
(2066, 'wpseo_sitemap_product_cat_cache_validator', 'eNIe', 'no'),
(2078, 'product_cat_children', 'a:0:{}', 'yes'),
(2103, '_transient_product_query-transient-version', '1486024918', 'yes'),
(2104, 'wpseo_sitemap_product_variation_cache_validator', '3Fn9A', 'no'),
(2108, '_transient_product-transient-version', '1486024918', 'yes'),
(2827, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:0;s:3:"all";i:0;s:9:"moderated";i:0;s:8:"approved";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(2870, 'duplicate_post_copythumbnail', '1', 'yes'),
(2871, 'duplicate_post_copytemplate', '1', 'yes'),
(2872, 'duplicate_post_copyformat', '1', 'yes'),
(2873, 'duplicate_post_copyauthor', '0', 'yes'),
(2874, 'duplicate_post_copymenuorder', '1', 'yes'),
(2875, 'duplicate_post_show_bulkactions', '1', 'yes'),
(2876, 'duplicate_post_version', '3.1.2', 'no'),
(2877, 'duplicate_post_show_notice', '0', 'no'),
(2888, 'newsletter_logger_secret', 'fa246d02', 'yes'),
(2889, 'newsletter_dismissed', 'a:1:{s:6:"wpmail";i:1;}', 'yes'),
(2890, 'newsletter_main', 'a:8:{s:11:"return_path";s:0:"";s:8:"reply_to";s:0:"";s:12:"sender_email";s:33:"newsletter@local.c3yoyodesign.com";s:11:"sender_name";s:12:"C3yoyodesign";s:6:"editor";i:0;s:13:"scheduler_max";i:100;s:9:"phpmailer";i:0;s:7:"api_key";s:10:"108fe11500";}', 'yes'),
(2891, 'newsletter_extension_versions', 'a:0:{}', 'no'),
(2892, 'newsletter_main_smtp', 'a:7:{s:7:"enabled";i:0;s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"port";i:25;s:6:"secure";s:0:"";s:12:"ssl_insecure";i:0;}', 'yes'),
(2893, 'newsletter_main_version', '1.2.9', 'yes'),
(2894, 'newsletter', 'a:19:{s:14:"noconfirmation";i:0;s:12:"profile_text";s:301:"<p>Change your subscription preferences to get what you are most interested in.</p>\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\n    </p>\n    {profile_form}\n    <p>To cancel your subscription, <a href=''{unsubscription_confirm_url}''>click here</a>.</p>";s:21:"profile_email_changed";s:123:"Your email has been changed, an activation email has been sent. Please follow the instructions to activate the new address.";s:13:"profile_error";s:147:"Your email is not valid or already in use by another subscriber or another generic error has been found. Check your data or contact the site owner.";s:10:"error_text";s:173:"<p>This subscription can''t be completed, sorry. The email address is blocked or already subscribed. You should contact the owner to unlock that email address. Thank you.</p>";s:17:"subscription_text";s:19:"{subscription_form}";s:17:"confirmation_text";s:263:"<p>You have successfully subscribed to the newsletter. You''ll\nreceive a confirmation email in a few minutes. Please follow the\nlink to confirm your subscription. If the email takes\nmore than 15 minutes to appear in your mailbox, please check\nyour spam folder.</p>";s:20:"confirmation_subject";s:53:"Please confirm subscription - {blog_title} newsletter";s:21:"confirmation_tracking";s:0:"";s:20:"confirmation_message";s:424:"<p>Hi {name},</p>\n<p>A newsletter subscription request for this email address was\nreceived. Please confirm it by <a href="{subscription_confirm_url}"><strong>clicking here</strong></a>. If you cannot\nclick the link, please use the following link:</p>\n\n<p>{subscription_confirm_url}</p>\n\n<p>If you did not make this subscription request, just ignore this\nmessage.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>";s:14:"confirmed_text";s:62:"<p>Your subscription has been confirmed! Thank you {name}!</p>";s:17:"confirmed_subject";s:22:"Welcome aboard, {name}";s:17:"confirmed_message";s:277:"<p>This message confirms your subscription to the {blog_title} newsletter.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>\n<p>To unsubscribe, <a href=''{unsubscription_url}''>click here</a>.  To change subscriber options,\n<a href=''{profile_url}''>click here</a>.</p>";s:18:"confirmed_tracking";s:0:"";s:19:"unsubscription_text";s:111:"<p>Please confirm that you want to unsubscribe by <a href=''{unsubscription_confirm_url}''>clicking here</a>.</p>";s:25:"unsubscription_error_text";s:118:"<p>The subscriber was not found, it probably has already been removed. No further actions are required. Thank you.</p>";s:17:"unsubscribed_text";s:53:"<p>Your subscription has been deleted. Thank you.</p>";s:20:"unsubscribed_subject";s:8:"Goodbye!";s:20:"unsubscribed_message";s:195:"<p>This message confirms that you have unsubscribed from the {blog_title} newsletter.</p>\n<p>You''re welcome to sign up again anytime.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>";}', 'yes'),
(2895, 'newsletter_profile', 'a:202:{s:5:"email";s:5:"Email";s:11:"email_error";s:24:"The email is not correct";s:4:"name";s:4:"Name";s:10:"name_error";s:23:"The name is not correct";s:11:"name_status";i:0;s:10:"name_rules";i:0;s:7:"surname";s:9:"Last name";s:13:"surname_error";s:28:"The last name is not correct";s:14:"surname_status";i:0;s:3:"sex";s:3:"I''m";s:7:"privacy";s:51:"Subscribing I accept the privacy rules of this site";s:13:"privacy_error";s:37:"You must accept the privacy statement";s:14:"privacy_status";i:0;s:11:"privacy_url";s:0:"";s:9:"subscribe";s:9:"Subscribe";s:4:"save";s:4:"Save";s:12:"title_female";s:4:"Mrs.";s:10:"title_male";s:3:"Mr.";s:10:"title_none";s:4:"Dear";s:8:"sex_male";s:3:"Man";s:10:"sex_female";s:5:"Woman";s:8:"sex_none";s:4:"None";s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;s:16:"profile_1_status";i:0;s:9:"profile_1";s:0:"";s:14:"profile_1_type";s:4:"text";s:21:"profile_1_placeholder";s:0:"";s:15:"profile_1_rules";i:0;s:17:"profile_1_options";s:0:"";s:16:"profile_2_status";i:0;s:9:"profile_2";s:0:"";s:14:"profile_2_type";s:4:"text";s:21:"profile_2_placeholder";s:0:"";s:15:"profile_2_rules";i:0;s:17:"profile_2_options";s:0:"";s:16:"profile_3_status";i:0;s:9:"profile_3";s:0:"";s:14:"profile_3_type";s:4:"text";s:21:"profile_3_placeholder";s:0:"";s:15:"profile_3_rules";i:0;s:17:"profile_3_options";s:0:"";s:16:"profile_4_status";i:0;s:9:"profile_4";s:0:"";s:14:"profile_4_type";s:4:"text";s:21:"profile_4_placeholder";s:0:"";s:15:"profile_4_rules";i:0;s:17:"profile_4_options";s:0:"";s:16:"profile_5_status";i:0;s:9:"profile_5";s:0:"";s:14:"profile_5_type";s:4:"text";s:21:"profile_5_placeholder";s:0:"";s:15:"profile_5_rules";i:0;s:17:"profile_5_options";s:0:"";s:16:"profile_6_status";i:0;s:9:"profile_6";s:0:"";s:14:"profile_6_type";s:4:"text";s:21:"profile_6_placeholder";s:0:"";s:15:"profile_6_rules";i:0;s:17:"profile_6_options";s:0:"";s:16:"profile_7_status";i:0;s:9:"profile_7";s:0:"";s:14:"profile_7_type";s:4:"text";s:21:"profile_7_placeholder";s:0:"";s:15:"profile_7_rules";i:0;s:17:"profile_7_options";s:0:"";s:16:"profile_8_status";i:0;s:9:"profile_8";s:0:"";s:14:"profile_8_type";s:4:"text";s:21:"profile_8_placeholder";s:0:"";s:15:"profile_8_rules";i:0;s:17:"profile_8_options";s:0:"";s:16:"profile_9_status";i:0;s:9:"profile_9";s:0:"";s:14:"profile_9_type";s:4:"text";s:21:"profile_9_placeholder";s:0:"";s:15:"profile_9_rules";i:0;s:17:"profile_9_options";s:0:"";s:17:"profile_10_status";i:0;s:10:"profile_10";s:0:"";s:15:"profile_10_type";s:4:"text";s:22:"profile_10_placeholder";s:0:"";s:16:"profile_10_rules";i:0;s:18:"profile_10_options";s:0:"";s:17:"profile_11_status";i:0;s:10:"profile_11";s:0:"";s:15:"profile_11_type";s:4:"text";s:22:"profile_11_placeholder";s:0:"";s:16:"profile_11_rules";i:0;s:18:"profile_11_options";s:0:"";s:17:"profile_12_status";i:0;s:10:"profile_12";s:0:"";s:15:"profile_12_type";s:4:"text";s:22:"profile_12_placeholder";s:0:"";s:16:"profile_12_rules";i:0;s:18:"profile_12_options";s:0:"";s:17:"profile_13_status";i:0;s:10:"profile_13";s:0:"";s:15:"profile_13_type";s:4:"text";s:22:"profile_13_placeholder";s:0:"";s:16:"profile_13_rules";i:0;s:18:"profile_13_options";s:0:"";s:17:"profile_14_status";i:0;s:10:"profile_14";s:0:"";s:15:"profile_14_type";s:4:"text";s:22:"profile_14_placeholder";s:0:"";s:16:"profile_14_rules";i:0;s:18:"profile_14_options";s:0:"";s:17:"profile_15_status";i:0;s:10:"profile_15";s:0:"";s:15:"profile_15_type";s:4:"text";s:22:"profile_15_placeholder";s:0:"";s:16:"profile_15_rules";i:0;s:18:"profile_15_options";s:0:"";s:17:"profile_16_status";i:0;s:10:"profile_16";s:0:"";s:15:"profile_16_type";s:4:"text";s:22:"profile_16_placeholder";s:0:"";s:16:"profile_16_rules";i:0;s:18:"profile_16_options";s:0:"";s:17:"profile_17_status";i:0;s:10:"profile_17";s:0:"";s:15:"profile_17_type";s:4:"text";s:22:"profile_17_placeholder";s:0:"";s:16:"profile_17_rules";i:0;s:18:"profile_17_options";s:0:"";s:17:"profile_18_status";i:0;s:10:"profile_18";s:0:"";s:15:"profile_18_type";s:4:"text";s:22:"profile_18_placeholder";s:0:"";s:16:"profile_18_rules";i:0;s:18:"profile_18_options";s:0:"";s:17:"profile_19_status";i:0;s:10:"profile_19";s:0:"";s:15:"profile_19_type";s:4:"text";s:22:"profile_19_placeholder";s:0:"";s:16:"profile_19_rules";i:0;s:18:"profile_19_options";s:0:"";s:17:"profile_20_status";i:0;s:10:"profile_20";s:0:"";s:15:"profile_20_type";s:4:"text";s:22:"profile_20_placeholder";s:0:"";s:16:"profile_20_rules";i:0;s:18:"profile_20_options";s:0:"";}', 'yes'),
(2896, 'newsletter_subscription_lists', 'a:60:{s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;}', 'yes'),
(2897, 'newsletter_subscription_template', 'a:2:{s:7:"enabled";i:0;s:8:"template";s:1829:"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type="text/css" media="all">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n        </style>\n    </head>\n    \n    <!-- KEEP THE TAMPLE SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style="margin: 0;">\n        <!-- Top title with dark background #333, font color #fff, font size 32px -->\n        <table style="background-color: #333; width: 100%; color: #fff; font-size: 32px">\n            <tr>\n                <td style="padding: 25px; text-align: center">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style="background-color: #eee; width: 100%;">\n            <tr>\n                <td align="center"  style="padding: 25px;">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style="background-color: #fff; width: 500px; border: 1px solid #ddd;">\n                        <tr>\n                            <td style="padding: 25px; font-size: 16px; font-family: sans-serif">\n                                <!-- The {message} tag is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n                                \n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>";}', 'no'),
(2898, 'newsletter_subscription_version', '2.0.3', 'yes'),
(2899, 'newsletter_emails', 'a:1:{s:5:"theme";s:7:"default";}', 'yes'),
(2900, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(2901, 'newsletter_emails_version', '1.1.5', 'yes'),
(2902, 'newsletter_users', 'a:0:{}', 'yes'),
(2903, 'newsletter_users_version', '1.0.6', 'yes'),
(2904, 'newsletter_statistics', 'a:1:{s:3:"key";s:32:"1670b7009d2352b286926fc775953afe";}', 'yes'),
(2906, 'newsletter_statistics_version', '1.1.6', 'yes'),
(2909, 'newsletter_lock', 'a:4:{s:3:"ids";s:0:"";s:3:"url";s:0:"";s:7:"message";s:89:"<p>Subscribe to our newsletter and get access to the full article.</p>[subscription_form]";s:7:"enabled";i:0;}', 'yes'),
(2910, 'newsletter_lock_version', '1.0.3', 'yes'),
(2913, 'newsletter_wp', 'a:5:{s:15:"subscribe_label";s:24:"Subscribe our newsletter";s:9:"subscribe";i:0;s:12:"confirmation";i:0;s:7:"welcome";i:0;s:6:"delete";i:0;}', 'yes'),
(2914, 'newsletter_wp_version', '1.0.1', 'yes'),
(2917, 'widget_newsletterwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2918, 'widget_newsletterwidgetminimal', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2920, 'newsletter_diagnostic_cron_calls', 'a:100:{i:0;i:1486032735;i:1;i:1486033012;i:2;i:1486033297;i:3;i:1486033583;i:4;i:1486033897;i:5;i:1486034018;i:6;i:1486034181;i:7;i:1486034529;i:8;i:1486034783;i:9;i:1486035085;i:10;i:1486035408;i:11;i:1486037859;i:12;i:1486038162;i:13;i:1486038453;i:14;i:1486038818;i:15;i:1486039020;i:16;i:1486039436;i:17;i:1486039641;i:18;i:1486043752;i:19;i:1486043790;i:20;i:1486044166;i:21;i:1486044545;i:22;i:1486044900;i:23;i:1486045080;i:24;i:1486045320;i:25;i:1486046296;i:26;i:1486047008;i:27;i:1486047128;i:28;i:1486047368;i:29;i:1486047488;i:30;i:1486047696;i:31;i:1486048056;i:32;i:1486048314;i:33;i:1486048599;i:34;i:1486048889;i:35;i:1486049199;i:36;i:1486049559;i:37;i:1486049799;i:38;i:1486050149;i:39;i:1486050449;i:40;i:1486101678;i:41;i:1486104233;i:42;i:1486104388;i:43;i:1486104815;i:44;i:1486105063;i:45;i:1486105303;i:46;i:1486105663;i:47;i:1486105903;i:48;i:1486106263;i:49;i:1486106503;i:50;i:1486106863;i:51;i:1486107103;i:52;i:1486107463;i:53;i:1486107703;i:54;i:1486108063;i:55;i:1486108303;i:56;i:1486108423;i:57;i:1486108663;i:58;i:1486108903;i:59;i:1486109189;i:60;i:1486109503;i:61;i:1486109841;i:62;i:1486110103;i:63;i:1486110405;i:64;i:1486110737;i:65;i:1486110995;i:66;i:1486111300;i:67;i:1486111605;i:68;i:1486111938;i:69;i:1486112034;i:70;i:1486112238;i:71;i:1486112554;i:72;i:1486112838;i:73;i:1486113198;i:74;i:1486113438;i:75;i:1486113681;i:76;i:1486113987;i:77;i:1486114337;i:78;i:1486114652;i:79;i:1486114892;i:80;i:1486115576;i:81;i:1486115729;i:82;i:1486116060;i:83;i:1486116214;i:84;i:1486116659;i:85;i:1486116779;i:86;i:1486116992;i:87;i:1486117313;i:88;i:1486117616;i:89;i:1486117926;i:90;i:1486117990;i:91;i:1486118230;i:92;i:1486118350;i:93;i:1486341044;i:94;i:1486341175;i:95;i:1486341415;i:96;i:1486341775;i:97;i:1486342015;i:98;i:1486342375;i:99;i:1486342590;}', 'no'),
(3066, 'newsletter_diagnostic_cron_data', 'a:3:{s:4:"mean";d:3097.5500000000001818989403545856475830078125;s:3:"max";i:222694;s:3:"min";i:38;}', 'no'),
(3110, 'wpseo_sitemap_137_cache_validator', '2xn6m', 'no'),
(3134, 'country_children', 'a:0:{}', 'yes'),
(3548, 'wpseo_sitemap_160_cache_validator', '4EFHJ', 'no'),
(3551, 'wpseo_sitemap_163_cache_validator', '4F4pP', 'no'),
(3554, 'wpseo_sitemap_165_cache_validator', '4FqFf', 'no'),
(3556, 'wpseo_sitemap_167_cache_validator', '4Fuiq', 'no'),
(3558, 'wpseo_sitemap_post_tag_cache_validator', 'noFR', 'no'),
(3696, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1484058160', 'no'),
(3697, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6130";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3761";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3755";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3274";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2870";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2562";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2237";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2158";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2113";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"2107";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2096";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2056";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1987";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1958";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1773";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1668";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1646";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1473";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1390";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1304";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1302";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1158";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1141";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1076";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1029";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1027";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"977";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"974";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"971";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"941";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"935";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"918";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"867";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"862";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"862";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"829";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"791";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"790";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"790";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"772";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"767";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"761";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"751";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"751";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"747";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"737";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"735";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"731";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"724";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"711";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"711";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"661";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"656";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"650";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"641";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"638";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"625";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"620";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"620";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"616";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"603";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"593";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"588";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"586";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"585";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"574";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"558";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"557";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"552";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"549";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"544";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"543";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"535";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"525";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"521";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"518";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"509";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"502";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"488";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"472";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"472";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"468";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"467";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"464";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"452";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"451";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"444";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"437";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"437";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"435";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"434";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"428";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"427";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"424";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"424";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"423";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"423";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"420";}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";s:3:"418";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"416";}}', 'no'),
(3700, 'wpo_wcpdf_version', '1.5.38', 'yes'),
(3701, 'wpo_wcpdf_general_settings', 'a:1:{s:16:"download_display";s:8:"download";}', 'yes'),
(3702, 'wpo_wcpdf_template_settings', 'a:2:{s:10:"paper_size";s:2:"a4";s:13:"template_path";s:107:"C:\\xampp\\htdocs\\c3yoyodesign\\wp-content\\plugins\\woocommerce-pdf-invoices-packing-slips/templates/pdf/Simple";}', 'yes'),
(3703, 'wpo_wcpdf_debug_settings', 'a:0:{}', 'yes'),
(3707, 'wppp_dropdown_location', 'topbottom', 'yes'),
(3708, 'wppp_dropdown_options', '15 20 30 -1', 'yes'),
(3709, 'wppp_default_ppp', '15', 'yes'),
(3710, 'wppp_shop_columns', '4', 'yes'),
(3711, 'wppp_return_to_first', 'yes', 'yes'),
(3712, 'wppp_method', 'post', 'yes'),
(3713, 'wppp_version', '1.2.2', 'yes'),
(3716, 'widget_woof_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(3717, 'woof_first_init', '1', 'yes'),
(3718, 'woof_set_automatically', '0', 'yes'),
(3719, 'woof_autosubmit', '1', 'yes'),
(3720, 'woof_show_count', '1', 'yes'),
(3721, 'woof_show_count_dynamic', '0', 'yes'),
(3722, 'woof_hide_dynamic_empty_pos', '0', 'yes'),
(3723, 'woof_try_ajax', '0', 'yes'),
(3724, 'woof_checkboxes_slide', '1', 'yes'),
(3725, 'woof_hide_red_top_panel', '0', 'yes'),
(3726, 'woof_filter_btn_txt', '', 'yes'),
(3727, 'woof_reset_btn_txt', '', 'yes'),
(3728, 'woof_settings', 'a:2:{s:10:"use_chosen";i:1;s:14:"non_latin_mode";i:1;}', 'yes'),
(3744, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:20:"ron@c3yoyodesign.com";s:7:"version";s:5:"4.7.1";s:9:"timestamp";i:1485179214;}', 'no'),
(3767, '_transient_timeout_wc_product_children_96', '1488093772', 'no'),
(3768, '_transient_wc_product_children_96', 'a:2:{s:7:"visible";a:3:{i:0;i:98;i:1;i:99;i:2;i:100;}s:3:"all";a:3:{i:0;i:98;i:1;i:99;i:2;i:100;}}', 'no'),
(3769, '_transient_timeout_wc_var_prices_96', '1488093772', 'no'),
(3770, '_transient_wc_var_prices_96', '{"f9e544f77b7eac7add281ef28ca5559f":{"price":{"100":"45.00","99":"45.00","98":"45.00"},"regular_price":{"100":"45.00","99":"45.00","98":"45.00"},"sale_price":{"100":"45.00","99":"45.00","98":"45.00"}},"e1b88e1c9a8573a0fff4a38a491fcd6d":{"price":{"100":"45.00","99":"45.00","98":"45.00"},"regular_price":{"100":"45.00","99":"45.00","98":"45.00"},"sale_price":{"100":"45.00","99":"45.00","98":"45.00"}}}', 'no'),
(3771, '_transient_timeout_wc_product_children_90', '1488093772', 'no'),
(3772, '_transient_wc_product_children_90', 'a:2:{s:7:"visible";a:4:{i:0;i:92;i:1;i:93;i:2;i:94;i:3;i:95;}s:3:"all";a:4:{i:0;i:92;i:1;i:93;i:2;i:94;i:3;i:95;}}', 'no'),
(3773, '_transient_timeout_wc_var_prices_90', '1488093772', 'no'),
(3774, '_transient_wc_var_prices_90', '{"f9e544f77b7eac7add281ef28ca5559f":{"price":{"95":"45.00","94":"45.00","93":"45.00","92":"45.00"},"regular_price":{"95":"45.00","94":"45.00","93":"45.00","92":"45.00"},"sale_price":{"95":"45.00","94":"45.00","93":"45.00","92":"45.00"}},"e1b88e1c9a8573a0fff4a38a491fcd6d":{"price":{"95":"45.00","94":"45.00","93":"45.00","92":"45.00"},"regular_price":{"95":"45.00","94":"45.00","93":"45.00","92":"45.00"},"sale_price":{"95":"45.00","94":"45.00","93":"45.00","92":"45.00"}}}', 'no'),
(3775, '_transient_timeout_wc_product_children_85', '1488093773', 'no'),
(3776, '_transient_wc_product_children_85', 'a:2:{s:7:"visible";a:3:{i:0;i:87;i:1;i:88;i:2;i:89;}s:3:"all";a:3:{i:0;i:87;i:1;i:88;i:2;i:89;}}', 'no'),
(3777, '_transient_timeout_wc_var_prices_85', '1488093773', 'no'),
(3778, '_transient_wc_var_prices_85', '{"f9e544f77b7eac7add281ef28ca5559f":{"price":{"89":"130.00","88":"130.00","87":"130.00"},"regular_price":{"89":"130.00","88":"130.00","87":"130.00"},"sale_price":{"89":"130.00","88":"130.00","87":"130.00"}},"e1b88e1c9a8573a0fff4a38a491fcd6d":{"price":{"89":"130.00","88":"130.00","87":"130.00"},"regular_price":{"89":"130.00","88":"130.00","87":"130.00"},"sale_price":{"89":"130.00","88":"130.00","87":"130.00"}}}', 'no'),
(3779, '_site_transient_timeout_browser_624a74c077a47cf0aab8606325ccd24d', '1486106632', 'no'),
(3780, '_site_transient_browser_624a74c077a47cf0aab8606325ccd24d', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"50.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(3917, '_transient_timeout_external_ip_address_127.0.0.1', '1486527741', 'no'),
(3918, '_transient_external_ip_address_127.0.0.1', '503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', 'no'),
(3970, '_site_transient_timeout_browser_f731f7616ab74b84eb6e37a4dee2a379', '1486619570', 'no'),
(3971, '_site_transient_browser_f731f7616ab74b84eb6e37a4dee2a379', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"51.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(3990, '_transient_timeout_plugin_slugs', '1486203955', 'no'),
(3991, '_transient_plugin_slugs', 'a:19:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:43:"auto-hide-admin-bar/auto-hide-admin-bar.php";i:2;s:33:"duplicate-post/duplicate-post.php";i:3;s:43:"google-analytics-dashboard-for-wp/gadwp.php";i:4;s:33:"hide-admin-bar/hide_admin_bar.php";i:5;s:21:"newsletter/plugin.php";i:6;s:42:"one-click-order-reorder/ced-click-n-go.php";i:7;s:45:"quick-view-woocommerce/xoo-quickview-main.php";i:8;s:45:"simple-page-ordering/simple-page-ordering.php";i:9;s:37:"tinymce-advanced/tinymce-advanced.php";i:10;s:27:"woocommerce/woocommerce.php";i:11;s:62:"woocommerce-dynamic-gallery/wc_dynamic_gallery_woocommerce.php";i:12;s:97:"woo-ecommerce-tracking-for-google-and-facebook/woo-ecommerce-tracking-for-google-and-facebook.php";i:13;s:51:"woocommerce-image-hover/woocommerce-image-hover.php";i:14;s:80:"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php";i:15;s:63:"woocommerce-products-per-page/woocommerce-products-per-page.php";i:16;s:65:"woocommerce-quantity-increment/woocommerce-quantity-increment.php";i:17;s:37:"woocommerce-products-filter/index.php";i:18;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(4042, '_transient_timeout_wc_term_counts', '1488705637', 'no'),
(4043, '_transient_wc_term_counts', 'a:2:{i:33;s:1:"3";i:31;s:1:"2";}', 'no'),
(4044, '_transient_timeout_wc_product_children_103', '1488616927', 'no'),
(4045, '_transient_wc_product_children_103', 'a:2:{s:7:"visible";a:2:{i:0;i:105;i:1;i:106;}s:3:"all";a:2:{i:0;i:105;i:1;i:106;}}', 'no'),
(4046, '_transient_timeout_wc_var_prices_103', '1488616927', 'no'),
(4047, '_transient_wc_var_prices_103', '{"f9e544f77b7eac7add281ef28ca5559f":{"price":{"106":"18.00","105":"18.00"},"regular_price":{"106":"18.00","105":"18.00"},"sale_price":{"106":"18.00","105":"18.00"}},"e1b88e1c9a8573a0fff4a38a491fcd6d":{"price":{"106":"18.00","105":"18.00"},"regular_price":{"106":"18.00","105":"18.00"},"sale_price":{"106":"18.00","105":"18.00"}}}', 'no'),
(4048, '_transient_timeout_wc_related_103', '1486203536', 'no'),
(4049, '_transient_wc_related_103', 'a:2:{i:0;s:2:"90";i:1;s:2:"96";}', 'no'),
(4090, '_transient_timeout_wc_upgrade_notice_2.6.11', '1486117145', 'no'),
(4091, '_transient_wc_upgrade_notice_2.6.11', '', 'no'),
(4092, '_transient_timeout_wc_shipping_method_count_1_1480329823', '1488622862', 'no'),
(4093, '_transient_wc_shipping_method_count_1_1480329823', '0', 'no'),
(4197, 'xoo-qv-button-text', 'Quick View', 'yes'),
(4198, 'xoo-qv-button-fsize', '', 'yes'),
(4199, 'xoo-qv-button-position', 'woocommerce_before_shop_loop_item_title', 'yes'),
(4200, 'xoo-qv-button-color', '#370764', 'yes'),
(4201, 'xoo-qv-btn-icon', 'true', 'yes'),
(4202, 'xoo-qv-btn-iconc', '#ffffff', 'yes'),
(4203, 'xoo-qv-img-width', '100', 'yes'),
(4204, 'xoo-qv-gl-mobile', 'true', 'yes'),
(4205, 'xoo-qv-gl-anim', 'linear', 'yes'),
(4206, 'xoo-qv-gl-pbutton', 'true', 'yes'),
(4207, 'xoo-qv-gl-pbutton-text', 'Product Details', 'yes'),
(4208, 'xoo-qv-lb-enable', 'true', 'yes'),
(4209, 'xoo-qv-lb-title', 'true', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4230, 'woo_dynamic_gallery_google_font_list', 'a:712:{i:0;a:2:{s:4:"name";s:7:"ABeeZee";s:7:"variant";s:15:":regular,italic";}i:1;a:2:{s:4:"name";s:4:"Abel";s:7:"variant";s:8:":regular";}i:2;a:2:{s:4:"name";s:13:"Abril Fatface";s:7:"variant";s:8:":regular";}i:3;a:2:{s:4:"name";s:8:"Aclonica";s:7:"variant";s:8:":regular";}i:4;a:2:{s:4:"name";s:4:"Acme";s:7:"variant";s:8:":regular";}i:5;a:2:{s:4:"name";s:5:"Actor";s:7:"variant";s:8:":regular";}i:6;a:2:{s:4:"name";s:7:"Adamina";s:7:"variant";s:8:":regular";}i:7;a:2:{s:4:"name";s:10:"Advent Pro";s:7:"variant";s:32:":100,200,300,regular,500,600,700";}i:8;a:2:{s:4:"name";s:15:"Aguafina Script";s:7:"variant";s:8:":regular";}i:9;a:2:{s:4:"name";s:7:"Akronim";s:7:"variant";s:8:":regular";}i:10;a:2:{s:4:"name";s:6:"Aladin";s:7:"variant";s:8:":regular";}i:11;a:2:{s:4:"name";s:7:"Aldrich";s:7:"variant";s:8:":regular";}i:12;a:2:{s:4:"name";s:4:"Alef";s:7:"variant";s:12:":regular,700";}i:13;a:2:{s:4:"name";s:8:"Alegreya";s:7:"variant";s:43:":regular,italic,700,700italic,900,900italic";}i:14;a:2:{s:4:"name";s:11:"Alegreya SC";s:7:"variant";s:43:":regular,italic,700,700italic,900,900italic";}i:15;a:2:{s:4:"name";s:13:"Alegreya Sans";s:7:"variant";s:99:":100,100italic,300,300italic,regular,italic,500,500italic,700,700italic,800,800italic,900,900italic";}i:16;a:2:{s:4:"name";s:16:"Alegreya Sans SC";s:7:"variant";s:99:":100,100italic,300,300italic,regular,italic,500,500italic,700,700italic,800,800italic,900,900italic";}i:17;a:2:{s:4:"name";s:10:"Alex Brush";s:7:"variant";s:8:":regular";}i:18;a:2:{s:4:"name";s:13:"Alfa Slab One";s:7:"variant";s:8:":regular";}i:19;a:2:{s:4:"name";s:5:"Alice";s:7:"variant";s:8:":regular";}i:20;a:2:{s:4:"name";s:5:"Alike";s:7:"variant";s:8:":regular";}i:21;a:2:{s:4:"name";s:13:"Alike Angular";s:7:"variant";s:8:":regular";}i:22;a:2:{s:4:"name";s:5:"Allan";s:7:"variant";s:12:":regular,700";}i:23;a:2:{s:4:"name";s:7:"Allerta";s:7:"variant";s:8:":regular";}i:24;a:2:{s:4:"name";s:15:"Allerta Stencil";s:7:"variant";s:8:":regular";}i:25;a:2:{s:4:"name";s:6:"Allura";s:7:"variant";s:8:":regular";}i:26;a:2:{s:4:"name";s:8:"Almendra";s:7:"variant";s:29:":regular,italic,700,700italic";}i:27;a:2:{s:4:"name";s:16:"Almendra Display";s:7:"variant";s:8:":regular";}i:28;a:2:{s:4:"name";s:11:"Almendra SC";s:7:"variant";s:8:":regular";}i:29;a:2:{s:4:"name";s:8:"Amarante";s:7:"variant";s:8:":regular";}i:30;a:2:{s:4:"name";s:8:"Amaranth";s:7:"variant";s:29:":regular,italic,700,700italic";}i:31;a:2:{s:4:"name";s:9:"Amatic SC";s:7:"variant";s:12:":regular,700";}i:32;a:2:{s:4:"name";s:9:"Amethysta";s:7:"variant";s:8:":regular";}i:33;a:2:{s:4:"name";s:5:"Amiri";s:7:"variant";s:29:":regular,italic,700,700italic";}i:34;a:2:{s:4:"name";s:5:"Amita";s:7:"variant";s:12:":regular,700";}i:35;a:2:{s:4:"name";s:7:"Anaheim";s:7:"variant";s:8:":regular";}i:36;a:2:{s:4:"name";s:6:"Andada";s:7:"variant";s:8:":regular";}i:37;a:2:{s:4:"name";s:6:"Andika";s:7:"variant";s:8:":regular";}i:38;a:2:{s:4:"name";s:6:"Angkor";s:7:"variant";s:8:":regular";}i:39;a:2:{s:4:"name";s:24:"Annie Use Your Telescope";s:7:"variant";s:8:":regular";}i:40;a:2:{s:4:"name";s:13:"Anonymous Pro";s:7:"variant";s:29:":regular,italic,700,700italic";}i:41;a:2:{s:4:"name";s:5:"Antic";s:7:"variant";s:8:":regular";}i:42;a:2:{s:4:"name";s:12:"Antic Didone";s:7:"variant";s:8:":regular";}i:43;a:2:{s:4:"name";s:10:"Antic Slab";s:7:"variant";s:8:":regular";}i:44;a:2:{s:4:"name";s:5:"Anton";s:7:"variant";s:8:":regular";}i:45;a:2:{s:4:"name";s:6:"Arapey";s:7:"variant";s:15:":regular,italic";}i:46;a:2:{s:4:"name";s:7:"Arbutus";s:7:"variant";s:8:":regular";}i:47;a:2:{s:4:"name";s:12:"Arbutus Slab";s:7:"variant";s:8:":regular";}i:48;a:2:{s:4:"name";s:19:"Architects Daughter";s:7:"variant";s:8:":regular";}i:49;a:2:{s:4:"name";s:13:"Archivo Black";s:7:"variant";s:8:":regular";}i:50;a:2:{s:4:"name";s:14:"Archivo Narrow";s:7:"variant";s:29:":regular,italic,700,700italic";}i:51;a:2:{s:4:"name";s:5:"Arimo";s:7:"variant";s:29:":regular,italic,700,700italic";}i:52;a:2:{s:4:"name";s:8:"Arizonia";s:7:"variant";s:8:":regular";}i:53;a:2:{s:4:"name";s:6:"Armata";s:7:"variant";s:8:":regular";}i:54;a:2:{s:4:"name";s:8:"Artifika";s:7:"variant";s:8:":regular";}i:55;a:2:{s:4:"name";s:4:"Arvo";s:7:"variant";s:29:":regular,italic,700,700italic";}i:56;a:2:{s:4:"name";s:4:"Arya";s:7:"variant";s:12:":regular,700";}i:57;a:2:{s:4:"name";s:4:"Asap";s:7:"variant";s:29:":regular,italic,700,700italic";}i:58;a:2:{s:4:"name";s:5:"Asset";s:7:"variant";s:8:":regular";}i:59;a:2:{s:4:"name";s:7:"Astloch";s:7:"variant";s:12:":regular,700";}i:60;a:2:{s:4:"name";s:4:"Asul";s:7:"variant";s:12:":regular,700";}i:61;a:2:{s:4:"name";s:10:"Atomic Age";s:7:"variant";s:8:":regular";}i:62;a:2:{s:4:"name";s:6:"Aubrey";s:7:"variant";s:8:":regular";}i:63;a:2:{s:4:"name";s:9:"Audiowide";s:7:"variant";s:8:":regular";}i:64;a:2:{s:4:"name";s:10:"Autour One";s:7:"variant";s:8:":regular";}i:65;a:2:{s:4:"name";s:7:"Average";s:7:"variant";s:8:":regular";}i:66;a:2:{s:4:"name";s:12:"Average Sans";s:7:"variant";s:8:":regular";}i:67;a:2:{s:4:"name";s:19:"Averia Gruesa Libre";s:7:"variant";s:8:":regular";}i:68;a:2:{s:4:"name";s:12:"Averia Libre";s:7:"variant";s:43:":300,300italic,regular,italic,700,700italic";}i:69;a:2:{s:4:"name";s:17:"Averia Sans Libre";s:7:"variant";s:43:":300,300italic,regular,italic,700,700italic";}i:70;a:2:{s:4:"name";s:18:"Averia Serif Libre";s:7:"variant";s:43:":300,300italic,regular,italic,700,700italic";}i:71;a:2:{s:4:"name";s:10:"Bad Script";s:7:"variant";s:8:":regular";}i:72;a:2:{s:4:"name";s:9:"Balthazar";s:7:"variant";s:8:":regular";}i:73;a:2:{s:4:"name";s:7:"Bangers";s:7:"variant";s:8:":regular";}i:74;a:2:{s:4:"name";s:5:"Basic";s:7:"variant";s:8:":regular";}i:75;a:2:{s:4:"name";s:10:"Battambang";s:7:"variant";s:12:":regular,700";}i:76;a:2:{s:4:"name";s:7:"Baumans";s:7:"variant";s:8:":regular";}i:77;a:2:{s:4:"name";s:5:"Bayon";s:7:"variant";s:8:":regular";}i:78;a:2:{s:4:"name";s:8:"Belgrano";s:7:"variant";s:8:":regular";}i:79;a:2:{s:4:"name";s:7:"Belleza";s:7:"variant";s:8:":regular";}i:80;a:2:{s:4:"name";s:9:"BenchNine";s:7:"variant";s:16:":300,regular,700";}i:81;a:2:{s:4:"name";s:7:"Bentham";s:7:"variant";s:8:":regular";}i:82;a:2:{s:4:"name";s:15:"Berkshire Swash";s:7:"variant";s:8:":regular";}i:83;a:2:{s:4:"name";s:5:"Bevan";s:7:"variant";s:8:":regular";}i:84;a:2:{s:4:"name";s:13:"Bigelow Rules";s:7:"variant";s:8:":regular";}i:85;a:2:{s:4:"name";s:11:"Bigshot One";s:7:"variant";s:8:":regular";}i:86;a:2:{s:4:"name";s:5:"Bilbo";s:7:"variant";s:8:":regular";}i:87;a:2:{s:4:"name";s:16:"Bilbo Swash Caps";s:7:"variant";s:8:":regular";}i:88;a:2:{s:4:"name";s:7:"Biryani";s:7:"variant";s:32:":200,300,regular,600,700,800,900";}i:89;a:2:{s:4:"name";s:6:"Bitter";s:7:"variant";s:19:":regular,italic,700";}i:90;a:2:{s:4:"name";s:13:"Black Ops One";s:7:"variant";s:8:":regular";}i:91;a:2:{s:4:"name";s:5:"Bokor";s:7:"variant";s:8:":regular";}i:92;a:2:{s:4:"name";s:6:"Bonbon";s:7:"variant";s:8:":regular";}i:93;a:2:{s:4:"name";s:8:"Boogaloo";s:7:"variant";s:8:":regular";}i:94;a:2:{s:4:"name";s:10:"Bowlby One";s:7:"variant";s:8:":regular";}i:95;a:2:{s:4:"name";s:13:"Bowlby One SC";s:7:"variant";s:8:":regular";}i:96;a:2:{s:4:"name";s:7:"Brawler";s:7:"variant";s:8:":regular";}i:97;a:2:{s:4:"name";s:10:"Bree Serif";s:7:"variant";s:8:":regular";}i:98;a:2:{s:4:"name";s:14:"Bubblegum Sans";s:7:"variant";s:8:":regular";}i:99;a:2:{s:4:"name";s:11:"Bubbler One";s:7:"variant";s:8:":regular";}i:100;a:2:{s:4:"name";s:4:"Buda";s:7:"variant";s:4:":300";}i:101;a:2:{s:4:"name";s:7:"Buenard";s:7:"variant";s:12:":regular,700";}i:102;a:2:{s:4:"name";s:10:"Butcherman";s:7:"variant";s:8:":regular";}i:103;a:2:{s:4:"name";s:14:"Butterfly Kids";s:7:"variant";s:8:":regular";}i:104;a:2:{s:4:"name";s:5:"Cabin";s:7:"variant";s:57:":regular,italic,500,500italic,600,600italic,700,700italic";}i:105;a:2:{s:4:"name";s:15:"Cabin Condensed";s:7:"variant";s:20:":regular,500,600,700";}i:106;a:2:{s:4:"name";s:12:"Cabin Sketch";s:7:"variant";s:12:":regular,700";}i:107;a:2:{s:4:"name";s:15:"Caesar Dressing";s:7:"variant";s:8:":regular";}i:108;a:2:{s:4:"name";s:10:"Cagliostro";s:7:"variant";s:8:":regular";}i:109;a:2:{s:4:"name";s:14:"Calligraffitti";s:7:"variant";s:8:":regular";}i:110;a:2:{s:4:"name";s:6:"Cambay";s:7:"variant";s:29:":regular,italic,700,700italic";}i:111;a:2:{s:4:"name";s:5:"Cambo";s:7:"variant";s:8:":regular";}i:112;a:2:{s:4:"name";s:6:"Candal";s:7:"variant";s:8:":regular";}i:113;a:2:{s:4:"name";s:9:"Cantarell";s:7:"variant";s:29:":regular,italic,700,700italic";}i:114;a:2:{s:4:"name";s:11:"Cantata One";s:7:"variant";s:8:":regular";}i:115;a:2:{s:4:"name";s:11:"Cantora One";s:7:"variant";s:8:":regular";}i:116;a:2:{s:4:"name";s:8:"Capriola";s:7:"variant";s:8:":regular";}i:117;a:2:{s:4:"name";s:5:"Cardo";s:7:"variant";s:19:":regular,italic,700";}i:118;a:2:{s:4:"name";s:5:"Carme";s:7:"variant";s:8:":regular";}i:119;a:2:{s:4:"name";s:14:"Carrois Gothic";s:7:"variant";s:8:":regular";}i:120;a:2:{s:4:"name";s:17:"Carrois Gothic SC";s:7:"variant";s:8:":regular";}i:121;a:2:{s:4:"name";s:10:"Carter One";s:7:"variant";s:8:":regular";}i:122;a:2:{s:4:"name";s:6:"Caudex";s:7:"variant";s:29:":regular,italic,700,700italic";}i:123;a:2:{s:4:"name";s:18:"Cedarville Cursive";s:7:"variant";s:8:":regular";}i:124;a:2:{s:4:"name";s:11:"Ceviche One";s:7:"variant";s:8:":regular";}i:125;a:2:{s:4:"name";s:10:"Changa One";s:7:"variant";s:15:":regular,italic";}i:126;a:2:{s:4:"name";s:6:"Chango";s:7:"variant";s:8:":regular";}i:127;a:2:{s:4:"name";s:18:"Chau Philomene One";s:7:"variant";s:15:":regular,italic";}i:128;a:2:{s:4:"name";s:9:"Chela One";s:7:"variant";s:8:":regular";}i:129;a:2:{s:4:"name";s:14:"Chelsea Market";s:7:"variant";s:8:":regular";}i:130;a:2:{s:4:"name";s:6:"Chenla";s:7:"variant";s:8:":regular";}i:131;a:2:{s:4:"name";s:17:"Cherry Cream Soda";s:7:"variant";s:8:":regular";}i:132;a:2:{s:4:"name";s:12:"Cherry Swash";s:7:"variant";s:12:":regular,700";}i:133;a:2:{s:4:"name";s:5:"Chewy";s:7:"variant";s:8:":regular";}i:134;a:2:{s:4:"name";s:6:"Chicle";s:7:"variant";s:8:":regular";}i:135;a:2:{s:4:"name";s:5:"Chivo";s:7:"variant";s:29:":regular,italic,900,900italic";}i:136;a:2:{s:4:"name";s:6:"Cinzel";s:7:"variant";s:16:":regular,700,900";}i:137;a:2:{s:4:"name";s:17:"Cinzel Decorative";s:7:"variant";s:16:":regular,700,900";}i:138;a:2:{s:4:"name";s:14:"Clicker Script";s:7:"variant";s:8:":regular";}i:139;a:2:{s:4:"name";s:4:"Coda";s:7:"variant";s:12:":regular,800";}i:140;a:2:{s:4:"name";s:12:"Coda Caption";s:7:"variant";s:4:":800";}i:141;a:2:{s:4:"name";s:8:"Codystar";s:7:"variant";s:12:":300,regular";}i:142;a:2:{s:4:"name";s:5:"Combo";s:7:"variant";s:8:":regular";}i:143;a:2:{s:4:"name";s:9:"Comfortaa";s:7:"variant";s:16:":300,regular,700";}i:144;a:2:{s:4:"name";s:11:"Coming Soon";s:7:"variant";s:8:":regular";}i:145;a:2:{s:4:"name";s:11:"Concert One";s:7:"variant";s:8:":regular";}i:146;a:2:{s:4:"name";s:9:"Condiment";s:7:"variant";s:8:":regular";}i:147;a:2:{s:4:"name";s:7:"Content";s:7:"variant";s:12:":regular,700";}i:148;a:2:{s:4:"name";s:12:"Contrail One";s:7:"variant";s:8:":regular";}i:149;a:2:{s:4:"name";s:11:"Convergence";s:7:"variant";s:8:":regular";}i:150;a:2:{s:4:"name";s:6:"Cookie";s:7:"variant";s:8:":regular";}i:151;a:2:{s:4:"name";s:5:"Copse";s:7:"variant";s:8:":regular";}i:152;a:2:{s:4:"name";s:6:"Corben";s:7:"variant";s:12:":regular,700";}i:153;a:2:{s:4:"name";s:9:"Courgette";s:7:"variant";s:8:":regular";}i:154;a:2:{s:4:"name";s:7:"Cousine";s:7:"variant";s:29:":regular,italic,700,700italic";}i:155;a:2:{s:4:"name";s:8:"Coustard";s:7:"variant";s:12:":regular,900";}i:156;a:2:{s:4:"name";s:21:"Covered By Your Grace";s:7:"variant";s:8:":regular";}i:157;a:2:{s:4:"name";s:12:"Crafty Girls";s:7:"variant";s:8:":regular";}i:158;a:2:{s:4:"name";s:9:"Creepster";s:7:"variant";s:8:":regular";}i:159;a:2:{s:4:"name";s:11:"Crete Round";s:7:"variant";s:15:":regular,italic";}i:160;a:2:{s:4:"name";s:12:"Crimson Text";s:7:"variant";s:43:":regular,italic,600,600italic,700,700italic";}i:161;a:2:{s:4:"name";s:13:"Croissant One";s:7:"variant";s:8:":regular";}i:162;a:2:{s:4:"name";s:7:"Crushed";s:7:"variant";s:8:":regular";}i:163;a:2:{s:4:"name";s:6:"Cuprum";s:7:"variant";s:29:":regular,italic,700,700italic";}i:164;a:2:{s:4:"name";s:6:"Cutive";s:7:"variant";s:8:":regular";}i:165;a:2:{s:4:"name";s:11:"Cutive Mono";s:7:"variant";s:8:":regular";}i:166;a:2:{s:4:"name";s:6:"Damion";s:7:"variant";s:8:":regular";}i:167;a:2:{s:4:"name";s:14:"Dancing Script";s:7:"variant";s:12:":regular,700";}i:168;a:2:{s:4:"name";s:7:"Dangrek";s:7:"variant";s:8:":regular";}i:169;a:2:{s:4:"name";s:20:"Dawning of a New Day";s:7:"variant";s:8:":regular";}i:170;a:2:{s:4:"name";s:8:"Days One";s:7:"variant";s:8:":regular";}i:171;a:2:{s:4:"name";s:5:"Dekko";s:7:"variant";s:8:":regular";}i:172;a:2:{s:4:"name";s:6:"Delius";s:7:"variant";s:8:":regular";}i:173;a:2:{s:4:"name";s:17:"Delius Swash Caps";s:7:"variant";s:8:":regular";}i:174;a:2:{s:4:"name";s:14:"Delius Unicase";s:7:"variant";s:12:":regular,700";}i:175;a:2:{s:4:"name";s:13:"Della Respira";s:7:"variant";s:8:":regular";}i:176;a:2:{s:4:"name";s:8:"Denk One";s:7:"variant";s:8:":regular";}i:177;a:2:{s:4:"name";s:10:"Devonshire";s:7:"variant";s:8:":regular";}i:178;a:2:{s:4:"name";s:8:"Dhurjati";s:7:"variant";s:8:":regular";}i:179;a:2:{s:4:"name";s:13:"Didact Gothic";s:7:"variant";s:8:":regular";}i:180;a:2:{s:4:"name";s:9:"Diplomata";s:7:"variant";s:8:":regular";}i:181;a:2:{s:4:"name";s:12:"Diplomata SC";s:7:"variant";s:8:":regular";}i:182;a:2:{s:4:"name";s:6:"Domine";s:7:"variant";s:12:":regular,700";}i:183;a:2:{s:4:"name";s:11:"Donegal One";s:7:"variant";s:8:":regular";}i:184;a:2:{s:4:"name";s:10:"Doppio One";s:7:"variant";s:8:":regular";}i:185;a:2:{s:4:"name";s:5:"Dorsa";s:7:"variant";s:8:":regular";}i:186;a:2:{s:4:"name";s:5:"Dosis";s:7:"variant";s:32:":200,300,regular,500,600,700,800";}i:187;a:2:{s:4:"name";s:11:"Dr Sugiyama";s:7:"variant";s:8:":regular";}i:188;a:2:{s:4:"name";s:10:"Droid Sans";s:7:"variant";s:12:":regular,700";}i:189;a:2:{s:4:"name";s:15:"Droid Sans Mono";s:7:"variant";s:8:":regular";}i:190;a:2:{s:4:"name";s:11:"Droid Serif";s:7:"variant";s:29:":regular,italic,700,700italic";}i:191;a:2:{s:4:"name";s:9:"Duru Sans";s:7:"variant";s:8:":regular";}i:192;a:2:{s:4:"name";s:9:"Dynalight";s:7:"variant";s:8:":regular";}i:193;a:2:{s:4:"name";s:11:"EB Garamond";s:7:"variant";s:8:":regular";}i:194;a:2:{s:4:"name";s:10:"Eagle Lake";s:7:"variant";s:8:":regular";}i:195;a:2:{s:4:"name";s:5:"Eater";s:7:"variant";s:8:":regular";}i:196;a:2:{s:4:"name";s:9:"Economica";s:7:"variant";s:29:":regular,italic,700,700italic";}i:197;a:2:{s:4:"name";s:8:"Ek Mukta";s:7:"variant";s:32:":200,300,regular,500,600,700,800";}i:198;a:2:{s:4:"name";s:11:"Electrolize";s:7:"variant";s:8:":regular";}i:199;a:2:{s:4:"name";s:5:"Elsie";s:7:"variant";s:12:":regular,900";}i:200;a:2:{s:4:"name";s:16:"Elsie Swash Caps";s:7:"variant";s:12:":regular,900";}i:201;a:2:{s:4:"name";s:11:"Emblema One";s:7:"variant";s:8:":regular";}i:202;a:2:{s:4:"name";s:12:"Emilys Candy";s:7:"variant";s:8:":regular";}i:203;a:2:{s:4:"name";s:10:"Engagement";s:7:"variant";s:8:":regular";}i:204;a:2:{s:4:"name";s:9:"Englebert";s:7:"variant";s:8:":regular";}i:205;a:2:{s:4:"name";s:9:"Enriqueta";s:7:"variant";s:12:":regular,700";}i:206;a:2:{s:4:"name";s:9:"Erica One";s:7:"variant";s:8:":regular";}i:207;a:2:{s:4:"name";s:7:"Esteban";s:7:"variant";s:8:":regular";}i:208;a:2:{s:4:"name";s:15:"Euphoria Script";s:7:"variant";s:8:":regular";}i:209;a:2:{s:4:"name";s:5:"Ewert";s:7:"variant";s:8:":regular";}i:210;a:2:{s:4:"name";s:3:"Exo";s:7:"variant";s:127:":100,100italic,200,200italic,300,300italic,regular,italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic";}i:211;a:2:{s:4:"name";s:5:"Exo 2";s:7:"variant";s:127:":100,100italic,200,200italic,300,300italic,regular,italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic";}i:212;a:2:{s:4:"name";s:13:"Expletus Sans";s:7:"variant";s:57:":regular,italic,500,500italic,600,600italic,700,700italic";}i:213;a:2:{s:4:"name";s:12:"Fanwood Text";s:7:"variant";s:15:":regular,italic";}i:214;a:2:{s:4:"name";s:9:"Fascinate";s:7:"variant";s:8:":regular";}i:215;a:2:{s:4:"name";s:16:"Fascinate Inline";s:7:"variant";s:8:":regular";}i:216;a:2:{s:4:"name";s:10:"Faster One";s:7:"variant";s:8:":regular";}i:217;a:2:{s:4:"name";s:8:"Fasthand";s:7:"variant";s:8:":regular";}i:218;a:2:{s:4:"name";s:9:"Fauna One";s:7:"variant";s:8:":regular";}i:219;a:2:{s:4:"name";s:8:"Federant";s:7:"variant";s:8:":regular";}i:220;a:2:{s:4:"name";s:6:"Federo";s:7:"variant";s:8:":regular";}i:221;a:2:{s:4:"name";s:6:"Felipa";s:7:"variant";s:8:":regular";}i:222;a:2:{s:4:"name";s:5:"Fenix";s:7:"variant";s:8:":regular";}i:223;a:2:{s:4:"name";s:12:"Finger Paint";s:7:"variant";s:8:":regular";}i:224;a:2:{s:4:"name";s:9:"Fira Mono";s:7:"variant";s:12:":regular,700";}i:225;a:2:{s:4:"name";s:9:"Fira Sans";s:7:"variant";s:57:":300,300italic,regular,italic,500,500italic,700,700italic";}i:226;a:2:{s:4:"name";s:10:"Fjalla One";s:7:"variant";s:8:":regular";}i:227;a:2:{s:4:"name";s:9:"Fjord One";s:7:"variant";s:8:":regular";}i:228;a:2:{s:4:"name";s:8:"Flamenco";s:7:"variant";s:12:":300,regular";}i:229;a:2:{s:4:"name";s:7:"Flavors";s:7:"variant";s:8:":regular";}i:230;a:2:{s:4:"name";s:10:"Fondamento";s:7:"variant";s:15:":regular,italic";}i:231;a:2:{s:4:"name";s:16:"Fontdiner Swanky";s:7:"variant";s:8:":regular";}i:232;a:2:{s:4:"name";s:5:"Forum";s:7:"variant";s:8:":regular";}i:233;a:2:{s:4:"name";s:12:"Francois One";s:7:"variant";s:8:":regular";}i:234;a:2:{s:4:"name";s:12:"Freckle Face";s:7:"variant";s:8:":regular";}i:235;a:2:{s:4:"name";s:20:"Fredericka the Great";s:7:"variant";s:8:":regular";}i:236;a:2:{s:4:"name";s:11:"Fredoka One";s:7:"variant";s:8:":regular";}i:237;a:2:{s:4:"name";s:8:"Freehand";s:7:"variant";s:8:":regular";}i:238;a:2:{s:4:"name";s:6:"Fresca";s:7:"variant";s:8:":regular";}i:239;a:2:{s:4:"name";s:7:"Frijole";s:7:"variant";s:8:":regular";}i:240;a:2:{s:4:"name";s:7:"Fruktur";s:7:"variant";s:8:":regular";}i:241;a:2:{s:4:"name";s:9:"Fugaz One";s:7:"variant";s:8:":regular";}i:242;a:2:{s:4:"name";s:9:"GFS Didot";s:7:"variant";s:8:":regular";}i:243;a:2:{s:4:"name";s:15:"GFS Neohellenic";s:7:"variant";s:29:":regular,italic,700,700italic";}i:244;a:2:{s:4:"name";s:8:"Gabriela";s:7:"variant";s:8:":regular";}i:245;a:2:{s:4:"name";s:6:"Gafata";s:7:"variant";s:8:":regular";}i:246;a:2:{s:4:"name";s:8:"Galdeano";s:7:"variant";s:8:":regular";}i:247;a:2:{s:4:"name";s:7:"Galindo";s:7:"variant";s:8:":regular";}i:248;a:2:{s:4:"name";s:13:"Gentium Basic";s:7:"variant";s:29:":regular,italic,700,700italic";}i:249;a:2:{s:4:"name";s:18:"Gentium Book Basic";s:7:"variant";s:29:":regular,italic,700,700italic";}i:250;a:2:{s:4:"name";s:3:"Geo";s:7:"variant";s:15:":regular,italic";}i:251;a:2:{s:4:"name";s:7:"Geostar";s:7:"variant";s:8:":regular";}i:252;a:2:{s:4:"name";s:12:"Geostar Fill";s:7:"variant";s:8:":regular";}i:253;a:2:{s:4:"name";s:12:"Germania One";s:7:"variant";s:8:":regular";}i:254;a:2:{s:4:"name";s:6:"Gidugu";s:7:"variant";s:8:":regular";}i:255;a:2:{s:4:"name";s:13:"Gilda Display";s:7:"variant";s:8:":regular";}i:256;a:2:{s:4:"name";s:14:"Give You Glory";s:7:"variant";s:8:":regular";}i:257;a:2:{s:4:"name";s:13:"Glass Antiqua";s:7:"variant";s:8:":regular";}i:258;a:2:{s:4:"name";s:6:"Glegoo";s:7:"variant";s:12:":regular,700";}i:259;a:2:{s:4:"name";s:17:"Gloria Hallelujah";s:7:"variant";s:8:":regular";}i:260;a:2:{s:4:"name";s:10:"Goblin One";s:7:"variant";s:8:":regular";}i:261;a:2:{s:4:"name";s:10:"Gochi Hand";s:7:"variant";s:8:":regular";}i:262;a:2:{s:4:"name";s:8:"Gorditas";s:7:"variant";s:12:":regular,700";}i:263;a:2:{s:4:"name";s:21:"Goudy Bookletter 1911";s:7:"variant";s:8:":regular";}i:264;a:2:{s:4:"name";s:8:"Graduate";s:7:"variant";s:8:":regular";}i:265;a:2:{s:4:"name";s:11:"Grand Hotel";s:7:"variant";s:8:":regular";}i:266;a:2:{s:4:"name";s:12:"Gravitas One";s:7:"variant";s:8:":regular";}i:267;a:2:{s:4:"name";s:11:"Great Vibes";s:7:"variant";s:8:":regular";}i:268;a:2:{s:4:"name";s:6:"Griffy";s:7:"variant";s:8:":regular";}i:269;a:2:{s:4:"name";s:6:"Gruppo";s:7:"variant";s:8:":regular";}i:270;a:2:{s:4:"name";s:5:"Gudea";s:7:"variant";s:19:":regular,italic,700";}i:271;a:2:{s:4:"name";s:8:"Gurajada";s:7:"variant";s:8:":regular";}i:272;a:2:{s:4:"name";s:6:"Habibi";s:7:"variant";s:8:":regular";}i:273;a:2:{s:4:"name";s:6:"Halant";s:7:"variant";s:24:":300,regular,500,600,700";}i:274;a:2:{s:4:"name";s:15:"Hammersmith One";s:7:"variant";s:8:":regular";}i:275;a:2:{s:4:"name";s:7:"Hanalei";s:7:"variant";s:8:":regular";}i:276;a:2:{s:4:"name";s:12:"Hanalei Fill";s:7:"variant";s:8:":regular";}i:277;a:2:{s:4:"name";s:7:"Handlee";s:7:"variant";s:8:":regular";}i:278;a:2:{s:4:"name";s:7:"Hanuman";s:7:"variant";s:12:":regular,700";}i:279;a:2:{s:4:"name";s:12:"Happy Monkey";s:7:"variant";s:8:":regular";}i:280;a:2:{s:4:"name";s:12:"Headland One";s:7:"variant";s:8:":regular";}i:281;a:2:{s:4:"name";s:11:"Henny Penny";s:7:"variant";s:8:":regular";}i:282;a:2:{s:4:"name";s:20:"Herr Von Muellerhoff";s:7:"variant";s:8:":regular";}i:283;a:2:{s:4:"name";s:4:"Hind";s:7:"variant";s:24:":300,regular,500,600,700";}i:284;a:2:{s:4:"name";s:15:"Holtwood One SC";s:7:"variant";s:8:":regular";}i:285;a:2:{s:4:"name";s:14:"Homemade Apple";s:7:"variant";s:8:":regular";}i:286;a:2:{s:4:"name";s:8:"Homenaje";s:7:"variant";s:8:":regular";}i:287;a:2:{s:4:"name";s:15:"IM Fell DW Pica";s:7:"variant";s:15:":regular,italic";}i:288;a:2:{s:4:"name";s:18:"IM Fell DW Pica SC";s:7:"variant";s:8:":regular";}i:289;a:2:{s:4:"name";s:19:"IM Fell Double Pica";s:7:"variant";s:15:":regular,italic";}i:290;a:2:{s:4:"name";s:22:"IM Fell Double Pica SC";s:7:"variant";s:8:":regular";}i:291;a:2:{s:4:"name";s:15:"IM Fell English";s:7:"variant";s:15:":regular,italic";}i:292;a:2:{s:4:"name";s:18:"IM Fell English SC";s:7:"variant";s:8:":regular";}i:293;a:2:{s:4:"name";s:20:"IM Fell French Canon";s:7:"variant";s:15:":regular,italic";}i:294;a:2:{s:4:"name";s:23:"IM Fell French Canon SC";s:7:"variant";s:8:":regular";}i:295;a:2:{s:4:"name";s:20:"IM Fell Great Primer";s:7:"variant";s:15:":regular,italic";}i:296;a:2:{s:4:"name";s:23:"IM Fell Great Primer SC";s:7:"variant";s:8:":regular";}i:297;a:2:{s:4:"name";s:7:"Iceberg";s:7:"variant";s:8:":regular";}i:298;a:2:{s:4:"name";s:7:"Iceland";s:7:"variant";s:8:":regular";}i:299;a:2:{s:4:"name";s:7:"Imprima";s:7:"variant";s:8:":regular";}i:300;a:2:{s:4:"name";s:11:"Inconsolata";s:7:"variant";s:12:":regular,700";}i:301;a:2:{s:4:"name";s:5:"Inder";s:7:"variant";s:8:":regular";}i:302;a:2:{s:4:"name";s:12:"Indie Flower";s:7:"variant";s:8:":regular";}i:303;a:2:{s:4:"name";s:5:"Inika";s:7:"variant";s:12:":regular,700";}i:304;a:2:{s:4:"name";s:12:"Irish Grover";s:7:"variant";s:8:":regular";}i:305;a:2:{s:4:"name";s:9:"Istok Web";s:7:"variant";s:29:":regular,italic,700,700italic";}i:306;a:2:{s:4:"name";s:8:"Italiana";s:7:"variant";s:8:":regular";}i:307;a:2:{s:4:"name";s:9:"Italianno";s:7:"variant";s:8:":regular";}i:308;a:2:{s:4:"name";s:16:"Jacques Francois";s:7:"variant";s:8:":regular";}i:309;a:2:{s:4:"name";s:23:"Jacques Francois Shadow";s:7:"variant";s:8:":regular";}i:310;a:2:{s:4:"name";s:5:"Jaldi";s:7:"variant";s:12:":regular,700";}i:311;a:2:{s:4:"name";s:14:"Jim Nightshade";s:7:"variant";s:8:":regular";}i:312;a:2:{s:4:"name";s:10:"Jockey One";s:7:"variant";s:8:":regular";}i:313;a:2:{s:4:"name";s:12:"Jolly Lodger";s:7:"variant";s:8:":regular";}i:314;a:2:{s:4:"name";s:12:"Josefin Sans";s:7:"variant";s:71:":100,100italic,300,300italic,regular,italic,600,600italic,700,700italic";}i:315;a:2:{s:4:"name";s:12:"Josefin Slab";s:7:"variant";s:71:":100,100italic,300,300italic,regular,italic,600,600italic,700,700italic";}i:316;a:2:{s:4:"name";s:8:"Joti One";s:7:"variant";s:8:":regular";}i:317;a:2:{s:4:"name";s:6:"Judson";s:7:"variant";s:19:":regular,italic,700";}i:318;a:2:{s:4:"name";s:5:"Julee";s:7:"variant";s:8:":regular";}i:319;a:2:{s:4:"name";s:15:"Julius Sans One";s:7:"variant";s:8:":regular";}i:320;a:2:{s:4:"name";s:5:"Junge";s:7:"variant";s:8:":regular";}i:321;a:2:{s:4:"name";s:4:"Jura";s:7:"variant";s:20:":300,regular,500,600";}i:322;a:2:{s:4:"name";s:17:"Just Another Hand";s:7:"variant";s:8:":regular";}i:323;a:2:{s:4:"name";s:23:"Just Me Again Down Here";s:7:"variant";s:8:":regular";}i:324;a:2:{s:4:"name";s:5:"Kalam";s:7:"variant";s:16:":300,regular,700";}i:325;a:2:{s:4:"name";s:7:"Kameron";s:7:"variant";s:12:":regular,700";}i:326;a:2:{s:4:"name";s:9:"Kantumruy";s:7:"variant";s:16:":300,regular,700";}i:327;a:2:{s:4:"name";s:5:"Karla";s:7:"variant";s:29:":regular,italic,700,700italic";}i:328;a:2:{s:4:"name";s:5:"Karma";s:7:"variant";s:24:":300,regular,500,600,700";}i:329;a:2:{s:4:"name";s:14:"Kaushan Script";s:7:"variant";s:8:":regular";}i:330;a:2:{s:4:"name";s:6:"Kavoon";s:7:"variant";s:8:":regular";}i:331;a:2:{s:4:"name";s:10:"Kdam Thmor";s:7:"variant";s:8:":regular";}i:332;a:2:{s:4:"name";s:10:"Keania One";s:7:"variant";s:8:":regular";}i:333;a:2:{s:4:"name";s:10:"Kelly Slab";s:7:"variant";s:8:":regular";}i:334;a:2:{s:4:"name";s:5:"Kenia";s:7:"variant";s:8:":regular";}i:335;a:2:{s:4:"name";s:5:"Khand";s:7:"variant";s:24:":300,regular,500,600,700";}i:336;a:2:{s:4:"name";s:5:"Khmer";s:7:"variant";s:8:":regular";}i:337;a:2:{s:4:"name";s:5:"Khula";s:7:"variant";s:24:":300,regular,600,700,800";}i:338;a:2:{s:4:"name";s:8:"Kite One";s:7:"variant";s:8:":regular";}i:339;a:2:{s:4:"name";s:7:"Knewave";s:7:"variant";s:8:":regular";}i:340;a:2:{s:4:"name";s:9:"Kotta One";s:7:"variant";s:8:":regular";}i:341;a:2:{s:4:"name";s:6:"Koulen";s:7:"variant";s:8:":regular";}i:342;a:2:{s:4:"name";s:6:"Kranky";s:7:"variant";s:8:":regular";}i:343;a:2:{s:4:"name";s:5:"Kreon";s:7:"variant";s:16:":300,regular,700";}i:344;a:2:{s:4:"name";s:6:"Kristi";s:7:"variant";s:8:":regular";}i:345;a:2:{s:4:"name";s:9:"Krona One";s:7:"variant";s:8:":regular";}i:346;a:2:{s:4:"name";s:6:"Kurale";s:7:"variant";s:8:":regular";}i:347;a:2:{s:4:"name";s:15:"La Belle Aurore";s:7:"variant";s:8:":regular";}i:348;a:2:{s:4:"name";s:5:"Laila";s:7:"variant";s:24:":300,regular,500,600,700";}i:349;a:2:{s:4:"name";s:11:"Lakki Reddy";s:7:"variant";s:8:":regular";}i:350;a:2:{s:4:"name";s:8:"Lancelot";s:7:"variant";s:8:":regular";}i:351;a:2:{s:4:"name";s:6:"Lateef";s:7:"variant";s:8:":regular";}i:352;a:2:{s:4:"name";s:4:"Lato";s:7:"variant";s:71:":100,100italic,300,300italic,regular,italic,700,700italic,900,900italic";}i:353;a:2:{s:4:"name";s:13:"League Script";s:7:"variant";s:8:":regular";}i:354;a:2:{s:4:"name";s:12:"Leckerli One";s:7:"variant";s:8:":regular";}i:355;a:2:{s:4:"name";s:6:"Ledger";s:7:"variant";s:8:":regular";}i:356;a:2:{s:4:"name";s:6:"Lekton";s:7:"variant";s:19:":regular,italic,700";}i:357;a:2:{s:4:"name";s:5:"Lemon";s:7:"variant";s:8:":regular";}i:358;a:2:{s:4:"name";s:17:"Libre Baskerville";s:7:"variant";s:19:":regular,italic,700";}i:359;a:2:{s:4:"name";s:11:"Life Savers";s:7:"variant";s:12:":regular,700";}i:360;a:2:{s:4:"name";s:10:"Lilita One";s:7:"variant";s:8:":regular";}i:361;a:2:{s:4:"name";s:15:"Lily Script One";s:7:"variant";s:8:":regular";}i:362;a:2:{s:4:"name";s:9:"Limelight";s:7:"variant";s:8:":regular";}i:363;a:2:{s:4:"name";s:11:"Linden Hill";s:7:"variant";s:15:":regular,italic";}i:364;a:2:{s:4:"name";s:7:"Lobster";s:7:"variant";s:8:":regular";}i:365;a:2:{s:4:"name";s:11:"Lobster Two";s:7:"variant";s:29:":regular,italic,700,700italic";}i:366;a:2:{s:4:"name";s:16:"Londrina Outline";s:7:"variant";s:8:":regular";}i:367;a:2:{s:4:"name";s:15:"Londrina Shadow";s:7:"variant";s:8:":regular";}i:368;a:2:{s:4:"name";s:15:"Londrina Sketch";s:7:"variant";s:8:":regular";}i:369;a:2:{s:4:"name";s:14:"Londrina Solid";s:7:"variant";s:8:":regular";}i:370;a:2:{s:4:"name";s:4:"Lora";s:7:"variant";s:29:":regular,italic,700,700italic";}i:371;a:2:{s:4:"name";s:21:"Love Ya Like A Sister";s:7:"variant";s:8:":regular";}i:372;a:2:{s:4:"name";s:17:"Loved by the King";s:7:"variant";s:8:":regular";}i:373;a:2:{s:4:"name";s:14:"Lovers Quarrel";s:7:"variant";s:8:":regular";}i:374;a:2:{s:4:"name";s:12:"Luckiest Guy";s:7:"variant";s:8:":regular";}i:375;a:2:{s:4:"name";s:8:"Lusitana";s:7:"variant";s:12:":regular,700";}i:376;a:2:{s:4:"name";s:7:"Lustria";s:7:"variant";s:8:":regular";}i:377;a:2:{s:4:"name";s:7:"Macondo";s:7:"variant";s:8:":regular";}i:378;a:2:{s:4:"name";s:18:"Macondo Swash Caps";s:7:"variant";s:8:":regular";}i:379;a:2:{s:4:"name";s:5:"Magra";s:7:"variant";s:12:":regular,700";}i:380;a:2:{s:4:"name";s:13:"Maiden Orange";s:7:"variant";s:8:":regular";}i:381;a:2:{s:4:"name";s:4:"Mako";s:7:"variant";s:8:":regular";}i:382;a:2:{s:4:"name";s:8:"Mallanna";s:7:"variant";s:8:":regular";}i:383;a:2:{s:4:"name";s:7:"Mandali";s:7:"variant";s:8:":regular";}i:384;a:2:{s:4:"name";s:9:"Marcellus";s:7:"variant";s:8:":regular";}i:385;a:2:{s:4:"name";s:12:"Marcellus SC";s:7:"variant";s:8:":regular";}i:386;a:2:{s:4:"name";s:12:"Marck Script";s:7:"variant";s:8:":regular";}i:387;a:2:{s:4:"name";s:9:"Margarine";s:7:"variant";s:8:":regular";}i:388;a:2:{s:4:"name";s:9:"Marko One";s:7:"variant";s:8:":regular";}i:389;a:2:{s:4:"name";s:8:"Marmelad";s:7:"variant";s:8:":regular";}i:390;a:2:{s:4:"name";s:6:"Martel";s:7:"variant";s:32:":200,300,regular,600,700,800,900";}i:391;a:2:{s:4:"name";s:11:"Martel Sans";s:7:"variant";s:32:":200,300,regular,600,700,800,900";}i:392;a:2:{s:4:"name";s:6:"Marvel";s:7:"variant";s:29:":regular,italic,700,700italic";}i:393;a:2:{s:4:"name";s:4:"Mate";s:7:"variant";s:15:":regular,italic";}i:394;a:2:{s:4:"name";s:7:"Mate SC";s:7:"variant";s:8:":regular";}i:395;a:2:{s:4:"name";s:9:"Maven Pro";s:7:"variant";s:20:":regular,500,700,900";}i:396;a:2:{s:4:"name";s:7:"McLaren";s:7:"variant";s:8:":regular";}i:397;a:2:{s:4:"name";s:6:"Meddon";s:7:"variant";s:8:":regular";}i:398;a:2:{s:4:"name";s:13:"MedievalSharp";s:7:"variant";s:8:":regular";}i:399;a:2:{s:4:"name";s:10:"Medula One";s:7:"variant";s:8:":regular";}i:400;a:2:{s:4:"name";s:6:"Megrim";s:7:"variant";s:8:":regular";}i:401;a:2:{s:4:"name";s:11:"Meie Script";s:7:"variant";s:8:":regular";}i:402;a:2:{s:4:"name";s:8:"Merienda";s:7:"variant";s:12:":regular,700";}i:403;a:2:{s:4:"name";s:12:"Merienda One";s:7:"variant";s:8:":regular";}i:404;a:2:{s:4:"name";s:12:"Merriweather";s:7:"variant";s:57:":300,300italic,regular,italic,700,700italic,900,900italic";}i:405;a:2:{s:4:"name";s:17:"Merriweather Sans";s:7:"variant";s:57:":300,300italic,regular,italic,700,700italic,800,800italic";}i:406;a:2:{s:4:"name";s:5:"Metal";s:7:"variant";s:8:":regular";}i:407;a:2:{s:4:"name";s:11:"Metal Mania";s:7:"variant";s:8:":regular";}i:408;a:2:{s:4:"name";s:12:"Metamorphous";s:7:"variant";s:8:":regular";}i:409;a:2:{s:4:"name";s:11:"Metrophobic";s:7:"variant";s:8:":regular";}i:410;a:2:{s:4:"name";s:8:"Michroma";s:7:"variant";s:8:":regular";}i:411;a:2:{s:4:"name";s:7:"Milonga";s:7:"variant";s:8:":regular";}i:412;a:2:{s:4:"name";s:9:"Miltonian";s:7:"variant";s:8:":regular";}i:413;a:2:{s:4:"name";s:16:"Miltonian Tattoo";s:7:"variant";s:8:":regular";}i:414;a:2:{s:4:"name";s:7:"Miniver";s:7:"variant";s:8:":regular";}i:415;a:2:{s:4:"name";s:14:"Miss Fajardose";s:7:"variant";s:8:":regular";}i:416;a:2:{s:4:"name";s:5:"Modak";s:7:"variant";s:8:":regular";}i:417;a:2:{s:4:"name";s:14:"Modern Antiqua";s:7:"variant";s:8:":regular";}i:418;a:2:{s:4:"name";s:7:"Molengo";s:7:"variant";s:8:":regular";}i:419;a:2:{s:4:"name";s:5:"Molle";s:7:"variant";s:7:":italic";}i:420;a:2:{s:4:"name";s:5:"Monda";s:7:"variant";s:12:":regular,700";}i:421;a:2:{s:4:"name";s:8:"Monofett";s:7:"variant";s:8:":regular";}i:422;a:2:{s:4:"name";s:7:"Monoton";s:7:"variant";s:8:":regular";}i:423;a:2:{s:4:"name";s:20:"Monsieur La Doulaise";s:7:"variant";s:8:":regular";}i:424;a:2:{s:4:"name";s:7:"Montaga";s:7:"variant";s:8:":regular";}i:425;a:2:{s:4:"name";s:6:"Montez";s:7:"variant";s:8:":regular";}i:426;a:2:{s:4:"name";s:10:"Montserrat";s:7:"variant";s:12:":regular,700";}i:427;a:2:{s:4:"name";s:21:"Montserrat Alternates";s:7:"variant";s:12:":regular,700";}i:428;a:2:{s:4:"name";s:20:"Montserrat Subrayada";s:7:"variant";s:12:":regular,700";}i:429;a:2:{s:4:"name";s:4:"Moul";s:7:"variant";s:8:":regular";}i:430;a:2:{s:4:"name";s:8:"Moulpali";s:7:"variant";s:8:":regular";}i:431;a:2:{s:4:"name";s:22:"Mountains of Christmas";s:7:"variant";s:12:":regular,700";}i:432;a:2:{s:4:"name";s:13:"Mouse Memoirs";s:7:"variant";s:8:":regular";}i:433;a:2:{s:4:"name";s:10:"Mr Bedfort";s:7:"variant";s:8:":regular";}i:434;a:2:{s:4:"name";s:8:"Mr Dafoe";s:7:"variant";s:8:":regular";}i:435;a:2:{s:4:"name";s:14:"Mr De Haviland";s:7:"variant";s:8:":regular";}i:436;a:2:{s:4:"name";s:19:"Mrs Saint Delafield";s:7:"variant";s:8:":regular";}i:437;a:2:{s:4:"name";s:13:"Mrs Sheppards";s:7:"variant";s:8:":regular";}i:438;a:2:{s:4:"name";s:4:"Muli";s:7:"variant";s:29:":300,300italic,regular,italic";}i:439;a:2:{s:4:"name";s:13:"Mystery Quest";s:7:"variant";s:8:":regular";}i:440;a:2:{s:4:"name";s:3:"NTR";s:7:"variant";s:8:":regular";}i:441;a:2:{s:4:"name";s:6:"Neucha";s:7:"variant";s:8:":regular";}i:442;a:2:{s:4:"name";s:6:"Neuton";s:7:"variant";s:31:":200,300,regular,italic,700,800";}i:443;a:2:{s:4:"name";s:10:"New Rocker";s:7:"variant";s:8:":regular";}i:444;a:2:{s:4:"name";s:10:"News Cycle";s:7:"variant";s:12:":regular,700";}i:445;a:2:{s:4:"name";s:7:"Niconne";s:7:"variant";s:8:":regular";}i:446;a:2:{s:4:"name";s:9:"Nixie One";s:7:"variant";s:8:":regular";}i:447;a:2:{s:4:"name";s:6:"Nobile";s:7:"variant";s:29:":regular,italic,700,700italic";}i:448;a:2:{s:4:"name";s:6:"Nokora";s:7:"variant";s:12:":regular,700";}i:449;a:2:{s:4:"name";s:7:"Norican";s:7:"variant";s:8:":regular";}i:450;a:2:{s:4:"name";s:7:"Nosifer";s:7:"variant";s:8:":regular";}i:451;a:2:{s:4:"name";s:20:"Nothing You Could Do";s:7:"variant";s:8:":regular";}i:452;a:2:{s:4:"name";s:12:"Noticia Text";s:7:"variant";s:29:":regular,italic,700,700italic";}i:453;a:2:{s:4:"name";s:9:"Noto Sans";s:7:"variant";s:29:":regular,italic,700,700italic";}i:454;a:2:{s:4:"name";s:10:"Noto Serif";s:7:"variant";s:29:":regular,italic,700,700italic";}i:455;a:2:{s:4:"name";s:8:"Nova Cut";s:7:"variant";s:8:":regular";}i:456;a:2:{s:4:"name";s:9:"Nova Flat";s:7:"variant";s:8:":regular";}i:457;a:2:{s:4:"name";s:9:"Nova Mono";s:7:"variant";s:8:":regular";}i:458;a:2:{s:4:"name";s:9:"Nova Oval";s:7:"variant";s:8:":regular";}i:459;a:2:{s:4:"name";s:10:"Nova Round";s:7:"variant";s:8:":regular";}i:460;a:2:{s:4:"name";s:11:"Nova Script";s:7:"variant";s:8:":regular";}i:461;a:2:{s:4:"name";s:9:"Nova Slim";s:7:"variant";s:8:":regular";}i:462;a:2:{s:4:"name";s:11:"Nova Square";s:7:"variant";s:8:":regular";}i:463;a:2:{s:4:"name";s:6:"Numans";s:7:"variant";s:8:":regular";}i:464;a:2:{s:4:"name";s:6:"Nunito";s:7:"variant";s:16:":300,regular,700";}i:465;a:2:{s:4:"name";s:14:"Odor Mean Chey";s:7:"variant";s:8:":regular";}i:466;a:2:{s:4:"name";s:7:"Offside";s:7:"variant";s:8:":regular";}i:467;a:2:{s:4:"name";s:15:"Old Standard TT";s:7:"variant";s:19:":regular,italic,700";}i:468;a:2:{s:4:"name";s:9:"Oldenburg";s:7:"variant";s:8:":regular";}i:469;a:2:{s:4:"name";s:11:"Oleo Script";s:7:"variant";s:12:":regular,700";}i:470;a:2:{s:4:"name";s:22:"Oleo Script Swash Caps";s:7:"variant";s:12:":regular,700";}i:471;a:2:{s:4:"name";s:9:"Open Sans";s:7:"variant";s:71:":300,300italic,regular,italic,600,600italic,700,700italic,800,800italic";}i:472;a:2:{s:4:"name";s:19:"Open Sans Condensed";s:7:"variant";s:18:":300,300italic,700";}i:473;a:2:{s:4:"name";s:11:"Oranienbaum";s:7:"variant";s:8:":regular";}i:474;a:2:{s:4:"name";s:8:"Orbitron";s:7:"variant";s:20:":regular,500,700,900";}i:475;a:2:{s:4:"name";s:7:"Oregano";s:7:"variant";s:15:":regular,italic";}i:476;a:2:{s:4:"name";s:7:"Orienta";s:7:"variant";s:8:":regular";}i:477;a:2:{s:4:"name";s:15:"Original Surfer";s:7:"variant";s:8:":regular";}i:478;a:2:{s:4:"name";s:6:"Oswald";s:7:"variant";s:16:":300,regular,700";}i:479;a:2:{s:4:"name";s:16:"Over the Rainbow";s:7:"variant";s:8:":regular";}i:480;a:2:{s:4:"name";s:8:"Overlock";s:7:"variant";s:43:":regular,italic,700,700italic,900,900italic";}i:481;a:2:{s:4:"name";s:11:"Overlock SC";s:7:"variant";s:8:":regular";}i:482;a:2:{s:4:"name";s:3:"Ovo";s:7:"variant";s:8:":regular";}i:483;a:2:{s:4:"name";s:6:"Oxygen";s:7:"variant";s:16:":300,regular,700";}i:484;a:2:{s:4:"name";s:11:"Oxygen Mono";s:7:"variant";s:8:":regular";}i:485;a:2:{s:4:"name";s:7:"PT Mono";s:7:"variant";s:8:":regular";}i:486;a:2:{s:4:"name";s:7:"PT Sans";s:7:"variant";s:29:":regular,italic,700,700italic";}i:487;a:2:{s:4:"name";s:15:"PT Sans Caption";s:7:"variant";s:12:":regular,700";}i:488;a:2:{s:4:"name";s:14:"PT Sans Narrow";s:7:"variant";s:12:":regular,700";}i:489;a:2:{s:4:"name";s:8:"PT Serif";s:7:"variant";s:29:":regular,italic,700,700italic";}i:490;a:2:{s:4:"name";s:16:"PT Serif Caption";s:7:"variant";s:15:":regular,italic";}i:491;a:2:{s:4:"name";s:8:"Pacifico";s:7:"variant";s:8:":regular";}i:492;a:2:{s:4:"name";s:9:"Palanquin";s:7:"variant";s:32:":100,200,300,regular,500,600,700";}i:493;a:2:{s:4:"name";s:14:"Palanquin Dark";s:7:"variant";s:20:":regular,500,600,700";}i:494;a:2:{s:4:"name";s:7:"Paprika";s:7:"variant";s:8:":regular";}i:495;a:2:{s:4:"name";s:10:"Parisienne";s:7:"variant";s:8:":regular";}i:496;a:2:{s:4:"name";s:11:"Passero One";s:7:"variant";s:8:":regular";}i:497;a:2:{s:4:"name";s:11:"Passion One";s:7:"variant";s:16:":regular,700,900";}i:498;a:2:{s:4:"name";s:18:"Pathway Gothic One";s:7:"variant";s:8:":regular";}i:499;a:2:{s:4:"name";s:12:"Patrick Hand";s:7:"variant";s:8:":regular";}i:500;a:2:{s:4:"name";s:15:"Patrick Hand SC";s:7:"variant";s:8:":regular";}i:501;a:2:{s:4:"name";s:9:"Patua One";s:7:"variant";s:8:":regular";}i:502;a:2:{s:4:"name";s:11:"Paytone One";s:7:"variant";s:8:":regular";}i:503;a:2:{s:4:"name";s:7:"Peddana";s:7:"variant";s:8:":regular";}i:504;a:2:{s:4:"name";s:7:"Peralta";s:7:"variant";s:8:":regular";}i:505;a:2:{s:4:"name";s:16:"Permanent Marker";s:7:"variant";s:8:":regular";}i:506;a:2:{s:4:"name";s:19:"Petit Formal Script";s:7:"variant";s:8:":regular";}i:507;a:2:{s:4:"name";s:7:"Petrona";s:7:"variant";s:8:":regular";}i:508;a:2:{s:4:"name";s:11:"Philosopher";s:7:"variant";s:29:":regular,italic,700,700italic";}i:509;a:2:{s:4:"name";s:6:"Piedra";s:7:"variant";s:8:":regular";}i:510;a:2:{s:4:"name";s:13:"Pinyon Script";s:7:"variant";s:8:":regular";}i:511;a:2:{s:4:"name";s:10:"Pirata One";s:7:"variant";s:8:":regular";}i:512;a:2:{s:4:"name";s:7:"Plaster";s:7:"variant";s:8:":regular";}i:513;a:2:{s:4:"name";s:4:"Play";s:7:"variant";s:12:":regular,700";}i:514;a:2:{s:4:"name";s:8:"Playball";s:7:"variant";s:8:":regular";}i:515;a:2:{s:4:"name";s:16:"Playfair Display";s:7:"variant";s:43:":regular,italic,700,700italic,900,900italic";}i:516;a:2:{s:4:"name";s:19:"Playfair Display SC";s:7:"variant";s:43:":regular,italic,700,700italic,900,900italic";}i:517;a:2:{s:4:"name";s:7:"Podkova";s:7:"variant";s:12:":regular,700";}i:518;a:2:{s:4:"name";s:10:"Poiret One";s:7:"variant";s:8:":regular";}i:519;a:2:{s:4:"name";s:10:"Poller One";s:7:"variant";s:8:":regular";}i:520;a:2:{s:4:"name";s:4:"Poly";s:7:"variant";s:15:":regular,italic";}i:521;a:2:{s:4:"name";s:8:"Pompiere";s:7:"variant";s:8:":regular";}i:522;a:2:{s:4:"name";s:12:"Pontano Sans";s:7:"variant";s:8:":regular";}i:523;a:2:{s:4:"name";s:16:"Port Lligat Sans";s:7:"variant";s:8:":regular";}i:524;a:2:{s:4:"name";s:16:"Port Lligat Slab";s:7:"variant";s:8:":regular";}i:525;a:2:{s:4:"name";s:14:"Pragati Narrow";s:7:"variant";s:12:":regular,700";}i:526;a:2:{s:4:"name";s:5:"Prata";s:7:"variant";s:8:":regular";}i:527;a:2:{s:4:"name";s:11:"Preahvihear";s:7:"variant";s:8:":regular";}i:528;a:2:{s:4:"name";s:14:"Press Start 2P";s:7:"variant";s:8:":regular";}i:529;a:2:{s:4:"name";s:14:"Princess Sofia";s:7:"variant";s:8:":regular";}i:530;a:2:{s:4:"name";s:8:"Prociono";s:7:"variant";s:8:":regular";}i:531;a:2:{s:4:"name";s:10:"Prosto One";s:7:"variant";s:8:":regular";}i:532;a:2:{s:4:"name";s:7:"Puritan";s:7:"variant";s:29:":regular,italic,700,700italic";}i:533;a:2:{s:4:"name";s:12:"Purple Purse";s:7:"variant";s:8:":regular";}i:534;a:2:{s:4:"name";s:6:"Quando";s:7:"variant";s:8:":regular";}i:535;a:2:{s:4:"name";s:8:"Quantico";s:7:"variant";s:29:":regular,italic,700,700italic";}i:536;a:2:{s:4:"name";s:12:"Quattrocento";s:7:"variant";s:12:":regular,700";}i:537;a:2:{s:4:"name";s:17:"Quattrocento Sans";s:7:"variant";s:29:":regular,italic,700,700italic";}i:538;a:2:{s:4:"name";s:9:"Questrial";s:7:"variant";s:8:":regular";}i:539;a:2:{s:4:"name";s:9:"Quicksand";s:7:"variant";s:16:":300,regular,700";}i:540;a:2:{s:4:"name";s:14:"Quintessential";s:7:"variant";s:8:":regular";}i:541;a:2:{s:4:"name";s:7:"Qwigley";s:7:"variant";s:8:":regular";}i:542;a:2:{s:4:"name";s:15:"Racing Sans One";s:7:"variant";s:8:":regular";}i:543;a:2:{s:4:"name";s:6:"Radley";s:7:"variant";s:15:":regular,italic";}i:544;a:2:{s:4:"name";s:8:"Rajdhani";s:7:"variant";s:24:":300,regular,500,600,700";}i:545;a:2:{s:4:"name";s:7:"Raleway";s:7:"variant";s:40:":100,200,300,regular,500,600,700,800,900";}i:546;a:2:{s:4:"name";s:12:"Raleway Dots";s:7:"variant";s:8:":regular";}i:547;a:2:{s:4:"name";s:10:"Ramabhadra";s:7:"variant";s:8:":regular";}i:548;a:2:{s:4:"name";s:8:"Ramaraja";s:7:"variant";s:8:":regular";}i:549;a:2:{s:4:"name";s:6:"Rambla";s:7:"variant";s:29:":regular,italic,700,700italic";}i:550;a:2:{s:4:"name";s:12:"Rammetto One";s:7:"variant";s:8:":regular";}i:551;a:2:{s:4:"name";s:8:"Ranchers";s:7:"variant";s:8:":regular";}i:552;a:2:{s:4:"name";s:6:"Rancho";s:7:"variant";s:8:":regular";}i:553;a:2:{s:4:"name";s:5:"Ranga";s:7:"variant";s:12:":regular,700";}i:554;a:2:{s:4:"name";s:9:"Rationale";s:7:"variant";s:8:":regular";}i:555;a:2:{s:4:"name";s:12:"Ravi Prakash";s:7:"variant";s:8:":regular";}i:556;a:2:{s:4:"name";s:9:"Redressed";s:7:"variant";s:8:":regular";}i:557;a:2:{s:4:"name";s:13:"Reenie Beanie";s:7:"variant";s:8:":regular";}i:558;a:2:{s:4:"name";s:7:"Revalia";s:7:"variant";s:8:":regular";}i:559;a:2:{s:4:"name";s:6:"Ribeye";s:7:"variant";s:8:":regular";}i:560;a:2:{s:4:"name";s:13:"Ribeye Marrow";s:7:"variant";s:8:":regular";}i:561;a:2:{s:4:"name";s:9:"Righteous";s:7:"variant";s:8:":regular";}i:562;a:2:{s:4:"name";s:6:"Risque";s:7:"variant";s:8:":regular";}i:563;a:2:{s:4:"name";s:6:"Roboto";s:7:"variant";s:85:":100,100italic,300,300italic,regular,italic,500,500italic,700,700italic,900,900italic";}i:564;a:2:{s:4:"name";s:16:"Roboto Condensed";s:7:"variant";s:43:":300,300italic,regular,italic,700,700italic";}i:565;a:2:{s:4:"name";s:11:"Roboto Mono";s:7:"variant";s:71:":100,100italic,300,300italic,regular,italic,500,500italic,700,700italic";}i:566;a:2:{s:4:"name";s:11:"Roboto Slab";s:7:"variant";s:20:":100,300,regular,700";}i:567;a:2:{s:4:"name";s:9:"Rochester";s:7:"variant";s:8:":regular";}i:568;a:2:{s:4:"name";s:9:"Rock Salt";s:7:"variant";s:8:":regular";}i:569;a:2:{s:4:"name";s:7:"Rokkitt";s:7:"variant";s:12:":regular,700";}i:570;a:2:{s:4:"name";s:9:"Romanesco";s:7:"variant";s:8:":regular";}i:571;a:2:{s:4:"name";s:9:"Ropa Sans";s:7:"variant";s:15:":regular,italic";}i:572;a:2:{s:4:"name";s:7:"Rosario";s:7:"variant";s:29:":regular,italic,700,700italic";}i:573;a:2:{s:4:"name";s:8:"Rosarivo";s:7:"variant";s:15:":regular,italic";}i:574;a:2:{s:4:"name";s:12:"Rouge Script";s:7:"variant";s:8:":regular";}i:575;a:2:{s:4:"name";s:9:"Rozha One";s:7:"variant";s:8:":regular";}i:576;a:2:{s:4:"name";s:14:"Rubik Mono One";s:7:"variant";s:8:":regular";}i:577;a:2:{s:4:"name";s:9:"Rubik One";s:7:"variant";s:8:":regular";}i:578;a:2:{s:4:"name";s:4:"Ruda";s:7:"variant";s:16:":regular,700,900";}i:579;a:2:{s:4:"name";s:6:"Rufina";s:7:"variant";s:12:":regular,700";}i:580;a:2:{s:4:"name";s:11:"Ruge Boogie";s:7:"variant";s:8:":regular";}i:581;a:2:{s:4:"name";s:6:"Ruluko";s:7:"variant";s:8:":regular";}i:582;a:2:{s:4:"name";s:10:"Rum Raisin";s:7:"variant";s:8:":regular";}i:583;a:2:{s:4:"name";s:14:"Ruslan Display";s:7:"variant";s:8:":regular";}i:584;a:2:{s:4:"name";s:9:"Russo One";s:7:"variant";s:8:":regular";}i:585;a:2:{s:4:"name";s:6:"Ruthie";s:7:"variant";s:8:":regular";}i:586;a:2:{s:4:"name";s:3:"Rye";s:7:"variant";s:8:":regular";}i:587;a:2:{s:4:"name";s:10:"Sacramento";s:7:"variant";s:8:":regular";}i:588;a:2:{s:4:"name";s:4:"Sail";s:7:"variant";s:8:":regular";}i:589;a:2:{s:4:"name";s:5:"Salsa";s:7:"variant";s:8:":regular";}i:590;a:2:{s:4:"name";s:7:"Sanchez";s:7:"variant";s:15:":regular,italic";}i:591;a:2:{s:4:"name";s:8:"Sancreek";s:7:"variant";s:8:":regular";}i:592;a:2:{s:4:"name";s:11:"Sansita One";s:7:"variant";s:8:":regular";}i:593;a:2:{s:4:"name";s:6:"Sarina";s:7:"variant";s:8:":regular";}i:594;a:2:{s:4:"name";s:8:"Sarpanch";s:7:"variant";s:28:":regular,500,600,700,800,900";}i:595;a:2:{s:4:"name";s:7:"Satisfy";s:7:"variant";s:8:":regular";}i:596;a:2:{s:4:"name";s:5:"Scada";s:7:"variant";s:29:":regular,italic,700,700italic";}i:597;a:2:{s:4:"name";s:12:"Scheherazade";s:7:"variant";s:8:":regular";}i:598;a:2:{s:4:"name";s:10:"Schoolbell";s:7:"variant";s:8:":regular";}i:599;a:2:{s:4:"name";s:14:"Seaweed Script";s:7:"variant";s:8:":regular";}i:600;a:2:{s:4:"name";s:9:"Sevillana";s:7:"variant";s:8:":regular";}i:601;a:2:{s:4:"name";s:11:"Seymour One";s:7:"variant";s:8:":regular";}i:602;a:2:{s:4:"name";s:18:"Shadows Into Light";s:7:"variant";s:8:":regular";}i:603;a:2:{s:4:"name";s:22:"Shadows Into Light Two";s:7:"variant";s:8:":regular";}i:604;a:2:{s:4:"name";s:6:"Shanti";s:7:"variant";s:8:":regular";}i:605;a:2:{s:4:"name";s:5:"Share";s:7:"variant";s:29:":regular,italic,700,700italic";}i:606;a:2:{s:4:"name";s:10:"Share Tech";s:7:"variant";s:8:":regular";}i:607;a:2:{s:4:"name";s:15:"Share Tech Mono";s:7:"variant";s:8:":regular";}i:608;a:2:{s:4:"name";s:9:"Shojumaru";s:7:"variant";s:8:":regular";}i:609;a:2:{s:4:"name";s:11:"Short Stack";s:7:"variant";s:8:":regular";}i:610;a:2:{s:4:"name";s:8:"Siemreap";s:7:"variant";s:8:":regular";}i:611;a:2:{s:4:"name";s:10:"Sigmar One";s:7:"variant";s:8:":regular";}i:612;a:2:{s:4:"name";s:7:"Signika";s:7:"variant";s:20:":300,regular,600,700";}i:613;a:2:{s:4:"name";s:16:"Signika Negative";s:7:"variant";s:20:":300,regular,600,700";}i:614;a:2:{s:4:"name";s:9:"Simonetta";s:7:"variant";s:29:":regular,italic,900,900italic";}i:615;a:2:{s:4:"name";s:7:"Sintony";s:7:"variant";s:12:":regular,700";}i:616;a:2:{s:4:"name";s:13:"Sirin Stencil";s:7:"variant";s:8:":regular";}i:617;a:2:{s:4:"name";s:8:"Six Caps";s:7:"variant";s:8:":regular";}i:618;a:2:{s:4:"name";s:7:"Skranji";s:7:"variant";s:12:":regular,700";}i:619;a:2:{s:4:"name";s:10:"Slabo 13px";s:7:"variant";s:8:":regular";}i:620;a:2:{s:4:"name";s:10:"Slabo 27px";s:7:"variant";s:8:":regular";}i:621;a:2:{s:4:"name";s:7:"Slackey";s:7:"variant";s:8:":regular";}i:622;a:2:{s:4:"name";s:6:"Smokum";s:7:"variant";s:8:":regular";}i:623;a:2:{s:4:"name";s:6:"Smythe";s:7:"variant";s:8:":regular";}i:624;a:2:{s:4:"name";s:7:"Sniglet";s:7:"variant";s:12:":regular,800";}i:625;a:2:{s:4:"name";s:7:"Snippet";s:7:"variant";s:8:":regular";}i:626;a:2:{s:4:"name";s:13:"Snowburst One";s:7:"variant";s:8:":regular";}i:627;a:2:{s:4:"name";s:10:"Sofadi One";s:7:"variant";s:8:":regular";}i:628;a:2:{s:4:"name";s:5:"Sofia";s:7:"variant";s:8:":regular";}i:629;a:2:{s:4:"name";s:10:"Sonsie One";s:7:"variant";s:8:":regular";}i:630;a:2:{s:4:"name";s:16:"Sorts Mill Goudy";s:7:"variant";s:15:":regular,italic";}i:631;a:2:{s:4:"name";s:15:"Source Code Pro";s:7:"variant";s:32:":200,300,regular,500,600,700,900";}i:632;a:2:{s:4:"name";s:15:"Source Sans Pro";s:7:"variant";s:85:":200,200italic,300,300italic,regular,italic,600,600italic,700,700italic,900,900italic";}i:633;a:2:{s:4:"name";s:16:"Source Serif Pro";s:7:"variant";s:16:":regular,600,700";}i:634;a:2:{s:4:"name";s:13:"Special Elite";s:7:"variant";s:8:":regular";}i:635;a:2:{s:4:"name";s:10:"Spicy Rice";s:7:"variant";s:8:":regular";}i:636;a:2:{s:4:"name";s:9:"Spinnaker";s:7:"variant";s:8:":regular";}i:637;a:2:{s:4:"name";s:6:"Spirax";s:7:"variant";s:8:":regular";}i:638;a:2:{s:4:"name";s:10:"Squada One";s:7:"variant";s:8:":regular";}i:639;a:2:{s:4:"name";s:20:"Sree Krushnadevaraya";s:7:"variant";s:8:":regular";}i:640;a:2:{s:4:"name";s:9:"Stalemate";s:7:"variant";s:8:":regular";}i:641;a:2:{s:4:"name";s:13:"Stalinist One";s:7:"variant";s:8:":regular";}i:642;a:2:{s:4:"name";s:15:"Stardos Stencil";s:7:"variant";s:12:":regular,700";}i:643;a:2:{s:4:"name";s:21:"Stint Ultra Condensed";s:7:"variant";s:8:":regular";}i:644;a:2:{s:4:"name";s:20:"Stint Ultra Expanded";s:7:"variant";s:8:":regular";}i:645;a:2:{s:4:"name";s:5:"Stoke";s:7:"variant";s:12:":300,regular";}i:646;a:2:{s:4:"name";s:6:"Strait";s:7:"variant";s:8:":regular";}i:647;a:2:{s:4:"name";s:19:"Sue Ellen Francisco";s:7:"variant";s:8:":regular";}i:648;a:2:{s:4:"name";s:6:"Sumana";s:7:"variant";s:12:":regular,700";}i:649;a:2:{s:4:"name";s:9:"Sunshiney";s:7:"variant";s:8:":regular";}i:650;a:2:{s:4:"name";s:16:"Supermercado One";s:7:"variant";s:8:":regular";}i:651;a:2:{s:4:"name";s:7:"Suranna";s:7:"variant";s:8:":regular";}i:652;a:2:{s:4:"name";s:9:"Suravaram";s:7:"variant";s:8:":regular";}i:653;a:2:{s:4:"name";s:11:"Suwannaphum";s:7:"variant";s:8:":regular";}i:654;a:2:{s:4:"name";s:18:"Swanky and Moo Moo";s:7:"variant";s:8:":regular";}i:655;a:2:{s:4:"name";s:9:"Syncopate";s:7:"variant";s:12:":regular,700";}i:656;a:2:{s:4:"name";s:9:"Tangerine";s:7:"variant";s:12:":regular,700";}i:657;a:2:{s:4:"name";s:6:"Taprom";s:7:"variant";s:8:":regular";}i:658;a:2:{s:4:"name";s:5:"Tauri";s:7:"variant";s:8:":regular";}i:659;a:2:{s:4:"name";s:4:"Teko";s:7:"variant";s:24:":300,regular,500,600,700";}i:660;a:2:{s:4:"name";s:5:"Telex";s:7:"variant";s:8:":regular";}i:661;a:2:{s:4:"name";s:18:"Tenali Ramakrishna";s:7:"variant";s:8:":regular";}i:662;a:2:{s:4:"name";s:10:"Tenor Sans";s:7:"variant";s:8:":regular";}i:663;a:2:{s:4:"name";s:11:"Text Me One";s:7:"variant";s:8:":regular";}i:664;a:2:{s:4:"name";s:18:"The Girl Next Door";s:7:"variant";s:8:":regular";}i:665;a:2:{s:4:"name";s:6:"Tienne";s:7:"variant";s:16:":regular,700,900";}i:666;a:2:{s:4:"name";s:7:"Timmana";s:7:"variant";s:8:":regular";}i:667;a:2:{s:4:"name";s:5:"Tinos";s:7:"variant";s:29:":regular,italic,700,700italic";}i:668;a:2:{s:4:"name";s:9:"Titan One";s:7:"variant";s:8:":regular";}i:669;a:2:{s:4:"name";s:13:"Titillium Web";s:7:"variant";s:75:":200,200italic,300,300italic,regular,italic,600,600italic,700,700italic,900";}i:670;a:2:{s:4:"name";s:11:"Trade Winds";s:7:"variant";s:8:":regular";}i:671;a:2:{s:4:"name";s:7:"Trocchi";s:7:"variant";s:8:":regular";}i:672;a:2:{s:4:"name";s:7:"Trochut";s:7:"variant";s:19:":regular,italic,700";}i:673;a:2:{s:4:"name";s:7:"Trykker";s:7:"variant";s:8:":regular";}i:674;a:2:{s:4:"name";s:10:"Tulpen One";s:7:"variant";s:8:":regular";}i:675;a:2:{s:4:"name";s:6:"Ubuntu";s:7:"variant";s:57:":300,300italic,regular,italic,500,500italic,700,700italic";}i:676;a:2:{s:4:"name";s:16:"Ubuntu Condensed";s:7:"variant";s:8:":regular";}i:677;a:2:{s:4:"name";s:11:"Ubuntu Mono";s:7:"variant";s:29:":regular,italic,700,700italic";}i:678;a:2:{s:4:"name";s:5:"Ultra";s:7:"variant";s:8:":regular";}i:679;a:2:{s:4:"name";s:14:"Uncial Antiqua";s:7:"variant";s:8:":regular";}i:680;a:2:{s:4:"name";s:8:"Underdog";s:7:"variant";s:8:":regular";}i:681;a:2:{s:4:"name";s:9:"Unica One";s:7:"variant";s:8:":regular";}i:682;a:2:{s:4:"name";s:14:"UnifrakturCook";s:7:"variant";s:4:":700";}i:683;a:2:{s:4:"name";s:18:"UnifrakturMaguntia";s:7:"variant";s:8:":regular";}i:684;a:2:{s:4:"name";s:7:"Unkempt";s:7:"variant";s:12:":regular,700";}i:685;a:2:{s:4:"name";s:6:"Unlock";s:7:"variant";s:8:":regular";}i:686;a:2:{s:4:"name";s:4:"Unna";s:7:"variant";s:8:":regular";}i:687;a:2:{s:4:"name";s:5:"VT323";s:7:"variant";s:8:":regular";}i:688;a:2:{s:4:"name";s:11:"Vampiro One";s:7:"variant";s:8:":regular";}i:689;a:2:{s:4:"name";s:6:"Varela";s:7:"variant";s:8:":regular";}i:690;a:2:{s:4:"name";s:12:"Varela Round";s:7:"variant";s:8:":regular";}i:691;a:2:{s:4:"name";s:11:"Vast Shadow";s:7:"variant";s:8:":regular";}i:692;a:2:{s:4:"name";s:12:"Vesper Libre";s:7:"variant";s:20:":regular,500,700,900";}i:693;a:2:{s:4:"name";s:5:"Vibur";s:7:"variant";s:8:":regular";}i:694;a:2:{s:4:"name";s:8:"Vidaloka";s:7:"variant";s:8:":regular";}i:695;a:2:{s:4:"name";s:4:"Viga";s:7:"variant";s:8:":regular";}i:696;a:2:{s:4:"name";s:5:"Voces";s:7:"variant";s:8:":regular";}i:697;a:2:{s:4:"name";s:7:"Volkhov";s:7:"variant";s:29:":regular,italic,700,700italic";}i:698;a:2:{s:4:"name";s:8:"Vollkorn";s:7:"variant";s:29:":regular,italic,700,700italic";}i:699;a:2:{s:4:"name";s:8:"Voltaire";s:7:"variant";s:8:":regular";}i:700;a:2:{s:4:"name";s:23:"Waiting for the Sunrise";s:7:"variant";s:8:":regular";}i:701;a:2:{s:4:"name";s:8:"Wallpoet";s:7:"variant";s:8:":regular";}i:702;a:2:{s:4:"name";s:15:"Walter Turncoat";s:7:"variant";s:8:":regular";}i:703;a:2:{s:4:"name";s:6:"Warnes";s:7:"variant";s:8:":regular";}i:704;a:2:{s:4:"name";s:9:"Wellfleet";s:7:"variant";s:8:":regular";}i:705;a:2:{s:4:"name";s:9:"Wendy One";s:7:"variant";s:8:":regular";}i:706;a:2:{s:4:"name";s:8:"Wire One";s:7:"variant";s:8:":regular";}i:707;a:2:{s:4:"name";s:17:"Yanone Kaffeesatz";s:7:"variant";s:20:":200,300,regular,700";}i:708;a:2:{s:4:"name";s:10:"Yellowtail";s:7:"variant";s:8:":regular";}i:709;a:2:{s:4:"name";s:10:"Yeseva One";s:7:"variant";s:8:":regular";}i:710;a:2:{s:4:"name";s:10:"Yesteryear";s:7:"variant";s:8:":regular";}i:711;a:2:{s:4:"name";s:6:"Zeyada";s:7:"variant";s:8:":regular";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4233, 'a3rev_woo_dgallery_lite_version', '2.3.3', 'yes'),
(4234, 'a3_dynamic_gallery_db_version', '2.3.3', 'yes'),
(4235, 'wc_dgallery_lite_clean_on_deletion', 'no', 'yes'),
(4236, 'wc_dgallery_activate', 'yes', 'yes'),
(4237, 'wc_dgallery_reset_galleries_activate', 'no', 'yes'),
(4238, 'wc_dgallery_show_variation', 'no', 'yes'),
(4239, 'wc_dgallery_reset_variation_activate', 'no', 'yes'),
(4240, 'wc_dgallery_auto_feature_image', 'yes', 'yes'),
(4241, 'wc_dgallery_reset_feature_image_activate', 'no', 'yes'),
(4242, 'wc_dgallery_popup_gallery', 'fb', 'yes'),
(4243, 'wc_dgallery_width_type', '%', 'yes'),
(4244, 'wc_dgallery_product_gallery_width_responsive', '100', 'yes'),
(4245, 'wc_dgallery_product_gallery_width_fixed', '320', 'yes'),
(4246, 'wc_dgallery_gallery_height_type', 'fixed', 'yes'),
(4247, 'wc_dgallery_product_gallery_height', '215', 'yes'),
(4248, 'wc_dgallery_product_gallery_auto_start', 'true', 'yes'),
(4249, 'wc_dgallery_product_gallery_effect', 'slide-hori', 'yes'),
(4250, 'wc_dgallery_product_gallery_speed', '4', 'yes'),
(4251, 'wc_dgallery_product_gallery_animation_speed', '1', 'yes'),
(4252, 'wc_dgallery_stop_scroll_1image', 'yes', 'yes'),
(4253, 'wc_dgallery_main_bg_color', 'a:2:{s:6:"enable";s:1:"1";s:5:"color";s:7:"#FFFFFF";}', 'yes'),
(4254, 'wc_dgallery_main_border', 'a:7:{s:5:"width";s:3:"1px";s:5:"style";s:5:"solid";s:5:"color";s:4:"#666";s:15:"top_left_corner";s:1:"3";s:16:"top_right_corner";s:1:"3";s:19:"bottom_right_corner";s:1:"3";s:18:"bottom_left_corner";s:1:"3";}', 'yes'),
(4255, 'wc_dgallery_main_shadow', 'a:5:{s:8:"h_shadow";s:3:"0px";s:8:"v_shadow";s:3:"0px";s:4:"blur";s:3:"0px";s:6:"spread";s:3:"0px";s:5:"color";s:7:"#DBDBDB";}', 'yes'),
(4256, 'wc_dgallery_main_margin_top', '0', 'yes'),
(4257, 'wc_dgallery_main_margin_bottom', '0', 'yes'),
(4258, 'wc_dgallery_main_margin_left', '0', 'yes'),
(4259, 'wc_dgallery_main_margin_right', '0', 'yes'),
(4260, 'wc_dgallery_main_padding_top', '0', 'yes'),
(4261, 'wc_dgallery_main_padding_bottom', '0', 'yes'),
(4262, 'wc_dgallery_main_padding_left', '0', 'yes'),
(4263, 'wc_dgallery_main_padding_right', '0', 'yes'),
(4264, 'wc_dgallery_icons_display_type', 'hover', 'yes'),
(4265, 'wc_dgallery_product_gallery_nav', 'yes', 'yes'),
(4266, 'wc_dgallery_navbar_font', 'a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#000000";}', 'yes'),
(4267, 'wc_dgallery_navbar_bg_color', 'a:2:{s:6:"enable";i:1;s:5:"color";s:7:"#FFFFFF";}', 'yes'),
(4268, 'wc_dgallery_navbar_border', 'a:8:{s:5:"width";s:3:"1px";s:5:"style";s:5:"solid";s:5:"color";s:4:"#666";s:6:"corner";s:6:"square";s:15:"top_left_corner";i:3;s:16:"top_right_corner";i:3;s:18:"bottom_left_corner";i:3;s:19:"bottom_right_corner";i:3;}', 'yes'),
(4269, 'wc_dgallery_navbar_shadow', 'a:7:{s:6:"enable";i:0;s:8:"h_shadow";s:3:"0px";s:8:"v_shadow";s:3:"0px";s:4:"blur";s:3:"0px";s:6:"spread";s:3:"0px";s:5:"color";s:7:"#DBDBDB";s:5:"inset";s:0:"";}', 'yes'),
(4270, 'wc_dgallery_navbar_margin_top', '0', 'yes'),
(4271, 'wc_dgallery_navbar_margin_bottom', '0', 'yes'),
(4272, 'wc_dgallery_navbar_margin_left', '0', 'yes'),
(4273, 'wc_dgallery_navbar_margin_right', '0', 'yes'),
(4274, 'wc_dgallery_navbar_padding_top', '5', 'yes'),
(4275, 'wc_dgallery_navbar_padding_bottom', '5', 'yes'),
(4276, 'wc_dgallery_navbar_padding_left', '5', 'yes'),
(4277, 'wc_dgallery_navbar_padding_right', '5', 'yes'),
(4278, 'wc_dgallery_navbar_separator', 'a:3:{s:5:"width";s:3:"1px";s:5:"style";s:5:"solid";s:5:"color";s:4:"#666";}', 'yes'),
(4279, 'wc_dgallery_caption_font', 'a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#FFFFFF";}', 'yes'),
(4280, 'wc_dgallery_caption_bg_color', 'a:2:{s:6:"enable";i:1;s:5:"color";s:7:"#000000";}', 'yes'),
(4281, 'wc_dgallery_caption_bg_transparent', '50', 'yes'),
(4282, 'wc_dgallery_lazy_load_scroll', 'yes', 'yes'),
(4283, 'wc_dgallery_transition_scroll_bar', '#000000', 'yes'),
(4284, 'wc_dgallery_variation_gallery_effect', 'fade', 'yes'),
(4285, 'wc_dgallery_variation_gallery_effect_speed', '2', 'yes'),
(4286, 'wc_dgallery_enable_gallery_thumb', 'yes', 'yes'),
(4287, 'wc_dgallery_reset_thumbnails_activate', 'no', 'yes'),
(4288, 'wc_dgallery_hide_thumb_1image', 'no', 'yes'),
(4289, 'wc_dgallery_thumb_show_type', 'slider', 'yes'),
(4290, 'wc_dgallery_thumb_spacing', '10', 'yes'),
(4291, 'wc_dgallery_thumb_columns', '4', 'yes'),
(4292, 'wc_dgallery_thumb_border_color', 'transparent', 'yes'),
(4293, 'wc_dgallery_thumb_current_border_color', '#370764', 'yes'),
(4294, 'wc_dgallery_thumb_slider_background', 'a:1:{s:5:"color";s:4:"#FFF";}', 'yes'),
(4295, 'wc_dgallery_thumb_slider_border', 'a:7:{s:5:"width";s:3:"0px";s:5:"style";s:5:"solid";s:5:"color";s:4:"#ddd";s:15:"top_left_corner";s:1:"3";s:16:"top_right_corner";s:1:"3";s:19:"bottom_right_corner";s:1:"3";s:18:"bottom_left_corner";s:1:"3";}', 'yes'),
(4296, 'wc_dgallery_thumb_slider_shadow', 'a:6:{s:8:"h_shadow";s:3:"0px";s:8:"v_shadow";s:3:"1px";s:4:"blur";s:3:"0px";s:6:"spread";s:3:"0px";s:5:"inset";s:5:"inset";s:5:"color";s:7:"#555555";}', 'yes'),
(4297, 'woo_dynamic_gallery_style_version', '1486048520', 'yes'),
(4322, 'woocommerce_db_version', '2.6.14', 'yes'),
(4323, 'woocommerce_version', '2.6.14', 'yes'),
(4325, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(4328, '_transient_timeout_tnp_extensions_json', '1486191334', 'no'),
(4329, '_transient_tnp_extensions_json', '[\n    {\n        "id": "62",\n        "version": "4.0.5",\n        "title": "Automated",\n        "description": "Automatically creates periodic newsletters with your blog contents. Multichannel. Beta version.",\n        "slug": "newsletter-automated",\n        "type": "premium",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/automated-extension",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/emoticons-32px-outline_robot.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=62",\n        "downloadable": false,\n        "wp_slug": "newsletter-automated\\/automated.php"\n    },\n    {\n        "id": "48",\n        "version": "4.1.2",\n        "title": "SendGrid",\n        "description": "Integrates the SendGrid delivery system and bounce detection.",\n        "slug": "newsletter-sendgrid",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/sendgrid-module",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=48",\n        "downloadable": false,\n        "wp_slug": "newsletter-sendgrid\\/sendgrid.php"\n    },\n    {\n        "id": "58",\n        "version": "4.0.0",\n        "title": "Archive",\n        "description": "Generates a public archive of the sent newsletters for your blog.",\n        "slug": "newsletter-archive",\n        "type": "free",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/newsletter-archive-extension",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/files-32px-outline_archive-3d-content.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=58",\n        "downloadable": false,\n        "wp_slug": "newsletter-archive\\/archive.php"\n    },\n    {\n        "id": "54",\n        "version": "4.0.1",\n        "title": "Followup",\n        "description": "Automated email series sent upon subscription at defined intervals.",\n        "slug": "newsletter-followup",\n        "type": "premium",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/follow-up-module",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-2_time-countdown.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=54",\n        "downloadable": false,\n        "wp_slug": "newsletter-followup\\/followup.php"\n    },\n    {\n        "id": "60",\n        "version": "1.0.9",\n        "title": "Amazon SES",\n        "description": "Integrates Newsletter with Amazon SES service for sending emails and processing bounces.",\n        "slug": "newsletter-amazon",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/amazon-ses-extension",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=60",\n        "downloadable": false,\n        "wp_slug": "newsletter-amazon\\/amazon.php"\n    },\n    {\n        "id": "63",\n        "version": "1.0.2",\n        "title": "WooCommerce",\n        "description": "The Newsletter Plugin integration for WooCommerce\\u2122. Unleash your marketing powers.",\n        "slug": "newsletter-woocommerce",\n        "type": "premium",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/woocommerce-extension",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/woocommerce.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=63",\n        "downloadable": false,\n        "wp_slug": "newsletter-woocommerce\\/woocommerce.php"\n    },\n    {\n        "id": "66",\n        "version": "1.0.0",\n        "title": "ElasticEmail (beta)",\n        "description": "ElasticEmail integration (beta)",\n        "slug": "newsletter-elasticemail",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=66",\n        "downloadable": false,\n        "wp_slug": "newsletter-elasticemail\\/elasticemail.php"\n    },\n    {\n        "id": "52",\n        "version": "4.0.1",\n        "title": "Mailjet",\n        "description": "Integrates the Mailjet delivery system and bounce detection.",\n        "slug": "newsletter-mailjet",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/mailjet-module",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=52",\n        "downloadable": false,\n        "wp_slug": "newsletter-mailjet\\/mailjet.php"\n    },\n    {\n        "id": "65",\n        "version": "4.0.1",\n        "title": "Mailgun",\n        "description": "Integrates the Mailgun delivery system and bounce detection.",\n        "slug": "newsletter-mailgun",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/mailgun-module",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=65",\n        "downloadable": false,\n        "wp_slug": "newsletter-mailgun\\/mailgun.php"\n    },\n    {\n        "id": "51",\n        "version": "4.0.5",\n        "title": "Feed by Mail",\n        "description": "Automatically creates and sends newsletters with the latest blog posts.",\n        "slug": "newsletter-feed",\n        "type": "premium",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/feed-by-mail-extension",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_playlist.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=51",\n        "downloadable": false,\n        "wp_slug": "newsletter-feed\\/feed.php"\n    },\n    {\n        "id": "50",\n        "version": "4.0.6",\n        "title": "Reports",\n        "description": "Shows tables and diagrams of the collected data (opens, clicks, ...).",\n        "slug": "newsletter-reports",\n        "type": "premium",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/reports",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/business-32px-outline_chart-bar-33.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=50",\n        "downloadable": false,\n        "wp_slug": "newsletter-reports\\/reports.php"\n    },\n    {\n        "id": "55",\n        "version": "2.2.2",\n        "title": "Facebook",\n        "description": "One click subscription and confirmation with Facebook Connect.",\n        "slug": "newsletter-facebook",\n        "type": "premium",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/facebook-module",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/Facebook.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=55",\n        "downloadable": false,\n        "wp_slug": "newsletter-facebook\\/facebook.php"\n    },\n    {\n        "id": "67",\n        "version": "1.0.3",\n        "title": "Leads",\n        "description": "Add a popup or a fixed subscription bar to your website and offer your visitors a simple way to subscribe.",\n        "slug": "newsletter-leads",\n        "type": "premium",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/leads-extension",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_widget.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=67",\n        "downloadable": false,\n        "wp_slug": "newsletter-leads\\/leads.php"\n    },\n    {\n        "id": "53",\n        "version": "2.2.0",\n        "title": "Popup",\n        "description": "Configurable popup system to increase the subscription rate.",\n        "slug": "newsletter-popup",\n        "type": "premium",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/popup-module",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_widget.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=53",\n        "downloadable": false,\n        "wp_slug": "newsletter-popup\\/popup.php"\n    },\n    {\n        "id": "49",\n        "version": "4.0.0",\n        "title": "Mandrill",\n        "description": "Integrates the Mandrill delivery system and bounce detection.",\n        "slug": "newsletter-mandrill",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/mandrill-module",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=49",\n        "downloadable": false,\n        "wp_slug": "newsletter-mandrill\\/mandrill.php"\n    },\n    {\n        "id": "61",\n        "version": "4.0.2",\n        "title": "Contact Form 7",\n        "description": "Adds the newsletter subscription feature to your Contact Form 7 forms.",\n        "slug": "newsletter-cf7",\n        "type": "premium",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/contact-form-7-extension",\n        "image": "http:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/users-32px-outline_badge-13.png",\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=61",\n        "downloadable": false,\n        "wp_slug": "newsletter-cf7\\/cf7.php"\n    }\n]', 'no'),
(4379, '_transient_timeout_wc_related_96', '1486203529', 'no'),
(4380, '_transient_wc_related_96', 'a:2:{i:0;s:2:"90";i:1;s:3:"103";}', 'no'),
(4421, '_transient_timeout_wc_related_85', '1486200037', 'no'),
(4422, '_transient_wc_related_85', 'a:1:{i:0;s:3:"101";}', 'no'),
(4457, '_transient_timeout_wc_related_101', '1486203520', 'no'),
(4458, '_transient_wc_related_101', 'a:1:{i:0;s:2:"85";}', 'no'),
(4467, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=9";i:1;s:6:"/cart/";i:2;s:4:"p=10";i:3;s:10:"/checkout/";i:4;s:4:"p=11";i:5;s:12:"/my-account/";}', 'yes'),
(4474, '_transient_timeout_woo_dynamic_gallery_google_api_key_status', '1486427442', 'no'),
(4475, '_transient_woo_dynamic_gallery_google_api_key_status', 'invalid', 'no'),
(4480, '_transient_timeout_acf_get_remote_plugin_info', '1486427450', 'no'),
(4481, '_transient_acf_get_remote_plugin_info', 'a:12:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:5:"5.5.5";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.7.0";s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:9:"changelog";s:147:"<h4>5.5.5</h4><ul><li>File field: Fixed bug creating draft post when saving an empty value</li><li>Image field: Fixed bug mentioned above</li></ul>";s:14:"upgrade_notice";s:0:"";}', 'no'),
(4482, '_site_transient_timeout_theme_roots', '1486342852', 'no'),
(4483, '_site_transient_theme_roots', 'a:4:{s:12:"c3yoyodesign";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(4484, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1486341055;s:8:"response";a:1:{s:21:"newsletter/plugin.php";O:8:"stdClass":8:{s:2:"id";s:4:"8171";s:4:"slug";s:10:"newsletter";s:6:"plugin";s:21:"newsletter/plugin.php";s:11:"new_version";s:5:"4.7.8";s:3:"url";s:41:"https://wordpress.org/plugins/newsletter/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/newsletter.4.7.8.zip";s:6:"tested";s:5:"4.7.2";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:0:{}s:9:"no_update";a:17:{s:43:"auto-hide-admin-bar/auto-hide-admin-bar.php";O:8:"stdClass":6:{s:2:"id";s:5:"20970";s:4:"slug";s:19:"auto-hide-admin-bar";s:6:"plugin";s:43:"auto-hide-admin-bar/auto-hide-admin-bar.php";s:11:"new_version";s:3:"1.1";s:3:"url";s:50:"https://wordpress.org/plugins/auto-hide-admin-bar/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/auto-hide-admin-bar.1.1.zip";}s:33:"duplicate-post/duplicate-post.php";O:8:"stdClass":7:{s:2:"id";s:4:"1295";s:4:"slug";s:14:"duplicate-post";s:6:"plugin";s:33:"duplicate-post/duplicate-post.php";s:11:"new_version";s:5:"3.1.2";s:3:"url";s:45:"https://wordpress.org/plugins/duplicate-post/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/duplicate-post.3.1.2.zip";s:14:"upgrade_notice";s:36:"Fixes the problem with custom fields";}s:43:"google-analytics-dashboard-for-wp/gadwp.php";O:8:"stdClass":6:{s:2:"id";s:5:"39196";s:4:"slug";s:33:"google-analytics-dashboard-for-wp";s:6:"plugin";s:43:"google-analytics-dashboard-for-wp/gadwp.php";s:11:"new_version";s:5:"4.9.6";s:3:"url";s:64:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/google-analytics-dashboard-for-wp.zip";}s:33:"hide-admin-bar/hide_admin_bar.php";O:8:"stdClass":6:{s:2:"id";s:5:"20829";s:4:"slug";s:14:"hide-admin-bar";s:6:"plugin";s:33:"hide-admin-bar/hide_admin_bar.php";s:11:"new_version";s:5:"0.3.6";s:3:"url";s:45:"https://wordpress.org/plugins/hide-admin-bar/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/hide-admin-bar.zip";}s:42:"one-click-order-reorder/ced-click-n-go.php";O:8:"stdClass":7:{s:2:"id";s:5:"70464";s:4:"slug";s:23:"one-click-order-reorder";s:6:"plugin";s:42:"one-click-order-reorder/ced-click-n-go.php";s:11:"new_version";s:5:"1.0.7";s:3:"url";s:54:"https://wordpress.org/plugins/one-click-order-reorder/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/one-click-order-reorder.zip";s:14:"upgrade_notice";s:31:"Added Place same order feature.";}s:45:"quick-view-woocommerce/xoo-quickview-main.php";O:8:"stdClass":6:{s:2:"id";s:5:"73881";s:4:"slug";s:22:"quick-view-woocommerce";s:6:"plugin";s:45:"quick-view-woocommerce/xoo-quickview-main.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:53:"https://wordpress.org/plugins/quick-view-woocommerce/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/quick-view-woocommerce.1.6.zip";}s:45:"simple-page-ordering/simple-page-ordering.php";O:8:"stdClass":6:{s:2:"id";s:5:"16828";s:4:"slug";s:20:"simple-page-ordering";s:6:"plugin";s:45:"simple-page-ordering/simple-page-ordering.php";s:11:"new_version";s:5:"2.2.4";s:3:"url";s:51:"https://wordpress.org/plugins/simple-page-ordering/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/simple-page-ordering.2.2.4.zip";}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":6:{s:2:"id";s:3:"731";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"4.4.3";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.4.3.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:6:"2.6.14";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/woocommerce.2.6.14.zip";}s:62:"woocommerce-dynamic-gallery/wc_dynamic_gallery_woocommerce.php";O:8:"stdClass":7:{s:2:"id";s:5:"33076";s:4:"slug";s:27:"woocommerce-dynamic-gallery";s:6:"plugin";s:62:"woocommerce-dynamic-gallery/wc_dynamic_gallery_woocommerce.php";s:11:"new_version";s:5:"2.3.3";s:3:"url";s:58:"https://wordpress.org/plugins/woocommerce-dynamic-gallery/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/woocommerce-dynamic-gallery.2.3.3.zip";s:14:"upgrade_notice";s:104:"Maintenance Update. 3 tweaks for full compatibility with WordPress 4.7.1, WooCommerce 2.6.12 and PHP 7.0";}s:97:"woo-ecommerce-tracking-for-google-and-facebook/woo-ecommerce-tracking-for-google-and-facebook.php";O:8:"stdClass":6:{s:2:"id";s:5:"65811";s:4:"slug";s:46:"woo-ecommerce-tracking-for-google-and-facebook";s:6:"plugin";s:97:"woo-ecommerce-tracking-for-google-and-facebook/woo-ecommerce-tracking-for-google-and-facebook.php";s:11:"new_version";s:3:"1.3";s:3:"url";s:77:"https://wordpress.org/plugins/woo-ecommerce-tracking-for-google-and-facebook/";s:7:"package";s:93:"https://downloads.wordpress.org/plugin/woo-ecommerce-tracking-for-google-and-facebook.1.3.zip";}s:51:"woocommerce-image-hover/woocommerce-image-hover.php";O:8:"stdClass":6:{s:2:"id";s:5:"61053";s:4:"slug";s:23:"woocommerce-image-hover";s:6:"plugin";s:51:"woocommerce-image-hover/woocommerce-image-hover.php";s:11:"new_version";s:3:"1.2";s:3:"url";s:54:"https://wordpress.org/plugins/woocommerce-image-hover/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/woocommerce-image-hover.zip";}s:80:"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php";O:8:"stdClass":6:{s:2:"id";s:5:"47187";s:4:"slug";s:38:"woocommerce-pdf-invoices-packing-slips";s:6:"plugin";s:80:"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php";s:11:"new_version";s:6:"1.5.38";s:3:"url";s:69:"https://wordpress.org/plugins/woocommerce-pdf-invoices-packing-slips/";s:7:"package";s:88:"https://downloads.wordpress.org/plugin/woocommerce-pdf-invoices-packing-slips.1.5.38.zip";}s:63:"woocommerce-products-per-page/woocommerce-products-per-page.php";O:8:"stdClass":6:{s:2:"id";s:5:"48424";s:4:"slug";s:29:"woocommerce-products-per-page";s:6:"plugin";s:63:"woocommerce-products-per-page/woocommerce-products-per-page.php";s:11:"new_version";s:5:"1.2.2";s:3:"url";s:60:"https://wordpress.org/plugins/woocommerce-products-per-page/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/woocommerce-products-per-page.1.2.2.zip";}s:65:"woocommerce-quantity-increment/woocommerce-quantity-increment.php";O:8:"stdClass":6:{s:2:"id";s:5:"55530";s:4:"slug";s:30:"woocommerce-quantity-increment";s:6:"plugin";s:65:"woocommerce-quantity-increment/woocommerce-quantity-increment.php";s:11:"new_version";s:5:"1.1.0";s:3:"url";s:61:"https://wordpress.org/plugins/woocommerce-quantity-increment/";s:7:"package";s:79:"https://downloads.wordpress.org/plugin/woocommerce-quantity-increment.1.1.0.zip";}s:37:"woocommerce-products-filter/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"55691";s:4:"slug";s:27:"woocommerce-products-filter";s:6:"plugin";s:37:"woocommerce-products-filter/index.php";s:11:"new_version";s:7:"1.1.6.1";s:3:"url";s:58:"https://wordpress.org/plugins/woocommerce-products-filter/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/woocommerce-products-filter.zip";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"4.2.1";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.4.2.1.zip";}}}', 'no');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1114 ;

--
-- 資料表的匯出資料 `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_edit_last', '1'),
(3, 4, '_yoast_wpseo_content_score', '30'),
(4, 4, '_edit_lock', '1481724363:1'),
(5, 6, '_edit_last', '1'),
(6, 6, '_yoast_wpseo_content_score', '30'),
(7, 6, '_edit_lock', '1483971310:1'),
(11, 13, '_edit_last', '1'),
(12, 13, '_yoast_wpseo_content_score', '30'),
(13, 13, '_edit_lock', '1481698810:1'),
(14, 16, '_edit_last', '1'),
(15, 16, '_yoast_wpseo_content_score', '30'),
(16, 16, '_edit_lock', '1481697864:1'),
(21, 19, '_edit_last', '1'),
(22, 19, '_yoast_wpseo_content_score', '30'),
(23, 19, '_edit_lock', '1480331831:1'),
(24, 21, '_menu_item_type', 'post_type'),
(25, 21, '_menu_item_menu_item_parent', '0'),
(26, 21, '_menu_item_object_id', '19'),
(27, 21, '_menu_item_object', 'page'),
(28, 21, '_menu_item_target', ''),
(29, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(30, 21, '_menu_item_xfn', ''),
(31, 21, '_menu_item_url', ''),
(64, 26, '_menu_item_type', 'post_type'),
(65, 26, '_menu_item_menu_item_parent', '0'),
(66, 26, '_menu_item_object_id', '6'),
(67, 26, '_menu_item_object', 'page'),
(68, 26, '_menu_item_target', ''),
(69, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 26, '_menu_item_xfn', ''),
(71, 26, '_menu_item_url', ''),
(72, 27, '_menu_item_type', 'post_type'),
(73, 27, '_menu_item_menu_item_parent', '0'),
(74, 27, '_menu_item_object_id', '13'),
(75, 27, '_menu_item_object', 'page'),
(76, 27, '_menu_item_target', ''),
(77, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 27, '_menu_item_xfn', ''),
(79, 27, '_menu_item_url', ''),
(88, 29, '_menu_item_type', 'post_type'),
(89, 29, '_menu_item_menu_item_parent', '0'),
(90, 29, '_menu_item_object_id', '8'),
(91, 29, '_menu_item_object', 'page'),
(92, 29, '_menu_item_target', ''),
(93, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(94, 29, '_menu_item_xfn', ''),
(95, 29, '_menu_item_url', ''),
(96, 4, '_wp_page_template', 'template-home.php'),
(97, 19, '_wp_page_template', 'template-about.php'),
(98, 6, '_wp_page_template', 'template-news.php'),
(99, 13, '_wp_page_template', 'template-team-listing.php'),
(100, 16, '_wp_page_template', 'template-retailer.php'),
(101, 30, '_edit_last', '1'),
(102, 30, '_edit_lock', '1480333287:1'),
(103, 30, '_wp_page_template', 'template-media.php'),
(104, 30, '_yoast_wpseo_content_score', '30'),
(105, 32, '_menu_item_type', 'post_type'),
(106, 32, '_menu_item_menu_item_parent', '0'),
(107, 32, '_menu_item_object_id', '30'),
(108, 32, '_menu_item_object', 'page'),
(109, 32, '_menu_item_target', ''),
(110, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(111, 32, '_menu_item_xfn', ''),
(112, 32, '_menu_item_url', ''),
(114, 33, '_edit_last', '1'),
(115, 33, '_edit_lock', '1480333926:1'),
(116, 33, '_wp_page_template', 'default'),
(117, 33, '_yoast_wpseo_content_score', '30'),
(118, 35, '_menu_item_type', 'post_type'),
(119, 35, '_menu_item_menu_item_parent', '0'),
(120, 35, '_menu_item_object_id', '33'),
(121, 35, '_menu_item_object', 'page'),
(122, 35, '_menu_item_target', ''),
(123, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 35, '_menu_item_xfn', ''),
(125, 35, '_menu_item_url', ''),
(128, 37, '_edit_last', '1'),
(129, 37, '_edit_lock', '1481724347:1'),
(130, 4, 'banner', ''),
(131, 4, '_banner', 'field_583d46d2380e4'),
(132, 42, 'banner', ''),
(133, 42, '_banner', 'field_583d46d2380e4'),
(134, 44, '_edit_last', '1'),
(135, 44, '_edit_lock', '1483963480:1'),
(136, 59, '_edit_last', '1'),
(137, 59, '_edit_lock', '1480412934:1'),
(138, 62, '_edit_last', '1'),
(139, 62, '_edit_lock', '1480413976:1'),
(140, 69, '_menu_item_type', 'post_type'),
(141, 69, '_menu_item_menu_item_parent', '0'),
(142, 69, '_menu_item_object_id', '16'),
(143, 69, '_menu_item_object', 'page'),
(144, 69, '_menu_item_target', ''),
(145, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(146, 69, '_menu_item_xfn', ''),
(147, 69, '_menu_item_url', ''),
(149, 70, '_menu_item_type', 'post_type'),
(150, 70, '_menu_item_menu_item_parent', '0'),
(151, 70, '_menu_item_object_id', '11'),
(152, 70, '_menu_item_object', 'page'),
(153, 70, '_menu_item_target', ''),
(154, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(155, 70, '_menu_item_xfn', ''),
(156, 70, '_menu_item_url', ''),
(158, 71, '_edit_last', '1'),
(159, 71, '_edit_lock', '1481008088:1'),
(160, 71, '_wp_page_template', 'default'),
(161, 71, '_yoast_wpseo_content_score', '30'),
(162, 73, '_menu_item_type', 'post_type'),
(163, 73, '_menu_item_menu_item_parent', '0'),
(164, 73, '_menu_item_object_id', '71'),
(165, 73, '_menu_item_object', 'page'),
(166, 73, '_menu_item_target', ''),
(167, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(168, 73, '_menu_item_xfn', ''),
(169, 73, '_menu_item_url', ''),
(170, 77, '_edit_last', '1'),
(171, 77, '_edit_lock', '1481715071:1'),
(172, 77, '_wp_page_template', 'default'),
(173, 77, '_yoast_wpseo_content_score', '30'),
(174, 79, '_menu_item_type', 'post_type'),
(175, 79, '_menu_item_menu_item_parent', '0'),
(176, 79, '_menu_item_object_id', '77'),
(177, 79, '_menu_item_object', 'page'),
(178, 79, '_menu_item_target', ''),
(179, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(180, 79, '_menu_item_xfn', ''),
(181, 79, '_menu_item_url', ''),
(183, 82, '_edit_last', '1'),
(184, 82, '_wp_page_template', 'template-c3x_fingerspin.php'),
(185, 82, '_yoast_wpseo_content_score', '30'),
(186, 82, '_edit_lock', '1485501909:1'),
(187, 84, '_menu_item_type', 'post_type'),
(188, 84, '_menu_item_menu_item_parent', '0'),
(189, 84, '_menu_item_object_id', '82'),
(190, 84, '_menu_item_object', 'page'),
(191, 84, '_menu_item_target', ''),
(192, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(193, 84, '_menu_item_xfn', ''),
(194, 84, '_menu_item_url', ''),
(196, 85, '_edit_last', '1'),
(197, 85, '_edit_lock', '1481709921:1'),
(198, 86, '_wp_attached_file', '2016/12/radius16.jpg'),
(199, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:20:"2016/12/radius16.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"radius16-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"radius16-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"radius16-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"radius16-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 85, '_product_attributes', 'a:1:{s:5:"color";a:6:{s:4:"name";s:5:"Color";s:5:"value";s:24:"Green | Rainbow | Silver";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:0;}}'),
(201, 87, '_sku', ''),
(202, 87, '_thumbnail_id', '0'),
(203, 87, '_virtual', 'no'),
(204, 87, '_downloadable', 'no'),
(205, 87, '_weight', ''),
(206, 87, '_length', ''),
(207, 87, '_width', ''),
(208, 87, '_height', ''),
(209, 87, '_manage_stock', 'yes'),
(210, 87, '_backorders', 'no'),
(211, 87, '_stock', '10.000000'),
(212, 85, '_downloadable', 'no'),
(213, 85, '_virtual', 'no'),
(214, 85, '_min_variation_price', '130'),
(215, 85, '_max_variation_price', '130'),
(216, 85, '_min_price_variation_id', '89'),
(217, 85, '_max_price_variation_id', '89'),
(218, 85, '_min_variation_regular_price', '130'),
(219, 85, '_max_variation_regular_price', '130'),
(220, 85, '_min_regular_price_variation_id', '89'),
(221, 85, '_max_regular_price_variation_id', '89'),
(222, 85, '_min_variation_sale_price', NULL),
(223, 85, '_max_variation_sale_price', NULL),
(224, 85, '_min_sale_price_variation_id', NULL),
(225, 85, '_max_sale_price_variation_id', NULL),
(228, 87, '_stock_status', 'instock'),
(229, 85, '_stock_status', 'instock'),
(230, 87, '_regular_price', '130'),
(231, 87, '_sale_price', ''),
(232, 87, '_sale_price_dates_from', ''),
(233, 87, '_sale_price_dates_to', ''),
(234, 87, '_price', '130'),
(235, 87, '_download_limit', ''),
(236, 87, '_download_expiry', ''),
(237, 87, '_downloadable_files', ''),
(238, 87, '_variation_description', ''),
(239, 87, 'attribute_color', 'Green'),
(242, 85, '_default_attributes', 'a:0:{}'),
(243, 89, '_sku', ''),
(244, 89, '_thumbnail_id', '0'),
(245, 89, '_virtual', 'no'),
(246, 89, '_downloadable', 'no'),
(247, 89, '_weight', ''),
(248, 89, '_length', ''),
(249, 89, '_width', ''),
(250, 89, '_height', ''),
(251, 89, '_manage_stock', 'yes'),
(252, 89, '_backorders', 'no'),
(253, 89, '_stock', '10.000000'),
(256, 89, '_stock_status', 'instock'),
(257, 89, '_regular_price', '130'),
(258, 89, '_sale_price', ''),
(259, 89, '_sale_price_dates_from', ''),
(260, 89, '_sale_price_dates_to', ''),
(261, 89, '_price', '130'),
(262, 89, '_download_limit', ''),
(263, 89, '_download_expiry', ''),
(264, 89, '_downloadable_files', ''),
(265, 89, '_variation_description', ''),
(266, 89, 'attribute_color', 'Silver'),
(269, 88, '_sku', ''),
(270, 88, '_thumbnail_id', '0'),
(271, 88, '_virtual', 'no'),
(272, 88, '_downloadable', 'no'),
(273, 88, '_weight', ''),
(274, 88, '_length', ''),
(275, 88, '_width', ''),
(276, 88, '_height', ''),
(277, 88, '_manage_stock', 'yes'),
(278, 88, '_stock_status', 'instock'),
(279, 88, '_regular_price', '130'),
(280, 88, '_sale_price', ''),
(281, 88, '_sale_price_dates_from', ''),
(282, 88, '_sale_price_dates_to', ''),
(283, 88, '_price', '130'),
(284, 88, '_download_limit', ''),
(285, 88, '_download_expiry', ''),
(286, 88, '_downloadable_files', ''),
(287, 88, '_variation_description', ''),
(288, 88, 'attribute_color', 'Rainbow'),
(293, 88, '_backorders', 'no'),
(294, 88, '_stock', '10.000000'),
(299, 85, '_visibility', 'visible'),
(300, 85, '_thumbnail_id', '86'),
(301, 85, 'total_sales', '0'),
(302, 85, '_purchase_note', ''),
(303, 85, '_featured', 'no'),
(304, 85, '_weight', ''),
(305, 85, '_length', ''),
(306, 85, '_width', ''),
(307, 85, '_height', ''),
(308, 85, '_sku', ''),
(309, 85, '_regular_price', ''),
(310, 85, '_sale_price', ''),
(311, 85, '_sale_price_dates_from', ''),
(312, 85, '_sale_price_dates_to', ''),
(313, 85, '_sold_individually', ''),
(314, 85, '_manage_stock', 'no'),
(315, 85, '_backorders', 'no'),
(316, 85, '_stock', ''),
(317, 85, '_upsell_ids', 'a:0:{}'),
(318, 85, '_crosssell_ids', 'a:0:{}'),
(319, 85, '_price', '130'),
(320, 85, '_price', '130'),
(321, 85, '_product_version', '2.6.9'),
(322, 85, '_product_image_gallery', ''),
(323, 85, '_yoast_wpseo_primary_product_cat', '31'),
(324, 85, '_yoast_wpseo_content_score', '30'),
(325, 85, '_wc_rating_count', 'a:0:{}'),
(326, 85, '_wc_review_count', '0'),
(327, 85, '_wc_average_rating', '0'),
(328, 90, '_edit_last', '1'),
(329, 90, '_edit_lock', '1481709924:1'),
(330, 91, '_wp_attached_file', '2016/12/move11_1_2.jpg'),
(331, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:22:"2016/12/move11_1_2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"move11_1_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"move11_1_2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"move11_1_2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"move11_1_2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(332, 90, '_product_attributes', 'a:1:{s:5:"color";a:6:{s:4:"name";s:5:"Color";s:5:"value";s:50:"Blue/Black | Red/Silver | Purple/Pink | Green/blue";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:0;}}'),
(333, 92, '_sku', ''),
(334, 92, '_thumbnail_id', '0'),
(335, 92, '_virtual', 'no'),
(336, 92, '_downloadable', 'no'),
(337, 92, '_weight', ''),
(338, 92, '_length', ''),
(339, 92, '_width', ''),
(340, 92, '_height', ''),
(341, 92, '_manage_stock', 'yes'),
(342, 92, '_stock_status', 'instock'),
(343, 90, '_stock_status', 'instock'),
(344, 92, '_regular_price', '45'),
(345, 92, '_sale_price', ''),
(346, 92, '_sale_price_dates_from', ''),
(347, 92, '_sale_price_dates_to', ''),
(348, 92, '_price', '45'),
(349, 92, '_download_limit', ''),
(350, 92, '_download_expiry', ''),
(351, 92, '_downloadable_files', ''),
(352, 92, '_variation_description', ''),
(353, 92, 'attribute_color', 'Green/blue'),
(354, 93, '_sku', ''),
(355, 93, '_thumbnail_id', '0'),
(356, 93, '_virtual', 'no'),
(357, 93, '_downloadable', 'no'),
(358, 93, '_weight', ''),
(359, 93, '_length', ''),
(360, 93, '_width', ''),
(361, 93, '_height', ''),
(362, 93, '_manage_stock', 'yes'),
(363, 93, '_stock_status', 'instock'),
(364, 93, '_regular_price', '45'),
(365, 93, '_sale_price', ''),
(366, 93, '_sale_price_dates_from', ''),
(367, 93, '_sale_price_dates_to', ''),
(368, 93, '_price', '45'),
(369, 93, '_download_limit', ''),
(370, 93, '_download_expiry', ''),
(371, 93, '_downloadable_files', ''),
(372, 93, '_variation_description', ''),
(373, 93, 'attribute_color', 'Purple/Pink'),
(374, 94, '_sku', ''),
(375, 94, '_thumbnail_id', '0'),
(376, 94, '_virtual', 'no'),
(377, 94, '_downloadable', 'no'),
(378, 94, '_weight', ''),
(379, 94, '_length', ''),
(380, 94, '_width', ''),
(381, 94, '_height', ''),
(382, 94, '_manage_stock', 'yes'),
(383, 94, '_stock_status', 'instock'),
(384, 94, '_regular_price', '45'),
(385, 94, '_sale_price', ''),
(386, 94, '_sale_price_dates_from', ''),
(387, 94, '_sale_price_dates_to', ''),
(388, 94, '_price', '45'),
(389, 94, '_download_limit', ''),
(390, 94, '_download_expiry', ''),
(391, 94, '_downloadable_files', ''),
(392, 94, '_variation_description', ''),
(393, 94, 'attribute_color', 'Red/Silver'),
(394, 95, '_sku', ''),
(395, 95, '_thumbnail_id', '0'),
(396, 95, '_virtual', 'no'),
(397, 95, '_downloadable', 'no'),
(398, 95, '_weight', ''),
(399, 95, '_length', ''),
(400, 95, '_width', ''),
(401, 95, '_height', ''),
(402, 95, '_manage_stock', 'yes'),
(403, 95, '_stock_status', 'instock'),
(404, 95, '_regular_price', '45'),
(405, 95, '_sale_price', ''),
(406, 95, '_sale_price_dates_from', ''),
(407, 95, '_sale_price_dates_to', ''),
(408, 95, '_price', '45'),
(409, 95, '_download_limit', ''),
(410, 95, '_download_expiry', ''),
(411, 95, '_downloadable_files', ''),
(412, 95, '_variation_description', ''),
(413, 95, 'attribute_color', 'Blue/Black'),
(414, 90, '_downloadable', 'no'),
(415, 90, '_virtual', 'no'),
(416, 90, '_min_variation_price', '45'),
(417, 90, '_max_variation_price', '45'),
(418, 90, '_min_price_variation_id', '95'),
(419, 90, '_max_price_variation_id', '95'),
(420, 90, '_min_variation_regular_price', '45'),
(421, 90, '_max_variation_regular_price', '45'),
(422, 90, '_min_regular_price_variation_id', '95'),
(423, 90, '_max_regular_price_variation_id', '95'),
(424, 90, '_min_variation_sale_price', NULL),
(425, 90, '_max_variation_sale_price', NULL),
(426, 90, '_min_sale_price_variation_id', NULL),
(427, 90, '_max_sale_price_variation_id', NULL),
(430, 90, '_default_attributes', 'a:0:{}'),
(431, 95, '_backorders', 'no'),
(432, 95, '_stock', '20.000000'),
(435, 94, '_backorders', 'no'),
(436, 94, '_stock', '20.000000'),
(439, 93, '_backorders', 'no'),
(440, 93, '_stock', '20.000000'),
(443, 92, '_backorders', 'no'),
(444, 92, '_stock', '20.000000'),
(449, 90, '_visibility', 'visible'),
(450, 90, '_thumbnail_id', '91'),
(451, 90, 'total_sales', '0'),
(452, 90, '_purchase_note', ''),
(453, 90, '_featured', 'no'),
(454, 90, '_weight', ''),
(455, 90, '_length', ''),
(456, 90, '_width', ''),
(457, 90, '_height', ''),
(458, 90, '_sku', ''),
(459, 90, '_regular_price', ''),
(460, 90, '_sale_price', ''),
(461, 90, '_sale_price_dates_from', ''),
(462, 90, '_sale_price_dates_to', ''),
(463, 90, '_sold_individually', ''),
(464, 90, '_manage_stock', 'no'),
(465, 90, '_backorders', 'no'),
(466, 90, '_stock', ''),
(467, 90, '_upsell_ids', 'a:0:{}'),
(468, 90, '_crosssell_ids', 'a:0:{}'),
(469, 90, '_price', '45'),
(470, 90, '_price', '45'),
(471, 90, '_product_version', '2.6.9'),
(472, 90, '_product_image_gallery', ''),
(473, 90, '_yoast_wpseo_primary_product_cat', '33'),
(474, 90, '_yoast_wpseo_content_score', '30'),
(475, 90, '_wc_rating_count', 'a:0:{}'),
(476, 90, '_wc_average_rating', '0'),
(477, 96, '_edit_last', '1'),
(478, 96, '_edit_lock', '1481710139:1'),
(479, 97, '_wp_attached_file', '2016/12/accelerator17_5.jpg'),
(480, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:27:"2016/12/accelerator17_5.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"accelerator17_5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"accelerator17_5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"accelerator17_5-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"accelerator17_5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(481, 96, '_product_attributes', 'a:1:{s:5:"color";a:6:{s:4:"name";s:5:"Color";s:5:"value";s:18:"Red | Blue | Black";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:0;}}'),
(482, 98, '_sku', ''),
(483, 98, '_thumbnail_id', '0'),
(484, 98, '_virtual', 'no'),
(485, 98, '_downloadable', 'no'),
(486, 98, '_weight', ''),
(487, 98, '_length', ''),
(488, 98, '_width', ''),
(489, 98, '_height', ''),
(490, 98, '_manage_stock', 'yes'),
(491, 98, '_stock_status', 'instock'),
(492, 96, '_stock_status', 'instock'),
(493, 98, '_regular_price', '45'),
(494, 98, '_sale_price', ''),
(495, 98, '_sale_price_dates_from', ''),
(496, 98, '_sale_price_dates_to', ''),
(497, 98, '_price', '45'),
(498, 98, '_download_limit', ''),
(499, 98, '_download_expiry', ''),
(500, 98, '_downloadable_files', ''),
(501, 98, '_variation_description', ''),
(502, 98, 'attribute_color', 'Red'),
(503, 99, '_sku', ''),
(504, 99, '_thumbnail_id', '0'),
(505, 99, '_virtual', 'no'),
(506, 99, '_downloadable', 'no'),
(507, 99, '_weight', ''),
(508, 99, '_length', ''),
(509, 99, '_width', ''),
(510, 99, '_height', ''),
(511, 99, '_manage_stock', 'yes'),
(512, 99, '_stock_status', 'instock'),
(513, 99, '_regular_price', '45'),
(514, 99, '_sale_price', ''),
(515, 99, '_sale_price_dates_from', ''),
(516, 99, '_sale_price_dates_to', ''),
(517, 99, '_price', '45'),
(518, 99, '_download_limit', ''),
(519, 99, '_download_expiry', ''),
(520, 99, '_downloadable_files', ''),
(521, 99, '_variation_description', ''),
(522, 99, 'attribute_color', 'Blue'),
(523, 100, '_sku', ''),
(524, 100, '_thumbnail_id', '0'),
(525, 100, '_virtual', 'no'),
(526, 100, '_downloadable', 'no'),
(527, 100, '_weight', ''),
(528, 100, '_length', ''),
(529, 100, '_width', ''),
(530, 100, '_height', ''),
(531, 100, '_manage_stock', 'yes'),
(532, 100, '_stock_status', 'instock'),
(533, 100, '_regular_price', '45'),
(534, 100, '_sale_price', ''),
(535, 100, '_sale_price_dates_from', ''),
(536, 100, '_sale_price_dates_to', ''),
(537, 100, '_price', '45'),
(538, 100, '_download_limit', ''),
(539, 100, '_download_expiry', ''),
(540, 100, '_downloadable_files', ''),
(541, 100, '_variation_description', ''),
(542, 100, 'attribute_color', 'Black'),
(543, 96, '_downloadable', 'no'),
(544, 96, '_virtual', 'no'),
(545, 96, '_min_variation_price', '45'),
(546, 96, '_max_variation_price', '45'),
(547, 96, '_min_price_variation_id', '100'),
(548, 96, '_max_price_variation_id', '100'),
(549, 96, '_min_variation_regular_price', '45'),
(550, 96, '_max_variation_regular_price', '45'),
(551, 96, '_min_regular_price_variation_id', '100'),
(552, 96, '_max_regular_price_variation_id', '100'),
(553, 96, '_min_variation_sale_price', NULL),
(554, 96, '_max_variation_sale_price', NULL),
(555, 96, '_min_sale_price_variation_id', NULL),
(556, 96, '_max_sale_price_variation_id', NULL),
(559, 96, '_default_attributes', 'a:0:{}'),
(560, 100, '_backorders', 'no'),
(561, 100, '_stock', '20.000000'),
(564, 99, '_backorders', 'no'),
(565, 99, '_stock', '20.000000'),
(568, 98, '_backorders', 'no'),
(569, 98, '_stock', '20.000000'),
(574, 96, '_visibility', 'visible'),
(575, 96, '_thumbnail_id', '97'),
(576, 96, 'total_sales', '0'),
(577, 96, '_purchase_note', ''),
(578, 96, '_featured', 'no'),
(579, 96, '_weight', ''),
(580, 96, '_length', ''),
(581, 96, '_width', ''),
(582, 96, '_height', ''),
(583, 96, '_sku', ''),
(584, 96, '_regular_price', ''),
(585, 96, '_sale_price', ''),
(586, 96, '_sale_price_dates_from', ''),
(587, 96, '_sale_price_dates_to', ''),
(588, 96, '_sold_individually', ''),
(589, 96, '_manage_stock', 'no'),
(590, 96, '_backorders', 'no'),
(591, 96, '_stock', ''),
(592, 96, '_upsell_ids', 'a:0:{}'),
(593, 96, '_crosssell_ids', 'a:0:{}'),
(594, 96, '_price', '45'),
(595, 96, '_price', '45'),
(596, 96, '_product_version', '2.6.9'),
(597, 96, '_product_image_gallery', ''),
(598, 96, '_yoast_wpseo_primary_product_cat', '33'),
(599, 96, '_yoast_wpseo_content_score', '30'),
(600, 96, '_wc_rating_count', 'a:0:{}'),
(601, 96, '_wc_average_rating', '0'),
(602, 101, '_edit_last', '1'),
(603, 101, '_edit_lock', '1481712841:1'),
(604, 102, '_wp_attached_file', '2016/12/flawless11.jpg'),
(605, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:22:"2016/12/flawless11.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"flawless11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"flawless11-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"flawless11-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"flawless11-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(606, 101, '_visibility', 'visible'),
(607, 101, '_stock_status', 'instock'),
(608, 101, '_thumbnail_id', '102'),
(609, 101, 'total_sales', '0'),
(610, 101, '_downloadable', 'no'),
(611, 101, '_virtual', 'no'),
(612, 101, '_purchase_note', ''),
(613, 101, '_featured', 'no'),
(614, 101, '_weight', ''),
(615, 101, '_length', ''),
(616, 101, '_width', ''),
(617, 101, '_height', ''),
(618, 101, '_sku', ''),
(619, 101, '_product_attributes', 'a:0:{}'),
(620, 101, '_regular_price', '80'),
(621, 101, '_sale_price', ''),
(622, 101, '_sale_price_dates_from', ''),
(623, 101, '_sale_price_dates_to', ''),
(624, 101, '_price', '80'),
(625, 101, '_sold_individually', ''),
(626, 101, '_manage_stock', 'yes'),
(627, 101, '_backorders', 'no'),
(628, 101, '_stock', '10.000000'),
(629, 101, '_upsell_ids', 'a:0:{}'),
(630, 101, '_crosssell_ids', 'a:0:{}'),
(631, 101, '_product_version', '2.6.9'),
(632, 101, '_product_image_gallery', ''),
(633, 101, '_yoast_wpseo_primary_product_cat', '31'),
(634, 101, '_yoast_wpseo_content_score', '30'),
(635, 103, '_edit_last', '1'),
(636, 103, '_edit_lock', '1486046883:1'),
(637, 104, '_wp_attached_file', '2016/12/initiator12_1.jpg'),
(638, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:25:"2016/12/initiator12_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"initiator12_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"initiator12_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"initiator12_1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"initiator12_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(639, 103, '_product_attributes', 'a:1:{s:5:"color";a:6:{s:4:"name";s:5:"Color";s:5:"value";s:13:"Blue | Orange";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:0;}}'),
(640, 105, '_sku', ''),
(641, 105, '_thumbnail_id', '0'),
(642, 105, '_virtual', 'no'),
(643, 105, '_downloadable', 'no'),
(644, 105, '_weight', ''),
(645, 105, '_length', ''),
(646, 105, '_width', ''),
(647, 105, '_height', ''),
(648, 105, '_manage_stock', 'yes'),
(649, 105, '_backorders', 'no'),
(650, 105, '_stock', '20.000000'),
(651, 103, '_downloadable', 'no'),
(652, 103, '_virtual', 'no'),
(653, 103, '_min_variation_price', '18'),
(654, 103, '_max_variation_price', '18'),
(655, 103, '_min_price_variation_id', '106'),
(656, 103, '_max_price_variation_id', '106'),
(657, 103, '_min_variation_regular_price', '18'),
(658, 103, '_max_variation_regular_price', '18'),
(659, 103, '_min_regular_price_variation_id', '106'),
(660, 103, '_max_regular_price_variation_id', '106'),
(661, 103, '_min_variation_sale_price', NULL),
(662, 103, '_max_variation_sale_price', NULL),
(663, 103, '_min_sale_price_variation_id', NULL),
(664, 103, '_max_sale_price_variation_id', NULL),
(667, 105, '_stock_status', 'instock'),
(668, 103, '_stock_status', 'instock'),
(669, 105, '_regular_price', '18'),
(670, 105, '_sale_price', ''),
(671, 105, '_sale_price_dates_from', ''),
(672, 105, '_sale_price_dates_to', ''),
(673, 105, '_price', '18'),
(674, 105, '_download_limit', ''),
(675, 105, '_download_expiry', ''),
(676, 105, '_downloadable_files', ''),
(677, 105, '_variation_description', ''),
(678, 105, 'attribute_color', 'Orange'),
(679, 106, '_sku', ''),
(680, 106, '_thumbnail_id', '0'),
(681, 106, '_virtual', 'no'),
(682, 106, '_downloadable', 'no'),
(683, 106, '_weight', ''),
(684, 106, '_length', ''),
(685, 106, '_width', ''),
(686, 106, '_height', ''),
(687, 106, '_manage_stock', 'yes'),
(688, 106, '_backorders', 'no'),
(689, 106, '_stock', '10.000000'),
(692, 106, '_stock_status', 'instock'),
(693, 106, '_regular_price', '18'),
(694, 106, '_sale_price', ''),
(695, 106, '_sale_price_dates_from', ''),
(696, 106, '_sale_price_dates_to', ''),
(697, 106, '_price', '18'),
(698, 106, '_download_limit', ''),
(699, 106, '_download_expiry', ''),
(700, 106, '_downloadable_files', ''),
(701, 106, '_variation_description', ''),
(702, 106, 'attribute_color', 'Blue'),
(705, 103, '_default_attributes', 'a:0:{}'),
(706, 103, '_visibility', 'visible'),
(707, 103, '_thumbnail_id', '104'),
(708, 103, 'total_sales', '0'),
(709, 103, '_purchase_note', ''),
(710, 103, '_featured', 'no'),
(711, 103, '_weight', ''),
(712, 103, '_length', ''),
(713, 103, '_width', ''),
(714, 103, '_height', ''),
(715, 103, '_sku', ''),
(716, 103, '_regular_price', ''),
(717, 103, '_sale_price', ''),
(718, 103, '_sale_price_dates_from', ''),
(719, 103, '_sale_price_dates_to', ''),
(720, 103, '_sold_individually', ''),
(721, 103, '_manage_stock', 'no'),
(722, 103, '_backorders', 'no'),
(723, 103, '_stock', ''),
(724, 103, '_upsell_ids', 'a:0:{}'),
(725, 103, '_crosssell_ids', 'a:0:{}'),
(728, 103, '_product_version', '2.6.11'),
(729, 103, '_product_image_gallery', ''),
(730, 103, '_yoast_wpseo_primary_product_cat', '33'),
(731, 103, '_yoast_wpseo_content_score', '30'),
(732, 101, '_wc_rating_count', 'a:0:{}'),
(733, 101, '_wc_average_rating', '0'),
(734, 103, '_wc_rating_count', 'a:0:{}'),
(735, 103, '_wc_average_rating', '0'),
(736, 4, 'shop_now', 'a:5:{i:0;s:2:"96";i:1;s:3:"101";i:2;s:3:"103";i:3;s:2:"90";i:4;s:2:"85";}'),
(737, 4, '_shop_now', 'field_58511eeeea693'),
(738, 108, 'banner', ''),
(739, 108, '_banner', 'field_583d46d2380e4'),
(740, 108, 'shop_now', 'a:5:{i:0;s:2:"96";i:1;s:3:"101";i:2;s:3:"103";i:3;s:2:"90";i:4;s:2:"85";}'),
(741, 108, '_shop_now', 'field_58511eeeea693'),
(742, 96, '_wc_review_count', '0'),
(743, 90, '_wc_review_count', '0'),
(744, 110, '_edit_last', '1'),
(745, 110, '_edit_lock', '1481723823:1'),
(746, 110, '_yoast_wpseo_primary_line-up', '13'),
(747, 110, '_yoast_wpseo_content_score', '30'),
(748, 110, '_thumbnail_id', '104'),
(749, 111, '_edit_last', '1'),
(750, 111, '_edit_lock', '1481795100:1'),
(751, 110, 'banner', ''),
(752, 110, '_banner', 'field_585132a4b3b9c'),
(753, 110, '_0_weight', '53.9'),
(754, 110, '__0_weight', 'field_58513484b3b9e'),
(755, 110, '_', 'field_585133ffb3b9d'),
(756, 110, 'weight', '53.9'),
(757, 110, '_weight', 'field_585133ffb3b9d'),
(758, 110, 'diameter', '58.25'),
(759, 110, '_diameter', 'field_5851352ebd8ac'),
(760, 110, 'width', '34.77'),
(761, 110, '_width', 'field_5851353748e6b'),
(762, 110, 'trapeze_efffective_width', '10'),
(763, 110, '_trapeze_efffective_width', 'field_5851354dd8020'),
(764, 110, 'material', 'Plastic (Polycarbonate/ABS/PS)'),
(765, 110, '_material', 'field_5851355b15e4d'),
(766, 110, 'bind', 'Tug Return'),
(767, 110, '_bind', 'field_585135640f6b8'),
(768, 110, 'style', '2A (Looping)'),
(769, 110, '_style', 'field_5851356f174e6'),
(770, 110, 'bearing', 'Ball Bearing'),
(771, 110, '_bearing', 'field_585135798bb26'),
(772, 110, 'response', 'Starburst'),
(773, 110, '_response', 'field_585135814bded'),
(774, 110, 'signature', '-'),
(775, 110, '_signature', 'field_585135c3c4e6b'),
(776, 124, '_edit_last', '1'),
(777, 124, '_edit_lock', '1481795100:1'),
(778, 124, '_thumbnail_id', '97'),
(779, 124, 'banner', ''),
(780, 124, '_banner', 'field_585132a4b3b9c'),
(781, 124, 'weight', ''),
(782, 124, '_weight', 'field_585133ffb3b9d'),
(783, 124, 'diameter', ''),
(784, 124, '_diameter', 'field_5851352ebd8ac'),
(785, 124, 'width', ''),
(786, 124, '_width', 'field_5851353748e6b'),
(787, 124, 'trapeze_efffective_width', ''),
(788, 124, '_trapeze_efffective_width', 'field_5851354dd8020'),
(789, 124, 'material', ''),
(790, 124, '_material', 'field_5851355b15e4d'),
(791, 124, 'bind', ''),
(792, 124, '_bind', 'field_585135640f6b8'),
(793, 124, 'style', ''),
(794, 124, '_style', 'field_5851356f174e6'),
(795, 124, 'bearing', ''),
(796, 124, '_bearing', 'field_585135798bb26'),
(797, 124, 'response', ''),
(798, 124, '_response', 'field_585135814bded'),
(799, 124, 'signature', ''),
(800, 124, '_signature', 'field_585135c3c4e6b'),
(801, 124, '_yoast_wpseo_primary_line-up', '13'),
(802, 124, '_yoast_wpseo_content_score', '30'),
(803, 125, '_edit_last', '1'),
(804, 125, '_edit_lock', '1481723930:1'),
(805, 125, '_thumbnail_id', '86'),
(806, 125, 'banner', ''),
(807, 125, '_banner', 'field_585132a4b3b9c'),
(808, 125, 'weight', ''),
(809, 125, '_weight', 'field_585133ffb3b9d'),
(810, 125, 'diameter', ''),
(811, 125, '_diameter', 'field_5851352ebd8ac'),
(812, 125, 'width', ''),
(813, 125, '_width', 'field_5851353748e6b'),
(814, 125, 'trapeze_efffective_width', ''),
(815, 125, '_trapeze_efffective_width', 'field_5851354dd8020'),
(816, 125, 'material', ''),
(817, 125, '_material', 'field_5851355b15e4d'),
(818, 125, 'bind', ''),
(819, 125, '_bind', 'field_585135640f6b8'),
(820, 125, 'style', ''),
(821, 125, '_style', 'field_5851356f174e6'),
(822, 125, 'bearing', ''),
(823, 125, '_bearing', 'field_585135798bb26'),
(824, 125, 'response', ''),
(825, 125, '_response', 'field_585135814bded'),
(826, 125, 'signature', ''),
(827, 125, '_signature', 'field_585135c3c4e6b'),
(828, 125, '_yoast_wpseo_primary_line-up', '15'),
(829, 125, '_yoast_wpseo_content_score', '30'),
(830, 126, '_edit_last', '1'),
(831, 126, '_thumbnail_id', '102'),
(832, 126, 'banner', ''),
(833, 126, '_banner', 'field_585132a4b3b9c'),
(834, 126, 'weight', ''),
(835, 126, '_weight', 'field_585133ffb3b9d'),
(836, 126, 'diameter', ''),
(837, 126, '_diameter', 'field_5851352ebd8ac'),
(838, 126, 'width', ''),
(839, 126, '_width', 'field_5851353748e6b'),
(840, 126, 'trapeze_efffective_width', ''),
(841, 126, '_trapeze_efffective_width', 'field_5851354dd8020'),
(842, 126, 'material', ''),
(843, 126, '_material', 'field_5851355b15e4d'),
(844, 126, 'bind', ''),
(845, 126, '_bind', 'field_585135640f6b8'),
(846, 126, 'style', ''),
(847, 126, '_style', 'field_5851356f174e6'),
(848, 126, 'bearing', ''),
(849, 126, '_bearing', 'field_585135798bb26'),
(850, 126, 'response', ''),
(851, 126, '_response', 'field_585135814bded'),
(852, 126, 'signature', ''),
(853, 126, '_signature', 'field_585135c3c4e6b'),
(854, 126, '_yoast_wpseo_primary_line-up', '15'),
(855, 126, '_yoast_wpseo_content_score', '30'),
(856, 126, '_edit_lock', '1481724276:1'),
(857, 128, '_wp_attached_file', '2016/12/img_logo_dummy.png'),
(858, 128, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:260;s:6:"height";i:260;s:4:"file";s:26:"2016/12/img_logo_dummy.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_logo_dummy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"img_logo_dummy-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(859, 124, 'logo', '128'),
(860, 124, '_logo', 'field_5851565f6a359'),
(861, 130, '_menu_item_type', 'post_type'),
(862, 130, '_menu_item_menu_item_parent', '0'),
(863, 130, '_menu_item_object_id', '71'),
(864, 130, '_menu_item_object', 'page'),
(865, 130, '_menu_item_target', ''),
(866, 130, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(867, 130, '_menu_item_xfn', ''),
(868, 130, '_menu_item_url', ''),
(870, 131, '_menu_item_type', 'post_type'),
(871, 131, '_menu_item_menu_item_parent', '0'),
(872, 131, '_menu_item_object_id', '19'),
(873, 131, '_menu_item_object', 'page'),
(874, 131, '_menu_item_target', ''),
(875, 131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(876, 131, '_menu_item_xfn', ''),
(877, 131, '_menu_item_url', ''),
(879, 132, '_menu_item_type', 'post_type'),
(880, 132, '_menu_item_menu_item_parent', '0'),
(881, 132, '_menu_item_object_id', '16'),
(882, 132, '_menu_item_object', 'page'),
(883, 132, '_menu_item_target', ''),
(884, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(885, 132, '_menu_item_xfn', ''),
(886, 132, '_menu_item_url', ''),
(888, 133, '_menu_item_type', 'post_type'),
(889, 133, '_menu_item_menu_item_parent', '0'),
(890, 133, '_menu_item_object_id', '6'),
(891, 133, '_menu_item_object', 'page'),
(892, 133, '_menu_item_target', ''),
(893, 133, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(894, 133, '_menu_item_xfn', ''),
(895, 133, '_menu_item_url', ''),
(897, 134, '_menu_item_type', 'post_type'),
(898, 134, '_menu_item_menu_item_parent', '0'),
(899, 134, '_menu_item_object_id', '11'),
(900, 134, '_menu_item_object', 'page'),
(901, 134, '_menu_item_target', ''),
(902, 134, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(903, 134, '_menu_item_xfn', ''),
(904, 134, '_menu_item_url', ''),
(906, 135, '_menu_item_type', 'post_type'),
(907, 135, '_menu_item_menu_item_parent', '0'),
(908, 135, '_menu_item_object_id', '10'),
(909, 135, '_menu_item_object', 'page'),
(910, 135, '_menu_item_target', ''),
(911, 135, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(912, 135, '_menu_item_xfn', ''),
(913, 135, '_menu_item_url', ''),
(915, 136, '_menu_item_type', 'post_type'),
(916, 136, '_menu_item_menu_item_parent', '0'),
(917, 136, '_menu_item_object_id', '9'),
(918, 136, '_menu_item_object', 'page'),
(919, 136, '_menu_item_target', ''),
(920, 136, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(921, 136, '_menu_item_xfn', ''),
(922, 136, '_menu_item_url', ''),
(923, 137, '_edit_last', '1'),
(924, 137, '_edit_lock', '1483963638:1'),
(925, 138, '_wp_attached_file', '2017/01/Peter-pong-si-yee.jpg'),
(926, 138, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:639;s:4:"file";s:29:"2017/01/Peter-pong-si-yee.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"Peter-pong-si-yee-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"Peter-pong-si-yee-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"Peter-pong-si-yee-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"Peter-pong-si-yee-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"Peter-pong-si-yee-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:29:"Peter-pong-si-yee-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(927, 137, '_thumbnail_id', '138'),
(928, 137, 'team_image', 'a:3:{i:0;s:3:"156";i:1;s:3:"154";i:2;s:3:"155";}'),
(929, 137, '_team_image', 'field_583d4a6feffe4'),
(930, 137, 'details_0_item_name', 'Birthday'),
(931, 137, '_details_0_item_name', 'field_583d4e1e6b9b0'),
(932, 137, 'details_0_item_content', 'October 10'),
(933, 137, '_details_0_item_content', 'field_583d4e2f6b9b1'),
(934, 137, 'details_1_item_name', 'Country'),
(935, 137, '_details_1_item_name', 'field_583d4e1e6b9b0'),
(936, 137, 'details_1_item_content', 'Hong Kong'),
(937, 137, '_details_1_item_content', 'field_583d4e2f6b9b1'),
(938, 137, 'details_2_item_name', 'Preferred style'),
(939, 137, '_details_2_item_name', 'field_583d4e1e6b9b0'),
(940, 137, 'details_2_item_content', '1A'),
(941, 137, '_details_2_item_content', 'field_583d4e2f6b9b1'),
(942, 137, 'details_3_item_name', 'Handed'),
(943, 137, '_details_3_item_name', 'field_583d4e1e6b9b0'),
(944, 137, 'details_3_item_content', 'Right'),
(945, 137, '_details_3_item_content', 'field_583d4e2f6b9b1'),
(946, 137, 'details_4_item_name', 'Signature model'),
(947, 137, '_details_4_item_name', 'field_583d4e1e6b9b0'),
(948, 137, 'details_4_item_content', 'Pwave'),
(949, 137, '_details_4_item_content', 'field_583d4e2f6b9b1'),
(950, 137, 'details', '6'),
(951, 137, '_details', 'field_583d4c806b9af'),
(952, 137, 'contest_title', '4'),
(953, 137, '_contest_title', 'field_583d4a954e815'),
(954, 137, 'video', ''),
(955, 137, '_video', 'field_583d4bcfe957a'),
(956, 137, '_yoast_wpseo_primary_country', '17'),
(957, 137, '_yoast_wpseo_content_score', '30'),
(958, 137, 'display_name', 'Peter<br>Pong Si Yee'),
(959, 137, '_display_name', 'field_586c9cf14e83f'),
(960, 140, '_edit_last', '1'),
(961, 140, '_edit_lock', '1483516171:1'),
(962, 141, '_wp_attached_file', '2017/01/Ng-wang-kit.jpg'),
(963, 141, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:960;s:4:"file";s:23:"2017/01/Ng-wang-kit.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Ng-wang-kit-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Ng-wang-kit-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"Ng-wang-kit-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Ng-wang-kit-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"Ng-wang-kit-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"Ng-wang-kit-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(964, 140, '_thumbnail_id', '141'),
(965, 140, 'display_name', 'Ng<br>Wang Kit'),
(966, 140, '_display_name', 'field_586c9cf14e83f'),
(967, 140, 'team_image', ''),
(968, 140, '_team_image', 'field_583d4a6feffe4'),
(969, 140, 'details', ''),
(970, 140, '_details', 'field_583d4c806b9af'),
(971, 140, 'contest_title', ''),
(972, 140, '_contest_title', 'field_583d4a954e815'),
(973, 140, 'video', ''),
(974, 140, '_video', 'field_583d4bcfe957a'),
(975, 140, '_yoast_wpseo_primary_country', '17'),
(976, 140, '_yoast_wpseo_content_score', '30'),
(977, 142, '_edit_last', '1'),
(978, 142, '_edit_lock', '1483963639:1'),
(979, 143, '_wp_attached_file', '2017/01/Ethan-wong-wing-hang.jpg'),
(980, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:635;s:6:"height";i:635;s:4:"file";s:32:"2017/01/Ethan-wong-wing-hang.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Ethan-wong-wing-hang-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"Ethan-wong-wing-hang-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"Ethan-wong-wing-hang-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"Ethan-wong-wing-hang-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:32:"Ethan-wong-wing-hang-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(981, 142, '_thumbnail_id', '143'),
(982, 142, 'display_name', 'Ethan<br>Wong Wing Hang'),
(983, 142, '_display_name', 'field_586c9cf14e83f'),
(984, 142, 'team_image', ''),
(985, 142, '_team_image', 'field_583d4a6feffe4'),
(986, 142, 'details', ''),
(987, 142, '_details', 'field_583d4c806b9af'),
(988, 142, 'contest_title', ''),
(989, 142, '_contest_title', 'field_583d4a954e815'),
(990, 142, 'video', ''),
(991, 142, '_video', 'field_583d4bcfe957a'),
(992, 142, '_yoast_wpseo_primary_country', '17'),
(993, 142, '_yoast_wpseo_content_score', '30'),
(994, 144, '_edit_last', '1'),
(995, 144, '_edit_lock', '1483521558:1'),
(996, 145, '_wp_attached_file', '2017/01/Terence-wong-chun-tak.jpg'),
(997, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:960;s:4:"file";s:33:"2017/01/Terence-wong-chun-tak.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Terence-wong-chun-tak-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Terence-wong-chun-tak-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"Terence-wong-chun-tak-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"Terence-wong-chun-tak-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"Terence-wong-chun-tak-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:33:"Terence-wong-chun-tak-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(998, 144, '_thumbnail_id', '145'),
(999, 144, 'display_name', 'Terence<br>Wong Chun Tak'),
(1000, 144, '_display_name', 'field_586c9cf14e83f'),
(1001, 144, 'team_image', ''),
(1002, 144, '_team_image', 'field_583d4a6feffe4'),
(1003, 144, 'details', ''),
(1004, 144, '_details', 'field_583d4c806b9af'),
(1005, 144, 'contest_title', ''),
(1006, 144, '_contest_title', 'field_583d4a954e815'),
(1007, 144, 'video', ''),
(1008, 144, '_video', 'field_583d4bcfe957a'),
(1009, 144, '_yoast_wpseo_primary_country', '17'),
(1010, 144, '_yoast_wpseo_content_score', '30'),
(1011, 137, 'gender', 'male'),
(1012, 137, '_gender', 'field_586cbe62fa54d'),
(1013, 137, 'contest_title_0_year', '2016'),
(1014, 137, '_contest_title_0_year', 'field_583d4b3d4e816'),
(1015, 137, 'contest_title_0_name', 'Hong Kong Selection YoYo Contest'),
(1016, 137, '_contest_title_0_name', 'field_583d4b494e817'),
(1017, 137, 'contest_title_0_division', '1A'),
(1018, 137, '_contest_title_0_division', 'field_583d4bba4e818'),
(1019, 137, 'contest_title_0_place', 'Champion'),
(1020, 137, '_contest_title_0_place', 'field_583d4bc34e819'),
(1021, 137, 'contest_title_1_year', '2015'),
(1022, 137, '_contest_title_1_year', 'field_583d4b3d4e816'),
(1023, 137, 'contest_title_1_name', 'Hong Kong Selection YoYo Contest'),
(1024, 137, '_contest_title_1_name', 'field_583d4b494e817'),
(1025, 137, 'contest_title_1_division', '1A'),
(1026, 137, '_contest_title_1_division', 'field_583d4bba4e818'),
(1027, 137, 'contest_title_1_place', 'Champion'),
(1028, 137, '_contest_title_1_place', 'field_583d4bc34e819'),
(1029, 137, 'contest_title_2_year', '2015'),
(1030, 137, '_contest_title_2_year', 'field_583d4b3d4e816'),
(1031, 137, 'contest_title_2_name', 'Hong Kong Selection YoYo Contest'),
(1032, 137, '_contest_title_2_name', 'field_583d4b494e817'),
(1033, 137, 'contest_title_2_division', '4A'),
(1034, 137, '_contest_title_2_division', 'field_583d4bba4e818'),
(1035, 137, 'contest_title_2_place', 'Champion'),
(1036, 137, '_contest_title_2_place', 'field_583d4bc34e819'),
(1037, 137, 'contest_title_3_year', '2012'),
(1038, 137, '_contest_title_3_year', 'field_583d4b3d4e816'),
(1039, 137, 'contest_title_3_name', 'European YoYo Championship'),
(1040, 137, '_contest_title_3_name', 'field_583d4b494e817'),
(1041, 137, 'contest_title_3_division', '1A Open'),
(1042, 137, '_contest_title_3_division', 'field_583d4bba4e818'),
(1043, 137, 'contest_title_3_place', 'Champion'),
(1044, 137, '_contest_title_3_place', 'field_583d4bc34e819'),
(1045, 137, 'details_5_item_name', 'Favorite Yoyo'),
(1046, 137, '_details_5_item_name', 'field_583d4e1e6b9b0'),
(1047, 137, 'details_5_item_content', 'Radius | Gamma Crash | Pwave'),
(1048, 137, '_details_5_item_content', 'field_583d4e2f6b9b1'),
(1061, 154, '_wp_attached_file', '2017/01/Peter-pong-si-yee-1.jpg'),
(1062, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:500;s:4:"file";s:31:"2017/01/Peter-pong-si-yee-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-1-300x156.jpg";s:5:"width";i:300;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-1-768x400.jpg";s:5:"width";i:768;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-1-600x500.jpg";s:5:"width";i:600;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1063, 155, '_wp_attached_file', '2017/01/Peter-pong-si-yee-2.jpg'),
(1064, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:500;s:4:"file";s:31:"2017/01/Peter-pong-si-yee-2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-2-300x156.jpg";s:5:"width";i:300;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-2-768x400.jpg";s:5:"width";i:768;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-2-600x500.jpg";s:5:"width";i:600;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1065, 156, '_wp_attached_file', '2017/01/Peter-pong-si-yee-3.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1066, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:500;s:4:"file";s:31:"2017/01/Peter-pong-si-yee-3.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-3-300x156.jpg";s:5:"width";i:300;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-3-768x400.jpg";s:5:"width";i:768;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"Peter-pong-si-yee-3-600x500.jpg";s:5:"width";i:600;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1067, 137, 'favorite_yoyo', 'a:4:{i:0;s:3:"101";i:1;s:2:"85";i:2;s:2:"90";i:3;s:2:"96";}'),
(1068, 137, '_favorite_yoyo', 'field_586cd6461437f'),
(1069, 137, 'facebook_link', ''),
(1070, 137, '_facebook_link', 'field_586cdc0ca6304'),
(1071, 137, 'instagram_link', ''),
(1072, 137, '_instagram_link', 'field_586cdc2389858'),
(1073, 137, 'twitter_link', ''),
(1074, 137, '_twitter_link', 'field_586cdc2b89859'),
(1075, 101, '_wc_review_count', '0'),
(1076, 103, '_wc_review_count', '0'),
(1077, 160, '_edit_last', '1'),
(1078, 160, '_edit_lock', '1483971179:1'),
(1080, 160, '_yoast_wpseo_content_score', '30'),
(1081, 160, '_yoast_wpseo_primary_category', '9'),
(1082, 162, '_wp_attached_file', '2017/01/img_post_dummy.jpg'),
(1083, 162, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:584;s:6:"height";i:495;s:4:"file";s:26:"2017/01/img_post_dummy.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"img_post_dummy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"img_post_dummy-300x254.jpg";s:5:"width";i:300;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"img_post_dummy-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"img_post_dummy-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1084, 160, '_thumbnail_id', '162'),
(1086, 163, '_yoast_wpseo_content_score', '30'),
(1087, 163, '_yoast_wpseo_primary_category', ''),
(1088, 163, '_thumbnail_id', '162'),
(1089, 163, '_dp_original', '160'),
(1090, 163, '_edit_last', '1'),
(1091, 163, '_edit_lock', '1483971178:1'),
(1094, 165, '_yoast_wpseo_content_score', '30'),
(1095, 165, '_yoast_wpseo_primary_category', ''),
(1096, 165, '_thumbnail_id', '162'),
(1098, 165, '_dp_original', '163'),
(1099, 165, '_edit_last', '1'),
(1101, 165, '_edit_lock', '1483971178:1'),
(1102, 167, '_yoast_wpseo_content_score', '30'),
(1103, 167, '_yoast_wpseo_primary_category', ''),
(1104, 167, '_thumbnail_id', '162'),
(1106, 167, '_dp_original', '165'),
(1107, 167, '_edit_last', '1'),
(1109, 167, '_edit_lock', '1483970694:1'),
(1112, 103, '_price', '18'),
(1113, 103, '_price', '18');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=177 ;

--
-- 資料表的匯出資料 `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2016-11-28 10:38:18', '2016-11-28 10:38:18', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-12-14 10:30:03', '2016-12-14 10:30:03', '', 0, 'http://c3staging.fp-production.com/?page_id=4', -1, 'page', '', 0),
(5, 1, '2016-11-28 10:38:18', '2016-11-28 10:38:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-28 10:38:18', '2016-11-28 10:38:18', '', 4, 'http://c3staging.fp-production.com/2016/11/28/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2016-11-28 10:39:21', '2016-11-28 10:39:21', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2017-01-09 14:15:10', '2017-01-09 14:15:10', '', 0, 'http://c3staging.fp-production.com/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-11-28 10:39:21', '2016-11-28 10:39:21', '', 'News', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-11-28 10:39:21', '2016-11-28 10:39:21', '', 6, 'http://c3staging.fp-production.com/2016/11/28/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-11-28 10:42:19', '2016-11-28 10:42:19', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-11-28 10:42:19', '2016-11-28 10:42:19', '', 0, 'http://c3staging.fp-production.com/shop/', 0, 'page', '', 0),
(9, 1, '2016-11-28 10:42:19', '2016-11-28 10:42:19', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-11-28 10:42:19', '2016-11-28 10:42:19', '', 0, 'http://c3staging.fp-production.com/cart/', 0, 'page', '', 0),
(10, 1, '2016-11-28 10:42:19', '2016-11-28 10:42:19', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-11-28 10:42:19', '2016-11-28 10:42:19', '', 0, 'http://c3staging.fp-production.com/checkout/', 0, 'page', '', 0),
(11, 1, '2016-11-28 10:42:20', '2016-11-28 10:42:20', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-11-28 10:42:20', '2016-11-28 10:42:20', '', 0, 'http://c3staging.fp-production.com/my-account/', 0, 'page', '', 0),
(13, 1, '2016-11-28 10:44:56', '2016-11-28 10:44:56', '', 'Team C3', '', 'publish', 'closed', 'closed', '', 'team-c3', '', '', '2016-12-14 07:00:10', '2016-12-14 07:00:10', '', 0, 'http://c3staging.fp-production.com/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-11-28 10:44:56', '2016-11-28 10:44:56', '', 'Team', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-11-28 10:44:56', '2016-11-28 10:44:56', '', 13, 'http://c3staging.fp-production.com/2016/11/28/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-11-28 10:45:20', '2016-11-28 10:45:20', '', 'Our Team', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-11-28 10:45:20', '2016-11-28 10:45:20', '', 13, 'http://c3staging.fp-production.com/2016/11/28/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-11-28 10:46:41', '2016-11-28 10:46:41', '', 'Retailer locator', '', 'publish', 'closed', 'closed', '', 'retailer-locator', '', '', '2016-12-14 06:44:23', '2016-12-14 06:44:23', '', 0, 'http://c3staging.fp-production.com/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-11-28 10:46:41', '2016-11-28 10:46:41', '', 'Retailer shop', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-11-28 10:46:41', '2016-11-28 10:46:41', '', 16, 'http://c3staging.fp-production.com/2016/11/28/16-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-11-28 11:08:56', '2016-11-28 11:08:56', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-11-28 11:17:11', '2016-11-28 11:17:11', '', 0, 'http://c3staging.fp-production.com/?page_id=19', 0, 'page', '', 0),
(20, 1, '2016-11-28 11:08:56', '2016-11-28 11:08:56', '', 'About us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-11-28 11:08:56', '2016-11-28 11:08:56', '', 19, 'http://c3staging.fp-production.com/2016/11/28/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-11-28 11:16:13', '2016-11-28 11:16:13', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2016-12-14 08:23:07', '2016-12-14 08:23:07', '', 0, 'http://c3staging.fp-production.com/21/', 1, 'nav_menu_item', '', 0),
(26, 1, '2016-11-28 11:16:15', '2016-11-28 11:16:15', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-12-14 08:23:07', '2016-12-14 08:23:07', '', 0, 'http://c3staging.fp-production.com/26/', 6, 'nav_menu_item', '', 0),
(27, 1, '2016-11-28 11:16:15', '2016-11-28 11:16:15', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-12-14 08:23:07', '2016-12-14 08:23:07', '', 0, 'http://c3staging.fp-production.com/27/', 2, 'nav_menu_item', '', 0),
(29, 1, '2016-11-28 11:16:16', '2016-11-28 11:16:16', '', 'Store', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-12-14 08:23:07', '2016-12-14 08:23:07', '', 0, 'http://c3staging.fp-production.com/29/', 5, 'nav_menu_item', '', 0),
(30, 1, '2016-11-28 11:28:19', '2016-11-28 11:28:19', '', 'Media coverage', '', 'publish', 'closed', 'closed', '', 'media-coverage', '', '', '2016-11-28 11:30:43', '2016-11-28 11:30:43', '', 0, 'http://c3staging.fp-production.com/?page_id=30', 0, 'page', '', 0),
(31, 1, '2016-11-28 11:28:19', '2016-11-28 11:28:19', '', 'Media coverage', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-11-28 11:28:19', '2016-11-28 11:28:19', '', 30, 'http://c3staging.fp-production.com/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-11-28 11:53:55', '2016-11-28 11:53:55', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2016-12-14 08:23:07', '2016-12-14 08:23:07', '', 0, 'http://c3staging.fp-production.com/?p=32', 7, 'nav_menu_item', '', 0),
(33, 1, '2016-11-28 11:54:22', '2016-11-28 11:54:22', '', 'Contest sponsor', '', 'publish', 'closed', 'closed', '', 'contest-sponsor', '', '', '2016-11-28 11:54:22', '2016-11-28 11:54:22', '', 0, 'http://c3staging.fp-production.com/?page_id=33', 0, 'page', '', 0),
(34, 1, '2016-11-28 11:54:22', '2016-11-28 11:54:22', '', 'Contest sponsor', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-11-28 11:54:22', '2016-11-28 11:54:22', '', 33, 'http://c3staging.fp-production.com/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-11-28 11:54:55', '2016-11-28 11:54:55', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2016-12-14 08:23:07', '2016-12-14 08:23:07', '', 0, 'http://c3staging.fp-production.com/?p=35', 8, 'nav_menu_item', '', 0),
(37, 1, '2016-11-29 09:13:50', '2016-11-29 09:13:50', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:17:"template-home.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Home fields', 'home-fields', 'publish', 'closed', 'closed', '', 'group_583d46c15582c', '', '', '2016-12-14 14:08:06', '2016-12-14 14:08:06', '', 0, 'http://c3staging.fp-production.com/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(38, 1, '2016-11-29 09:14:29', '2016-11-29 09:14:29', 'a:10:{s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:0:"";s:9:"collapsed";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'banner', 'banner', 'publish', 'closed', 'closed', '', 'field_583d46d2380e4', '', '', '2016-11-29 09:16:29', '2016-11-29 09:16:29', '', 37, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=38', 0, 'acf-field', '', 0),
(39, 1, '2016-11-29 09:15:50', '2016-11-29 09:15:50', 'a:15:{s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_583d4709e8130', '', '', '2016-11-29 09:26:46', '2016-11-29 09:26:46', '', 38, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=39', 0, 'acf-field', '', 0),
(40, 1, '2016-11-29 09:15:50', '2016-11-29 09:15:50', 'a:10:{s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"default_value";s:0:"";s:5:"delay";i:0;s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_583d471de8131', '', '', '2016-11-29 09:26:46', '2016-11-29 09:26:46', '', 38, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=40', 2, 'acf-field', '', 0),
(41, 1, '2016-11-29 09:15:50', '2016-11-29 09:15:50', 'a:10:{s:9:"post_type";a:0:{}s:8:"taxonomy";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:14:"allow_archives";i:1;s:4:"type";s:9:"page_link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_583d472ce8132', '', '', '2016-11-29 09:26:46', '2016-11-29 09:26:46', '', 38, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=41', 3, 'acf-field', '', 0),
(42, 1, '2016-11-29 09:16:52', '2016-11-29 09:16:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-29 09:16:52', '2016-11-29 09:16:52', '', 4, 'http://c3staging.fp-production.com/4-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-11-29 09:26:46', '2016-11-29 09:26:46', 'a:10:{s:13:"return_format";s:5:"array";s:7:"library";s:3:"all";s:8:"min_size";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:4:"type";s:4:"file";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'video', 'video', 'publish', 'closed', 'closed', '', 'field_583d49ab7c96a', '', '', '2016-11-29 09:26:46', '2016-11-29 09:26:46', '', 38, 'http://c3staging.fp-production.com/?post_type=acf-field&p=43', 1, 'acf-field', '', 0),
(44, 1, '2016-11-29 09:29:21', '2016-11-29 09:29:21', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"team-member";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Team fields', 'team-fields', 'publish', 'closed', 'closed', '', 'group_583d4a59cbb82', '', '', '2017-01-09 12:03:26', '2017-01-09 12:03:26', '', 0, 'http://c3staging.fp-production.com/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2016-11-29 09:29:21', '2016-11-29 09:29:21', 'a:16:{s:7:"library";s:3:"all";s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:6:"insert";s:6:"append";s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Team image', 'team_image', 'publish', 'closed', 'closed', '', 'field_583d4a6feffe4', '', '', '2017-01-04 11:51:48', '2017-01-04 11:51:48', '', 44, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=45', 5, 'acf-field', '', 0),
(47, 1, '2016-11-29 09:35:07', '2016-11-29 09:35:07', 'a:10:{s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";s:9:"collapsed";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Contest title', 'contest_title', 'publish', 'closed', 'closed', '', 'field_583d4a954e815', '', '', '2017-01-04 11:51:48', '2017-01-04 11:51:48', '', 44, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=47', 7, 'acf-field', '', 0),
(48, 1, '2016-11-29 09:35:07', '2016-11-29 09:35:07', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Year', 'year', 'publish', 'closed', 'closed', '', 'field_583d4b3d4e816', '', '', '2016-11-29 09:35:07', '2016-11-29 09:35:07', '', 47, 'http://c3staging.fp-production.com/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2016-11-29 09:35:07', '2016-11-29 09:35:07', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_583d4b494e817', '', '', '2016-11-29 09:35:07', '2016-11-29 09:35:07', '', 47, 'http://c3staging.fp-production.com/?post_type=acf-field&p=49', 1, 'acf-field', '', 0),
(50, 1, '2016-11-29 09:35:07', '2016-11-29 09:35:07', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Division', 'division', 'publish', 'closed', 'closed', '', 'field_583d4bba4e818', '', '', '2016-11-29 09:35:07', '2016-11-29 09:35:07', '', 47, 'http://c3staging.fp-production.com/?post_type=acf-field&p=50', 2, 'acf-field', '', 0),
(51, 1, '2016-11-29 09:35:08', '2016-11-29 09:35:08', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Place', 'place', 'publish', 'closed', 'closed', '', 'field_583d4bc34e819', '', '', '2016-11-29 09:35:08', '2016-11-29 09:35:08', '', 47, 'http://c3staging.fp-production.com/?post_type=acf-field&p=51', 3, 'acf-field', '', 0),
(55, 1, '2016-11-29 09:45:31', '2016-11-29 09:45:31', 'a:10:{s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";s:9:"collapsed";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Details', 'details', 'publish', 'closed', 'closed', '', 'field_583d4c806b9af', '', '', '2017-01-04 11:51:48', '2017-01-04 11:51:48', '', 44, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=55', 6, 'acf-field', '', 0),
(56, 1, '2016-11-29 09:45:32', '2016-11-29 09:45:32', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'item name', 'item_name', 'publish', 'closed', 'closed', '', 'field_583d4e1e6b9b0', '', '', '2016-11-29 09:45:32', '2016-11-29 09:45:32', '', 55, 'http://c3staging.fp-production.com/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2016-11-29 09:45:32', '2016-11-29 09:45:32', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'item content', 'item_content', 'publish', 'closed', 'closed', '', 'field_583d4e2f6b9b1', '', '', '2016-11-29 09:45:32', '2016-11-29 09:45:32', '', 55, 'http://c3staging.fp-production.com/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(59, 1, '2016-11-29 09:48:00', '2016-11-29 09:48:00', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:14:"media-coverage";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Media fields', 'media-fields', 'publish', 'closed', 'closed', '', 'group_583d4ec64a791', '', '', '2016-11-29 09:51:05', '2016-11-29 09:51:05', '', 0, 'http://c3staging.fp-production.com/?post_type=acf-field-group&#038;p=59', 0, 'acf-field-group', '', 0),
(60, 1, '2016-11-29 09:51:05', '2016-11-29 09:51:05', 'a:15:{s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Media image', 'media_image', 'publish', 'closed', 'closed', '', 'field_583d4ed3acb11', '', '', '2016-11-29 09:51:05', '2016-11-29 09:51:05', '', 59, 'http://c3staging.fp-production.com/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 1, '2016-11-29 09:51:05', '2016-11-29 09:51:05', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Media video', 'media_video', 'publish', 'closed', 'closed', '', 'field_583d4ee3acb12', '', '', '2016-11-29 09:51:05', '2016-11-29 09:51:05', '', 59, 'http://c3staging.fp-production.com/?post_type=acf-field&p=61', 1, 'acf-field', '', 0),
(62, 1, '2016-11-29 09:57:29', '2016-11-29 09:57:29', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:20:"template-sponsor.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Contest sponsor fields', 'contest-sponsor-fields', 'publish', 'closed', 'closed', '', 'group_583d50f352a5f', '', '', '2016-11-29 10:02:55', '2016-11-29 10:02:55', '', 0, 'http://c3staging.fp-production.com/?post_type=acf-field-group&#038;p=62', 0, 'acf-field-group', '', 0),
(63, 1, '2016-11-29 10:00:04', '2016-11-29 10:00:04', 'a:10:{s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";s:9:"collapsed";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'contest detail', 'contest_detail', 'publish', 'closed', 'closed', '', 'field_583d513b2cb89', '', '', '2016-11-29 10:00:04', '2016-11-29 10:00:04', '', 62, 'http://c3staging.fp-production.com/?post_type=acf-field&p=63', 0, 'acf-field', '', 0),
(64, 1, '2016-11-29 10:00:04', '2016-11-29 10:00:04', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Year', 'year', 'publish', 'closed', 'closed', '', 'field_583d51592cb8a', '', '', '2016-11-29 10:00:04', '2016-11-29 10:00:04', '', 63, 'http://c3staging.fp-production.com/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2016-11-29 10:00:04', '2016-11-29 10:00:04', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Contest name', 'contest_name', 'publish', 'closed', 'closed', '', 'field_583d51612cb8b', '', '', '2016-11-29 10:00:04', '2016-11-29 10:00:04', '', 63, 'http://c3staging.fp-production.com/?post_type=acf-field&p=65', 1, 'acf-field', '', 0),
(66, 1, '2016-11-29 10:00:04', '2016-11-29 10:00:04', 'a:15:{s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_583d516a2cb8c', '', '', '2016-11-29 10:00:04', '2016-11-29 10:00:04', '', 63, 'http://c3staging.fp-production.com/?post_type=acf-field&p=66', 2, 'acf-field', '', 0),
(67, 1, '2016-11-29 10:00:04', '2016-11-29 10:00:04', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_583d51742cb8d', '', '', '2016-11-29 10:00:04', '2016-11-29 10:00:04', '', 63, 'http://c3staging.fp-production.com/?post_type=acf-field&p=67', 3, 'acf-field', '', 0),
(69, 1, '2016-12-06 06:57:48', '2016-12-06 06:57:48', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2016-12-06 07:01:15', '2016-12-06 07:01:15', '', 0, 'http://c3staging.fp-production.com/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2016-12-06 06:57:49', '2016-12-06 06:57:49', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2016-12-06 07:01:15', '2016-12-06 07:01:15', '', 0, 'http://c3staging.fp-production.com/?p=70', 3, 'nav_menu_item', '', 0),
(71, 1, '2016-12-06 06:58:09', '2016-12-06 06:58:09', '', 'Service and Contact', '', 'publish', 'closed', 'closed', '', 'service-and-contact', '', '', '2016-12-06 06:58:09', '2016-12-06 06:58:09', '', 0, 'http://c3staging.fp-production.com/?page_id=71', 0, 'page', '', 0),
(72, 1, '2016-12-06 06:58:09', '2016-12-06 06:58:09', '', 'Service and Contact', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2016-12-06 06:58:09', '2016-12-06 06:58:09', '', 71, 'http://c3staging.fp-production.com/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2016-12-06 06:58:23', '2016-12-06 06:58:23', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2016-12-06 07:01:15', '2016-12-06 07:01:15', '', 0, 'http://c3staging.fp-production.com/?p=73', 2, 'nav_menu_item', '', 0),
(76, 1, '2016-12-14 06:44:23', '2016-12-14 06:44:23', '', 'Retailer locator', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-12-14 06:44:23', '2016-12-14 06:44:23', '', 16, 'http://c3staging.fp-production.com/16-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-12-14 06:59:21', '2016-12-14 06:59:21', '', 'Yoyos', '', 'publish', 'closed', 'closed', '', 'yoyos', '', '', '2016-12-14 11:31:11', '2016-12-14 11:31:11', '', 0, 'http://c3staging.fp-production.com/?page_id=77', 0, 'page', '', 0),
(78, 1, '2016-12-14 06:59:21', '2016-12-14 06:59:21', '', 'Our Products', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-12-14 06:59:21', '2016-12-14 06:59:21', '', 77, 'http://c3staging.fp-production.com/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2016-12-14 06:59:48', '2016-12-14 06:59:48', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2016-12-14 08:23:07', '2016-12-14 08:23:07', '', 0, 'http://c3staging.fp-production.com/?p=79', 3, 'nav_menu_item', '', 0),
(80, 1, '2016-12-14 07:00:10', '2016-12-14 07:00:10', '', 'Team C3', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-12-14 07:00:10', '2016-12-14 07:00:10', '', 13, 'http://c3staging.fp-production.com/13-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2016-12-14 08:22:38', '2016-12-14 08:22:38', '', 'C3X', '', 'publish', 'closed', 'closed', '', 'c3x', '', '', '2017-01-27 07:25:09', '2017-01-27 07:25:09', '', 0, 'http://c3staging.fp-production.com/?page_id=82', 0, 'page', '', 0),
(83, 1, '2016-12-14 08:22:38', '2016-12-14 08:22:38', '', 'C3X', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2016-12-14 08:22:38', '2016-12-14 08:22:38', '', 82, 'http://c3staging.fp-production.com/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2016-12-14 08:23:07', '2016-12-14 08:23:07', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2016-12-14 08:23:07', '2016-12-14 08:23:07', '', 0, 'http://c3staging.fp-production.com/?p=84', 4, 'nav_menu_item', '', 0),
(85, 1, '2016-12-14 10:02:41', '2016-12-14 10:02:41', '', 'RADIUS', '', 'publish', 'closed', 'closed', '', 'radius', '', '', '2016-12-14 10:02:41', '2016-12-14 10:02:41', '', 0, 'http://c3staging.fp-production.com/?post_type=product&#038;p=85', 0, 'product', '', 0),
(86, 1, '2016-12-14 09:57:40', '2016-12-14 09:57:40', '', 'radius16', '', 'inherit', 'closed', 'closed', '', 'radius16', '', '', '2016-12-14 09:57:40', '2016-12-14 09:57:40', '', 85, 'http://c3staging.fp-production.com/wp-content/uploads/2016/12/radius16.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2016-12-14 09:59:46', '2016-12-14 09:59:46', '', 'Variation #87 of RADIUS', '', 'publish', 'closed', 'closed', '', 'product-85-variation', '', '', '2016-12-14 10:01:20', '2016-12-14 10:01:20', '', 85, 'http://c3staging.fp-production.com/?post_type=product&p=85', 1, 'product_variation', '', 0),
(88, 1, '2016-12-14 10:01:26', '2016-12-14 10:01:26', '', 'Variation #88 of RADIUS', '', 'publish', 'closed', 'closed', '', 'product-85-variation-2', '', '', '2016-12-14 10:02:35', '2016-12-14 10:02:35', '', 85, 'http://c3staging.fp-production.com/?post_type=product&p=85', 1, 'product_variation', '', 0),
(89, 1, '2016-12-14 10:01:54', '2016-12-14 10:01:54', '', 'Variation #89 of RADIUS', '', 'publish', 'closed', 'closed', '', 'product-85-variation-3', '', '', '2016-12-14 10:02:05', '2016-12-14 10:02:05', '', 85, 'http://c3staging.fp-production.com/?post_type=product&p=85', 1, 'product_variation', '', 0),
(90, 1, '2016-12-14 10:07:34', '2016-12-14 10:07:34', '', 'M.O.V.E.', '', 'publish', 'closed', 'closed', '', 'm-o-v-e', '', '', '2016-12-14 10:07:34', '2016-12-14 10:07:34', '', 0, 'http://c3staging.fp-production.com/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2016-12-14 10:05:24', '2016-12-14 10:05:24', '', 'move11_1_2', '', 'inherit', 'closed', 'closed', '', 'move11_1_2', '', '', '2016-12-14 10:05:24', '2016-12-14 10:05:24', '', 90, 'http://c3staging.fp-production.com/wp-content/uploads/2016/12/move11_1_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2016-12-14 10:06:23', '2016-12-14 10:06:23', '', 'Variation #92 of M.O.V.E.', '', 'publish', 'closed', 'closed', '', 'product-90-variation', '', '', '2016-12-14 10:07:24', '2016-12-14 10:07:24', '', 90, 'http://c3staging.fp-production.com/?post_type=product&p=90', 1, 'product_variation', '', 0),
(93, 1, '2016-12-14 10:06:26', '2016-12-14 10:06:26', '', 'Variation #93 of M.O.V.E.', '', 'publish', 'closed', 'closed', '', 'product-90-variation-2', '', '', '2016-12-14 10:07:24', '2016-12-14 10:07:24', '', 90, 'http://c3staging.fp-production.com/?post_type=product&p=90', 1, 'product_variation', '', 0),
(94, 1, '2016-12-14 10:06:27', '2016-12-14 10:06:27', '', 'Variation #94 of M.O.V.E.', '', 'publish', 'closed', 'closed', '', 'product-90-variation-3', '', '', '2016-12-14 10:07:23', '2016-12-14 10:07:23', '', 90, 'http://c3staging.fp-production.com/?post_type=product&p=90', 1, 'product_variation', '', 0),
(95, 1, '2016-12-14 10:06:30', '2016-12-14 10:06:30', '', 'Variation #95 of M.O.V.E.', '', 'publish', 'closed', 'closed', '', 'product-90-variation-4', '', '', '2016-12-14 10:07:23', '2016-12-14 10:07:23', '', 90, 'http://c3staging.fp-production.com/?post_type=product&p=90', 1, 'product_variation', '', 0),
(96, 1, '2016-12-14 10:09:32', '2016-12-14 10:09:32', '', 'Accelerator', '', 'publish', 'closed', 'closed', '', 'accelerator', '', '', '2016-12-14 10:09:32', '2016-12-14 10:09:32', '', 0, 'http://c3staging.fp-production.com/?post_type=product&#038;p=96', 0, 'product', '', 0),
(97, 1, '2016-12-14 10:08:08', '2016-12-14 10:08:08', '', 'accelerator17_5', '', 'inherit', 'closed', 'closed', '', 'accelerator17_5', '', '', '2016-12-14 10:08:08', '2016-12-14 10:08:08', '', 96, 'http://c3staging.fp-production.com/wp-content/uploads/2016/12/accelerator17_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2016-12-14 10:08:35', '2016-12-14 10:08:35', '', 'Variation #98 of Accelerator', '', 'publish', 'closed', 'closed', '', 'product-96-variation', '', '', '2016-12-14 10:09:26', '2016-12-14 10:09:26', '', 96, 'http://c3staging.fp-production.com/?post_type=product&p=96', 1, 'product_variation', '', 0),
(99, 1, '2016-12-14 10:08:37', '2016-12-14 10:08:37', '', 'Variation #99 of Accelerator', '', 'publish', 'closed', 'closed', '', 'product-96-variation-2', '', '', '2016-12-14 10:09:26', '2016-12-14 10:09:26', '', 96, 'http://c3staging.fp-production.com/?post_type=product&p=96', 1, 'product_variation', '', 0),
(100, 1, '2016-12-14 10:08:38', '2016-12-14 10:08:38', '', 'Variation #100 of Accelerator', '', 'publish', 'closed', 'closed', '', 'product-96-variation-3', '', '', '2016-12-14 10:09:25', '2016-12-14 10:09:25', '', 96, 'http://c3staging.fp-production.com/?post_type=product&p=96', 1, 'product_variation', '', 0),
(101, 1, '2016-12-14 10:12:17', '2016-12-14 10:12:17', '', 'Flawless', '', 'publish', 'closed', 'closed', '', 'flawless', '', '', '2016-12-14 10:12:17', '2016-12-14 10:12:17', '', 0, 'http://c3staging.fp-production.com/?post_type=product&#038;p=101', 0, 'product', '', 0),
(102, 1, '2016-12-14 10:11:40', '2016-12-14 10:11:40', '', 'flawless11', '', 'inherit', 'closed', 'closed', '', 'flawless11', '', '', '2016-12-14 10:11:40', '2016-12-14 10:11:40', '', 101, 'http://c3staging.fp-production.com/wp-content/uploads/2016/12/flawless11.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2016-12-14 10:14:16', '2016-12-14 10:14:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Initiator', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'closed', 'closed', '', 'initiator', '', '', '2017-02-02 08:41:58', '2017-02-02 08:41:58', '', 0, 'http://c3staging.fp-production.com/?post_type=product&#038;p=103', 0, 'product', '', 0),
(104, 1, '2016-12-14 10:12:50', '2016-12-14 10:12:50', '', 'initiator12_1', '', 'inherit', 'closed', 'closed', '', 'initiator12_1', '', '', '2016-12-14 10:12:50', '2016-12-14 10:12:50', '', 103, 'http://c3staging.fp-production.com/wp-content/uploads/2016/12/initiator12_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2016-12-14 10:13:40', '2016-12-14 10:13:40', '', 'Variation #105 of Initiator', '', 'publish', 'closed', 'closed', '', 'product-103-variation', '', '', '2016-12-14 10:14:10', '2016-12-14 10:14:10', '', 103, 'http://c3staging.fp-production.com/?post_type=product&p=103', 1, 'product_variation', '', 0),
(106, 1, '2016-12-14 10:13:42', '2016-12-14 10:13:42', '', 'Variation #106 of Initiator', '', 'publish', 'closed', 'closed', '', 'product-103-variation-2', '', '', '2016-12-14 10:14:12', '2016-12-14 10:14:12', '', 103, 'http://c3staging.fp-production.com/?post_type=product&p=103', 1, 'product_variation', '', 0),
(108, 1, '2016-12-14 10:30:03', '2016-12-14 10:30:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-12-14 10:30:03', '2016-12-14 10:30:03', '', 4, 'http://c3staging.fp-production.com/4-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2016-12-14 11:31:11', '2016-12-14 11:31:11', '', 'Yoyos', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-12-14 11:31:11', '2016-12-14 11:31:11', '', 77, 'http://c3staging.fp-production.com/77-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2016-12-14 11:50:42', '2016-12-14 11:50:42', 'The Initiator has been updated with an improved spacer and axle system.\r\n\r\nC3''s first looping yo-yo has been redesigned thanks to the input from player feedback. The biggest improvements have been in the spacer and axle system, making it even easier to handle and maintain. Right out of the box, Initiator is a perfect fit for players new to looping, and by switching to the metal spacer you can get competition-level looping performance with minimum effort.\r\n\r\nThe new axle is much stronger than the original Initiator, made from a more robust material that is much harder to break. Thanks to this, C3 has also reduced the chance of your yo-yo gaps getting messed up due to a mid-air collision. As for the performance itself, it doesn''t matter what your level, or what kind of looping trick you attempt, the Initiator is a solid throw for players of all kinds. C3 has made great strides towards the ideal looping yo-yo with their new Initiator.\r\n\r\nOf course, you can modify the responsiveness of the yo-yo with looping oil. Aside from C3''s own string, we recommend using Type 6 (50/50), Type 8 (50/50), or K-String''s poly 100% string. Although this model uses a starburst response system, it is an exception to the rule and can handle 100% polyester strings.', 'Initiator', '', 'publish', 'closed', 'closed', '', 'initiator', '', '', '2016-12-14 12:08:18', '2016-12-14 12:08:18', '', 0, 'http://c3staging.fp-production.com/?post_type=c3_product&#038;p=110', 0, 'c3_product', '', 0),
(111, 1, '2016-12-14 11:53:05', '2016-12-14 11:53:05', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"c3_product";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'C3 Product fields', 'c3-product-fields', 'publish', 'closed', 'closed', '', 'group_5851328b79e55', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 0, 'http://c3staging.fp-production.com/?post_type=acf-field-group&#038;p=111', 0, 'acf-field-group', '', 0),
(112, 1, '2016-12-14 12:01:41', '2016-12-14 12:01:41', 'a:16:{s:7:"library";s:3:"all";s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:6:"insert";s:6:"append";s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_585132a4b3b9c', '', '', '2016-12-14 12:01:41', '2016-12-14 12:01:41', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&p=112', 0, 'acf-field', '', 0),
(113, 1, '2016-12-14 12:01:41', '2016-12-14 12:01:41', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Weight (g)', 'weight', 'publish', 'closed', 'closed', '', 'field_585133ffb3b9d', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=113', 2, 'acf-field', '', 0),
(115, 1, '2016-12-14 12:04:05', '2016-12-14 12:04:05', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Diameter (mm)', 'diameter', 'publish', 'closed', 'closed', '', 'field_5851352ebd8ac', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=115', 3, 'acf-field', '', 0),
(116, 1, '2016-12-14 12:04:11', '2016-12-14 12:04:11', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Width (mm)', 'width', 'publish', 'closed', 'closed', '', 'field_5851353748e6b', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=116', 4, 'acf-field', '', 0),
(117, 1, '2016-12-14 12:04:40', '2016-12-14 12:04:40', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Trapeze efffective width (mm)', 'trapeze_efffective_width', 'publish', 'closed', 'closed', '', 'field_5851354dd8020', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=117', 5, 'acf-field', '', 0),
(118, 1, '2016-12-14 12:04:50', '2016-12-14 12:04:50', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Material', 'material', 'publish', 'closed', 'closed', '', 'field_5851355b15e4d', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=118', 6, 'acf-field', '', 0),
(119, 1, '2016-12-14 12:04:55', '2016-12-14 12:04:55', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Bind', 'bind', 'publish', 'closed', 'closed', '', 'field_585135640f6b8', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=119', 7, 'acf-field', '', 0),
(120, 1, '2016-12-14 12:05:10', '2016-12-14 12:05:10', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Style', 'style', 'publish', 'closed', 'closed', '', 'field_5851356f174e6', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=120', 8, 'acf-field', '', 0),
(121, 1, '2016-12-14 12:05:18', '2016-12-14 12:05:18', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Bearing', 'bearing', 'publish', 'closed', 'closed', '', 'field_585135798bb26', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=121', 9, 'acf-field', '', 0),
(122, 1, '2016-12-14 12:05:25', '2016-12-14 12:05:25', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Response', 'response', 'publish', 'closed', 'closed', '', 'field_585135814bded', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=122', 10, 'acf-field', '', 0),
(123, 1, '2016-12-14 12:06:36', '2016-12-14 12:06:36', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Signature', 'signature', 'publish', 'closed', 'closed', '', 'field_585135c3c4e6b', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=123', 11, 'acf-field', '', 0),
(124, 1, '2016-12-14 13:59:45', '2016-12-14 13:59:45', '', 'Accelerator', '', 'publish', 'closed', 'closed', '', 'accelerator', '', '', '2016-12-14 14:28:16', '2016-12-14 14:28:16', '', 0, 'http://c3staging.fp-production.com/?post_type=c3_product&#038;p=124', 0, 'c3_product', '', 0),
(125, 1, '2016-12-14 14:00:28', '2016-12-14 14:00:28', '', 'Radius', '', 'publish', 'closed', 'closed', '', 'radius', '', '', '2016-12-14 14:00:28', '2016-12-14 14:00:28', '', 0, 'http://c3staging.fp-production.com/?post_type=c3_product&#038;p=125', 0, 'c3_product', '', 0),
(126, 1, '2016-12-14 14:01:32', '2016-12-14 14:01:32', '', 'Flawless', '', 'publish', 'closed', 'closed', '', 'flawless', '', '', '2016-12-14 14:01:32', '2016-12-14 14:01:32', '', 0, 'http://c3staging.fp-production.com/?post_type=c3_product&#038;p=126', 0, 'c3_product', '', 0),
(127, 1, '2016-12-14 14:25:55', '2016-12-14 14:25:55', 'a:15:{s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5851565f6a359', '', '', '2016-12-14 14:25:55', '2016-12-14 14:25:55', '', 111, 'http://c3staging.fp-production.com/?post_type=acf-field&p=127', 1, 'acf-field', '', 0),
(128, 1, '2016-12-14 14:28:12', '2016-12-14 14:28:12', '', 'img_logo_dummy', '', 'inherit', 'closed', 'closed', '', 'img_logo_dummy', '', '', '2016-12-14 14:28:13', '2016-12-14 14:28:13', '', 124, 'http://c3staging.fp-production.com/wp-content/uploads/2016/12/img_logo_dummy.png', 0, 'attachment', 'image/png', 0),
(130, 1, '2017-01-03 10:31:25', '2017-01-03 10:31:25', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2017-01-03 10:31:25', '2017-01-03 10:31:25', '', 0, 'http://c3staging.fp-production.com/?p=130', 4, 'nav_menu_item', '', 0),
(131, 1, '2017-01-03 10:31:24', '2017-01-03 10:31:24', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2017-01-03 10:31:24', '2017-01-03 10:31:24', '', 0, 'http://c3staging.fp-production.com/?p=131', 1, 'nav_menu_item', '', 0),
(132, 1, '2017-01-03 10:31:25', '2017-01-03 10:31:25', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2017-01-03 10:31:25', '2017-01-03 10:31:25', '', 0, 'http://c3staging.fp-production.com/?p=132', 3, 'nav_menu_item', '', 0),
(133, 1, '2017-01-03 10:31:25', '2017-01-03 10:31:25', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2017-01-03 10:31:25', '2017-01-03 10:31:25', '', 0, 'http://c3staging.fp-production.com/?p=133', 2, 'nav_menu_item', '', 0),
(134, 1, '2017-01-03 10:32:23', '2017-01-03 10:32:23', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2017-01-03 10:32:23', '2017-01-03 10:32:23', '', 0, 'http://c3staging.fp-production.com/?p=134', 1, 'nav_menu_item', '', 0),
(135, 1, '2017-01-03 10:32:23', '2017-01-03 10:32:23', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2017-01-03 10:32:23', '2017-01-03 10:32:23', '', 0, 'http://c3staging.fp-production.com/?p=135', 2, 'nav_menu_item', '', 0),
(136, 1, '2017-01-03 10:32:23', '2017-01-03 10:32:23', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2017-01-03 10:32:23', '2017-01-03 10:32:23', '', 0, 'http://c3staging.fp-production.com/?p=136', 3, 'nav_menu_item', '', 0),
(137, 1, '2017-01-04 05:43:47', '2017-01-04 05:43:47', '', 'Peter Pong Si Yee', '', 'publish', 'closed', 'closed', '', 'peter-pong-si-yee', '', '', '2017-01-09 11:58:53', '2017-01-09 11:58:53', '', 0, 'http://c3staging.fp-production.com/?post_type=team-member&#038;p=137', 0, 'team-member', '', 0),
(138, 1, '2017-01-04 05:43:33', '2017-01-04 05:43:33', '', 'Peter-pong-si-yee', '', 'inherit', 'closed', 'closed', '', 'peter-pong-si-yee', '', '', '2017-01-04 05:43:33', '2017-01-04 05:43:33', '', 137, 'http://c3staging.fp-production.com/wp-content/uploads/2017/01/Peter-pong-si-yee.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2017-01-04 06:58:09', '2017-01-04 06:58:09', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Display name', 'display_name', 'publish', 'closed', 'closed', '', 'field_586c9cf14e83f', '', '', '2017-01-04 06:58:09', '2017-01-04 06:58:09', '', 44, 'http://c3staging.fp-production.com/?post_type=acf-field&p=139', 0, 'acf-field', '', 0),
(140, 1, '2017-01-04 07:48:48', '2017-01-04 07:48:48', '', 'Ng Wang Kit', '', 'publish', 'closed', 'closed', '', 'ng-wang-kit', '', '', '2017-01-04 07:48:48', '2017-01-04 07:48:48', '', 0, 'http://c3staging.fp-production.com/?post_type=team-member&#038;p=140', 0, 'team-member', '', 0),
(141, 1, '2017-01-04 07:48:40', '2017-01-04 07:48:40', '', 'Ng-wang-kit', '', 'inherit', 'closed', 'closed', '', 'ng-wang-kit', '', '', '2017-01-04 07:48:40', '2017-01-04 07:48:40', '', 140, 'http://c3staging.fp-production.com/wp-content/uploads/2017/01/Ng-wang-kit.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2017-01-04 07:52:58', '2017-01-04 07:52:58', '', 'Ethan Wong Wing Hang', '', 'publish', 'closed', 'closed', '', 'ethan-wong-wing-hang', '', '', '2017-01-04 07:52:58', '2017-01-04 07:52:58', '', 0, 'http://c3staging.fp-production.com/?post_type=team-member&#038;p=142', 0, 'team-member', '', 0),
(143, 1, '2017-01-04 07:52:53', '2017-01-04 07:52:53', '', 'Ethan-wong-wing-hang', '', 'inherit', 'closed', 'closed', '', 'ethan-wong-wing-hang', '', '', '2017-01-04 07:52:53', '2017-01-04 07:52:53', '', 142, 'http://c3staging.fp-production.com/wp-content/uploads/2017/01/Ethan-wong-wing-hang.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2017-01-04 07:55:34', '2017-01-04 07:55:34', '', 'Terence Wong Chun Tak', '', 'publish', 'closed', 'closed', '', 'terence-wong-chun-tak', '', '', '2017-01-04 07:55:34', '2017-01-04 07:55:34', '', 0, 'http://c3staging.fp-production.com/?post_type=team-member&#038;p=144', 0, 'team-member', '', 0),
(145, 1, '2017-01-04 07:55:30', '2017-01-04 07:55:30', '', 'Terence-wong-chun-tak', '', 'inherit', 'closed', 'closed', '', 'terence-wong-chun-tak', '', '', '2017-01-04 07:55:30', '2017-01-04 07:55:30', '', 144, 'http://c3staging.fp-production.com/wp-content/uploads/2017/01/Terence-wong-chun-tak.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2017-01-04 09:21:06', '2017-01-04 09:21:06', 'a:13:{s:8:"multiple";i:0;s:10:"allow_null";i:0;s:7:"choices";a:2:{s:4:"male";s:4:"Male";s:6:"female";s:6:"Female";}s:13:"default_value";a:0:{}s:2:"ui";i:0;s:4:"ajax";i:0;s:11:"placeholder";s:0:"";s:13:"return_format";s:5:"value";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Gender', 'gender', 'publish', 'closed', 'closed', '', 'field_586cbe62fa54d', '', '', '2017-01-04 11:51:48', '2017-01-04 11:51:48', '', 44, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=146', 1, 'acf-field', '', 0),
(153, 1, '2017-01-04 11:02:55', '2017-01-04 11:02:55', 'a:12:{s:9:"post_type";a:1:{i:0;s:7:"product";}s:8:"taxonomy";a:0:{}s:3:"min";s:0:"";s:3:"max";s:0:"";s:7:"filters";a:3:{i:0;s:6:"search";i:1;s:9:"post_type";i:2;s:8:"taxonomy";}s:8:"elements";s:0:"";s:13:"return_format";s:6:"object";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Favorite yoyo', 'favorite_yoyo', 'publish', 'closed', 'closed', '', 'field_586cd6461437f', '', '', '2017-01-04 11:51:48', '2017-01-04 11:51:48', '', 44, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=153', 8, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(154, 1, '2017-01-04 11:20:22', '2017-01-04 11:20:22', '', 'Peter-pong-si-yee-1', '', 'inherit', 'closed', 'closed', '', 'peter-pong-si-yee-1', '', '', '2017-01-04 11:20:27', '2017-01-04 11:20:27', '', 137, 'http://c3staging.fp-production.com/wp-content/uploads/2017/01/Peter-pong-si-yee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2017-01-04 11:20:23', '2017-01-04 11:20:23', '', 'Peter-pong-si-yee-2', '', 'inherit', 'closed', 'closed', '', 'peter-pong-si-yee-2', '', '', '2017-01-04 11:20:23', '2017-01-04 11:20:23', '', 137, 'http://c3staging.fp-production.com/wp-content/uploads/2017/01/Peter-pong-si-yee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2017-01-04 11:20:23', '2017-01-04 11:20:23', '', 'Peter-pong-si-yee-3', '', 'inherit', 'closed', 'closed', '', 'peter-pong-si-yee-3', '', '', '2017-01-04 11:20:23', '2017-01-04 11:20:23', '', 137, 'http://c3staging.fp-production.com/wp-content/uploads/2017/01/Peter-pong-si-yee-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2017-01-04 11:27:27', '2017-01-04 11:27:27', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Facebook link', 'facebook_link', 'publish', 'closed', 'closed', '', 'field_586cdc0ca6304', '', '', '2017-01-04 11:51:48', '2017-01-04 11:51:48', '', 44, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=157', 2, 'acf-field', '', 0),
(158, 1, '2017-01-04 11:27:48', '2017-01-04 11:27:48', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Instagram link', 'instagram_link', 'publish', 'closed', 'closed', '', 'field_586cdc2389858', '', '', '2017-01-04 11:51:48', '2017-01-04 11:51:48', '', 44, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=158', 3, 'acf-field', '', 0),
(159, 1, '2017-01-04 11:27:48', '2017-01-04 11:27:48', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Twitter link', 'twitter_link', 'publish', 'closed', 'closed', '', 'field_586cdc2b89859', '', '', '2017-01-04 11:51:48', '2017-01-04 11:51:48', '', 44, 'http://c3staging.fp-production.com/?post_type=acf-field&#038;p=159', 4, 'acf-field', '', 0),
(160, 1, '2017-01-09 14:02:20', '2017-01-09 14:02:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'publish', 'closed', 'closed', '', 'hello-world-1', '', '', '2017-01-09 14:07:12', '2017-01-09 14:07:12', '', 0, 'http://c3staging.fp-production.com/?p=160', 0, 'post', '', 0),
(161, 1, '2017-01-09 14:02:20', '2017-01-09 14:02:20', '', 'Hello world 1', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2017-01-09 14:02:20', '2017-01-09 14:02:20', '', 160, 'http://c3staging.fp-production.com/160-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2017-01-09 14:03:00', '2017-01-09 14:03:00', '', 'img_post_dummy', '', 'inherit', 'closed', 'closed', '', 'img_post_dummy', '', '', '2017-01-09 14:03:00', '2017-01-09 14:03:00', '', 160, 'http://c3staging.fp-production.com/wp-content/uploads/2017/01/img_post_dummy.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2017-01-09 14:03:14', '2017-01-09 14:03:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'publish', 'closed', 'closed', '', 'hello-world-2', '', '', '2017-01-09 14:07:14', '2017-01-09 14:07:14', '', 0, 'http://c3staging.fp-production.com/?p=163', 0, 'post', '', 0),
(164, 1, '2017-01-09 14:03:24', '2017-01-09 14:03:24', '', 'Hello world 2', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2017-01-09 14:03:24', '2017-01-09 14:03:24', '', 163, 'http://c3staging.fp-production.com/163-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2017-01-09 14:05:01', '2017-01-09 14:05:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'publish', 'closed', 'closed', '', 'hello-world-3', '', '', '2017-01-09 14:07:14', '2017-01-09 14:07:14', '', 0, 'http://c3staging.fp-production.com/?p=165', 0, 'post', '', 0),
(166, 1, '2017-01-09 14:05:11', '2017-01-09 14:05:11', '', 'Hello world 3', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2017-01-09 14:05:11', '2017-01-09 14:05:11', '', 165, 'http://c3staging.fp-production.com/165-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2017-01-09 14:05:15', '2017-01-09 14:05:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'publish', 'closed', 'closed', '', 'hello-world-4', '', '', '2017-01-09 14:06:55', '2017-01-09 14:06:55', '', 0, 'http://c3staging.fp-production.com/?p=167', 0, 'post', '', 0),
(168, 1, '2017-01-09 14:05:25', '2017-01-09 14:05:25', '', 'Hello world 4', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2017-01-09 14:05:25', '2017-01-09 14:05:25', '', 167, 'http://c3staging.fp-production.com/167-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2017-01-09 14:06:36', '2017-01-09 14:06:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 4', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2017-01-09 14:06:36', '2017-01-09 14:06:36', '', 167, 'http://c3staging.fp-production.com/167-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2017-01-09 14:06:39', '2017-01-09 14:06:39', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 3', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2017-01-09 14:06:39', '2017-01-09 14:06:39', '', 165, 'http://c3staging.fp-production.com/165-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2017-01-09 14:06:41', '2017-01-09 14:06:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 2', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2017-01-09 14:06:41', '2017-01-09 14:06:41', '', 163, 'http://c3staging.fp-production.com/163-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2017-01-09 14:06:41', '2017-01-09 14:06:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 1', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2017-01-09 14:06:41', '2017-01-09 14:06:41', '', 160, 'http://c3staging.fp-production.com/160-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2017-01-09 14:06:55', '2017-01-09 14:06:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2017-01-09 14:06:55', '2017-01-09 14:06:55', '', 167, 'http://c3staging.fp-production.com/167-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2017-01-09 14:07:12', '2017-01-09 14:07:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2017-01-09 14:07:12', '2017-01-09 14:07:12', '', 160, 'http://c3staging.fp-production.com/160-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2017-01-09 14:07:14', '2017-01-09 14:07:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2017-01-09 14:07:14', '2017-01-09 14:07:14', '', 163, 'http://c3staging.fp-production.com/163-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2017-01-09 14:07:14', '2017-01-09 14:07:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Hello world 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2017-01-09 14:07:14', '2017-01-09 14:07:14', '', 165, 'http://c3staging.fp-production.com/165-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- 資料表的匯出資料 `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 31, 'order', '0'),
(2, 32, 'order', '0'),
(3, 33, 'order', '0'),
(4, 34, 'order', '0'),
(5, 35, 'order', '0'),
(6, 31, 'product_count_product_cat', '2'),
(7, 33, 'product_count_product_cat', '3');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=39 ;

--
-- 資料表的匯出資料 `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'Primary Navigation', 'primary-navigation', 0),
(7, 'Event', 'event', 0),
(8, 'Videos', 'videos', 0),
(9, 'Releases', 'releases', 0),
(10, 'C3 voice', 'c3-voice', 0),
(11, 'Gossip', 'gossip', 0),
(12, 'Function nav', 'function-nav', 0),
(13, 'Essential', 'essential', 0),
(14, 'Top', 'top', 0),
(15, 'Premier', 'premier', 0),
(16, 'C3X', 'c3x', 0),
(17, 'Hong Kong', '0-hong-kong', 0),
(18, 'Japan', '1-japan', 0),
(19, 'China', '2-china', 0),
(20, 'Czech Republic', '4-czech-republic', 0),
(21, 'Hungary', '5-hungary', 0),
(22, 'Poland', '3-poland', 0),
(23, 'Singapore', '6-singapore', 0),
(24, 'South Africa', '8-south-africa', 0),
(25, 'USA', '7-usa', 0),
(27, 'Rising Force', '9-rising-force', 0),
(30, 'Museum', 'museum', 0),
(31, 'Premier', 'premier', 0),
(32, 'Top', 'top', 0),
(33, 'Essential', 'essential', 0),
(34, 'Appeal', 'appeal', 0),
(35, 'Accessories', 'accessories', 0),
(36, 'Useful Pages', 'useful-pages', 0),
(37, 'Footer Account', 'footer-account', 0),
(38, 'peter pong si yee', 'peter-pong-si-yee', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(21, 6, 0),
(26, 6, 0),
(27, 6, 0),
(29, 6, 0),
(32, 6, 0),
(35, 6, 0),
(69, 12, 0),
(70, 12, 0),
(73, 12, 0),
(79, 6, 0),
(84, 6, 0),
(85, 4, 0),
(85, 31, 0),
(90, 4, 0),
(90, 33, 0),
(96, 4, 0),
(96, 33, 0),
(101, 2, 0),
(101, 31, 0),
(103, 4, 0),
(103, 33, 0),
(110, 13, 0),
(124, 13, 0),
(125, 15, 0),
(126, 15, 0),
(130, 36, 0),
(131, 36, 0),
(132, 36, 0),
(133, 36, 0),
(134, 37, 0),
(135, 37, 0),
(136, 37, 0),
(137, 17, 0),
(140, 17, 0),
(142, 17, 0),
(144, 17, 0),
(160, 9, 0),
(163, 11, 0),
(165, 7, 0),
(167, 10, 0),
(167, 38, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=39 ;

--
-- 資料表的匯出資料 `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 4),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 8),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 0),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 1),
(12, 12, 'nav_menu', '', 0, 3),
(13, 13, 'line-up', '', 0, 2),
(14, 14, 'line-up', '', 0, 0),
(15, 15, 'line-up', '', 0, 2),
(16, 16, 'line-up', '', 0, 0),
(17, 17, 'country', '', 0, 4),
(18, 18, 'country', '', 0, 0),
(19, 19, 'country', '', 0, 0),
(20, 20, 'country', '', 0, 0),
(21, 21, 'country', '', 0, 0),
(22, 22, 'country', '', 0, 0),
(23, 23, 'country', '', 0, 0),
(24, 24, 'country', '', 0, 0),
(25, 25, 'country', '', 0, 0),
(27, 27, 'country', '', 0, 0),
(30, 30, 'line-up', '', 0, 0),
(31, 31, 'product_cat', '', 0, 2),
(32, 32, 'product_cat', '', 0, 0),
(33, 33, 'product_cat', '', 0, 3),
(34, 34, 'product_cat', '', 0, 0),
(35, 35, 'product_cat', '', 0, 0),
(36, 36, 'nav_menu', '', 0, 4),
(37, 37, 'nav_menu', '', 0, 3),
(38, 38, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=52 ;

--
-- 資料表的匯出資料 `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'c3_admin'),
(2, 1, 'first_name', 'Ron'),
(3, 1, 'last_name', 'Chan'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'woo_advance_tracking_custom_admin_pointers1_0_woo_advance_tracking_notice_view'),
(13, 1, 'show_welcome_panel', '0'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '177'),
(16, 1, 'wp_yoast_notifications', 'a:4:{i:0;a:2:{s:7:"message";s:137:"Since you are new to Yoast SEO you can configure the <a href="http://c3staging.fp-production.com/wp-admin/?page=wpseo_configurator">plugin</a>";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:31:"wpseo-dismiss-onboarding-notice";s:5:"nonce";N;s:8:"priority";d:0.8000000000000000444089209850062616169452667236328125;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}i:1;a:2:{s:7:"message";s:730:"We''ve noticed you''ve been using Yoast SEO for some time now; we hope you love it! We''d be thrilled if you could <a href="https://yoa.st/rate-yoast-seo">give us a 5 stars rating on WordPress.org</a>!\n\nIf you are experiencing issues, <a href="https://yoa.st/bugreport">please file a bug report</a> and we''ll do our best to help you out.\n\nBy the way, did you know we also have a <a href=''https://yoa.st/premium-notification''>Premium plugin</a>? It offers advanced features, like a redirect manager and support for multiple keywords. It also comes with 24/7 personal support.\n\n<a class="button" href="http://c3staging.fp-production.com/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell">Please don''t show me this notification anymore</a>";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:19:"wpseo-upsell-notice";s:5:"nonce";N;s:8:"priority";d:0.8000000000000000444089209850062616169452667236328125;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}i:2;a:2:{s:7:"message";s:172:"Don''t miss your crawl errors: <a href="http://c3staging.fp-production.com/wp-admin/admin.php?page=wpseo_search_console&tab=settings">connect with Google Search Console here</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}i:3;a:2:{s:7:"message";s:307:"You still have the default WordPress tagline, even an empty one is probably better. <a href="http://c3staging.fp-production.com/wp-admin/customize.php?url=http%3A%2F%2Flocal.c3yoyodesign.com%2Fwp-admin%2Fadmin.php%3Fpage%3Dwc-settings%26tab%3Dproducts%26section%3Ddisplay">You can fix this in the customizer</a>.";s:7:"options";a:8:{s:4:"type";s:5:"error";s:2:"id";s:28:"wpseo-dismiss-tagline-notice";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}}'),
(17, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(19, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:60:"dashboard_quick_press,dashboard_right_now,dashboard_activity";s:4:"side";s:37:"gadwp-widget,wpseo-dashboard-overview";s:7:"column3";s:65:"woocommerce_dashboard_recent_reviews,woocommerce_dashboard_status";s:7:"column4";s:17:"dashboard_primary";}'),
(20, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(21, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:"commentstatusdiv";i:1;s:11:"commentsdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(23, 1, 'wpseo-dismiss-onboarding-notice', 'seen'),
(24, 1, 'wpseo-dismiss-gsc', 'seen'),
(25, 1, '_yoast_wpseo_profile_updated', '1480331768'),
(26, 1, 'nav_menu_recently_edited', '37'),
(27, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:8:{i:0;s:30:"woocommerce_endpoints_nav_link";i:1;s:21:"add-post-type-product";i:2;s:25:"add-post-type-team-member";i:3;s:28:"add-post-type-media-coverage";i:4;s:12:"add-post_tag";i:5;s:15:"add-post_format";i:6;s:15:"add-product_cat";i:7;s:15:"add-product_tag";}'),
(30, 1, 'acf_user_settings', 'a:0:{}'),
(31, 1, 'closedpostboxes_team-member', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(32, 1, 'metaboxhidden_team-member', 'a:3:{i:0;s:23:"acf-group_583d46c15582c";i:1;s:23:"acf-group_583d4a59cbb82";i:2;s:7:"slugdiv";}'),
(33, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(34, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(35, 1, 'session_tokens', 'a:1:{s:64:"c25353da80e4ca1282d8b23b72949550b9f4657b40f6977c807c271dd6e6d414";a:4:{s:10:"expiration";i:1486187568;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0";s:5:"login";i:1486014768;}}'),
(36, 1, 'closedpostboxes_product', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(37, 1, 'metaboxhidden_product', 'a:6:{i:0;s:23:"acf-group_583d50f352a5f";i:1;s:23:"acf-group_583d46c15582c";i:2;s:23:"acf-group_583d4ec64a791";i:3;s:23:"acf-group_583d4a59cbb82";i:4;s:10:"postcustom";i:5;s:7:"slugdiv";}'),
(38, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(39, 1, 'wp_user-settings-time', '1481717295'),
(40, 1, 'meta-box-order_product', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:84:"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images";s:6:"normal";s:198:"acf-group_5851328b79e55,postexcerpt,wpseo_meta,woocommerce-product-data,acf-group_583d50f352a5f,acf-group_583d46c15582c,acf-group_583d4ec64a791,acf-group_583d4a59cbb82,postcustom,slugdiv,commentsdiv";s:8:"advanced";s:0:"";}'),
(41, 1, 'screen_layout_product', '2'),
(42, 1, 'closedpostboxes_c3_product', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(43, 1, 'metaboxhidden_c3_product', 'a:5:{i:0;s:23:"acf-group_583d50f352a5f";i:1;s:23:"acf-group_583d46c15582c";i:2;s:23:"acf-group_583d4ec64a791";i:3;s:23:"acf-group_583d4a59cbb82";i:4;s:7:"slugdiv";}'),
(44, 1, 'last_update', '1483438213'),
(45, 1, 'locale', ''),
(46, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(47, 1, 'metaboxhidden_post', 'a:10:{i:0;s:23:"acf-group_5851328b79e55";i:1;s:23:"acf-group_583d50f352a5f";i:2;s:23:"acf-group_583d46c15582c";i:3;s:23:"acf-group_583d4ec64a791";i:4;s:23:"acf-group_583d4a59cbb82";i:5;s:13:"trackbacksdiv";i:6;s:10:"postcustom";i:7;s:16:"commentstatusdiv";i:8;s:7:"slugdiv";i:9;s:9:"authordiv";}'),
(48, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:0:{}}'),
(49, 1, 'woo_dynamic_gallery-plugin_framework_global_box-opened', '1'),
(51, 1, 'woo_dynamic_gallery-wc_dgallery_style_settings', 'a:3:{i:0;s:26:"wc_dgallery_dimensions_box";i:1;s:23:"wc_dgallery_effects_box";i:2;s:26:"wc_dgallery_thumbnails_box";}');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- 資料表的匯出資料 `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'c3_admin', '$P$BhRuU7xAMoKqMEB0hzlJoaOffdUPwK0', 'c3_admin', 'ron@c3yoyodesign.com', '', '2016-11-28 10:32:05', '', 0, 'c3_admin');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
`key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
`attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
`permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
`meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
`order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
`meta_id` bigint(20) NOT NULL,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_payment_tokens`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
`token_id` bigint(20) NOT NULL,
  `gateway_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
`session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_shipping_zones`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
`zone_id` bigint(20) NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
`location_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
`instance_id` bigint(20) NOT NULL,
  `method_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
`tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
`location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- 資料表索引 `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- 資料表索引 `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- 資料表索引 `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
 ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `wp_newsletter_sent`
--
ALTER TABLE `wp_newsletter_sent`
 ADD PRIMARY KEY (`email_id`,`user_id`), ADD KEY `user_id` (`user_id`), ADD KEY `email_id` (`email_id`);

--
-- 資料表索引 `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
 ADD PRIMARY KEY (`id`), ADD KEY `email_id` (`email_id`), ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- 資料表索引 `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- 資料表索引 `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- 資料表索引 `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- 資料表索引 `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- 資料表索引 `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`), ADD KEY `user_email` (`user_email`);

--
-- 資料表索引 `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
 ADD PRIMARY KEY (`key_id`), ADD KEY `consumer_key` (`consumer_key`), ADD KEY `consumer_secret` (`consumer_secret`);

--
-- 資料表索引 `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
 ADD PRIMARY KEY (`attribute_id`), ADD KEY `attribute_name` (`attribute_name`(191));

--
-- 資料表索引 `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
 ADD PRIMARY KEY (`permission_id`), ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`), ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- 資料表索引 `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `order_item_id` (`order_item_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
 ADD PRIMARY KEY (`order_item_id`), ADD KEY `order_id` (`order_id`);

--
-- 資料表索引 `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `payment_token_id` (`payment_token_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
 ADD PRIMARY KEY (`token_id`), ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
 ADD PRIMARY KEY (`session_key`), ADD UNIQUE KEY `session_id` (`session_id`);

--
-- 資料表索引 `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
 ADD PRIMARY KEY (`zone_id`);

--
-- 資料表索引 `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `location_id` (`location_id`), ADD KEY `location_type` (`location_type`), ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- 資料表索引 `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
 ADD PRIMARY KEY (`instance_id`);

--
-- 資料表索引 `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
 ADD PRIMARY KEY (`tax_rate_id`), ADD KEY `tax_rate_country` (`tax_rate_country`(191)), ADD KEY `tax_rate_state` (`tax_rate_state`(191)), ADD KEY `tax_rate_class` (`tax_rate_class`(191)), ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- 資料表索引 `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `tax_rate_id` (`tax_rate_id`), ADD KEY `location_type` (`location_type`), ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4503;
--
-- 使用資料表 AUTO_INCREMENT `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1114;
--
-- 使用資料表 AUTO_INCREMENT `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=177;
--
-- 使用資料表 AUTO_INCREMENT `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- 使用資料表 AUTO_INCREMENT `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- 使用資料表 AUTO_INCREMENT `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- 使用資料表 AUTO_INCREMENT `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- 使用資料表 AUTO_INCREMENT `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
MODIFY `token_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
MODIFY `zone_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
MODIFY `instance_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
