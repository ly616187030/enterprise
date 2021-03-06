-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2017-12-02 09:11:44
-- 服务器版本： 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enterprise`
--

-- --------------------------------------------------------

--
-- 表的结构 `carousel`
--

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片名称',
  `herf` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '跳转地址',
  `img` text COLLATE utf8_unicode_ci NOT NULL COMMENT '图片URL',
  `sort` int(5) DEFAULT '999' COMMENT '图片排序',
  `state` tinyint(1) NOT NULL COMMENT '状态：1显示 -1隐藏'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='首页轮播图';

--
-- 转存表中的数据 `carousel`
--

INSERT INTO `carousel` (`id`, `name`, `herf`, `img`, `sort`, `state`) VALUES
(1, '1', NULL, 'carouse/carouse-151200775988-787.jpg', 1, 1),
(2, '2', 'www.baidu.com', 'carouse/carouse-151200777747-123.jpg', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2017-11-25 07:24:25', '2017-11-25 07:24:25'),
(2, NULL, 1, 'Category 2', 'category-2', '2017-11-25 07:24:25', '2017-11-25 07:24:25');

-- --------------------------------------------------------

--
-- 表的结构 `contact`
--

CREATE TABLE `contact` (
  `title` char(254) COLLATE utf8_unicode_ci NOT NULL COMMENT '简短描述',
  `pid` int(10) NOT NULL COMMENT 'pid',
  `img` varchar(254) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `address` varchar(254) COLLATE utf8_unicode_ci NOT NULL COMMENT '地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='联系我们';

--
-- 转存表中的数据 `contact`
--

INSERT INTO `contact` (`title`, `pid`, `img`, `content`, `address`) VALUES
('十多年来，公司以“演绎经典，铸造时尚”的理念为指导；以“客户为源，员工为泉”的精神为动力；以“建好每项工程，树立企业形象，积极开拓市场，诚信服务社会”为宗旨；以树立“万圣风范，行业楷模”的信念为目标，孜孜以求，毫不懈怠。企业对每项工程始终以“安全第一、质量第一、信誉第一”为不变之初衷，回报社会。以演绎经典，铸造时尚为核心，不断完善自我，精心打造“万圣”品牌，深得同行以及各界人士好评。2006年被《中国质量万里行》市场调查中心评定为“重质量、讲诚信、树品牌”企业。', 5, 'contact/contact-151200879517-1494299770130024.png', '<p>我们整个团队是一支诚信负责、团结进取、高效务实开拓型的精英团队。在团队的努力下，2008年成长为建筑行业建筑工程结构设计事务所甲级企业。基于“用心、诚信”的经营原则，服务各类顾客的丰富经验，日益完善的经营和服务体系，玖鼎正合致力于成为西南一流的工程优化设计服务公司，为顾客提供最优质的服务。基于“专业、合理”的设计原则，玖鼎正合拥有一批专业素质极强的设计团队，在所设计的作品中都能取得最优的结构体系和工程设计经济指标。</p><p><br></p>', '湖南省长沙市岳麓区岳麓街道256号     联系电话:138 8888 6666     邮箱地址：123contactus@136.com');

-- --------------------------------------------------------

--
-- 表的结构 `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(69, 8, 'id', 'checkbox', 'Id', 1, 0, 1, 1, 1, 1, NULL, 1),
(70, 8, 'pid', 'checkbox', 'Pid', 1, 1, 1, 1, 1, 1, NULL, 2),
(71, 8, 'name', 'checkbox', 'Name', 0, 1, 1, 1, 1, 1, NULL, 3),
(72, 8, 'navigation', 'checkbox', 'Navigation', 1, 1, 1, 1, 1, 1, NULL, 4),
(73, 8, 'sort', 'checkbox', 'Sort', 1, 1, 1, 1, 1, 1, NULL, 5),
(74, 8, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, NULL, 6),
(75, 8, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 1, 0, 0, NULL, 7),
(76, 8, 'target', 'checkbox', 'Target', 1, 1, 1, 1, 1, 1, NULL, 8),
(77, 8, 'url_status', 'checkbox', 'Url Status', 1, 1, 1, 1, 1, 1, NULL, 9),
(78, 8, 'seo_title', 'checkbox', 'Seo Title', 0, 1, 1, 1, 1, 1, NULL, 10),
(79, 8, 'seo_keyword', 'checkbox', 'Seo Keyword', 0, 1, 1, 1, 1, 1, NULL, 11),
(80, 8, 'seo_description', 'checkbox', 'Seo Description', 0, 1, 1, 1, 1, 1, NULL, 12),
(81, 8, 'header_pic', 'checkbox', 'Header Pic', 1, 1, 1, 1, 1, 1, NULL, 13),
(82, 8, 'url', 'checkbox', 'Url', 0, 1, 1, 1, 1, 1, NULL, 14),
(83, 8, 'link', 'checkbox', 'Link', 0, 1, 1, 1, 1, 1, NULL, 15),
(84, 9, 'id', 'checkbox', 'Id', 1, 1, 1, 1, 1, 1, NULL, 1),
(85, 9, 'pid', 'checkbox', 'Pid', 1, 1, 1, 1, 1, 1, NULL, 2),
(86, 9, 'goods_name', 'checkbox', 'Goods Name', 0, 1, 1, 1, 1, 1, NULL, 3),
(87, 9, 'goods_describe', 'checkbox', 'Goods Describe', 0, 1, 1, 1, 1, 1, NULL, 4),
(88, 9, 'brand', 'checkbox', 'Brand', 0, 1, 1, 1, 1, 1, NULL, 5),
(89, 9, 'weight', 'checkbox', 'Weight', 0, 1, 1, 1, 1, 1, NULL, 6),
(90, 9, 'flavor', 'checkbox', 'Flavor', 0, 1, 1, 1, 1, 1, NULL, 7),
(91, 9, 'place', 'checkbox', 'Place', 0, 1, 1, 1, 1, 1, NULL, 8),
(92, 9, 'effect', 'checkbox', 'Effect', 0, 1, 1, 1, 1, 1, NULL, 9),
(93, 9, 'gender', 'checkbox', 'Gender', 1, 1, 1, 1, 1, 1, NULL, 10),
(94, 9, 'goods_letter', 'checkbox', 'Goods Letter', 0, 1, 1, 1, 1, 1, NULL, 11),
(95, 9, 'goods_detail', 'checkbox', 'Goods Detail', 0, 1, 1, 1, 1, 1, NULL, 12),
(96, 9, 'keyword', 'checkbox', 'Keyword', 0, 1, 1, 1, 1, 1, NULL, 13),
(97, 9, 'thumb', 'checkbox', 'Thumb', 0, 1, 1, 1, 1, 1, NULL, 14),
(98, 9, 'sort', 'checkbox', 'Sort', 0, 1, 1, 1, 1, 1, NULL, 15),
(99, 9, 'state', 'checkbox', 'State', 0, 1, 1, 1, 1, 1, NULL, 16),
(100, 9, 'created_at', 'checkbox', 'Created At', 0, 1, 1, 1, 1, 1, NULL, 17),
(101, 9, 'updated_at', 'checkbox', 'Updated At', 0, 1, 1, 1, 1, 1, NULL, 18),
(102, 13, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(103, 13, 'pid', 'checkbox', 'Pid', 1, 1, 1, 1, 1, 1, NULL, 2),
(104, 13, 'title', 'checkbox', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(105, 13, 'release_time', 'checkbox', 'Release Time', 1, 1, 1, 1, 1, 1, NULL, 4),
(106, 13, 'content', 'checkbox', 'Content', 1, 1, 1, 1, 1, 1, NULL, 5),
(107, 13, 'people', 'checkbox', 'People', 1, 1, 1, 1, 1, 1, NULL, 6),
(108, 13, 'preview_quantity', 'checkbox', 'Preview Quantity', 1, 1, 1, 1, 1, 1, NULL, 7),
(109, 14, 'id', 'checkbox', 'Id', 1, 1, 1, 1, 1, 1, NULL, 1),
(110, 14, 'name', 'checkbox', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(111, 14, 'introduction', 'checkbox', 'Introduction', 1, 1, 1, 1, 1, 1, NULL, 3),
(112, 14, 'img', 'checkbox', 'Img', 1, 1, 1, 1, 1, 1, NULL, 4),
(113, 14, 'content', 'checkbox', 'Content', 1, 1, 1, 1, 1, 1, NULL, 5),
(114, 14, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, NULL, 6),
(115, 15, 'title', 'checkbox', 'Title', 1, 1, 1, 1, 1, 1, NULL, 1),
(116, 15, 'english', 'checkbox', 'English', 1, 1, 1, 1, 1, 1, NULL, 2),
(117, 15, 'content', 'checkbox', 'Content', 1, 1, 1, 1, 1, 1, NULL, 3),
(118, 15, 'address', 'checkbox', 'Address', 1, 1, 1, 1, 1, 1, NULL, 4),
(119, 16, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(120, 16, 'pid', 'checkbox', 'Pid', 1, 1, 1, 1, 1, 1, NULL, 2),
(121, 16, 'title', 'checkbox', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(122, 16, 'time', 'checkbox', 'Time', 1, 1, 1, 1, 1, 1, NULL, 4),
(123, 16, 'address', 'checkbox', 'Address', 1, 1, 1, 1, 1, 1, NULL, 5),
(124, 16, 'number', 'checkbox', 'Number', 1, 1, 1, 1, 1, 1, NULL, 6),
(125, 16, 'salary', 'checkbox', 'Salary', 1, 1, 1, 1, 1, 1, NULL, 7),
(126, 16, 'conten', 'checkbox', 'Conten', 1, 1, 1, 1, 1, 1, NULL, 8),
(127, 17, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(128, 17, 'pid', 'checkbox', 'Pid', 1, 1, 1, 1, 1, 1, NULL, 2),
(129, 17, 'title', 'checkbox', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(130, 17, 'release_time', 'checkbox', 'Release Time', 1, 1, 1, 1, 1, 1, NULL, 4),
(131, 17, 'img', 'checkbox', 'Img', 1, 1, 1, 1, 1, 1, NULL, 5),
(132, 17, 'content', 'checkbox', 'Content', 1, 1, 1, 1, 1, 1, NULL, 6),
(133, 17, 'people', 'checkbox', 'People', 1, 1, 1, 1, 1, 1, NULL, 7),
(134, 17, 'preview_quantity', 'checkbox', 'Preview Quantity', 0, 1, 1, 1, 1, 1, NULL, 8),
(135, 17, 'sort', 'checkbox', 'Sort', 1, 1, 1, 1, 1, 1, NULL, 9),
(136, 17, 'state', 'checkbox', 'State', 1, 1, 1, 1, 1, 1, NULL, 10),
(137, 18, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(138, 18, 'name', 'checkbox', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(139, 18, 'herf', 'checkbox', 'Herf', 0, 1, 1, 1, 1, 1, NULL, 3),
(140, 18, 'img', 'checkbox', 'Img', 1, 1, 1, 1, 1, 1, NULL, 4),
(141, 18, 'state', 'checkbox', 'State', 1, 1, 1, 1, 1, 1, NULL, 5),
(148, 20, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(149, 20, 'name', 'checkbox', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(150, 20, 'gender', 'checkbox', 'Gender', 1, 1, 1, 1, 1, 1, NULL, 3),
(151, 20, 'birth_time', 'checkbox', 'Birth Time', 1, 1, 1, 1, 1, 1, NULL, 4),
(152, 20, 'origin', 'checkbox', 'Origin', 1, 1, 1, 1, 1, 1, NULL, 5),
(153, 20, 'telephone', 'checkbox', 'Telephone', 1, 1, 1, 1, 1, 1, NULL, 6),
(154, 20, 'zip_code', 'checkbox', 'Zip Code', 1, 1, 1, 1, 1, 1, NULL, 7),
(155, 20, 'email', 'checkbox', 'Email', 1, 1, 1, 1, 1, 1, NULL, 8),
(156, 20, 'education', 'checkbox', 'Education', 1, 1, 1, 1, 1, 1, NULL, 9),
(157, 20, 'major', 'checkbox', 'Major', 1, 1, 1, 1, 1, 1, NULL, 10),
(158, 20, 'school', 'checkbox', 'School', 1, 1, 1, 1, 1, 1, NULL, 11),
(159, 20, 'address', 'checkbox', 'Address', 1, 1, 1, 1, 1, 1, NULL, 12),
(160, 20, 'awards', 'checkbox', 'Awards', 1, 1, 1, 1, 1, 1, NULL, 13),
(161, 20, 'experience', 'checkbox', 'Experience', 1, 1, 1, 1, 1, 1, NULL, 14),
(162, 20, 'hobby', 'checkbox', 'Hobby', 1, 1, 1, 1, 1, 1, NULL, 15),
(163, 20, 'img', 'checkbox', 'Img', 0, 1, 1, 1, 1, 1, NULL, 16),
(164, 20, 'qz_date', 'checkbox', 'Qz Date', 1, 1, 1, 1, 1, 1, NULL, 17),
(165, 21, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(166, 21, 'title', 'checkbox', 'Title', 1, 1, 1, 1, 1, 1, NULL, 2),
(167, 21, 'describe', 'checkbox', 'Describe', 1, 1, 1, 1, 1, 1, NULL, 3),
(168, 21, 'color', 'checkbox', 'Color', 1, 1, 1, 1, 1, 1, NULL, 4),
(169, 21, 'icon', 'checkbox', 'Icon', 1, 1, 1, 1, 1, 1, NULL, 5),
(170, 21, 'herf', 'checkbox', 'Herf', 1, 1, 1, 1, 1, 1, NULL, 6),
(171, 21, 'sort', 'checkbox', 'Sort', 1, 1, 1, 1, 1, 1, NULL, 7),
(172, 22, 'pid', 'checkbox', 'Pid', 1, 1, 1, 1, 1, 1, NULL, 1),
(173, 22, 'title', 'checkbox', 'Title', 1, 1, 1, 1, 1, 1, NULL, 2),
(174, 22, 'content', 'checkbox', 'Content', 1, 1, 1, 1, 1, 1, NULL, 3);

-- --------------------------------------------------------

--
-- 表的结构 `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2017-11-25 07:23:46', '2017-11-25 07:23:46'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2017-11-25 07:23:46', '2017-11-25 07:23:46'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2017-11-25 07:23:46', '2017-11-25 07:23:46'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2017-11-25 07:23:46', '2017-11-25 07:23:46'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2017-11-25 07:23:46', '2017-11-25 07:23:46'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2017-11-25 07:23:46', '2017-11-25 07:23:46'),
(8, 'xx_nav', 'column', '栏目管理', 'Navs', NULL, 'App\\Model\\NavModel', NULL, NULL, NULL, 1, 0, '2017-11-25 23:48:02', '2017-11-25 23:48:02'),
(9, 'xx_goods', 'goods', '商品管理', '商品管理', NULL, 'App\\Model\\GoodsModel', NULL, NULL, NULL, 1, 0, '2017-11-28 00:02:01', '2017-11-28 00:02:01'),
(13, 'xx_special', 'special', 'xx_Special', '专题中心', 'voyager-news', 'App\\Model\\SpecialModel', NULL, NULL, NULL, 1, 0, '2017-11-28 03:47:51', '2017-11-28 03:47:51'),
(14, 'xx_team', 'team', 'xx_Team', '首席团队', 'voyager-beer', 'App\\Model\\TeamModel', NULL, NULL, NULL, 1, 0, '2017-11-28 05:04:46', '2017-11-28 05:04:46'),
(15, 'xx_contact', 'contact', 'xx_Contact', '联系我们', 'voyager-telephone', 'App\\Model\\ContactModel', NULL, NULL, NULL, 1, 0, '2017-11-28 06:06:51', '2017-11-28 06:06:51'),
(16, 'xx_recruit', 'recruit', 'xx_Recruit', '招聘信息', 'voyager-certificate', 'App\\Model\\RecruitModel', NULL, NULL, NULL, 1, 0, '2017-11-28 06:54:37', '2017-11-28 06:54:37'),
(17, 'xx_news', 'news', 'xx_News', '咨询中心', NULL, 'App\\Model\\NewsModel', NULL, NULL, NULL, 1, 0, '2017-11-28 18:27:13', '2017-11-28 18:27:13'),
(18, 'xx_carousel', 'carousel', 'xx_Carousel', '轮播图设置', NULL, 'App\\Model\\CarouselModel', NULL, NULL, NULL, 1, 0, '2017-11-28 18:35:54', '2017-11-28 18:35:54'),
(20, 'xx_personnel', 'personnel', 'xx_Personnel', '在线招聘', 'voyager-thumbs-up', 'App\\Model\\PermissionsModel', NULL, NULL, NULL, 1, 0, '2017-11-29 03:53:34', '2017-11-29 03:53:34'),
(21, 'xx_step', 'step', 'xx_Step', '步骤流程', 'voyager-pie-chart', 'App\\Model\\StepModel', NULL, NULL, NULL, 1, 0, '2017-11-29 04:58:34', '2017-11-29 04:58:34'),
(22, 'join_us', 'join-us', 'xx_Join U', '加入我们', 'voyager-bell', 'App\\Model\\JoinUsModel', NULL, NULL, NULL, 1, 0, '2017-12-01 16:40:51', '2017-12-01 16:40:51');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `pid` int(10) UNSIGNED NOT NULL COMMENT '分类id',
  `goods_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `goods_describe` varchar(200) DEFAULT NULL COMMENT '描述',
  `brand` varchar(100) DEFAULT NULL COMMENT '品牌',
  `weight` float(10,2) DEFAULT NULL COMMENT '重量单位克',
  `flavor` varchar(100) DEFAULT NULL COMMENT '香型',
  `place` varchar(100) DEFAULT NULL COMMENT '产地',
  `effect` varchar(100) DEFAULT NULL COMMENT '功效',
  `gender` varchar(80) NOT NULL COMMENT '适用人群',
  `goods_letter` varchar(45) DEFAULT NULL COMMENT '商品首字母',
  `goods_detail` text COMMENT '商品详情',
  `keyword` varchar(100) DEFAULT NULL COMMENT '关键字',
  `thumb` text COMMENT '封面图',
  `sort` int(11) DEFAULT '0',
  `state` tinyint(1) DEFAULT '1' COMMENT '商品状态：-1:待审，1:审核通过',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `pid`, `goods_name`, `goods_describe`, `brand`, `weight`, `flavor`, `place`, `effect`, `gender`, `goods_letter`, `goods_detail`, `keyword`, `thumb`, `sort`, `state`, `created_at`, `updated_at`) VALUES
(1, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(2, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(3, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(4, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(5, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(6, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(7, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(8, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(9, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(10, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(11, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(12, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(13, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(14, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(15, 7, '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂', '上海香皂高级硫磺皂洗脸皂驱螨洗发沐浴洗头皂130g\r\n洗脸 洗发 沐浴 四季常备', '私家', 130.00, '清香型', '上海', NULL, '通用', 'shampoo and shampoo soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200814459-9711722327883459.jpg\" alt=\"TB2CapQqb0kpuFjy0FjXX\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200814464-268360205587461.jpg\" alt=\"TB2C9ttqg0kpu\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814422-17306593180425645.jpg\" alt=\"TB2LCFtqg0kpuFjSspd\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814446-34442155740391844.jpg\" alt=\"TB2q3twn5C9MuFjSZF\" style=\"max-width: 100%;\"><img src=\"/goods-img/details-151200814464-03069326849905707.jpg\" alt=\"TB2Ph\" style=\"max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200801236-TB2KZLN.jpg,/carousel/img-151200801785-TB2s8McppXXXXXKXpXXXXXXXXXX_!!725677994.jpg_430x430q90.jpg,/carousel/img-151200802250-TB1THZL.jpg,/carousel/img-151200802644-TB1THZLRXXX.jpg', 1, 1, NULL, NULL),
(16, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(17, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(18, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(19, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(20, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(21, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(22, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(23, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(24, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(25, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(26, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(27, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(28, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL),
(29, 8, '硫磺皂祛痘除螨止痒皂洁面皂', '上海香皂中性护肤硫磺皂祛痘除螨止痒皂洁面皂120g\r\n控油止痒 保湿健肤 温和不刺激', '额甲', 130.00, '玫瑰香', '上海', NULL, '通用', 'antipruritic soap Cleansing Soap', '<p style=\"text-align: center; \"><img src=\"/goods-img/details-151200849215-3981625315581738.jpg\" alt=\"TB21Truc3xlpuFjSszgXXcJdpXa_!!725677994\" style=\"max-width:100%;\"><img src=\"/goods-img/details-151200849212-619996521218676.jpg\" alt=\"TB2aufBcYplpuFjSspiXXcdfFXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849225-04592120557408852.jpg\" alt=\"TB2zKDNc9FjpuFjSszhXXaBuVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849230-10253342016215083.jpg\" alt=\"TB25znkdJ4opuFjSZFLXXX8mXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849243-5397146195729339.jpg\" alt=\"TB2RG6FcW8lpuFjy0FpXXaGrpXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849239-8627419684936946.jpg\" alt=\"TB2oa_ndNlmpuFjSZPfXXc9iXXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849378-7739946789802503.jpg\" alt=\"TB2rRLddNBmpuFjSZFDXXXD8pXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849334-7856798300467729.jpg\" alt=\"TB2eszXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><img src=\"/goods-img/details-151200849399-3547582113403993.jpg\" alt=\"TB23ZvXdJ0opuFjSZFxXXaDNVXa_!!725677994\" style=\"text-align: left; max-width: 100%;\"><br></p><p><br></p>', '上海香 .  皂高', '/carousel/img-151200838342-TB1HMHLnYsTMeJjSsz.jpg,/carousel/img-151200839158-TB2dinxgXXXXXbIXXXXX.jpg,/carousel/img-151200839165-TB2thWlyYBnpuFjSZF.jpg,/carousel/img-151200839114-TB1HMHLnYsTMeJjSszgXXacpFX.jpg', 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `join_us`
--

CREATE TABLE `join_us` (
  `pid` int(10) NOT NULL COMMENT '栏目id',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题 ',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '栏目'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加入我们表';

--
-- 转存表中的数据 `join_us`
--

INSERT INTO `join_us` (`pid`, `title`, `content`) VALUES
(12, NULL, '<p>fdsfsdfsdfdsfsdfsdfds</p>  <p><br></p>');

-- --------------------------------------------------------

--
-- 表的结构 `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-11-25 07:23:46', '2017-11-25 07:23:46');

-- --------------------------------------------------------

--
-- 表的结构 `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, '控制面板', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2017-11-25 07:23:46', '2017-11-25 07:30:42', 'voyager.dashboard', 'null'),
(2, 1, '文件管理', '', '_self', 'voyager-images', '#000000', 15, 4, '2017-11-25 07:23:46', '2017-11-25 18:08:26', 'voyager.media.index', 'null'),
(3, 1, '文章管理', '', '_self', 'voyager-news', '#000000', 15, 2, '2017-11-25 07:23:46', '2017-11-25 18:08:17', 'voyager.posts.index', 'null'),
(4, 1, '用户管理', '', '_self', 'voyager-person', '#000000', 14, 1, '2017-11-25 07:23:46', '2017-11-25 07:38:35', 'voyager.users.index', 'null'),
(5, 1, '文章分类', '', '_self', 'voyager-categories', '#000000', 15, 1, '2017-11-25 07:23:46', '2017-11-25 18:08:14', 'voyager.categories.index', 'null'),
(6, 1, '暂时不教', '', '_self', 'voyager-file-text', '#000000', 15, 3, '2017-11-25 07:23:46', '2017-11-25 18:08:20', 'voyager.pages.index', 'null'),
(7, 1, '角色管理', '', '_self', 'voyager-lock', '#000000', 14, 2, '2017-11-25 07:23:46', '2017-11-25 07:38:42', 'voyager.roles.index', 'null'),
(8, 1, '系统设置', 'xtsz', '_self', 'voyager-tools', '#000000', NULL, 10, '2017-11-25 07:23:46', '2017-12-01 16:41:26', NULL, ''),
(9, 1, '菜单管理', '', '_self', 'voyager-list', '#000000', 8, 5, '2017-11-25 07:23:46', '2017-11-29 04:59:45', 'voyager.menus.index', 'null'),
(10, 1, 'Msq设置', '', '_self', 'voyager-data', '#000000', 8, 7, '2017-11-25 07:23:46', '2017-11-29 04:59:10', 'voyager.database.index', 'null'),
(11, 1, 'Compass', '/admin/compass', '_self', 'voyager-compass', NULL, 8, 6, '2017-11-25 07:23:46', '2017-11-29 04:59:10', NULL, NULL),
(12, 1, 'Hooks', '/admin/hooks', '_self', 'voyager-hook', NULL, 8, 8, '2017-11-25 07:23:46', '2017-11-29 04:58:58', NULL, NULL),
(13, 1, '平台设置', '', '_self', 'voyager-settings', '#000000', 8, 4, '2017-11-25 07:23:46', '2017-11-29 04:59:45', 'voyager.settings.index', 'null'),
(14, 1, '用户管理', 'yhgl', '_self', 'voyager-person', '#000000', NULL, 2, '2017-11-25 07:37:30', '2017-11-26 00:00:24', NULL, ''),
(15, 1, '文章管理', 'wzgl', '_self', 'voyager-news', '#000000', NULL, 3, '2017-11-25 18:07:50', '2017-11-26 00:00:24', NULL, ''),
(21, 1, '栏目设置', '/admin/column', '_self', 'voyager-crop', '#000000', 8, 1, '2017-11-25 23:48:02', '2017-11-27 23:53:06', NULL, ''),
(22, 1, '商品管理', 'spgl', '_self', 'voyager-github', '#000000', NULL, 4, '2017-11-26 00:00:12', '2017-11-28 04:41:41', NULL, ''),
(23, 1, '商品管理', '/admin/goods', '_self', 'voyager-github', '#000000', 22, 1, '2017-11-28 00:02:02', '2017-11-28 00:04:48', NULL, ''),
(24, 1, '专题设置', 'ztsz', '_self', 'voyager-news', '#000000', NULL, 5, '2017-11-28 03:35:54', '2017-11-28 04:41:41', NULL, ''),
(25, 1, '专题中心', '/admin/special', '_self', 'voyager-news', NULL, 24, 1, '2017-11-28 03:47:51', '2017-11-28 04:41:41', NULL, NULL),
(26, 1, '首席团队', '/admin/team', '_self', 'voyager-beer', NULL, 27, 1, '2017-11-28 05:04:47', '2017-11-28 05:44:20', NULL, NULL),
(27, 1, '首席团队', 'sxtd', '_self', 'voyager-beer', '#000000', NULL, 6, '2017-11-28 05:05:26', '2017-11-28 18:41:23', NULL, ''),
(28, 1, '联系我们', '/admin/contact', '_self', 'voyager-telephone', NULL, 29, 1, '2017-11-28 06:06:52', '2017-11-28 06:36:50', NULL, NULL),
(29, 1, '联系我们', 'lxwm', '_self', 'voyager-telephone', '#000000', NULL, 7, '2017-11-28 06:07:31', '2017-11-28 18:41:23', NULL, ''),
(30, 1, '招聘信息', '/admin/recruit', '_self', 'voyager-certificate', NULL, 31, 1, '2017-11-28 06:54:38', '2017-11-28 06:55:52', NULL, NULL),
(31, 1, '招聘信息', 'recruit', '_self', 'voyager-certificate', '#000000', NULL, 9, '2017-11-28 06:55:20', '2017-12-01 16:41:26', NULL, ''),
(32, 1, '咨询中心', '/admin/news', '_self', 'voyager-paw', '#000000', 34, 1, '2017-11-28 18:27:17', '2017-11-28 18:41:11', NULL, ''),
(33, 1, '首页轮播', '/admin/carousel', '_self', 'voyager-images', '#000000', 8, 3, '2017-11-28 18:35:55', '2017-11-29 04:59:45', NULL, ''),
(34, 1, '咨询中心', 'zxzx', '_self', 'voyager-paw', '#000000', NULL, 8, '2017-11-28 18:39:35', '2017-12-01 16:41:26', NULL, ''),
(36, 1, '在线招聘', '/admin/personnel', '_self', 'voyager-thumbs-up', NULL, 31, 2, '2017-11-29 03:53:35', '2017-11-29 03:54:36', NULL, NULL),
(37, 1, '步骤流程', '/admin/step', '_self', 'voyager-pie-chart', NULL, 8, 2, '2017-11-29 04:58:35', '2017-11-29 04:59:45', NULL, NULL),
(38, 1, '加入我们', '/admin/join-us', '_self', 'voyager-bell', NULL, 29, 2, '2017-12-01 16:40:51', '2017-12-01 16:41:28', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- 表的结构 `nav`
--

CREATE TABLE `nav` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `pid` int(11) DEFAULT '0' COMMENT '父ID',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '栏目名称',
  `navigation` tinyint(1) NOT NULL DEFAULT '1' COMMENT '导航栏显示-1:不显示1显示',
  `english` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '英文名称',
  `title_description` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题描述',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `target` tinyint(1) NOT NULL DEFAULT '1' COMMENT '新窗口打开1:是-1:否',
  `url_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1内部连接，2外部连接',
  `seo_title` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '为空则使用SEO参数设置中设置的title构成方式',
  `seo_keyword` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键词',
  `seo_description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简短描述',
  `header_pic` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头部导航背景图片',
  `url` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内部连接',
  `link` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外部连接'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `nav`
--

INSERT INTO `nav` (`id`, `pid`, `name`, `navigation`, `english`, `title_description`, `sort`, `created_at`, `updated_at`, `target`, `url_status`, `seo_title`, `seo_keyword`, `seo_description`, `header_pic`, `url`, `link`) VALUES
(1, 0, '产品中心', 1, 'Product Center', '里边存放的各种新的商品！！！！！！！', 1, '2017-11-30 01:56:21', '0000-00-00 00:00:00', -1, 1, '产品 产品 产品产品产品产品', '产品产品', '产品产品产品产品', 'column/nav-151200698216-787.jpg', 'product', NULL),
(2, 0, '所有专题', 1, 'All topics', '专题专题专题专题专题！！！！！！！', 2, '2017-11-30 01:57:40', '0000-00-00 00:00:00', -1, 1, '专题专题', '专题', '专题专题专题专题专题', 'column/nav-151200706014-123.jpg', 'service', NULL),
(3, 0, '首席团队', 1, 'Chief team', '首席团队首席团队首席团队！！！！！！！', 3, '2017-11-30 01:58:32', '0000-00-00 00:00:00', -1, 1, '首席团队', '首席团队', '首席团队首席团队首席团队', 'column/nav-151200711219-1494496190.jpg', 'teams', NULL),
(4, 0, '招聘信息', 1, 'Recruitment Information', '招聘信息招聘信息招聘信息！！！！！！！', 4, '2017-11-30 01:59:23', '0000-00-00 00:00:00', -1, 1, '招聘信息', '招聘信息', '招聘信息招聘信息招聘信息', 'column/nav-151200716456-1494496190.jpg', 'jobs', NULL),
(5, 0, '联系我们', 1, 'Contact us', '联系我们联系我们联系我们！！！！！！！', 5, '2017-11-30 02:00:22', '0000-00-00 00:00:00', -1, 1, '联系我们', '联系我们', '联系我们联系我们联系我们联系我们', 'column/nav-151200722241-1494496190.jpg', 'contactus', NULL),
(6, 0, '咨询中心', -1, 'consulting center', '咨询中心咨询中心咨询中心咨询中心！！！！！！！', 5, '2017-11-30 02:01:12', '0000-00-00 00:00:00', -1, 1, '咨询中心', '咨询中心', '咨询中心咨询中心咨询中心咨询中心', 'column/nav-151200727399-787.jpg', 'new', NULL),
(7, 1, '产品1', 1, 'Product 1', '产品1产品1', 1, '2017-11-30 02:03:13', '0000-00-00 00:00:00', -1, 1, '产品1产品1', '产品1产品1产品1', '产品1产品1产品1产品1', 'column/nav-151200739339-787.jpg', 'product', NULL),
(8, 1, '产品2', 1, 'Product 2', '产品1产品2', 2, '2017-11-30 02:03:56', '0000-00-00 00:00:00', -1, 1, '产品1产品2', '产品1产品1产品2', '产品1产品2产品2产品2', 'column/nav-151200743740-1494496190.jpg', 'product', NULL),
(9, 2, '每周精选', 1, 'Weekly selection', '每周精选   每周精选', 1, '2017-11-30 02:05:46', '0000-00-00 00:00:00', -1, 1, '每周精选   每周精选', '每周精选   每周精选   每周精选', '每周精选   每周精选   每周精选', 'column/nav-151200754618-1494318839.jpg', 'service', NULL),
(10, 3, '王树', 1, 'Wang Shu', '王树  王树  王树', 1, '2017-11-30 02:07:16', '0000-00-00 00:00:00', -1, 1, '王树  王树', '王树  王树  王树  王树', '王树  王树  王树', 'column/nav-151200763653-1494558062189554.png', 'teams', NULL),
(11, 6, '集团新闻', 1, 'Group news', '集团新闻  集团新闻', 1, '2017-11-30 02:30:18', '0000-00-00 00:00:00', -1, 1, '集团新闻  集团新闻', '集团新闻  集团新闻', '集团新闻  集团新闻  集团新闻  集团新闻', 'column/nav-151200901948-1494496190.jpg', 'new', NULL),
(12, 0, '加入我们', 1, 'Join us', 'Join usJoin us', 6, '2017-12-02 00:47:37', '0000-00-00 00:00:00', -1, 1, '加入我们', '加入我们加入我们', '加入我们加入我们加入我们', 'column/nav-151217565752-1494496190.jpg', 'join-su', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `pid` int(10) NOT NULL COMMENT '分类id',
  `title` varchar(180) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `dec` text COLLATE utf8_unicode_ci NOT NULL COMMENT '新闻描述',
  `release_time` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布时间',
  `img` varchar(180) COLLATE utf8_unicode_ci NOT NULL COMMENT '封面图',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '发布内容',
  `people` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布人',
  `preview_quantity` int(10) DEFAULT '0' COMMENT '浏览量',
  `sort` int(10) NOT NULL COMMENT '排序',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1发布 -1未发布'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='专题发布';

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `pid`, `title`, `dec`, `release_time`, `img`, `content`, `people`, `preview_quantity`, `sort`, `state`) VALUES
(1, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 1, 1, 1),
(2, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 3, 1, 1),
(3, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 2, 1, 1),
(4, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(5, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(6, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(7, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(8, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 1, 1, 1),
(9, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(10, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(11, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(12, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(13, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(14, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(15, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(16, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(17, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(18, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(19, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(20, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1),
(21, 11, '2017年中国经济数据公布 GDP总量料破70万亿元', '按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016.....', '2017-11-30 02:32:14', 'news/special-151200913443-1494484395.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按照日程安排，国家统计局今日将公布2016年国内生产总值(GDP)等重磅数据。根据官方预测，2016年中国经济总量会突破70万亿元大关，预计GDP全年增速在6.7%左右，经济继续运行在合理区间。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年中国经济“成绩单”今揭晓</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家统计局数据显示，2016年前三季度GDP同比增长6.7%，其中一季度、二季度、三季度均增长6.7%。2016年全年经济增长“成绩单”如何，备受瞩目。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2016年经济增速，中新网记者注意到，目前市场普遍预期增速在6.7%左右。其中，中国社科院发布的2017年《经济蓝皮书》认为，2016年就业、物价保持基本稳定，中国经济可以实现年初预期的经济增长目标，预计全年增长6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家发改委主任徐绍史近日在国新办发布会上也透露，2016年供给侧结构性改革有序推进，“三去一降一补”重点任务取得初步成效。一季度、二季度、三季度GDP增速都是6.7%，预计全年也在6.7%左右。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在经济总量方面，中国经济很可能会再上一个新台阶，迈过70万亿元大关。徐绍史预计，2016年经济总量会突破70万亿元人民币，增量大约是5万亿元，这个增量与五年前年增长10%的增量基本相当，相当于1994年中国的经济总量，在全球主要经济体中表现也是突出的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，部分2016年全年数据已经披露。数据显示，城镇新增就业已经超过1300万;全年居民消费价格指数(CPI)涨幅为2.0%，完成了全年3%左右的物价调控目标。进出口逐季回稳，第四季度进、出口均实现正增长。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京大学经济学院教授曹和平对中新网(微信公众号：cns2012)记者表示，2016年“黑天鹅”事件不断出现，但四季度以来中国经济多项指标回升，预计四季度经济增速不会低于6.7%，全年经济目标能较好完成，这也意味着“十三五”会迎来一个良好开局。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年中国经济有望继续稳定运行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于2017年中国经济走势，分析认为，2017年中国经济面临的环境存在很多不确定性，但仍有望保持稳中求进的态势，并不会出现“硬着陆”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐绍史指出，2017年经济发展面临的内外环境依然复杂严峻，总的来看，世界经济缓慢复苏，但是不确定、不稳定因素明显增多。国内经济虽然缓中趋稳、稳中向好，但是仍然面临一些突出矛盾和问题。</p><p>“不过，中国有信心、有条件、有能力确保经济运行在合理区间。”徐绍史说，外界说中国经济“塌方式”下滑、“硬着陆”不可避免，这些预言和预判都会落空。</p><p>“中国经济的潜在增长能力依然很大，重要的是增长质量的提升。”交通银行首席经济学家连平表示，如果2017年外需环境改善，房地产市场运行平稳，民间投资回升，预计2017年中国经济增速将高于6.5%。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曹和平认为，2017年上半年，中国经济仍可能延续四季度以来稳中向好的态势。今年，中国需要进一步推进供给侧结构性改革，要重点防范金融等各类风险，同时，通过减税降负等措施努力提振实体经济，继续提升经济运行的稳定性。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，国际上一些机构对未来中国经济走势也表示看好。联合国近日发布的2017年《世界经济形势与展望》认为，中国经济在2016年呈现了稳定的增长，缓解了各方短期内对其增长将急剧放缓的担忧。在稳健的国内需求和支持性的财政措施推动下，中国经济预计在2017年和2018年每年将增长6.5%。</p><p><br></p>', 'admin', 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2017-11-25 07:24:26', '2017-11-25 07:24:26');

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(2, 'browse_database', NULL, '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(3, 'browse_media', NULL, '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(4, 'browse_compass', NULL, '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(5, 'browse_menus', 'menus', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(6, 'read_menus', 'menus', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(7, 'edit_menus', 'menus', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(8, 'add_menus', 'menus', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(9, 'delete_menus', 'menus', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(10, 'browse_pages', 'pages', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(11, 'read_pages', 'pages', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(12, 'edit_pages', 'pages', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(13, 'add_pages', 'pages', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(14, 'delete_pages', 'pages', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(15, 'browse_roles', 'roles', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(16, 'read_roles', 'roles', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(17, 'edit_roles', 'roles', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(18, 'add_roles', 'roles', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(19, 'delete_roles', 'roles', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(20, 'browse_users', 'users', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(21, 'read_users', 'users', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(22, 'edit_users', 'users', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(23, 'add_users', 'users', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(24, 'delete_users', 'users', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(25, 'browse_posts', 'posts', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(26, 'read_posts', 'posts', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(27, 'edit_posts', 'posts', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(28, 'add_posts', 'posts', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(29, 'delete_posts', 'posts', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(30, 'browse_categories', 'categories', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(31, 'read_categories', 'categories', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(32, 'edit_categories', 'categories', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(33, 'add_categories', 'categories', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(34, 'delete_categories', 'categories', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(35, 'browse_settings', 'settings', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(36, 'read_settings', 'settings', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(37, 'edit_settings', 'settings', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(38, 'add_settings', 'settings', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(39, 'delete_settings', 'settings', '2017-11-25 07:23:46', '2017-11-25 07:23:46', NULL),
(46, 'browse_xx_nav', 'xx_nav', '2017-11-25 23:48:02', '2017-11-25 23:48:02', NULL),
(47, 'read_xx_nav', 'xx_nav', '2017-11-25 23:48:02', '2017-11-25 23:48:02', NULL),
(48, 'edit_xx_nav', 'xx_nav', '2017-11-25 23:48:02', '2017-11-25 23:48:02', NULL),
(49, 'add_xx_nav', 'xx_nav', '2017-11-25 23:48:02', '2017-11-25 23:48:02', NULL),
(50, 'delete_xx_nav', 'xx_nav', '2017-11-25 23:48:02', '2017-11-25 23:48:02', NULL),
(51, 'browse_xx_goods', 'xx_goods', '2017-11-28 00:02:02', '2017-11-28 00:02:02', NULL),
(52, 'read_xx_goods', 'xx_goods', '2017-11-28 00:02:02', '2017-11-28 00:02:02', NULL),
(53, 'edit_xx_goods', 'xx_goods', '2017-11-28 00:02:02', '2017-11-28 00:02:02', NULL),
(54, 'add_xx_goods', 'xx_goods', '2017-11-28 00:02:02', '2017-11-28 00:02:02', NULL),
(55, 'delete_xx_goods', 'xx_goods', '2017-11-28 00:02:02', '2017-11-28 00:02:02', NULL),
(56, 'browse_xx_special', 'xx_special', '2017-11-28 03:47:51', '2017-11-28 03:47:51', NULL),
(57, 'read_xx_special', 'xx_special', '2017-11-28 03:47:51', '2017-11-28 03:47:51', NULL),
(58, 'edit_xx_special', 'xx_special', '2017-11-28 03:47:51', '2017-11-28 03:47:51', NULL),
(59, 'add_xx_special', 'xx_special', '2017-11-28 03:47:51', '2017-11-28 03:47:51', NULL),
(60, 'delete_xx_special', 'xx_special', '2017-11-28 03:47:51', '2017-11-28 03:47:51', NULL),
(61, 'browse_xx_team', 'xx_team', '2017-11-28 05:04:46', '2017-11-28 05:04:46', NULL),
(62, 'read_xx_team', 'xx_team', '2017-11-28 05:04:46', '2017-11-28 05:04:46', NULL),
(63, 'edit_xx_team', 'xx_team', '2017-11-28 05:04:46', '2017-11-28 05:04:46', NULL),
(64, 'add_xx_team', 'xx_team', '2017-11-28 05:04:46', '2017-11-28 05:04:46', NULL),
(65, 'delete_xx_team', 'xx_team', '2017-11-28 05:04:46', '2017-11-28 05:04:46', NULL),
(66, 'browse_xx_contact', 'xx_contact', '2017-11-28 06:06:52', '2017-11-28 06:06:52', NULL),
(67, 'read_xx_contact', 'xx_contact', '2017-11-28 06:06:52', '2017-11-28 06:06:52', NULL),
(68, 'edit_xx_contact', 'xx_contact', '2017-11-28 06:06:52', '2017-11-28 06:06:52', NULL),
(69, 'add_xx_contact', 'xx_contact', '2017-11-28 06:06:52', '2017-11-28 06:06:52', NULL),
(70, 'delete_xx_contact', 'xx_contact', '2017-11-28 06:06:52', '2017-11-28 06:06:52', NULL),
(71, 'browse_xx_recruit', 'xx_recruit', '2017-11-28 06:54:38', '2017-11-28 06:54:38', NULL),
(72, 'read_xx_recruit', 'xx_recruit', '2017-11-28 06:54:38', '2017-11-28 06:54:38', NULL),
(73, 'edit_xx_recruit', 'xx_recruit', '2017-11-28 06:54:38', '2017-11-28 06:54:38', NULL),
(74, 'add_xx_recruit', 'xx_recruit', '2017-11-28 06:54:38', '2017-11-28 06:54:38', NULL),
(75, 'delete_xx_recruit', 'xx_recruit', '2017-11-28 06:54:38', '2017-11-28 06:54:38', NULL),
(76, 'browse_xx_news', 'xx_news', '2017-11-28 18:27:14', '2017-11-28 18:27:14', NULL),
(77, 'read_xx_news', 'xx_news', '2017-11-28 18:27:14', '2017-11-28 18:27:14', NULL),
(78, 'edit_xx_news', 'xx_news', '2017-11-28 18:27:14', '2017-11-28 18:27:14', NULL),
(79, 'add_xx_news', 'xx_news', '2017-11-28 18:27:15', '2017-11-28 18:27:15', NULL),
(80, 'delete_xx_news', 'xx_news', '2017-11-28 18:27:16', '2017-11-28 18:27:16', NULL),
(81, 'browse_xx_carousel', 'xx_carousel', '2017-11-28 18:35:54', '2017-11-28 18:35:54', NULL),
(82, 'read_xx_carousel', 'xx_carousel', '2017-11-28 18:35:54', '2017-11-28 18:35:54', NULL),
(83, 'edit_xx_carousel', 'xx_carousel', '2017-11-28 18:35:55', '2017-11-28 18:35:55', NULL),
(84, 'add_xx_carousel', 'xx_carousel', '2017-11-28 18:35:55', '2017-11-28 18:35:55', NULL),
(85, 'delete_xx_carousel', 'xx_carousel', '2017-11-28 18:35:55', '2017-11-28 18:35:55', NULL),
(91, 'browse_xx_personnel', 'xx_personnel', '2017-11-29 03:53:34', '2017-11-29 03:53:34', NULL),
(92, 'read_xx_personnel', 'xx_personnel', '2017-11-29 03:53:34', '2017-11-29 03:53:34', NULL),
(93, 'edit_xx_personnel', 'xx_personnel', '2017-11-29 03:53:34', '2017-11-29 03:53:34', NULL),
(94, 'add_xx_personnel', 'xx_personnel', '2017-11-29 03:53:34', '2017-11-29 03:53:34', NULL),
(95, 'delete_xx_personnel', 'xx_personnel', '2017-11-29 03:53:34', '2017-11-29 03:53:34', NULL),
(96, 'browse_xx_step', 'xx_step', '2017-11-29 04:58:34', '2017-11-29 04:58:34', NULL),
(97, 'read_xx_step', 'xx_step', '2017-11-29 04:58:34', '2017-11-29 04:58:34', NULL),
(98, 'edit_xx_step', 'xx_step', '2017-11-29 04:58:34', '2017-11-29 04:58:34', NULL),
(99, 'add_xx_step', 'xx_step', '2017-11-29 04:58:34', '2017-11-29 04:58:34', NULL),
(100, 'delete_xx_step', 'xx_step', '2017-11-29 04:58:34', '2017-11-29 04:58:34', NULL),
(101, 'browse_join_us', 'join_us', '2017-12-01 16:40:51', '2017-12-01 16:40:51', NULL),
(102, 'read_join_us', 'join_us', '2017-12-01 16:40:51', '2017-12-01 16:40:51', NULL),
(103, 'edit_join_us', 'join_us', '2017-12-01 16:40:51', '2017-12-01 16:40:51', NULL),
(104, 'add_join_us', 'join_us', '2017-12-01 16:40:51', '2017-12-01 16:40:51', NULL),
(105, 'delete_join_us', 'join_us', '2017-12-01 16:40:51', '2017-12-01 16:40:51', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1);

-- --------------------------------------------------------

--
-- 表的结构 `personnel`
--

CREATE TABLE `personnel` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '性别：1男 2女',
  `birth_time` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '出生日期',
  `origin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '籍贯',
  `telephone` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系电话',
  `zip_code` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮编',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `education` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学历',
  `major` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '专业',
  `school` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学校',
  `address` varchar(210) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '通信地址',
  `awards` char(254) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所获奖项',
  `experience` char(254) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工作经历',
  `hobby` char(254) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '业余爱好',
  `img` char(254) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '近期照片',
  `qz_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '求职日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='在线招聘表';

--
-- 转存表中的数据 `personnel`
--

INSERT INTO `personnel` (`id`, `job_id`, `name`, `gender`, `birth_time`, `origin`, `telephone`, `zip_code`, `email`, `education`, `major`, `school`, `address`, `awards`, `experience`, `hobby`, `img`, `qz_date`) VALUES
(1, 1, 'sdfasd', '先生', 'asf', NULL, '13333333333', NULL, 'gfds@asdf.sfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'job/job-151201008798-4.png', '2017-11-30 02:48:07');

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-11-25 07:24:26', '2017-11-25 07:24:26');

-- --------------------------------------------------------

--
-- 表的结构 `recruit`
--

CREATE TABLE `recruit` (
  `id` int(11) NOT NULL,
  `pid` int(10) NOT NULL,
  `title` varchar(170) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `time` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布时间',
  `address` varchar(180) COLLATE utf8_unicode_ci NOT NULL COMMENT '地址',
  `number` int(10) NOT NULL COMMENT '招聘人数',
  `salary` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '薪资',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1已发布，-1未发布'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='招聘信息';

--
-- 转存表中的数据 `recruit`
--

INSERT INTO `recruit` (`id`, `pid`, `title`, `time`, `address`, `number`, `salary`, `content`, `state`) VALUES
(1, 4, '资深／高级后端工程师', '2017-11-30 02:27:30', '上海', 3, '200K-400K', '<h3>&nbsp;&nbsp;&nbsp;&nbsp;工作职责</h3><p><br></p><ul><li>&nbsp;&nbsp;&nbsp;&nbsp;参与开发和维护饿了么 Python 服务框架</li><li><br></li><li><br></li><li>&nbsp;&nbsp;&nbsp;&nbsp;参与开发和维护饿了么基础服务</li></ul><h3>&nbsp;&nbsp;&nbsp;&nbsp;职责要求</h3><p><br></p><ul><li>&nbsp; 强烈的责任感和自我驱动意识</li><li><br></li><li>&nbsp;良好的团队合作精神和沟通能力(需要 remote)</li><li><br></li><li>&nbsp;至少 3 年 Linux/Unix 使用经验，熟练 Python</li><li><br></li><li>&nbsp;熟悉同步/异步等网络编程模型; 多线程, 协程等并发模型</li><li><br></li><li>&nbsp;良好的编程习惯 和 英文文档阅读能力</li><li><br></li><li>&nbsp;优先条件: 有过 Python 的后端开发经验 (我们的主要语言是 python) 有自己的博客 活跃的 Github/Bitbucket 用户 有服务开发经验，熟悉 Thrift、Protocol Buffers</li></ul>  <p><br></p>', 1);

-- --------------------------------------------------------

--
-- 表的结构 `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-11-25 07:23:46', '2017-11-25 07:23:46'),
(2, 'user', '普通用户权限', '2017-11-25 07:23:46', '2017-11-28 18:24:38');

-- --------------------------------------------------------

--
-- 表的结构 `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', '舒肤佳香皂', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', '香皂香皂香香皂', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/November2017/e0u0ieO4qE2ZSSsQ0T06.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', '舒肤佳香皂', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', '香皂香皂香香皂', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/November2017/FGVGbAQnGfsdbrQDS4ng.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'site.product', '产品中心', '1', NULL, 'text', 6, 'Site'),
(16, 'site.special', '所有专题', '2', NULL, 'text', 9, 'Site'),
(17, 'site.team', '首席团队', '3', NULL, 'text', 10, 'Site'),
(18, 'site.recruit', '招聘信息', '4', NULL, 'text', 11, 'Site'),
(19, 'site.contact', '联系我们', '5', NULL, 'text', 12, 'Site'),
(20, 'site.news', '咨询中心', '6', NULL, 'text', 13, 'Site'),
(21, 'admin.meta_description', '前台meta简介用于搜索引擎搜索', '', NULL, 'text_area', 14, 'Admin'),
(22, 'admin.meta_keywords', '前台meta简介用于搜索引擎搜索', '', NULL, 'text_area', 15, 'Admin'),
(23, 'admin.copyright', '网站版权信息', '我的网站 版权所有 2008-2016 湘ICP备8888888', NULL, 'text', 16, 'Admin'),
(24, 'admin.introduce', '网站介绍信息', '本页面内容为网站演示数据，前台页面内容都可以在后台修改。', NULL, 'text_area', 17, 'Admin'),
(26, 'admin.servicer', '服务提供方', 'Powered by  <a href=\"http://www.baidu.com\" target=\"_blank\" title=\"企业网站管理系统\" rel=\"nofollow\">Baidu</a>  5.3.19', NULL, 'text', 18, 'Admin'),
(27, 'site.join-su', '加入我们', '12', NULL, 'text', 19, 'Site');

-- --------------------------------------------------------

--
-- 表的结构 `special`
--

CREATE TABLE `special` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `pid` int(10) NOT NULL COMMENT '分类id',
  `title` varchar(180) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `dec` text COLLATE utf8_unicode_ci NOT NULL COMMENT '专题描述',
  `release_time` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布时间',
  `img` varchar(180) COLLATE utf8_unicode_ci NOT NULL COMMENT '封面图',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '发布内容',
  `people` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布人',
  `preview_quantity` int(10) DEFAULT '0' COMMENT '浏览量',
  `sort` int(10) NOT NULL COMMENT '排序',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1发布 -1未发布'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='专题发布';

--
-- 转存表中的数据 `special`
--

INSERT INTO `special` (`id`, `pid`, `title`, `dec`, `release_time`, `img`, `content`, `people`, `preview_quantity`, `sort`, `state`) VALUES
(1, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 3, 1, 1),
(2, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 3, 1, 1),
(3, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(4, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(5, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(6, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(7, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(8, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(9, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(10, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(11, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(12, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(13, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(14, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1),
(15, 9, '每周评论精选', '一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baub', '2017-11-30 02:24:41', 'special/special-151200868152-1494318839.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一千个人心中有一千个哈姆雷特。每一位读者的人生经历、价值取向不同，对建筑的理解自然不尽相同。baubaus精选本周的6条评论，为大家带来看待建筑的不同视角。百家争鸣才能推动学术的成长。何不踊跃参与到讨论中去，静待你的疑惑被解答。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.皮拉内西的那个想很久了但是太懒没动过，居然真的有人做了，真的棒棒！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.喜欢内部的多元化空间，一方面以不同活动的组织形式和学习空间的多样化组织了内部彼此独立又连通的学习和活动空间，另一方面又高度和城市环境相融合，很棒</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建筑的位置是真的符合建筑生态性，能在大自然中藏起来，在远处看的时候不容易发现，直到走进了的突然发现，很惊艳。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.材质肌理的搭配是亮点，玻璃盒子的构建用的很好，让整个空间很轻巧！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.很通透简练却不失细节的作品，这样的环境让人感到空灵清净。担心卫生做起来会比较麻烦，哈哈</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.看起来很完美啊 但是一个场地里可以做这么多东西么……</p><p><br></p>', 'admin', 2, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `step`
--

CREATE TABLE `step` (
  `id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `describe` varchar(180) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `color` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '背景颜色',
  `icon` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT '字体图表',
  `href` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '连接地址',
  `sort` int(4) NOT NULL COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='步骤流程表';

--
-- 转存表中的数据 `step`
--

INSERT INTO `step` (`id`, `title`, `describe`, `color`, `icon`, `href`, `sort`) VALUES
(1, '注册米拓会员', '点击右上角「注册」按钮，开启您的建站之旅。', '#57c7d4', 'fa-envelope-open', 'http://baidu.com', 1),
(2, '点击购买按钮', '购买前体验网站演示效果，确认没有任何疑问之后，再下单。', '#62a8ea', 'fa-free-code-camp', 'http://www.baidu.com', 2),
(3, '按需选择服务', '推荐购买官方空间，完美适配 「MetInfo」，自动安装，且方便管理维护。', '#f96868', 'fa-american-sign-language-interpreting', 'http;//qq.com', 3),
(4, '购买成功，自动安装', '如不在官方购买空间，填写电话号码，我们会在一个工作日内提供安装服务。', '#46be8a', 'fa-american-sign-language-interpreting', 'http://sina.com', 10);

-- --------------------------------------------------------

--
-- 表的结构 `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `pid` int(10) NOT NULL COMMENT 'pid',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `introduction` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '简介',
  `img` varchar(180) COLLATE utf8_unicode_ci NOT NULL COMMENT '封面图',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1显示，-1禁用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='首席团队';

-- --------------------------------------------------------

--
-- 表的结构 `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2017-11-25 07:24:26', '2017-11-25 07:24:26'),
(30, 'menu_items', 'title', 13, 'pt', 'Configurações', '2017-11-25 07:24:26', '2017-11-25 07:24:26');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/November2017/lLVrbHlvQFfHxQxbfStS.png', '$2y$10$cp2hE0GzlO4FnvHAlc0s/uAGopdpow8oJvGgmsBg5UqK2n.UaZl/W', 'GF27F7mJlaO2Ei16MLGd5R711oKLDRnDPIx7sBLPZGSg23ggE25XAqx3x3XW', '2017-11-25 07:24:26', '2017-11-25 22:47:09'),
(2, 2, 'user', 'user@email.com', 'users/default.png', '$2y$10$nX1xM/5KCWUYDz1jFJZDbex7d71KVqMuj.pitSXOHn1wTa3jYcIlu', '7BCoJ1WN93rLNfQAk3n3NKWfKe3jcJD7kncTkT6TkH8VfLhYn8yBJZIQdU0F', '2017-11-25 07:27:23', '2017-11-30 18:36:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`,`pid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `recruit`
--
ALTER TABLE `recruit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `special`
--
ALTER TABLE `special`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `step`
--
ALTER TABLE `step`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
--
-- 使用表AUTO_INCREMENT `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=30;
--
-- 使用表AUTO_INCREMENT `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `nav`
--
ALTER TABLE `nav`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- 使用表AUTO_INCREMENT `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `recruit`
--
ALTER TABLE `recruit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- 使用表AUTO_INCREMENT `special`
--
ALTER TABLE `special`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `step`
--
ALTER TABLE `step`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 限制导出的表
--

--
-- 限制表 `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- 限制表 `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
