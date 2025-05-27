-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Bulan Mei 2025 pada 04.43
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `backup_log`
--

CREATE TABLE `backup_log` (
  `backup_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `backup_time` datetime NOT NULL,
  `backup_file` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio`
--

CREATE TABLE `biblio` (
  `biblio_id` int(11) NOT NULL,
  `gmd_id` int(3) DEFAULT NULL,
  `title` text NOT NULL,
  `sor` varchar(200) DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `isbn_issn` varchar(32) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) DEFAULT NULL,
  `collation` varchar(100) DEFAULT NULL,
  `series_title` varchar(200) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `language_id` char(5) DEFAULT 'en',
  `source` varchar(3) DEFAULT NULL,
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `file_att` varchar(255) DEFAULT NULL,
  `opac_hide` smallint(1) DEFAULT 0,
  `promoted` smallint(1) DEFAULT 0,
  `labels` text DEFAULT NULL,
  `frequency_id` int(11) NOT NULL DEFAULT 0,
  `spec_detail_info` text DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `media_type_id` int(11) DEFAULT NULL,
  `carrier_type_id` int(11) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `biblio`
--

INSERT INTO `biblio` (`biblio_id`, `gmd_id`, `title`, `sor`, `edition`, `isbn_issn`, `publisher_id`, `publish_year`, `collation`, `series_title`, `call_number`, `language_id`, `source`, `publish_place_id`, `classification`, `notes`, `image`, `file_att`, `opac_hide`, `promoted`, `labels`, `frequency_id`, `spec_detail_info`, `content_type_id`, `media_type_id`, `carrier_type_id`, `input_date`, `last_update`, `uid`) VALUES
(1, 1, 'PHP 5 for dummies', NULL, NULL, '0764541668', 1, '2004', 'xiv, 392 p. : ill. ; 24 cm.', 'For dummies', '005.13/3-22 Jan p', 'en', NULL, 1, '005.13/3 22', NULL, 'php5_dummies.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 15:36:50', '2007-11-29 16:26:59', NULL),
(2, 1, 'Linux In a Nutshell', NULL, 'Fifth Edition', '9780596009304', 2, '2005', 'xiv, 925 p. : ill. ; 23 cm.', 'In a Nutshell', '005.4/32-22 Ell l', 'en', NULL, 2, '005.4/32 22', NULL, 'linux_in_a_nutshell.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 15:53:35', '2007-11-29 16:26:10', NULL),
(3, 1, 'The Definitive Guide to MySQL 5', NULL, NULL, '9781590595350', 3, '2005', '784p.', 'Definitive Guide Series', '005.75/85-22 Kof d', 'en', NULL, NULL, '005.75/85 22', NULL, 'mysql_def_guide.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:01:08', '2007-11-29 16:26:33', NULL),
(4, 1, 'Cathedral and the Bazaar: Musings on Linux and Open Source by an Accidental Revolutionary', NULL, NULL, '0-596-00108-8', 2, '2001', '208p.', NULL, '005.4/3222 Ray c', 'en', NULL, 2, '005.4/32 22', 'The Cathedral & the Bazaar is a must for anyone who cares about the future of the computer industry or the dynamics of the information economy. This revised and expanded paperback edition includes new material on open source developments in 1999 and 2000. Raymond\'s clear and effective writing style accurately describing the benefits of open source software has been key to its success. (Source: http://safari.oreilly.com/0596001088)', 'cathedral_bazaar.jpg', 'cathedral-bazaar.pdf', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:14:44', '2007-11-29 16:25:43', NULL),
(5, 1, 'Producing open source software : how to run a successful free software project', NULL, '1st ed.', '9780596007591', 2, '2005', 'xx, 279 p. ; 24 cm.', NULL, '005.1-22 Fog p', 'en', NULL, 2, '005.1 22', 'Includes index.', 'producing_oss.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:20:45', '2007-11-29 16:31:21', NULL),
(6, 1, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', NULL, '1st ed.', '0735712573', 4, '2003', 'xvii, 790 p. : ill. ; 23cm.', 'DeveloperÃ¢â‚¬â„¢s library', '005.75/85-22 Kor p', 'en', NULL, 3, '005.75/85 22', 'PostgreSQL is the world\'s most advanced open-source database. PostgreSQL is the most comprehensive, in-depth, and easy-to-read guide to this award-winning database. This book starts with a thorough overview of SQL, a description of all PostgreSQL data types, and a complete explanation of PostgreSQL commands.', 'postgresql.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:29:33', '2025-03-14 10:41:21', NULL),
(7, 1, 'Web application architecture : principles, protocols, and practices', NULL, NULL, '0471486566', 5, '2003', 'xi, 357 p. : ill. ; 23 cm.', NULL, '005.7/2-21 Leo w', 'en', NULL, 1, '005.7/2 21', 'An in-depth examination of the core concepts and general principles of Web application development.\r\nThis book uses examples from specific technologies (e.g., servlet API or XSL), without promoting or endorsing particular platforms or APIs. Such knowledge is critical when designing and debugging complex systems. This conceptual understanding makes it easier to learn new APIs that arise in the rapidly changing Internet environment.', 'webapp_arch.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:41:57', '2007-11-29 16:32:46', NULL),
(8, 1, 'Ajax : creating Web pages with asynchronous JavaScript and XML', NULL, NULL, '9780132272674', 6, '2007', 'xxii, 384 p. : ill. ; 24 cm.', 'Bruce PerensÃ¢â‚¬â„¢ Open Source series', '006.7/86-22 Woy a', 'en', NULL, 4, '006.7/86 22', 'Using Ajax, you can build Web applications with the sophistication and usability of traditional desktop applications and you can do it using standards and open source software. Now, for the first time, there\'s an easy, example-driven guide to Ajax for every Web and open source developer, regardless of experience.', 'ajax.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:47:20', '2025-03-14 10:41:21', NULL),
(9, 1, 'The organization of information', NULL, '2nd ed.', '1563089769', 7, '2004', 'xxvii, 417 p. : ill. ; 27 cm.', 'Library and information science text series', '025-22 Tay o', 'en', NULL, 5, '025 22', 'A basic textbook for students of library and information studies, and a guide for practicing school library media specialists. Describes the impact of global forces and the school district on the development and operation of a media center, the technical and human side of management, programmatic activities, supportive services to students, and the quality and quantity of resources available to support programs.', 'organization_information.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:54:12', '2007-11-29 16:27:20', NULL),
(10, 1, 'Library and Information Center Management', NULL, '7th ed.', '9781591584063', 7, '2007', 'xxviii, 492 p. : ill. ; 27 cm.', 'Library and information science text series', '025.1-22 Stu l', 'en', NULL, 5, '025.1 22', NULL, 'library_info_center.JPG', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:58:51', '2007-11-29 16:27:40', NULL),
(11, 1, 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', NULL, '2nd ed.', '9780596000356', 2, '2002', '500p.', NULL, '006.7-22 Mor i', 'en', NULL, 6, '006.7 22', 'Information Architecture for the World Wide Web is about applying the principles of architecture and library science to web site design. Each website is like a public building, available for tourists and regulars alike to breeze through at their leisure. The job of the architect is to set up the framework for the site to make it comfortable and inviting for people to visit, relax in, and perhaps even return to someday.', 'information_arch.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:26:14', '2007-11-29 16:32:25', NULL),
(12, 1, 'Corruption and development', NULL, NULL, '9780714649023', 8, '1998', '166 p. : ill. ; 22 cm.', NULL, '364.1 Rob c', 'en', NULL, 7, '364.1/322/091724 21', 'The articles assembled in this volume offer a fresh approach to analysing the problem of corruption in developing countries and the k means to tackle the phenomenon.', 'corruption_development.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:45:30', '2007-11-29 16:20:53', NULL),
(13, 1, 'Corruption and development : the anti-corruption campaigns', NULL, NULL, '0230525504', 9, '2007', '310p.', NULL, '364.1 Bra c', 'en', NULL, 8, '364.1/323091724 22', 'This book provides a multidisciplinary interrogation of the global anti-corruption campaigns of the last ten years, arguing that while some positive change is observable, the period is also replete with perverse consequences and unintended outcomes', 'corruption_development_anti_campaign.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:49:49', '2007-11-29 16:19:48', NULL),
(14, 1, 'Pigs at the trough : how corporate greed and political corruption are undermining America', NULL, NULL, '1400047714', 10, '2003', '275 p. ; 22 cm.', NULL, '364.1323 Huf p', 'en', NULL, 8, '364.1323', NULL, 'pigs_at_trough.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:56:00', '2007-11-29 16:18:33', NULL),
(15, 1, 'Lords of poverty : the power, prestige, and corruption of the international aid business', NULL, NULL, '9780871134691', 11, '1994', 'xvi, 234 p. ; 22 cm.', NULL, '338.9 Han l', 'en', NULL, 8, '338.9/1/091724 20', 'Lords of Poverty is a case study in betrayals of a public trust. The shortcomings of aid are numerous, and serious enough to raise questions about the viability of the practice at its most fundamental levels. Hancocks report is thorough, deeply shocking, and certain to cause critical reevaluation of the governments motives in giving foreign aid, and of the true needs of our intended beneficiaries.', 'lords_of_poverty.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 18:08:13', '2007-11-29 16:13:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_attachment`
--

CREATE TABLE `biblio_attachment` (
  `biblio_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `placement` enum('link','popup','embed') DEFAULT NULL,
  `access_type` enum('public','private') NOT NULL,
  `access_limit` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_author`
--

CREATE TABLE `biblio_author` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `biblio_author`
--

INSERT INTO `biblio_author` (`biblio_id`, `author_id`, `level`) VALUES
(1, 1, 1),
(2, 2, 1),
(2, 3, 2),
(2, 4, 2),
(2, 5, 2),
(2, 6, 2),
(3, 7, 1),
(3, 8, 2),
(4, 9, 1),
(5, 10, 1),
(6, 11, 1),
(6, 12, 2),
(7, 13, 1),
(7, 14, 2),
(8, 15, 1),
(9, 16, 1),
(10, 17, 1),
(10, 18, 2),
(11, 19, 1),
(11, 20, 2),
(12, 21, 1),
(13, 22, 1),
(14, 23, 1),
(15, 24, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_custom`
--

CREATE TABLE `biblio_custom` (
  `biblio_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='one to one relation with real biblio table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_log`
--

CREATE TABLE `biblio_log` (
  `biblio_log_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `realname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `affectedrow` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rawdata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_mark`
--

CREATE TABLE `biblio_mark` (
  `id` varchar(32) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_relation`
--

CREATE TABLE `biblio_relation` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `rel_biblio_id` int(11) NOT NULL DEFAULT 0,
  `rel_type` int(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_topic`
--

CREATE TABLE `biblio_topic` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `topic_id` int(11) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `biblio_topic`
--

INSERT INTO `biblio_topic` (`biblio_id`, `topic_id`, `level`) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(2, 4, 2),
(2, 5, 2),
(3, 1, 1),
(3, 6, 2),
(3, 7, 2),
(4, 4, 1),
(4, 8, 2),
(5, 8, 1),
(5, 9, 2),
(6, 1, 1),
(6, 7, 2),
(7, 2, 1),
(7, 10, 2),
(8, 1, 1),
(8, 2, 2),
(9, 11, 1),
(9, 12, 2),
(9, 13, 2),
(10, 11, 1),
(10, 14, 2),
(12, 15, 1),
(12, 16, 2),
(13, 15, 1),
(14, 15, 1),
(15, 15, 1),
(15, 17, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `name` varchar(64) NOT NULL,
  `contents` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expired_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(255) NOT NULL,
  `content_desc` text NOT NULL,
  `content_path` varchar(20) NOT NULL,
  `is_news` smallint(1) DEFAULT NULL,
  `is_draft` smallint(1) DEFAULT 0,
  `publish_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `content_ownpage` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `is_draft`, `publish_date`, `input_date`, `last_update`, `content_ownpage`) VALUES
(1, 'Library Information', '<h3>Contact Information</h3>\r\n<p><strong>Address :</strong> <br /> Jenderal Sudirman Road, Senayan, Jakarta, Indonesia - Postal Code : 10270 <br /> <strong>Phone Number :</strong> <br /> (021) 5711144 <br /> <strong>Fax Number :</strong> <br /> (021) 5711144</p>\r\n<h3>Opening Hours</h3>\r\n<p><strong>Monday - Friday :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 20.00 PM <br /> <strong>Saturday  :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 17.00 PM</p>\r\n<h3>Collections</h3>\r\n<p>We have many types of collections in our library, range from Fictions to Sciences Material, from printed material to digital collections such CD-ROM, CD, VCD and DVD. We also collect daily serials publications such as newspaper and also monthly serials such as magazines.</p>\r\n<h3>Library Membership</h3>\r\n<p>To be able to loan our library collections, you must first become library member. There is terms and conditions that you must obey.</p>', 'libinfo', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(2, 'Help On Usage', '<h3>Searching</h3>\r\n<p>There are 2 methods available on searching library catalog. The first one is <strong>SIMPLE SEARCH</strong>, which is the simplest method on searching catalog. You just enter any keyword, either it containes in titles, author(s) names or subjects. You can supply more than one keywords in Simple Search method and it will expanding your search results.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ADVANCED SEARCH</strong>, lets you define keywords in more specific fields. If you want your keywords only contained in title field, then type your keyword in Title field and the system will limit its search within <strong>Title</strong> fields only, not in other fields. Location field lets you narrowing search results by specific location, so only collection that exists in selected location get fetched by system.</p>', 'help', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(3, 'Welcome To Admin Page', '<div class=\"container admin_home\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Bibliography</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon biblioIcon notAJAX\" href=\"index.php?mod=bibliography\"></a></div>\r\n<div class=\"col-sm-8\">The Bibliography module lets you manage your library bibliographical data. It also include collection items management to manage a copies of your library collection so it can be used in library circulation.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Circulation</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon circulationIcon notAJAX\" href=\"index.php?mod=circulation\"></a></div>\r\n<div class=\"col-sm-8\">The Circulation module is used for doing library circulation transaction such as collection loans and return. In this module you can also create loan rules that will be used in loan transaction proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Membership</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon memberIcon notAJAX\" href=\"index.php?mod=membership\"></a></div>\r\n<div class=\"col-sm-8\">The Membership module lets you manage library members such adding, updating and also removing. You can also manage membership type in this module.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Stock Take</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon stockTakeIcon notAJAX\" href=\"index.php?mod=stock_take\"></a></div>\r\n<div class=\"col-sm-8\">The Stock Take module is the easy way to do Stock Opname for your library collections. Follow several steps that ease your pain in Stock Opname proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Serial Control</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon serialIcon notAJAX\" href=\"index.php?mod=serial_control\"></a></div>\r\n<div class=\"col-sm-8\">Serial Control module help you manage library\'s serial publication subscription. You can track issues for each subscription.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Reporting</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon reportIcon notAJAX\" href=\"index.php?mod=reporting\"></a></div>\r\n<div class=\"col-sm-8\">Reporting lets you view various type of reports regardings membership data, circulation data and bibliographic data. All compiled on-the-fly from current library database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Master File</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon masterFileIcon notAJAX\" href=\"index.php?mod=master_file\"></a></div>\r\n<div class=\"col-sm-8\">The Master File modules lets you manage referential data that will be used by another modules. It include Authority File management such as Authority, Subject/Topic List, GMD and other data.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>System</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon systemIcon notAJAX\" href=\"index.php?mod=system\"></a></div>\r\n<div class=\"col-sm-8\">The System module is used to configure application globally, manage index, manage librarian, and also backup database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'adminhome', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 22:02:11', '1'),
(4, 'Homepage Info', '<p>Welcome To <strong>SLiMS Library</strong> Online Public Access Catalog (OPAC). Use OPAC to search collection in our library.</p>', 'headerinfo', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(5, 'Tentang SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> adalah akronim dari Senayan Library Management System. Awalnya dikembangkan oleh Perpustakaan Kementerian Pendidikan Nasional untuk menggantikan Alice (http://www2.softlinkint.com). Tujuan utamanya agar Perpustakaan Kemdiknas mempunyai kebebasan untuk menggunakan, mempelajari, memodifikasi dan mendistribusikan perangkat lunak yang digunakan. SLiMS, maka dirilis dengan lisensi GPL dan sekarang pengembangan SLiMS dilakukan oleh komunitas penggunanya.<!--intro_akhir--></p>\r\n<p><strong>Asal Mula</strong></p>\r\n<p>Setelah beroperasi 50 tahun lebih, karena beberapa alasan Perpustakaan BC Indonesia yang telah selama bertahun-tahun menjadi andalan layanan BC di Indonesia harus ditutup. Pengelola BC Indonesia kemudian berinisiatif untuk menghibahkan pengelolaan aset perpustakaanya ke tangan institusi pemerintah. Dalam hal ini, institusi pemerintah yang dianggap sesuai bidangnya dan strategis tempatnya, adalah Departemen Pendidikan Nasional (Depdiknas). Yang dihibahkan tidak hanya koleksi, tetapi juga rak koleksi, hardware (server dan workstation) serta sistem termasuk untuk aplikasi manajemen administrasi perpustakaan (Alice).</p>\r\n<p>Seiring dengan berjalannya waktu, manajemen Perpustakaan Depdiknas mulai menghadapi beberapa kendala dalam penggunaan sistem Alice. Pertama, keterbatasan dalam menambahkan fitur-fitur baru. Antara lain: kebutuhan manajemen serial, meng-online-kan katalog di web dan kustomisasi report yang sering berubah-ubah kebutuhannya. Penambahan fitur jika harus meminta modul resmi dari developer Alice, berarti membutuhkan dana tambahan yang tidak kecil. Apalagi tidak ada distributor resminya di Indonesia sehingga harus mengharapkan support dari Inggris. Ditambah lagi beberapa persyaratan yang membutuhkan infrastruktur biaya mahal seperti dedicated public IP agar bisa meng-online-kan Alice di web.<br /><br />Saat itu untuk mengatasi sebagian kebutuhan (utamanya kustomisasi report), dilakukan dengan ujicoba mengakses langsung database yang disimpan dalam format DBase. Terkadang berhasil terkadang tidak karena struktur datanya proprietary dan kompleks serta jumlah rekodnya banyak. Untuk mempelajari struktur database, dicoba melakukan kontak via email ke developer Alice. Tetapi tidak ada respon sama sekali. Disini muncul masalah kedua. Sulitnya mempelajari lebih mendalam cara kerja perangkat lunak Alice. Karena Alice merupakan sistem proprietary yang serba tertutup, segala sesuatunya sangat tergantung vendor. Dibutuhkan sejumlah uang untuk mendapatkan layanan resmi untuk kustomisasi.<br /><br />Perpustakaan Depdiknas salah satu tupoksinya adalah melakukan koordinasi pengelolaan perpustakaan unit kerja dibawah lingkungan Depdiknas. Dalam implementasinya, seringkali muncul kebutuhan untuk bisa mendistribusikan perangkat lunak sistem perpustakaan ke berbagai unit kerja tersebut. Disini masalah ketiga: sulit (atau tidak mungkin) untuk melakukan redistribusi sistem Alice. Alice merupakan perangkat lunak yang secara lisensi tidak memungkinkan diredistribusi oleh pengelola Perpustakaan Depdiknas secara bebas. Semuanya harus ijin dan membutuhkan biaya.<br /><br />November 2006, perpustakaan dihadapkan oleh sebuah masalah mendasar. Sistem Alice tiba-tiba tidak bisa digunakan. Ternyata Alice yang digunakan selama ini diimplementasikan dengan sistem sewa. Pantas saja biayanya relatif murah. Tiap tahun pengguna harus membayar kembali untuk memperpanjang masa sewa pakainya. Tetapi yang mengkhawatirkan adalah fakta bahwa perpustakaan harus menyimpan semua informasi penting dan kritikal di sebuah sistem yang tidak pernah dimiliki. Yang kalau lupa atau tidak mau membayar sewa lagi, hilanglah akses terhadap data kita sendiri. Konyol sekali. Itu sama saja dengan bunuh diri kalau masih tergantung dengan sistem berlisensi seperti itu.<br /><br />Akhirnya pengelola Perpustakaan Depdiknas me-review kembali penggunaan sistem Alice di perpustakaan Depdiknas. Beberapa poin pentingnya antara lain:<br />&bull;&nbsp;&nbsp;&nbsp; Alice memang handal (reliable), tapi punya banyak keterbatasan. Biaya sewanya memang relatif murah, tetapi kalau membutuhkan support tambahan, baik sederhana ataupun kompleks, sangat tergantung dengan developer Alice yang berpusat di Inggris. Butuh biaya yang kalau di total juga tidak murah.<br />&bull;&nbsp;&nbsp;&nbsp; Model lisensi proprietary yang digunakan developer Alice tidak cocok dengan kondisi kebanyakan perpustakaan di Indonesia. Padahal pengelola Perpustakaan Depdiknas sebagai koordinator banyak perpustakaan di lingkungan Depdiknas, punya kepentingan untuk bisa dengan bebas melakukan banyak hal terhadap software yang digunakan.<br />&bull;&nbsp;&nbsp;&nbsp; Menyimpan data penting dan kritikal untuk operasional perpustakaan di suatu software yang proprietary dan menggunakan sistem sewa, dianggap sesuatu yang konyol dan mengancam independensi dan keberlangsungan perpustakaan itu sendiri.<br />&bull;&nbsp;&nbsp;&nbsp; Alice berjalan diatas sistem operasi Windows yang juga proprietary padahal pengelola Perpustakaan Depdiknas ingin beralih menggunakan Sistem Operasi open source (seperti GNU/Linux dan FreeBSD).<br />&bull;&nbsp;&nbsp;&nbsp; Masalah devisa negara yang terbuang untuk membayar software yang tidak pernah dimiliki.<br />&bull;&nbsp;&nbsp;&nbsp; Intinya: pengelola Perpustakaan Depdiknas ingin menggunakan software yang memberikan dan menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Lisensi Alice tidak memungkinkan untuk itu.<br /><br />Setelah memutuskan untuk hijrah menggunakan sistem yang lain, maka langkah berikutnya adalah mencari sistem yang ada untuk digunakan atau mengembangkan sendiri sistem yang dibutuhkan. Beberapa pertimbangan yang harus dipenuhi:<br />&bull;&nbsp;&nbsp;&nbsp; Dirilis dibawah lisensi yang menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Model lisensi open source (www.openosurce.org) dianggap sebagai model yang paling ideal dan sesuai.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan untuk membangun sistem juga harus berlisensi open source.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan haruslah teknologi yang relatif mudah dipelajari oleh pengelola perpustakaan Depdiknas yang berlatarbelakang pendidiknas pustakawan, seperti PHP (scripting language) dan MySQL (database). Jika tidak menguasai sisi teknis teknologi, maka akan terjebak kembali terhadap ketergantungan pada developer.<br /><br />Langkah berikutnya adalah melakukan banding software sistem perpustakaan open source yang bisa diperoleh di internet. Beberapa software yang dicoba antara lain: phpMyLibrary, OpenBiblio, KOHA, EverGreen. Pengelola perpustakaan Depdiknas merasa tidak cocok dengan software yang ada, dengan beberapa alasan:<br />&bull;&nbsp;&nbsp;&nbsp; Desain aplikasi dan database yang tidak baik atau kurang menerapkan secara serius prinsip-prinsip pengembangan aplikasi dan database yang baik sesuai dengan teori yang ada (PHPMyLibrary, OpenBiblio).<br />&bull;&nbsp;&nbsp;&nbsp; Menggunakan teknologi yang sulit dikuasai oleh pengelola perpustakaan Depdiknas (KOHA dan EverGreen dikembangkan menggunakan Perl dan C++ Language yang relatif lebih sulit dipelajari).<br />&bull;&nbsp;&nbsp;&nbsp; Beberapa sudah tidak aktif atau lama sekali tidak di rilis versi terbarunya (PHPMyLibrary dan OpenBiblio).<br /><br />Karena tidak menemukan sistem yang dibutuhkan, maka diputuskan untuk mengembangkan sendiri aplikasi sistem perpustakaan yang dibutuhkan. Dalam dunia pengembangan software, salah satu best practice-nya adalah memberikan nama kode (codename) pengembangan. Nama kode berbeda dengan nama aplikasinya itu sendiri. Nama kode biasanya berbeda-beda tiap versi. Misalnya kode nama &ldquo;Hardy Heron&rdquo; untuk Ubuntu Linux 8.04 dan &ldquo;Jaunty Jackalope&rdquo; untuk Ubuntu Linux 9.04. Pengelola perpustakaan Depdiknas Untuk versi awal (1.0) aplikasi yang akan dikembangkan, memberikan nama kode &ldquo;Senayan&rdquo;. Alasannya sederhana, karena awal dikembangkan di perpustakaan Depdiknas yang berlokasi di Senayan. Apalagi Perpustakaan Depdiknas mempunyai brand sebagai library@senayan. Belakangan karena dirasa nama &ldquo;Senayan&rdquo; dirasa cocok dan punya nilai marketing yang bagus, maka nama &ldquo;Senayan&rdquo; dijadikan nama resmi aplikasi sistem perpustakaan yang dikembangkan.<br /><br />Mengembangkan Senayan<br /><br />Sebelum mulai mengembangkan Senayan, ada beberapa keputusan desain aplikasi yang harus dibuat. Aspek desain ini penting diantaranya untuk pengambilankeputusan dari berbagai masukan yang datang dari komunitas. Antara lain:<br /><br />Pertama,&nbsp; Senayan adalah aplikasi untuk kebutuhan administrasi dan konten perpustakaan (Library Automation System). Senayan didesain untuk kebutuhan skala menengah maupun besar. Cocok untuk perpustakaan yang memiliki koleksi, anggota dan staf banyak di lingkungan jaringan, baik itu lokal (intranet) dan internet.<br /><br />Kedua, Senayan dibangun dengan memperhatikan best practice dalam pengembangan software seperti dalam hal penulisan source code, dokumentasi, dan desain database.<br /><br />Ketiga, Senayan dirancang untuk compliant dengan standar pengelolaan koleksi di perpustakaan. Untuk standar pengatalogan minimal memenuhi syarat AACR 2 level 2 (Anglo-American Cataloging Rules). Kebutuhan untuk kesesuaian dengan standar di perpustakaan terus berkembang dan pengelola perpustakaan Depdiknas dan developer Senayan berkomitmen untuk terus mengembangkan Senayan agar mengikuti standar-standar tersebut.<br /><br />Keempat, Senayan didesain agar bisa juga menjadi middleware bagi aplikasi lain untuk menggunakan data yang ada didalam Senayan. Untuk itu Senayan akan menyediakan API (application programming Interface) yang berbasis web service.<br /><br />Kelima, Senayan merupakan aplikasi yang cross-platform, baik dari sisi aplikasinya itu sendiri dan akses terhadap aplikasi. Untuk itu basis yang paling tepat ada basis web.<br /><br />Keenam, teknologi yang digunakan untuk membangun Senayan, haruslah terbukti bisa diinstall di banyak platform sistem operasi, berlisensi open source dan mudah dipelajari oleh pengelola perpustakaan Depdiknas. Diputuskan untuk menggunakan PHP (www.php.net) untuk web scripting languange dan MySQL (www.mysql.com) untuk server database.<br /><br />Ketujuh, diputuskan untuk mengembangkan library PHP sendiri yang didesain spesifik untuk kebutuhan membangun library automation system. Tidak menggunakan library PHP yang sudah terkenal seperti PEAR (pear.php.net) karena alasan penguasaan terhadap teknologi dan kesederhanaan. Library tersebut diberinama &ldquo;simbio&rdquo;.<br /><br />Kedelapan, untuk mempercepat proses pengembangan, beberapa modul atau fungsi yang dibutuhkan yang dirasa terlalu lama dan rumit untuk dikembangkan sendiri, akan menggunakan software open source yang berlisensi open source juga. Misalnya: flowplayer untuk dukungan multimedia, jQuery untuk dukungan AJAX (Asynchronous Javascript and XML), genbarcode untuk dukungan pembuatan barcode, PHPThumb untuk dukungan generate image on-the-fly, tinyMCE untuk web-based text editor, dan lain-lain.<br /><br />Kesembilan, untuk menjaga spirit open source, proses pengembangan Senayan dilakukan dengan infrastruktur yang berbasis open source. Misalnya: server web menggunakan Apache, server produksi menggunakan OS Linux Centos dan OpenSuse, para developer melakukan pengembangan dengan OS Ubuntu Linux, manajemen source code menggunakan software git, dan lain-lain.<br /><br />Kesepuluh, Senayan dirilis ke masyarakat umum dengan lisensi GNU/GPL versi 3 yang menjamin kebebasan penggunanya untuk mempelajari, menggunakan, memodifikasi dan redistribusi Senayan.<br /><br />Kesebelas, para developer dan pengelola perpustakaan Depdiknas berkomitmen untuk terus mengembangkan Senayan dan menjadikannya salah satu contoh software perpustakaan yang open source, berbasis di indonesia dan menjadi salah satu contoh bagi model pengembangan open source yang terbukti berjalan dengan baik.<br /><br />Keduabelas, model pengembangan Senayan adalah open source yang artinya setiap orang dipersilahkan memberikan kontribusinya. Baik dari sisi pemrogaman, template, dokumentasi, dan lain-lain. Tentu saja ada mekanisme mana kontribusi yang bagus untuk dimasukkan dalam rilis resmi, mana yang tidak. Mengacu ke dokumen &hellip; (TAMBAHKAN DENGAN TULISAN ERIC S RAYMOND)<br /><br />Model pengembangan senayan<br /><br />Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.<br />Fitur Senayan<br />Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN adalah sebagai berikut:<br />Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.<br /><br />Roadmap Pengembangan Senayan<br />SENAYAN akan terus dikembangkan oleh para pengembangnya beserta komunitas pengguna SENAYAN lainnya. Berikut adalah Roadmap pengembangan SENAYAN ke depannya:<br /><br />Pengembangan aplikasi:<br />1.&nbsp;&nbsp;&nbsp; Kompatibilitas dengan MARC dan standar pertukaran data yang komplit. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Memastikan bahwa format data bibliografi kompatibel dengan MARC secara lebih baik (minimal MARC light).<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap RFID.<br />&bull;&nbsp;&nbsp;&nbsp; Fitur untuk impor / ekspor rekod dari The Online Computer Library Centre (OCLC), Research Libraries Information Network (RLIN), vendor sistem lain yang compliant dengan MARC.<br />&bull;&nbsp;&nbsp;&nbsp; Validasi data ISBN menggunakan modulus seven.<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap standar di perpustakaan, seperti: Library of Congress Subject Headings, Library of Congress Classification, ALA filing rules, International Standard Bibliographic Description, ANSI Standard for Bibliographic Information Exchange on magnetic tape, Common communication format (ISO 2709).<br />2.&nbsp;&nbsp;&nbsp; Katalog induk/bersama (union catalog)<br />3.&nbsp;&nbsp;&nbsp; Implementasi Thesaurus. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pengatalogan.<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pencarian, misalnya memberikan advis pencarian menggunakan knowledge base yang dibangun dengan sistem tesaurus.<br />4.&nbsp;&nbsp;&nbsp; Implementasi Library 2.0. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; User bisa login dan mempunyai halaman personalisasi.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan reservasi koleksi dan memperpanjang peminjaman.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan komunikasi dengan pustakawan via messaging system.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan tagging, rekomendasi koleksi dan menyimpannya didalam daftar koleksi favoritnya.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa memberikan komentar terhadap koleksi.<br />&bull;&nbsp;&nbsp;&nbsp; Pustakawan bisa memasukkan preferensi pemakai didalam data keanggotaan. Preferensi tersebut bisa dimanfaatkan salah satunya untuk men-generate semacam daftar koleksi terpilih untuk dicetak atau ditampilkan ketika user login.<br />5.&nbsp;&nbsp;&nbsp; Peningkatan dukungan manajemen konten digital dan entri analitikal<br /><br />Pengembangan basis komunitas pengguna:<br />&bull;&nbsp;&nbsp;&nbsp; Membangun komunitas pengguna di berbagai kota <br />&bull;&nbsp;&nbsp;&nbsp; Mengadakan Senayan Developers Day untuk silaturahmi antar developer Senayan, update dokumentasi, penambahan fitur baru dan bug fixing dan mencari bibit pengembang yang baru.<br />&bull;&nbsp;&nbsp;&nbsp; Workshop/Seminar Nasional Tahunan<br />&bull;&nbsp;&nbsp;&nbsp; Jam Sessions rutin setiap 3 bulan</p>', 'about_slims', NULL, 0, NULL, '2010-08-28 23:29:55', '2010-11-12 18:21:01', '1'),
(6, 'Modul yang Tersedia', '<p><!--intro_awal-->Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN antara lain: pengatalogan/bibliografi, keanggotaan, sirkulasi, masterfile, stock opname (inventarisasi koleksi), pelaporan/reporting, manajemen kontrol serial, digital library, dan lain-lain.<!--intro_akhir--></p>\r\n<p>Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.</p>', 'modul_tersedia', NULL, 0, NULL, '2010-08-29 04:03:09', '2010-08-29 04:05:49', '1'),
(7, 'Lisensi SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> dilisensikan dibawah GNU/GPL (http://www.gnu.org/licenses/gpl.html) untuk menjamin kebebasan pengguna dalam menggunakannya. GNU General Public License (disingkat GNU GPL atau cukup GPL) merupakan suatu lisensi perangkat lunak bebas yang aslinya ditulis oleh Richard Stallman untuk proyek GNU. Lisensi GPL memberikan penerima salinan perangkat lunak hak dari perangkat lunak bebas dan menggunakan copyleft&nbsp; untuk memastikan kebebasan yang sama diterapkan pada versi berikutnya dari karya tersebut.<!--intro_akhir--></p>\r\n<p>&nbsp;GNU LESSER GENERAL PUBLIC LICENSE<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version 3, 29 June 2007<br /><br />&nbsp;Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt;<br />&nbsp;Everyone is permitted to copy and distribute verbatim copies<br />&nbsp;of this license document, but changing it is not allowed.<br /><br /><br />&nbsp; This version of the GNU Lesser General Public License incorporates<br />the terms and conditions of version 3 of the GNU General Public<br />License, supplemented by the additional permissions listed below.<br /><br />&nbsp; 0. Additional Definitions.<br /><br />&nbsp; As used herein, \"this License\" refers to version 3 of the GNU Lesser<br />General Public License, and the \"GNU GPL\" refers to version 3 of the GNU<br />General Public License.<br /><br />&nbsp; \"The Library\" refers to a covered work governed by this License,<br />other than an Application or a Combined Work as defined below.<br /><br />&nbsp; An \"Application\" is any work that makes use of an interface provided<br />by the Library, but which is not otherwise based on the Library.<br />Defining a subclass of a class defined by the Library is deemed a mode<br />of using an interface provided by the Library.<br /><br />&nbsp; A \"Combined Work\" is a work produced by combining or linking an<br />Application with the Library.&nbsp; The particular version of the Library<br />with which the Combined Work was made is also called the \"Linked<br />Version\".<br /><br />&nbsp; The \"Minimal Corresponding Source\" for a Combined Work means the<br />Corresponding Source for the Combined Work, excluding any source code<br />for portions of the Combined Work that, considered in isolation, are<br />based on the Application, and not on the Linked Version.<br /><br />&nbsp; The \"Corresponding Application Code\" for a Combined Work means the<br />object code and/or source code for the Application, including any data<br />and utility programs needed for reproducing the Combined Work from the<br />Application, but excluding the System Libraries of the Combined Work.<br /><br />&nbsp; 1. Exception to Section 3 of the GNU GPL.<br /><br />&nbsp; You may convey a covered work under sections 3 and 4 of this License<br />without being bound by section 3 of the GNU GPL.<br /><br />&nbsp; 2. Conveying Modified Versions.<br /><br />&nbsp; If you modify a copy of the Library, and, in your modifications, a<br />facility refers to a function or data to be supplied by an Application<br />that uses the facility (other than as an argument passed when the<br />facility is invoked), then you may convey a copy of the modified<br />version:<br /><br />&nbsp;&nbsp; a) under this License, provided that you make a good faith effort to<br />&nbsp;&nbsp; ensure that, in the event an Application does not supply the<br />&nbsp;&nbsp; function or data, the facility still operates, and performs<br />&nbsp;&nbsp; whatever part of its purpose remains meaningful, or<br /><br />&nbsp;&nbsp; b) under the GNU GPL, with none of the additional permissions of<br />&nbsp;&nbsp; this License applicable to that copy.<br /><br />&nbsp; 3. Object Code Incorporating Material from Library Header Files.<br /><br />&nbsp; The object code form of an Application may incorporate material from<br />a header file that is part of the Library.&nbsp; You may convey such object<br />code under terms of your choice, provided that, if the incorporated<br />material is not limited to numerical parameters, data structure<br />layouts and accessors, or small macros, inline functions and templates<br />(ten or fewer lines in length), you do both of the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the object code that the<br />&nbsp;&nbsp; Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the object code with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp; 4. Combined Works.<br /><br />&nbsp; You may convey a Combined Work under terms of your choice that,<br />taken together, effectively do not restrict modification of the<br />portions of the Library contained in the Combined Work and reverse<br />engineering for debugging such modifications, if you also do each of<br />the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the Combined Work that<br />&nbsp;&nbsp; the Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the Combined Work with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp;&nbsp; c) For a Combined Work that displays copyright notices during<br />&nbsp;&nbsp; execution, include the copyright notice for the Library among<br />&nbsp;&nbsp; these notices, as well as a reference directing the user to the<br />&nbsp;&nbsp; copies of the GNU GPL and this license document.<br /><br />&nbsp;&nbsp; d) Do one of the following:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0) Convey the Minimal Corresponding Source under the terms of this<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License, and the Corresponding Application Code in a form<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; suitable for, and under terms that permit, the user to<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; recombine or relink the Application with a modified version of<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Linked Version to produce a modified Combined Work, in the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; manner specified by section 6 of the GNU GPL for conveying<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Corresponding Source.<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1) Use a suitable shared library mechanism for linking with the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Library.&nbsp; A suitable mechanism is one that (a) uses at run time<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a copy of the Library already present on the user\'s computer<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; system, and (b) will operate properly with a modified version<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the Library that is interface-compatible with the Linked<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version.<br /><br />&nbsp;&nbsp; e) Provide Installation Information, but only if you would otherwise<br />&nbsp;&nbsp; be required to provide such information under section 6 of the<br />&nbsp;&nbsp; GNU GPL, and only to the extent that such information is<br />&nbsp;&nbsp; necessary to install and execute a modified version of the<br />&nbsp;&nbsp; Combined Work produced by recombining or relinking the<br />&nbsp;&nbsp; Application with a modified version of the Linked Version. (If<br />&nbsp;&nbsp; you use option 4d0, the Installation Information must accompany<br />&nbsp;&nbsp; the Minimal Corresponding Source and Corresponding Application<br />&nbsp;&nbsp; Code. If you use option 4d1, you must provide the Installation<br />&nbsp;&nbsp; Information in the manner specified by section 6 of the GNU GPL<br />&nbsp;&nbsp; for conveying Corresponding Source.)<br /><br />&nbsp; 5. Combined Libraries.<br /><br />&nbsp; You may place library facilities that are a work based on the<br />Library side by side in a single library together with other library<br />facilities that are not Applications and are not covered by this<br />License, and convey such a combined library under terms of your<br />choice, if you do both of the following:<br /><br />&nbsp;&nbsp; a) Accompany the combined library with a copy of the same work based<br />&nbsp;&nbsp; on the Library, uncombined with any other library facilities,<br />&nbsp;&nbsp; conveyed under the terms of this License.<br /><br />&nbsp;&nbsp; b) Give prominent notice with the combined library that part of it<br />&nbsp;&nbsp; is a work based on the Library, and explaining where to find the<br />&nbsp;&nbsp; accompanying uncombined form of the same work.<br /><br />&nbsp; 6. Revised Versions of the GNU Lesser General Public License.<br /><br />&nbsp; The Free Software Foundation may publish revised and/or new versions<br />of the GNU Lesser General Public License from time to time. Such new<br />versions will be similar in spirit to the present version, but may<br />differ in detail to address new problems or concerns.<br /><br />&nbsp; Each version is given a distinguishing version number. If the<br />Library as you received it specifies that a certain numbered version<br />of the GNU Lesser General Public License \"or any later version\"<br />applies to it, you have the option of following the terms and<br />conditions either of that published version or of any later version<br />published by the Free Software Foundation. If the Library as you<br />received it does not specify a version number of the GNU Lesser<br />General Public License, you may choose any version of the GNU Lesser<br />General Public License ever published by the Free Software Foundation.<br /><br />&nbsp; If the Library as you received it specifies that a proxy can decide<br />whether future versions of the GNU Lesser General Public License shall<br />apply, that proxy\'s public statement of acceptance of any version is<br />permanent authorization for you to choose that version for the<br />Library.</p>', 'lisensi_slims', NULL, 0, NULL, '2010-08-29 04:04:33', '2010-11-12 22:15:43', '1');
INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `is_draft`, `publish_date`, `input_date`, `last_update`, `content_ownpage`) VALUES
(8, 'Model Pengembangan Open Source', '<p><!--intro_awal-->Sumber terbuka (Inggris: open source) adalah sistem pengembangan yang tidak dikoordinasi oleh suatu individu / lembaga pusat, tetapi oleh para pelaku yang bekerja sama dengan memanfaatkan kode sumber (source-code) yang tersebar dan tersedia bebas (biasanya menggunakan fasilitas komunikasi internet). Pola pengembangan ini mengambil model ala bazaar, sehingga pola Open Source ini memiliki ciri bagi komunitasnya yaitu adanya dorongan yang bersumber dari budaya memberi.<!--intro_akhir--><br /><br />Pola Open Source lahir karena kebebasan berkarya, tanpa intervensi berpikir dan mengungkapkan apa yang diinginkan dengan menggunakan pengetahuan dan produk yang cocok. Kebebasan menjadi pertimbangan utama ketika dilepas ke publik. Komunitas yang lain mendapat kebebasan untuk belajar, mengutak-ngatik, merevisi ulang, membenarkan ataupun bahkan menyalahkan, tetapi kebebasan ini juga datang bersama dengan tanggung jawab, bukan bebas tanpa tanggung jawab.<br /><br />Pada intinya konsep sumber terbuka adalah membuka \"kode sumber\" dari sebuah perangkat lunak. Konsep ini terasa aneh pada awalnya dikarenakan kode sumber merupakan kunci dari sebuah perangkat lunak. Dengan diketahui logika yang ada di kode sumber, maka orang lain semestinya dapat membuat perangkat lunak yang sama fungsinya. Sumber terbuka hanya sebatas itu. Artinya, dia tidak harus gratis. Definisi sumber terbuka yang asli adalah seperti tertuang dalam OSD (Open Source Definition)/Definisi sumber terbuka.</p>\r\n<p>Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.</p>', 'opensource', NULL, 0, NULL, '2010-08-29 04:05:16', '2010-08-29 04:34:04', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_title` text NOT NULL,
  `file_name` text NOT NULL,
  `file_url` text DEFAULT NULL,
  `file_dir` text DEFAULT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `file_desc` text DEFAULT NULL,
  `file_key` text DEFAULT NULL,
  `uploader_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `files_read`
--

CREATE TABLE `files_read` (
  `filelog_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `date_read` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `member_id` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fines`
--

CREATE TABLE `fines` (
  `fines_id` int(11) NOT NULL,
  `fines_date` date NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `debet` int(11) DEFAULT 0,
  `credit` int(11) DEFAULT 0,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `fines`
--

INSERT INTO `fines` (`fines_id`, `fines_date`, `member_id`, `debet`, `credit`, `description`) VALUES
(1, '2025-05-08', '123', 0, 0, 'Overdue fines for item B00002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `group_access`
--

CREATE TABLE `group_access` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `menus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`menus`)),
  `r` int(1) NOT NULL DEFAULT 0,
  `w` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `group_access`
--

INSERT INTO `group_access` (`group_id`, `module_id`, `menus`, `r`, `w`) VALUES
(1, 1, NULL, 1, 1),
(1, 2, NULL, 1, 1),
(1, 3, NULL, 1, 1),
(1, 4, NULL, 1, 1),
(1, 5, NULL, 1, 1),
(1, 6, NULL, 1, 1),
(1, 7, NULL, 1, 1),
(1, 8, NULL, 1, 1),
(2, 7, '[\"386139eadc9d3796cb33f6802f4c424b\",\"f2648d9f97a29298e5d507a206590042\",\"cc934f27d387a372c73353db6ee12018\",\"7b84f87849eb586a5e6e2aa4d726de94\",\"26164cb3bb80456204a8e5297342c2bd\",\"6b81a82497a336aa7dc575de6e4e457d\",\"2ec5a35dfb55116f686c800d580ea8b3\",\"d3f37fba19f8b8dd626b2f4de5cd9975\",\"85dfa81bf17fa624bf139309c04a1816\",\"d4e849d0fb2c74c47cff8e82ea46130b\",\"8f3cd4930081d21127f98463eeb665f3\",\"80e8c397cbb72fe25a676d89ba65085e\",\"6e67894d794e013f9dd80f4ccd5a1bba\",\"00788310d09fc54144be43c824ed57d4\",\"82d5db9c1432179b066c9ffbde619fa7\",\"86ae5a00f749ac4e03a8f9669035e33f\",\"167c9dbec058b8efde1846049580b832\",\"66adbbc11c795617a1e9bf4bf68bf243\",\"c046fe67b09e0d0819000208e9129528\",\"85eca64f2ca9b39ca4a08bb6270e59cb\",\"a2dcab22ed2df2e0c7061d9443d3e7b3\"]', 1, 1),
(2, 5, '[\"2aa84d15ddb826bfb10e6f21a5b26b03\",\"ed32732971a97f300521be92c26ec091\",\"c303d982e676ebc865bb3bc3d32b7d80\",\"74d94a1157538d8ee31fa8fb9582e2ec\",\"ef9d80fd499d3ae23098e87d9feaefa0\",\"1c0c0bda58713fb2f0f6d059d6e0d5b0\",\"98e75f6c14e09b0b54392c02d96d5be0\",\"fcf428c158c05477c8d1da4cad6fb9bc\",\"d0161813ca094ca5d20172dfa585fe03\"]', 1, 1),
(2, 6, '[\"78e291345d23cece3417fd9004c9fd95\",\"6768f645f074bfe79da39e75b7956add\",\"a3a598bc5e5d33c0ae7f3a71c1902f7d\",\"f022d91a02e84baa6ec6cea627ab4acb\",\"30b32f14317cfd1323f52aa62b05cd75\",\"38e686f1f5eec431cbd8d4055b76670b\",\"23dfe81684a98f0cc891c0efa904be3a\",\"f25433a6ead639944b33b0246c88e0aa\",\"4a3e72da744c0f7f06529de944e9d96c\",\"cb277543f133b450e904dea910d3dc41\",\"a9958ee6984280eb22e45a11c1109e48\",\"3b9771534f1a2651f1726ed1e07ab4fe\",\"dd9fb919e96540f643cd75bbfed2428e\",\"60bd34f0e49ac36f0c7c10638ecc4e28\",\"f30264017fdd8e20b07cf5d4bf35e2d2\",\"0092c81c6474c5c9c8bd1a571e79f7e4\",\"bb4034a8ec41158c9f420bb6146f3127\",\"db1791cc0d7d8c97243de73598588afa\",\"7fd8d8725e8c6ab9ae994c89a7b4536a\",\"27c4181b709fae79aa9583b5acc5bcf6\"]', 1, 1),
(2, 3, '[\"c2ab11d5f98574c958d09d837e90268c\",\"b387d1e05c5e4051294af48893b89dc5\",\"101be8876a6589121fa37c9b21927df9\",\"029dc82e368a794386ab9f1beb485253\",\"e3e276006152eb08164ebd9c33cfdde2\",\"355f35b83be86086992b9bff77adfa39\"]', 1, 1),
(2, 4, '[\"c7d30b00b4409e373ced48d1d934d57f\",\"7306bce45af3dea7b308725886b88b10\",\"d171286f98ace8f3651e819e65472c74\",\"53a3b1dc4996619c25156d4c68f12ee0\",\"b3afcd0641e14956276616a1a8250a11\",\"8679a784cfd120da623fac03f5a17611\",\"595ab7254a19c24e9b850a972fe3696c\",\"fac33553bb26ce883e4c4c817bbc6346\",\"4af26c96e6719db5c05b47fca4ed3be0\",\"199d4cf623504c625d067d177fec5366\",\"3885d32ab4ce5e372cc8d98681f56d4d\",\"7c6208b68befa88cd78cdb5829432426\",\"6b9e7de85193ed1973b686584f9db0ed\",\"4943311c08cdad7e12992b3532cd679b\",\"72f9f84cb3b8a312968a0e131b0dfde6\",\"ada759bb728c0cab7e023c73e9505988\",\"1c4aa5f7ffed0b516242931e915f738a\",\"287fc0e157252455f53f1dea8a8fabe1\",\"9f5276d0a7b16a956bd2003ff8ebf924\",\"ea82940e5e891f0fa379679c1a252561\",\"ac11d08bd7bc458b1630d265a20b12b0\",\"b5f5f2382e3c195707825cf4beb8a60a\",\"92553078ecae70a61f5f7bb26dc30c1c\"]', 1, 1),
(2, 2, '[\"51b7d6ca40fd0bc5149c455d01fa39bd\",\"dc4430a3da77758883bd476478f152a6\",\"51afbb48d6317590a7b91559ae0632e5\",\"8f3cd4930081d21127f98463eeb665f3\",\"80e8c397cbb72fe25a676d89ba65085e\",\"6e67894d794e013f9dd80f4ccd5a1bba\",\"09a2491e926e43edd6fa6d704593b6d1\"]', 1, 1),
(2, 1, '[\"11f21c0086e33e02345ec5fc6621d832\",\"927a72388bcccea97a140956e0e5d53c\",\"345459752e874ad4ae4736613090b642\",\"0c8120dd641c0a6af5a67fb577f0a349\",\"675aa15e179f1ed9d5fd4c2a0d8033fc\",\"d5c90d5fd3afa43fd832af3998bb9762\",\"223775e15390c6b54cc9987a0abd2e43\",\"4e39acaff49df9e754ce6c0b403e81a7\",\"1c14b7caecb500f26c4fdb668e839ae0\",\"a60af9328c43e79ef672683865d1eacd\",\"b4af07388bd94dfdf21b5247b93eda15\",\"faed74a41060fa52b63a5f90e7450415\",\"4da22862cb6cdec79b9d2bd526e0d137\",\"76005694e84ffe0cd86c6b23a751f694\",\"a639a94c7baabd8f23ea00e35a88ce39\",\"da2948b450f42b21b7e79dff7d05c4c2\"]', 1, 1),
(2, 8, '[\"adc94fdfba1b04f4f981e88f053a5934\"]', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_dayname` varchar(20) NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES
(1, 'Mon', '2009-06-01', 'Tes Libur'),
(2, 'Tue', '2009-06-02', 'Tes Libur'),
(3, 'Wed', '2009-06-03', 'Tes Libur'),
(4, 'Thu', '2009-06-04', 'Tes Libur'),
(5, 'Fri', '2009-06-05', 'Tes Libur'),
(6, 'Sat', '2009-06-06', 'Tes Libur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `index_documents`
--

CREATE TABLE `index_documents` (
  `document_id` int(11) NOT NULL,
  `word_id` bigint(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `hit_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `index_documents`
--

INSERT INTO `index_documents` (`document_id`, `word_id`, `location`, `hit_count`) VALUES
(1, 1, 'biblio', 1),
(1, 2, 'biblio', 1),
(1, 3, 'biblio', 1),
(1, 4, 'biblio', 1),
(1, 5, 'biblio', 1),
(1, 6, 'biblio', 1),
(1, 7, 'biblio', 1),
(1, 8, 'biblio', 1),
(2, 9, 'biblio', 1),
(2, 10, 'biblio', 1),
(2, 11, 'biblio', 1),
(2, 12, 'biblio', 1),
(2, 13, 'biblio', 1),
(2, 14, 'biblio', 1),
(2, 15, 'biblio', 1),
(2, 16, 'biblio', 1),
(2, 17, 'biblio', 1),
(2, 18, 'biblio', 1),
(2, 19, 'biblio', 1),
(2, 20, 'biblio', 1),
(2, 21, 'biblio', 1),
(2, 22, 'biblio', 1),
(2, 23, 'biblio', 1),
(2, 24, 'biblio', 1),
(2, 25, 'biblio', 1),
(3, 26, 'biblio', 1),
(3, 27, 'biblio', 1),
(3, 28, 'biblio', 1),
(3, 29, 'biblio', 1),
(3, 30, 'biblio', 1),
(3, 2, 'biblio', 1),
(3, 31, 'biblio', 1),
(3, 32, 'biblio', 1),
(3, 33, 'biblio', 1),
(3, 34, 'biblio', 1),
(3, 7, 'biblio', 1),
(3, 35, 'biblio', 1),
(3, 36, 'biblio', 1),
(4, 37, 'biblio', 1),
(4, 38, 'biblio', 1),
(4, 26, 'biblio', 1),
(4, 39, 'biblio', 1),
(4, 40, 'biblio', 1),
(4, 41, 'biblio', 1),
(4, 9, 'biblio', 1),
(4, 42, 'biblio', 1),
(4, 43, 'biblio', 1),
(4, 44, 'biblio', 1),
(4, 45, 'biblio', 1),
(4, 46, 'biblio', 1),
(4, 47, 'biblio', 1),
(4, 48, 'biblio', 1),
(4, 49, 'biblio', 1),
(5, 50, 'biblio', 1),
(5, 42, 'biblio', 1),
(5, 43, 'biblio', 1),
(5, 51, 'biblio', 1),
(5, 52, 'biblio', 1),
(5, 29, 'biblio', 1),
(5, 53, 'biblio', 1),
(5, 11, 'biblio', 1),
(5, 54, 'biblio', 1),
(5, 55, 'biblio', 1),
(5, 56, 'biblio', 1),
(5, 57, 'biblio', 1),
(5, 58, 'biblio', 1),
(6, 59, 'biblio', 1),
(6, 11, 'biblio', 1),
(6, 60, 'biblio', 1),
(6, 28, 'biblio', 1),
(6, 29, 'biblio', 1),
(6, 61, 'biblio', 1),
(6, 7, 'biblio', 1),
(6, 38, 'biblio', 1),
(6, 62, 'biblio', 1),
(6, 63, 'biblio', 1),
(6, 64, 'biblio', 1),
(6, 65, 'biblio', 1),
(6, 66, 'biblio', 1),
(6, 36, 'biblio', 1),
(7, 67, 'biblio', 1),
(7, 68, 'biblio', 1),
(7, 69, 'biblio', 1),
(7, 70, 'biblio', 1),
(7, 71, 'biblio', 1),
(7, 38, 'biblio', 1),
(7, 72, 'biblio', 1),
(7, 73, 'biblio', 1),
(7, 74, 'biblio', 1),
(7, 75, 'biblio', 1),
(7, 76, 'biblio', 1),
(7, 8, 'biblio', 1),
(7, 77, 'biblio', 1),
(8, 78, 'biblio', 1),
(8, 79, 'biblio', 1),
(8, 67, 'biblio', 1),
(8, 80, 'biblio', 1),
(8, 81, 'biblio', 1),
(8, 82, 'biblio', 1),
(8, 83, 'biblio', 1),
(8, 38, 'biblio', 1),
(8, 84, 'biblio', 1),
(8, 85, 'biblio', 1),
(8, 86, 'biblio', 1),
(8, 7, 'biblio', 1),
(8, 8, 'biblio', 1),
(9, 26, 'biblio', 1),
(9, 87, 'biblio', 1),
(9, 88, 'biblio', 1),
(9, 89, 'biblio', 1),
(9, 90, 'biblio', 1),
(9, 91, 'biblio', 1),
(9, 92, 'biblio', 1),
(9, 93, 'biblio', 1),
(10, 94, 'biblio', 1),
(10, 38, 'biblio', 1),
(10, 89, 'biblio', 1),
(10, 95, 'biblio', 1),
(10, 96, 'biblio', 1),
(10, 97, 'biblio', 1),
(10, 16, 'biblio', 1),
(10, 98, 'biblio', 1),
(10, 99, 'biblio', 1),
(10, 100, 'biblio', 1),
(10, 101, 'biblio', 1),
(11, 89, 'biblio', 1),
(11, 69, 'biblio', 1),
(11, 3, 'biblio', 1),
(11, 26, 'biblio', 1),
(11, 102, 'biblio', 1),
(11, 103, 'biblio', 1),
(11, 67, 'biblio', 1),
(11, 104, 'biblio', 1),
(11, 105, 'biblio', 1),
(11, 106, 'biblio', 1),
(11, 107, 'biblio', 1),
(11, 108, 'biblio', 1),
(11, 109, 'biblio', 1),
(11, 110, 'biblio', 1),
(11, 111, 'biblio', 1),
(12, 112, 'biblio', 1),
(12, 38, 'biblio', 1),
(12, 113, 'biblio', 1),
(12, 114, 'biblio', 1),
(12, 115, 'biblio', 1),
(13, 112, 'biblio', 1),
(13, 38, 'biblio', 1),
(13, 113, 'biblio', 1),
(13, 26, 'biblio', 1),
(13, 116, 'biblio', 1),
(13, 117, 'biblio', 1),
(13, 118, 'biblio', 1),
(13, 119, 'biblio', 1),
(14, 120, 'biblio', 1),
(14, 121, 'biblio', 1),
(14, 26, 'biblio', 1),
(14, 122, 'biblio', 1),
(14, 52, 'biblio', 1),
(14, 123, 'biblio', 1),
(14, 124, 'biblio', 1),
(14, 38, 'biblio', 1),
(14, 125, 'biblio', 1),
(14, 112, 'biblio', 1),
(14, 126, 'biblio', 1),
(14, 127, 'biblio', 1),
(14, 128, 'biblio', 1),
(14, 129, 'biblio', 1),
(14, 130, 'biblio', 1),
(14, 131, 'biblio', 1),
(15, 132, 'biblio', 1),
(15, 88, 'biblio', 1),
(15, 133, 'biblio', 1),
(15, 26, 'biblio', 1),
(15, 134, 'biblio', 1),
(15, 135, 'biblio', 1),
(15, 38, 'biblio', 1),
(15, 112, 'biblio', 1),
(15, 136, 'biblio', 1),
(15, 137, 'biblio', 1),
(15, 138, 'biblio', 1),
(15, 139, 'biblio', 1),
(15, 140, 'biblio', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `index_words`
--

CREATE TABLE `index_words` (
  `id` bigint(20) NOT NULL,
  `word` varchar(50) NOT NULL,
  `num_hits` int(11) NOT NULL,
  `doc_hits` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `index_words`
--

INSERT INTO `index_words` (`id`, `word`, `num_hits`, `doc_hits`) VALUES
(1, 'php', 1, 1),
(2, '5', 2, 2),
(3, 'for', 2, 2),
(4, 'dummies', 1, 1),
(5, 'valade', 1, 1),
(6, 'janet', 1, 1),
(7, 'programming', 5, 4),
(8, 'website', 3, 3),
(9, 'linux', 3, 2),
(10, 'in', 1, 1),
(11, 'a', 3, 3),
(12, 'nutshell', 1, 1),
(13, 'siever', 1, 1),
(14, 'ellen', 1, 1),
(15, 'love', 1, 1),
(16, 'robert', 2, 2),
(17, 'robbins', 1, 1),
(18, 'arnold', 1, 1),
(19, 'figgins', 1, 1),
(20, 'stephen', 1, 1),
(21, 'weber', 1, 1),
(22, 'aaron', 1, 1),
(23, 'operating', 1, 1),
(24, 'system', 1, 1),
(25, 'computer', 1, 1),
(26, 'the', 8, 7),
(27, 'definitive', 1, 1),
(28, 'guide', 2, 2),
(29, 'to', 3, 3),
(30, 'mysql', 1, 1),
(31, 'kofler', 1, 1),
(32, 'michael', 1, 1),
(33, 'kramer', 1, 1),
(34, 'david', 1, 1),
(35, 'database', 1, 1),
(36, 'rdbms', 2, 2),
(37, 'cathedral', 1, 1),
(38, 'and', 9, 9),
(39, 'bazaar', 1, 1),
(40, 'musings', 1, 1),
(41, 'on', 1, 1),
(42, 'open', 3, 2),
(43, 'source', 3, 2),
(44, 'by', 1, 1),
(45, 'an', 1, 1),
(46, 'accidental', 1, 1),
(47, 'revolutionary', 1, 1),
(48, 'raymond', 1, 1),
(49, 'eric', 1, 1),
(50, 'producing', 1, 1),
(51, 'software', 1, 1),
(52, 'how', 2, 2),
(53, 'run', 1, 1),
(54, 'successful', 1, 1),
(55, 'free', 1, 1),
(56, 'project', 1, 1),
(57, 'fogel', 1, 1),
(58, 'karl', 1, 1),
(59, 'postgresql', 1, 1),
(60, 'comprehensive', 1, 1),
(61, 'building', 1, 1),
(62, 'administering', 1, 1),
(63, 'databases', 1, 1),
(64, 'douglas', 1, 1),
(65, 'korry', 1, 1),
(66, 'susan', 1, 1),
(67, 'web', 4, 3),
(68, 'application', 1, 1),
(69, 'architecture', 2, 2),
(70, 'principles', 1, 1),
(71, 'protocols', 1, 1),
(72, 'practices', 1, 1),
(73, 'shklar', 1, 1),
(74, 'leon', 1, 1),
(75, 'rosen', 1, 1),
(76, 'richard', 1, 1),
(77, 'design', 1, 1),
(78, 'ajax', 1, 1),
(79, 'creating', 1, 1),
(80, 'pages', 1, 1),
(81, 'with', 1, 1),
(82, 'asynchronous', 1, 1),
(83, 'javascript', 1, 1),
(84, 'xml', 1, 1),
(85, 'woychowsky', 1, 1),
(86, 'edmond', 1, 1),
(87, 'organization', 1, 1),
(88, 'of', 3, 2),
(89, 'information', 4, 3),
(90, 'taylor', 1, 1),
(91, 'arlene', 1, 1),
(92, 'g', 1, 1),
(93, 'metadata', 1, 1),
(94, 'library', 1, 1),
(95, 'center', 1, 1),
(96, 'management', 1, 1),
(97, 'stueart', 1, 1),
(98, 'd', 1, 1),
(99, 'moran', 1, 1),
(100, 'barbara', 1, 1),
(101, 'b', 1, 1),
(102, 'world', 1, 1),
(103, 'wide', 1, 1),
(104, 'designing', 1, 1),
(105, 'large', 1, 1),
(106, 'scale', 1, 1),
(107, 'sites', 1, 1),
(108, 'morville', 1, 1),
(109, 'peter', 1, 1),
(110, 'rosenfeld', 1, 1),
(111, 'louis', 1, 1),
(112, 'corruption', 8, 4),
(113, 'development', 2, 2),
(114, 'robinson', 1, 1),
(115, 'mark', 1, 1),
(116, 'anti', 1, 1),
(117, 'campaigns', 1, 1),
(118, 'bracking', 1, 1),
(119, 'sarah', 1, 1),
(120, 'pigs', 1, 1),
(121, 'at', 1, 1),
(122, 'trough', 1, 1),
(123, 'corporate', 1, 1),
(124, 'greed', 1, 1),
(125, 'political', 1, 1),
(126, 'are', 1, 1),
(127, 'undermining', 1, 1),
(128, 'america', 1, 1),
(129, 'huffington', 1, 1),
(130, 'arianna', 1, 1),
(131, 'stassinopoulos', 1, 1),
(132, 'lords', 1, 1),
(133, 'poverty', 1, 1),
(134, 'power', 1, 1),
(135, 'prestige', 1, 1),
(136, 'international', 1, 1),
(137, 'aid', 1, 1),
(138, 'business', 1, 1),
(139, 'hancock', 1, 1),
(140, 'graham', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `coll_type_id` int(3) DEFAULT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `inventory_code` varchar(200) DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `supplier_id` varchar(6) DEFAULT NULL,
  `order_no` varchar(20) DEFAULT NULL,
  `location_id` varchar(3) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_status_id` char(3) DEFAULT NULL,
  `site` varchar(50) DEFAULT NULL,
  `source` int(1) NOT NULL DEFAULT 0,
  `invoice` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_currency` varchar(10) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `item`
--

INSERT INTO `item` (`item_id`, `biblio_id`, `call_number`, `coll_type_id`, `item_code`, `inventory_code`, `received_date`, `supplier_id`, `order_no`, `location_id`, `order_date`, `item_status_id`, `site`, `source`, `invoice`, `price`, `price_currency`, `invoice_date`, `input_date`, `last_update`, `uid`) VALUES
(1, 8, NULL, 1, 'B00001', 'INV/B00001', '2007-11-29', '0', '', 'SL', '2007-11-29', '0', '', 1, '', 500000, 'Rupiah', '2007-11-29', '2008-12-26 22:11:10', '2008-12-26 22:14:13', NULL),
(2, 6, NULL, 1, 'B00002', 'INV/B00002', '2007-11-29', '0', '', 'SL', '2007-11-29', '0', '', 1, '', 700000, 'Rupiah', '2007-11-29', '2008-12-26 22:11:45', '2008-12-26 22:13:45', NULL),
(3, 15, NULL, 1, 'B00003', 'INV/B00003', '2007-11-29', '0', '', 'SL', '2007-11-29', '0', '', 1, '', 300000, 'Rupiah', '2007-11-29', '2008-12-26 22:15:09', '2008-12-26 22:15:09', NULL),
(4, 14, NULL, 1, 'B00004', 'INV/B00004', '2007-11-29', '0', '', 'SL', '2007-11-29', '0', '', 1, '', 250000, 'Rupiah', '2007-11-29', '2008-12-26 22:15:49', '2008-12-26 22:15:49', NULL),
(5, 13, NULL, 1, 'B00005', 'INV/B00005', '2007-11-29', '0', '', 'SL', '2007-11-29', '0', '', 2, '', 0, NULL, '2007-11-29', '2008-12-26 22:17:04', '2008-12-26 22:17:04', NULL),
(6, 12, NULL, 1, 'B00006', 'INV/B00006', '2007-11-29', '0', '', 'SL', '2007-11-29', '0', '', 1, '', 350000, 'Rupiah', '2007-11-29', '2008-12-26 22:17:52', '2008-12-26 22:17:52', NULL),
(7, 4, NULL, 1, 'B00007', 'INV/B00007', '2007-11-29', '0', '', 'SL', '2007-11-29', '0', '', 1, '', 450000, 'Rupiah', '2007-11-29', '2008-12-26 22:18:29', '2008-12-26 22:18:29', NULL),
(8, 4, NULL, 1, 'B00008', 'INV/B00008', '2007-11-29', '0', '', 'SL', '2007-11-29', '0', '', 2, '', 0, NULL, '2007-11-29', '2008-12-26 22:18:51', '2008-12-26 22:18:51', NULL),
(9, 2, NULL, 1, 'B00009', 'INV/B00009', '2007-11-29', '0', '', 'SL', '2007-11-29', '0', '', 1, '', 630000, 'Rupiah', '2007-11-29', '2008-12-26 22:19:28', '2008-12-26 22:19:28', NULL),
(10, 2, NULL, 1, 'B00010', 'INV/B00010', '2007-11-29', '0', '', 'SL', '2007-11-29', '0', '', 1, '', 630000, 'Rupiah', '2007-11-29', '2008-12-26 22:19:57', '2008-12-26 22:19:57', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kardex`
--

CREATE TABLE `kardex` (
  `kardex_id` int(11) NOT NULL,
  `date_expected` date NOT NULL,
  `date_received` date DEFAULT NULL,
  `seq_number` varchar(25) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `serial_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `renewed` int(11) NOT NULL DEFAULT 0,
  `loan_rules_id` int(11) NOT NULL DEFAULT 0,
  `actual` date DEFAULT NULL,
  `is_lent` int(11) NOT NULL DEFAULT 0,
  `is_return` int(11) NOT NULL DEFAULT 0,
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `loan`
--

INSERT INTO `loan` (`loan_id`, `item_code`, `member_id`, `loan_date`, `due_date`, `renewed`, `loan_rules_id`, `actual`, `is_lent`, `is_return`, `return_date`, `input_date`, `last_update`, `uid`) VALUES
(1, 'B00002', '123', '2025-04-15', '2025-04-22', 0, 0, NULL, 1, 1, '2025-05-08', '2025-04-15 11:33:33', '2025-05-08 09:28:55', 1),
(2, 'B00005', '213212', '2025-04-29', '2025-05-06', 0, 0, NULL, 1, 1, '2025-04-30', '2025-04-29 09:42:50', '2025-04-30 14:41:35', 1),
(3, 'B00008', '213212', '2025-04-30', '2025-05-07', 0, 0, NULL, 1, 1, '2025-05-05', '2025-04-30 14:43:29', '2025-05-05 09:35:34', 4),
(4, 'B00006', '12', '2025-04-30', '2025-05-07', 0, 0, NULL, 1, 1, '2025-05-02', '2025-04-30 14:44:08', '2025-05-02 10:39:33', 4),
(5, 'B00003', '12', '2025-04-30', '2025-05-07', 0, 0, NULL, 1, 1, '2025-05-02', '2025-04-30 14:44:08', '2025-05-02 10:39:40', 4),
(6, 'B00005', '12', '2025-05-02', '2025-05-09', 0, 0, NULL, 1, 0, NULL, '2025-05-02 10:41:14', '2025-05-02 10:41:14', 6),
(7, 'B00002', '123', '2025-05-08', '2025-05-21', 1, 0, NULL, 1, 1, '2025-05-14', '2025-05-08 14:02:15', '2025-05-14 09:24:12', 4),
(8, 'B00003', '123', '2025-05-08', '2025-05-15', 0, 0, NULL, 1, 1, '2025-05-14', '2025-05-08 14:04:52', '2025-05-14 09:22:13', 4),
(9, 'B00003', '123', '2025-05-14', '2025-05-21', 0, 0, NULL, 1, 0, NULL, '2025-05-14 09:22:39', '2025-05-14 09:22:39', 4),
(10, 'B00002', '123', '2025-05-14', '2025-05-21', 0, 0, NULL, 1, 0, NULL, '2025-05-14 09:24:59', '2025-05-14 09:24:59', 4);

--
-- Trigger `loan`
--
DELIMITER $$
CREATE TRIGGER `delete_loan_history` AFTER DELETE ON `loan` FOR EACH ROW DELETE FROM `loan_history` WHERE loan_id=OLD.loan_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_loan_history` AFTER INSERT ON `loan` FOR EACH ROW INSERT INTO loan_history
     SET loan_id=NEW.loan_id,
     item_code=NEW.item_code,
     member_id=NEW.member_id,
     loan_date=NEW.loan_date,
     due_date=NEW.due_date,
     renewed=NEW.renewed,
     is_lent=NEW.is_lent,
     is_return=NEW.is_return,
     return_date=NEW.return_date,
     input_date=NEW.input_date,
     last_update=NEW.last_update,
     title=(SELECT b.title FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     biblio_id=(SELECT b.biblio_id FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     call_number=(SELECT IF(i.call_number IS NULL, b.call_number,i.call_number) FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     classification=(SELECT b.classification FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     gmd_name=(SELECT g.gmd_name FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id LEFT JOIN mst_gmd g ON g.gmd_id=b.gmd_id WHERE i.item_code=NEW.item_code),
     language_name=(SELECT l.language_name FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id LEFT JOIN mst_language l ON b.language_id=l.language_id WHERE i.item_code=NEW.item_code),
     location_name=(SELECT ml.location_name FROM item i LEFT JOIN mst_location ml ON i.location_id=ml.location_id WHERE i.item_code=NEW.item_code),
     collection_type_name=(SELECT mct.coll_type_name FROM mst_coll_type mct LEFT JOIN item i ON i.coll_type_id=mct.coll_type_id WHERE i.item_code=NEW.item_code),
     member_name=(SELECT m.member_name FROM member m WHERE m.member_id=NEW.member_id),
     member_type_name=(SELECT mmt.member_type_name FROM mst_member_type mmt LEFT JOIN member m ON m.member_type_id=mmt.member_type_id WHERE m.member_id=NEW.member_id)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_loan_history` AFTER UPDATE ON `loan` FOR EACH ROW UPDATE loan_history 
    SET is_lent=NEW.is_lent,
    is_return=NEW.is_return,
    renewed=NEW.renewed,
    return_date=NEW.return_date
    WHERE loan_id=NEW.loan_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `loan_history`
--

CREATE TABLE `loan_history` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `biblio_id` int(11) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `classification` varchar(40) DEFAULT NULL,
  `gmd_name` varchar(30) DEFAULT NULL,
  `language_name` varchar(20) DEFAULT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `collection_type_name` varchar(100) DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  `member_type_name` varchar(64) DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `renewed` int(11) NOT NULL DEFAULT 0,
  `is_lent` int(11) NOT NULL DEFAULT 0,
  `is_return` int(11) NOT NULL DEFAULT 0,
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `loan_history`
--

INSERT INTO `loan_history` (`loan_id`, `item_code`, `biblio_id`, `title`, `call_number`, `classification`, `gmd_name`, `language_name`, `location_name`, `collection_type_name`, `member_id`, `member_name`, `member_type_name`, `loan_date`, `due_date`, `renewed`, `is_lent`, `is_return`, `return_date`, `input_date`, `last_update`) VALUES
(1, 'B00002', 6, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '005.75/85-22 Kor p', '005.75/85 22', 'Text', 'English', 'My Library', 'Reference', '123', 'alviandra', 'Standard', '2025-04-15', '2025-04-22', 0, 1, 1, '2025-05-08', '2025-04-15 11:33:33', '2025-04-15 11:33:33'),
(2, 'B00005', 13, 'Corruption and development : the anti-corruption campaigns', '364.1 Bra c', '364.1/323091724 22', 'Text', 'English', 'My Library', 'Reference', '213212', 'faras', 'Standard', '2025-04-29', '2025-05-06', 0, 1, 1, '2025-04-30', '2025-04-29 09:42:50', '2025-04-29 09:42:50'),
(3, 'B00008', 4, 'Cathedral and the Bazaar: Musings on Linux and Open Source by an Accidental Revolutionary', '005.4/3222 Ray c', '005.4/32 22', 'Text', 'English', 'My Library', 'Reference', '213212', 'faras', 'Standard', '2025-04-30', '2025-05-07', 0, 1, 1, '2025-05-05', '2025-04-30 14:43:29', '2025-04-30 14:43:29'),
(4, 'B00006', 12, 'Corruption and development', '364.1 Rob c', '364.1/322/091724 21', 'Text', 'English', 'My Library', 'Reference', '12', 'vian', 'Standard', '2025-04-30', '2025-05-07', 0, 1, 1, '2025-05-02', '2025-04-30 14:44:08', '2025-04-30 14:44:08'),
(5, 'B00003', 15, 'Lords of poverty : the power, prestige, and corruption of the international aid business', '338.9 Han l', '338.9/1/091724 20', 'Text', 'English', 'My Library', 'Reference', '12', 'vian', 'Standard', '2025-04-30', '2025-05-07', 0, 1, 1, '2025-05-02', '2025-04-30 14:44:08', '2025-04-30 14:44:08'),
(6, 'B00005', 13, 'Corruption and development : the anti-corruption campaigns', '364.1 Bra c', '364.1/323091724 22', 'Text', 'English', 'My Library', 'Reference', '12', 'vian', 'Standard', '2025-05-02', '2025-05-09', 0, 1, 0, NULL, '2025-05-02 10:41:14', '2025-05-02 10:41:14'),
(7, 'B00002', 6, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '005.75/85-22 Kor p', '005.75/85 22', 'Text', 'English', 'My Library', 'Reference', '123', 'alviandra', 'Standard', '2025-05-08', '2025-05-15', 1, 1, 1, '2025-05-14', '2025-05-08 14:02:15', '2025-05-08 14:02:15'),
(8, 'B00003', 15, 'Lords of poverty : the power, prestige, and corruption of the international aid business', '338.9 Han l', '338.9/1/091724 20', 'Text', 'English', 'My Library', 'Reference', '123', 'alviandra', 'Standard', '2025-05-08', '2025-05-15', 0, 1, 1, '2025-05-14', '2025-05-08 14:04:52', '2025-05-08 14:04:52'),
(9, 'B00003', 15, 'Lords of poverty : the power, prestige, and corruption of the international aid business', '338.9 Han l', '338.9/1/091724 20', 'Text', 'English', 'My Library', 'Reference', '123', 'alviandra', 'Standard', '2025-05-14', '2025-05-21', 0, 1, 0, NULL, '2025-05-14 09:22:39', '2025-05-14 09:22:39'),
(10, 'B00002', 6, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '005.75/85-22 Kor p', '005.75/85 22', 'Text', 'English', 'My Library', 'Reference', '123', 'alviandra', 'Standard', '2025-05-14', '2025-05-21', 0, 1, 0, NULL, '2025-05-14 09:24:59', '2025-05-14 09:24:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `member_id` varchar(20) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `gender` int(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_address` varchar(255) DEFAULT NULL,
  `member_mail_address` varchar(255) DEFAULT NULL,
  `member_email` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `inst_name` varchar(100) DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `member_image` varchar(200) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `member_phone` varchar(50) DEFAULT NULL,
  `member_fax` varchar(50) DEFAULT NULL,
  `member_since_date` date DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `member_notes` text DEFAULT NULL,
  `is_pending` smallint(1) NOT NULL DEFAULT 0,
  `mpasswd` varchar(64) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(20) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `gender`, `birth_date`, `member_type_id`, `member_address`, `member_mail_address`, `member_email`, `postal_code`, `inst_name`, `is_new`, `member_image`, `pin`, `member_phone`, `member_fax`, `member_since_date`, `register_date`, `expire_date`, `member_notes`, `is_pending`, `mpasswd`, `last_login`, `last_login_ip`, `input_date`, `last_update`) VALUES
('123', 'alviandra', 1, '2025-03-19', 1, '', '', 'alviandra@gmail.com', '', '', NULL, NULL, '', '', '', '2025-03-19', '2025-03-19', '2026-03-19', '', 0, '$2y$10$kN3xbMlx71QrZ.RzAIWCn.tlyI.geKvrJdb.wmPxk8Qa9XcIHbcLe', '2025-03-20 07:32:11', '::1', '2025-03-19', '2025-03-19'),
('1', 'al', 0, '2025-03-20', 1, NULL, NULL, 'al1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-20', '2025-03-20', '2025-03-20', NULL, 0, '$2y$12$CN0iKOE6yNztYPdRx6KoE.U5QqrJqGPTk/tBUeLozaXoCnp1Y510W', '2025-03-20 09:46:29', '::1', '2025-03-20', '2025-03-20'),
('1234', 'alvian', 0, '2025-03-20', 1, NULL, NULL, 'alvian@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-20', '2025-03-20', '2025-03-20', NULL, 0, '$2y$12$h77lJXh/nAEAD1SzppxrQOxkhZG5mgVBMLxffXfqFEH2I1khjMHV.', '2025-03-20 09:48:20', '::1', '2025-03-20', '2025-03-20'),
('11', 'alvi', 0, '2025-03-20', 1, NULL, NULL, 'alvi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-20', '2025-03-20', '2025-03-20', NULL, 0, '$2y$12$HtpJXpqiYN/7MDB/.2qNIeygqRlgmd83TG9/kL/odo3ZfKq4qlcpK', '2025-03-20 10:31:35', '::1', '2025-03-20', '2025-03-20'),
('12345', 'andra', 0, '2001-02-02', 1, NULL, NULL, 'aysalf17@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2028-03-02', '2025-03-20', '2049-03-21', NULL, 0, '$2y$12$VItaT7i02ZzoYOL77qUpk.0.rtiRa/ap4Dt7Fm7q975SmxZvBJjvu', NULL, NULL, '2025-03-20', '2025-03-20'),
('111', 'vian', 0, NULL, NULL, NULL, NULL, 'vian@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, 0, '$2y$12$LI1x4W/ex7kQNQCnfFSIiexZ5SxhoXiA4v5tuBSeH9/K7LgkgV5a6', NULL, NULL, '2025-03-27', '2025-03-27'),
('213212', 'faras', 1, '2006-04-11', 1, '', 'faras@gmail.com', 'faras@gmail.com', '', '', NULL, NULL, '', '', '', '2025-04-11', '2025-04-11', '2026-04-11', '', 0, '$2y$10$14FSdDLlPaVRff0HFUfSRuLC17TRVsGFOL6t/suZKwYSxMdYc5Iom', NULL, NULL, '2025-04-11', '2025-04-11'),
('12', 'vian', 1, '2025-04-10', 1, '', '', 'vian@gmail.com', '', '', NULL, NULL, '', '', '', '2025-04-25', '2025-04-17', '2026-04-17', '', 0, '$2y$10$ZVVt5Tl0WX20A.xdvO3Xh.QvIuZkNSzFQkqAbrF56BaN39JMEYu12', NULL, NULL, '2025-04-17', '2025-04-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member_custom`
--

CREATE TABLE `member_custom` (
  `member_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='one to one relation with real member table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_author`
--

CREATE TABLE `mst_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `author_year` varchar(20) DEFAULT NULL,
  `authority_type` enum('p','o','c') DEFAULT 'p',
  `auth_list` varchar(20) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_author`
--

INSERT INTO `mst_author` (`author_id`, `author_name`, `author_year`, `authority_type`, `auth_list`, `input_date`, `last_update`) VALUES
(1, 'Valade, Janet', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(2, 'Siever, Ellen', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(3, 'Love, Robert', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(4, 'Robbins, Arnold', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(5, 'Figgins, Stephen', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(6, 'Weber, Aaron', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(7, 'Kofler, Michael', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(8, 'Kramer, David', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(9, 'Raymond, Eric', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(10, 'Fogel, Karl', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(11, 'Douglas, Korry', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(12, 'Douglas, Susan', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(13, 'Shklar, Leon', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(14, 'Rosen, Richard', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(15, 'Woychowsky, Edmond', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(16, 'Taylor, Arlene G.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(17, 'Stueart, Robert D.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(18, 'Moran, Barbara B.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(19, 'Morville, Peter', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(20, 'Rosenfeld, Louis', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(21, 'Robinson, Mark', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(22, 'Bracking, Sarah', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(23, 'Huffington, Arianna Stassinopoulos', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(24, 'Hancock, Graham', NULL, 'p', NULL, '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_carrier_type`
--

CREATE TABLE `mst_carrier_type` (
  `id` int(11) NOT NULL,
  `carrier_type` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `code2` char(1) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_carrier_type`
--

INSERT INTO `mst_carrier_type` (`id`, `carrier_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio cartridge', 'sg', 'g', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(2, 'audio cylinder', 'se', 'e', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(3, 'audio disc', 'sd', 'd', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(4, 'sound track reel', 'si', 'i', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(5, 'audio roll', 'sq', 'q', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(6, 'audiocassette', 'ss', 's', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(7, 'audiotape reel', 'st', 't', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(8, 'other (audio)', 'sz', 'z', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(9, 'computer card', 'ck', 'k', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(10, 'computer chip cartridge', 'cb', 'b', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(11, 'computer disc', 'cd', 'd', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(12, 'computer disc cartridge', 'ce', 'e', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(13, 'computer tape cartridge', 'ca', 'a', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(14, 'computer tape cassette', 'cf', 'f', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(15, 'computer tape reel', 'ch', 'h', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(16, 'online resource', 'cr', 'r', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(17, 'other (computer)', 'cz', 'z', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(18, 'aperture card', 'ha', 'a', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(19, 'microfiche', 'he', 'e', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(20, 'microfiche cassette', 'hf', 'f', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(21, 'microfilm cartridge', 'hb', 'b', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(22, 'microfilm cassette', 'hc', 'c', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(23, 'microfilm reel', 'hd', 'd', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(24, 'microfilm roll', 'hj', 'j', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(25, 'microfilm slip', 'hh', 'h', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(26, 'microopaque', 'hg', 'g', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(27, 'other (microform)', 'hz', 'z', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(28, 'microscope slide', 'pp', 'p', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(29, 'other (microscope)', 'pz', 'z', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(30, 'film cartridge', 'mc', 'c', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(31, 'film cassette', 'mf', 'f', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(32, 'film reel', 'mr', 'r', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(33, 'film roll', 'mo', 'o', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(34, 'filmslip', 'gd', 'd', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(35, 'filmstrip', 'gf', 'f', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(36, 'filmstrip cartridge', 'gc', 'c', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(37, 'overhead transparency', 'gt', 't', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(38, 'slide', 'gs', 's', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(39, 'other (projected image)', 'mz', 'z', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(40, 'stereograph card', 'eh', 'h', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(41, 'stereograph disc', 'es', 's', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(42, 'other (stereographic)', 'ez', 'z', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(43, 'card', 'no', 'o', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(44, 'flipchart', 'nn', 'n', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(45, 'roll', 'na', 'a', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(46, 'sheet', 'nb', 'b', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(47, 'volume', 'nc', 'c', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(48, 'object', 'nr', 'r', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(49, 'other (unmediated)', 'nz', '', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(50, 'video cartridge', 'vc', '', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(51, 'videocassette', 'vf', '', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(52, 'videodisc', 'vd', '', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(53, 'videotape reel', 'vr', '', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(54, 'other (video)', 'vz', '', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(55, 'unspecified', 'zu', 'u', '2025-03-14 10:41:20', '2025-03-14 10:41:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_coll_type`
--

CREATE TABLE `mst_coll_type` (
  `coll_type_id` int(3) NOT NULL,
  `coll_type_name` varchar(30) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_coll_type`
--

INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'Reference', '2007-11-29', '2007-11-29'),
(2, 'Textbook', '2007-11-29', '2007-11-29'),
(3, 'Fiction', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_content_type`
--

CREATE TABLE `mst_content_type` (
  `id` int(11) NOT NULL,
  `content_type` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `code2` char(1) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_content_type`
--

INSERT INTO `mst_content_type` (`id`, `content_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'cartographic dataset', 'crd', 'e', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(2, 'cartographic image', 'cri', 'e', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(3, 'cartographic moving image', 'crm', 'e', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(4, 'cartographic tactile image', 'crt', 'e', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(5, 'cartographic tactile three-dimensional form', 'crn', 'e', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(6, 'cartographic three-dimensional form', 'crf', 'e', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(7, 'computer dataset', 'cod', 'm', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(8, 'computer program', 'cop', 'm', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(9, 'notated movement', 'ntv', 'a', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(10, 'notated music', 'ntm', 'c', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(11, 'performed music', 'prm', 'j', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(12, 'sounds', 'snd', 'i', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(13, 'spoken word', 'spw', 'i', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(14, 'still image', 'sti', 'k', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(15, 'tactile image', 'tci', 'k', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(16, 'tactile notated music', 'tcm', 'c', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(17, 'tactile notated movement', 'tcn', 'a', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(18, 'tactile text', 'tct', 'a', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(19, 'tactile three-dimensional form', 'tcf', 'r', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(20, 'text', 'txt', 'a', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(21, 'three-dimensional form', 'tdf', 'r', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(22, 'three-dimensional moving image', 'tdm', 'g', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(23, 'two-dimensional moving image', 'tdi', 'g', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(24, 'other', 'xxx', 'o', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(25, 'unspecified', 'zzz', '', '2025-03-14 10:41:20', '2025-03-14 10:41:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_custom_field`
--

CREATE TABLE `mst_custom_field` (
  `field_id` int(11) NOT NULL,
  `primary_table` varchar(100) DEFAULT NULL,
  `dbfield` varchar(50) NOT NULL,
  `label` varchar(80) NOT NULL,
  `type` enum('text','checklist','numeric','dropdown','longtext','choice','date') NOT NULL,
  `default` varchar(80) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `indexed` tinyint(1) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `width` int(5) DEFAULT 100,
  `note` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_frequency`
--

CREATE TABLE `mst_frequency` (
  `frequency_id` int(11) NOT NULL,
  `frequency` varchar(25) NOT NULL,
  `language_prefix` varchar(5) DEFAULT NULL,
  `time_increment` smallint(6) DEFAULT NULL,
  `time_unit` enum('day','week','month','year') DEFAULT 'day',
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_frequency`
--

INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES
(1, 'Weekly', 'en', 1, 'week', '2009-05-23', '2009-05-23'),
(2, 'Bi-weekly', 'en', 2, 'week', '2009-05-23', '2009-05-23'),
(3, 'Fourth-Nightly', 'en', 14, 'day', '2009-05-23', '2009-05-23'),
(4, 'Monthly', 'en', 1, 'month', '2009-05-23', '2009-05-23'),
(5, 'Bi-Monthly', 'en', 2, 'month', '2009-05-23', '2009-05-23'),
(6, 'Quarterly', 'en', 3, 'month', '2009-05-23', '2009-05-23'),
(7, '3 Times a Year', 'en', 4, 'month', '2009-05-23', '2009-05-23'),
(8, 'Annualy', 'en', 1, 'year', '2009-05-23', '2009-05-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_gmd`
--

CREATE TABLE `mst_gmd` (
  `gmd_id` int(11) NOT NULL,
  `gmd_code` varchar(3) DEFAULT NULL,
  `gmd_name` varchar(30) NOT NULL,
  `icon_image` varchar(100) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_gmd`
--

INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES
(1, 'TE', 'Text', NULL, '2025-03-14', '2025-03-14'),
(2, 'AR', 'Art Original', NULL, '2025-03-14', '2025-03-14'),
(3, 'CH', 'Chart', NULL, '2025-03-14', '2025-03-14'),
(4, 'CO', 'Computer Software', NULL, '2025-03-14', '2025-03-14'),
(5, 'DI', 'Diorama', NULL, '2025-03-14', '2025-03-14'),
(6, 'FI', 'Filmstrip', NULL, '2025-03-14', '2025-03-14'),
(7, 'FL', 'Flash Card', NULL, '2025-03-14', '2025-03-14'),
(8, 'GA', 'Game', NULL, '2025-03-14', '2025-03-14'),
(9, 'GL', 'Globe', NULL, '2025-03-14', '2025-03-14'),
(10, 'KI', 'Kit', NULL, '2025-03-14', '2025-03-14'),
(11, 'MA', 'Map', NULL, '2025-03-14', '2025-03-14'),
(12, 'MI', 'Microform', NULL, '2025-03-14', '2025-03-14'),
(13, 'MN', 'Manuscript', NULL, '2025-03-14', '2025-03-14'),
(14, 'MO', 'Model', NULL, '2025-03-14', '2025-03-14'),
(15, 'MP', 'Motion Picture', NULL, '2025-03-14', '2025-03-14'),
(16, 'MS', 'Microscope Slide', NULL, '2025-03-14', '2025-03-14'),
(17, 'MU', 'Music', NULL, '2025-03-14', '2025-03-14'),
(18, 'PI', 'Picture', NULL, '2025-03-14', '2025-03-14'),
(19, 'RE', 'Realia', NULL, '2025-03-14', '2025-03-14'),
(20, 'SL', 'Slide', NULL, '2025-03-14', '2025-03-14'),
(21, 'SO', 'Sound Recording', NULL, '2025-03-14', '2025-03-14'),
(22, 'TD', 'Technical Drawing', NULL, '2025-03-14', '2025-03-14'),
(23, 'TR', 'Transparency', NULL, '2025-03-14', '2025-03-14'),
(24, 'VI', 'Video Recording', NULL, '2025-03-14', '2025-03-14'),
(25, 'EQ', 'Equipment', NULL, '2025-03-14', '2025-03-14'),
(26, 'CF', 'Computer File', NULL, '2025-03-14', '2025-03-14'),
(27, 'CA', 'Cartographic Material', NULL, '2025-03-14', '2025-03-14'),
(28, 'CD', 'CD-ROM', NULL, '2025-03-14', '2025-03-14'),
(29, 'MV', 'Multimedia', NULL, '2025-03-14', '2025-03-14'),
(30, 'ER', 'Electronic Resource', NULL, '2025-03-14', '2025-03-14'),
(31, 'DVD', 'Digital Versatile Disc', NULL, '2025-03-14', '2025-03-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_item_status`
--

CREATE TABLE `mst_item_status` (
  `item_status_id` char(3) NOT NULL,
  `item_status_name` varchar(30) NOT NULL,
  `rules` varchar(255) DEFAULT NULL,
  `no_loan` smallint(1) NOT NULL DEFAULT 0,
  `skip_stock_take` smallint(1) NOT NULL DEFAULT 0,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_item_status`
--

INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES
('R', 'Repair', 'a:1:{i:0;s:1:\"1\";}', 1, 1, '2025-03-14', '2025-03-14'),
('NL', 'No Loan', 'a:1:{i:0;s:1:\"1\";}', 1, 1, '2025-03-14', '2025-03-14'),
('MIS', 'Missing', NULL, 1, 1, '2025-03-14', '2025-03-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_label`
--

CREATE TABLE `mst_label` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(20) NOT NULL,
  `label_desc` varchar(50) DEFAULT NULL,
  `label_image` varchar(200) NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_label`
--

INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES
(1, 'label-new', 'New Title', 'label-new.png', '2025-03-14', '2025-03-14'),
(2, 'label-favorite', 'Favorite Title', 'label-favorite.png', '2025-03-14', '2025-03-14'),
(3, 'label-multimedia', 'Multimedia', 'label-multimedia.png', '2025-03-14', '2025-03-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_language`
--

CREATE TABLE `mst_language` (
  `language_id` char(5) NOT NULL,
  `language_name` varchar(20) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_language`
--

INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES
('id', 'Indonesia', '2025-03-14', '2025-03-14'),
('en', 'English', '2025-03-14', '2025-03-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_loan_rules`
--

CREATE TABLE `mst_loan_rules` (
  `loan_rules_id` int(11) NOT NULL,
  `member_type_id` int(11) NOT NULL DEFAULT 0,
  `coll_type_id` int(11) DEFAULT 0,
  `gmd_id` int(11) DEFAULT 0,
  `loan_limit` int(3) DEFAULT 0,
  `loan_periode` int(3) DEFAULT 0,
  `reborrow_limit` int(3) DEFAULT 0,
  `fine_each_day` int(3) DEFAULT 0,
  `grace_periode` int(2) DEFAULT 0,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_location`
--

CREATE TABLE `mst_location` (
  `location_id` varchar(3) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('SL', 'My Library', '2025-03-14', '2025-03-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_media_type`
--

CREATE TABLE `mst_media_type` (
  `id` int(11) NOT NULL,
  `media_type` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `code2` char(1) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_media_type`
--

INSERT INTO `mst_media_type` (`id`, `media_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio', 's', 's', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(2, 'computer', 'c', 'c', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(3, 'microform', 'h', 'h', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(4, 'microscopic', 'p', '', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(5, 'projected', 'g', 'g', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(6, 'stereographic', 'e', '', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(7, 'unmediated', 'n', 't', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(8, 'video', 'v', 'v', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(9, 'other', 'x', 'z', '2025-03-14 10:41:20', '2025-03-14 10:41:20'),
(10, 'unspecified', 'z', 'z', '2025-03-14 10:41:20', '2025-03-14 10:41:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_member_type`
--

CREATE TABLE `mst_member_type` (
  `member_type_id` int(11) NOT NULL,
  `member_type_name` varchar(50) NOT NULL,
  `loan_limit` int(11) NOT NULL,
  `loan_periode` int(11) NOT NULL,
  `enable_reserve` int(1) NOT NULL DEFAULT 0,
  `reserve_limit` int(11) NOT NULL DEFAULT 0,
  `member_periode` int(11) NOT NULL,
  `reborrow_limit` int(11) NOT NULL,
  `fine_each_day` int(11) NOT NULL,
  `grace_periode` int(2) DEFAULT 0,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_member_type`
--

INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'Standard', 2, 7, 1, 2, 365, 1, 0, 0, '2025-03-14', '2025-03-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_module`
--

CREATE TABLE `mst_module` (
  `module_id` int(3) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_path` varchar(200) DEFAULT NULL,
  `module_desc` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_module`
--

INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES
(1, 'bibliography', 'bibliography', 'Manage your bibliographic/catalog and items/copies database'),
(2, 'circulation', 'circulation', 'Module for doing library items circulation such as loan and return'),
(3, 'membership', 'membership', 'Manage your library membership and membership type'),
(4, 'master_file', 'master_file', 'Manage your referential data that will be used by other modules'),
(5, 'stock_take', 'stock_take', 'Ease your pain in doing library stock opname process'),
(6, 'system', 'system', 'Configure system behaviour, user and backups'),
(7, 'reporting', 'reporting', 'Real time and dynamic report about library collections and circulation'),
(8, 'serial_control', 'serial_control', 'Serial publication management');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_place`
--

CREATE TABLE `mst_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_place`
--

INSERT INTO `mst_place` (`place_id`, `place_name`, `input_date`, `last_update`) VALUES
(1, 'Hoboken, NJ', '2007-11-29', '2007-11-29'),
(2, 'Sebastopol, CA', '2007-11-29', '2007-11-29'),
(3, 'Indianapolis', '2007-11-29', '2007-11-29'),
(4, 'Upper Saddle River, NJ', '2007-11-29', '2007-11-29'),
(5, 'Westport, Conn.', '2007-11-29', '2007-11-29'),
(6, 'Cambridge, Mass', '2007-11-29', '2007-11-29'),
(7, 'London', '2007-11-29', '2007-11-29'),
(8, 'New York', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_publisher`
--

CREATE TABLE `mst_publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_publisher`
--

INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES
(1, 'Wiley', '2007-11-29', '2007-11-29'),
(2, 'OReilly', '2007-11-29', '2007-11-29'),
(3, 'Apress', '2007-11-29', '2007-11-29'),
(4, 'Sams', '2007-11-29', '2007-11-29'),
(5, 'John Wiley', '2007-11-29', '2007-11-29'),
(6, 'Prentice Hall', '2007-11-29', '2007-11-29'),
(7, 'Libraries Unlimited', '2007-11-29', '2007-11-29'),
(8, 'Taylor & Francis Inc.', '2007-11-29', '2007-11-29'),
(9, 'Palgrave Macmillan', '2007-11-29', '2007-11-29'),
(10, 'Crown publishers', '2007-11-29', '2007-11-29'),
(11, 'Atlantic Monthly Press', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_relation_term`
--

CREATE TABLE `mst_relation_term` (
  `ID` int(11) NOT NULL,
  `rt_id` varchar(11) NOT NULL,
  `rt_desc` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_relation_term`
--

INSERT INTO `mst_relation_term` (`ID`, `rt_id`, `rt_desc`) VALUES
(1, 'U', 'Use'),
(2, 'UF', 'Use For'),
(3, 'BT', 'Broader Term'),
(4, 'NT', 'Narrower Term'),
(5, 'RT', 'Related Term'),
(6, 'SA', 'See Also');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_servers`
--

CREATE TABLE `mst_servers` (
  `server_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` text NOT NULL,
  `server_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - p2p server; 2 - z3950; 3 - z3950  SRU',
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_supplier`
--

CREATE TABLE `mst_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postal_code` char(10) DEFAULT NULL,
  `phone` char(14) DEFAULT NULL,
  `contact` char(30) DEFAULT NULL,
  `fax` char(14) DEFAULT NULL,
  `account` char(12) DEFAULT NULL,
  `e_mail` char(80) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_topic`
--

CREATE TABLE `mst_topic` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `topic_type` enum('t','g','n','tm','gr','oc') NOT NULL,
  `auth_list` varchar(20) DEFAULT NULL,
  `classification` varchar(50) NOT NULL COMMENT 'Classification Code',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_topic`
--

INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(1, 'Programming', 't', NULL, '', '2007-11-29', '2007-11-29'),
(2, 'Website', 't', NULL, '', '2007-11-29', '2007-11-29'),
(3, 'Operating System', 't', NULL, '', '2007-11-29', '2007-11-29'),
(4, 'Linux', 't', NULL, '', '2007-11-29', '2007-11-29'),
(5, 'Computer', 't', NULL, '', '2007-11-29', '2007-11-29'),
(6, 'Database', 't', NULL, '', '2007-11-29', '2007-11-29'),
(7, 'RDBMS', 't', NULL, '', '2007-11-29', '2007-11-29'),
(8, 'Open Source', 't', NULL, '', '2007-11-29', '2007-11-29'),
(9, 'Project', 't', NULL, '', '2007-11-29', '2007-11-29'),
(10, 'Design', 't', NULL, '', '2007-11-29', '2007-11-29'),
(11, 'Information', 't', NULL, '', '2007-11-29', '2007-11-29'),
(12, 'Organization', 't', NULL, '', '2007-11-29', '2007-11-29'),
(13, 'Metadata', 't', NULL, '', '2007-11-29', '2007-11-29'),
(14, 'Library', 't', NULL, '', '2007-11-29', '2007-11-29'),
(15, 'Corruption', 't', NULL, '', '2007-11-29', '2007-11-29'),
(16, 'Development', 't', NULL, '', '2007-11-29', '2007-11-29'),
(17, 'Poverty', 't', NULL, '', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_visitor_room`
--

CREATE TABLE `mst_visitor_room` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unique_code` varchar(5) NOT NULL COMMENT 'Code for identification each room',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_voc_ctrl`
--

CREATE TABLE `mst_voc_ctrl` (
  `vocabolary_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `rt_id` varchar(11) NOT NULL,
  `related_topic_id` varchar(250) NOT NULL,
  `scope` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `plugins`
--

CREATE TABLE `plugins` (
  `id` varchar(32) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `path` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reserve`
--

CREATE TABLE `reserve` (
  `reserve_id` int(11) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `reserve_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `search_biblio`
--

CREATE TABLE `search_biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `isbn_issn` varchar(32) DEFAULT NULL,
  `author` text DEFAULT NULL,
  `topic` text DEFAULT NULL,
  `gmd` varchar(30) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `publish_place` varchar(30) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `classification` varchar(40) DEFAULT NULL,
  `spec_detail_info` text DEFAULT NULL,
  `carrier_type` varchar(100) NOT NULL,
  `content_type` varchar(100) NOT NULL,
  `media_type` varchar(100) NOT NULL,
  `location` text DEFAULT NULL,
  `publish_year` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `series_title` text DEFAULT NULL,
  `items` text DEFAULT NULL,
  `collection_types` text DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `opac_hide` smallint(1) NOT NULL DEFAULT 0,
  `promoted` smallint(1) NOT NULL DEFAULT 0,
  `labels` text DEFAULT NULL,
  `collation` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='index table for advance searching technique for SLiMS';

--
-- Dumping data untuk tabel `search_biblio`
--

INSERT INTO `search_biblio` (`biblio_id`, `title`, `edition`, `isbn_issn`, `author`, `topic`, `gmd`, `publisher`, `publish_place`, `language`, `classification`, `spec_detail_info`, `carrier_type`, `content_type`, `media_type`, `location`, `publish_year`, `notes`, `series_title`, `items`, `collection_types`, `call_number`, `opac_hide`, `promoted`, `labels`, `collation`, `image`, `input_date`, `last_update`) VALUES
(1, 'PHP 5 for dummies', '', '0764541668', 'Valade, Janet', 'Programming - Website', 'Text', 'Wiley', 'Hoboken, NJ', 'English', '005.13/3 22', '', '', '', '', NULL, '2004', NULL, 'For dummies', NULL, NULL, '005.13/3-22 Jan p', 0, 0, NULL, 'xiv, 392 p. : ill. ; 24 cm.', 'php5_dummies.jpg', '2007-11-29 15:36:50', '2007-11-29 16:26:59'),
(2, 'Linux In a Nutshell', 'Fifth Edition', '9780596009304', 'Siever, Ellen - Love, Robert - Robbins, Arnold - Figgins, Stephen - Weber, Aaron', 'Operating System - Linux - Computer', 'Text', 'OReilly', 'Sebastopol, CA', 'English', '005.4/32 22', '', '', '', '', 'My Library', '2005', NULL, 'In a Nutshell', 'B00009 - B00010', 'Reference', '005.4/32-22 Ell l', 0, 0, NULL, 'xiv, 925 p. : ill. ; 23 cm.', 'linux_in_a_nutshell.jpg', '2007-11-29 15:53:35', '2007-11-29 16:26:10'),
(3, 'The Definitive Guide to MySQL 5', '', '9781590595350', 'Kofler, Michael - Kramer, David', 'Programming - Database - RDBMS', 'Text', 'Apress', '', 'English', '005.75/85 22', '', '', '', '', NULL, '2005', NULL, 'Definitive Guide Series', NULL, NULL, '005.75/85-22 Kof d', 0, 0, NULL, '784p.', 'mysql_def_guide.jpg', '2007-11-29 16:01:08', '2007-11-29 16:26:33'),
(4, 'Cathedral and the Bazaar: Musings on Linux and Open Source by an Accidental Revolutionary', '', '0-596-00108-8', 'Raymond, Eric', 'Linux - Open Source', 'Text', 'OReilly', 'Sebastopol, CA', 'English', '005.4/32 22', '', '', '', '', 'My Library', '2001', 'The Cathedral & the Bazaar is a must for anyone who cares about the future of the computer industry or the dynamics of the information economy. This revised and expanded paperback edition includes new material on open source developments in 1999 and 2000. Raymond\'s clear and effective writing style accurately describing the benefits of open source software has been key to its success. (Source: http://safari.oreilly.com/0596001088)', NULL, 'B00007 - B00008', 'Reference', '005.4/3222 Ray c', 0, 0, NULL, '208p.', 'cathedral_bazaar.jpg', '2007-11-29 16:14:44', '2007-11-29 16:25:43'),
(5, 'Producing open source software : how to run a successful free software project', '1st ed.', '9780596007591', 'Fogel, Karl', 'Open Source - Project', 'Text', 'OReilly', 'Sebastopol, CA', 'English', '005.1 22', '', '', '', '', NULL, '2005', 'Includes index.', NULL, NULL, NULL, '005.1-22 Fog p', 0, 0, NULL, 'xx, 279 p. ; 24 cm.', 'producing_oss.jpg', '2007-11-29 16:20:45', '2007-11-29 16:31:21'),
(6, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '1st ed.', '0735712573', 'Douglas, Korry - Douglas, Susan', 'Programming - RDBMS', 'Text', 'Sams', 'Indianapolis', 'English', '005.75/85 22', '', '', '', '', 'My Library', '2003', 'PostgreSQL is the world\'s most advanced open-source database. PostgreSQL is the most comprehensive, in-depth, and easy-to-read guide to this award-winning database. This book starts with a thorough overview of SQL, a description of all PostgreSQL data types, and a complete explanation of PostgreSQL commands.', 'DeveloperÃ¢â‚¬â„¢s library', 'B00002', 'Reference', '005.75/85-22 Kor p', 0, 0, NULL, 'xvii, 790 p. : ill. ; 23cm.', 'postgresql.jpg', '2007-11-29 16:29:33', '2025-03-14 10:41:21'),
(7, 'Web application architecture : principles, protocols, and practices', '', '0471486566', 'Shklar, Leon - Rosen, Richard', 'Website - Design', 'Text', 'John Wiley', 'Hoboken, NJ', 'English', '005.7/2 21', '', '', '', '', NULL, '2003', 'An in-depth examination of the core concepts and general principles of Web application development.\r\nThis book uses examples from specific technologies (e.g., servlet API or XSL), without promoting or endorsing particular platforms or APIs. Such knowledge is critical when designing and debugging complex systems. This conceptual understanding makes it easier to learn new APIs that arise in the rapidly changing Internet environment.', NULL, NULL, NULL, '005.7/2-21 Leo w', 0, 0, NULL, 'xi, 357 p. : ill. ; 23 cm.', 'webapp_arch.jpg', '2007-11-29 16:41:57', '2007-11-29 16:32:46'),
(8, 'Ajax : creating Web pages with asynchronous JavaScript and XML', '', '9780132272674', 'Woychowsky, Edmond', 'Programming - Website', 'Text', 'Prentice Hall', 'Upper Saddle River, NJ', 'English', '006.7/86 22', '', '', '', '', 'My Library', '2007', 'Using Ajax, you can build Web applications with the sophistication and usability of traditional desktop applications and you can do it using standards and open source software. Now, for the first time, there\'s an easy, example-driven guide to Ajax for every Web and open source developer, regardless of experience.', 'Bruce PerensÃ¢â‚¬â„¢ Open Source series', 'B00001', 'Reference', '006.7/86-22 Woy a', 0, 0, NULL, 'xxii, 384 p. : ill. ; 24 cm.', 'ajax.jpg', '2007-11-29 16:47:20', '2025-03-14 10:41:21'),
(9, 'The organization of information', '2nd ed.', '1563089769', 'Taylor, Arlene G.', 'Information - Organization - Metadata', 'Text', 'Libraries Unlimited', 'Westport, Conn.', 'English', '025 22', '', '', '', '', NULL, '2004', 'A basic textbook for students of library and information studies, and a guide for practicing school library media specialists. Describes the impact of global forces and the school district on the development and operation of a media center, the technical and human side of management, programmatic activities, supportive services to students, and the quality and quantity of resources available to support programs.', 'Library and information science text series', NULL, NULL, '025-22 Tay o', 0, 0, NULL, 'xxvii, 417 p. : ill. ; 27 cm.', 'organization_information.jpg', '2007-11-29 16:54:12', '2007-11-29 16:27:20'),
(10, 'Library and Information Center Management', '7th ed.', '9781591584063', 'Stueart, Robert D. - Moran, Barbara B.', 'Information - Library', 'Text', 'Libraries Unlimited', 'Westport, Conn.', 'English', '025.1 22', '', '', '', '', NULL, '2007', NULL, 'Library and information science text series', NULL, NULL, '025.1-22 Stu l', 0, 0, NULL, 'xxviii, 492 p. : ill. ; 27 cm.', 'library_info_center.JPG', '2007-11-29 16:58:51', '2007-11-29 16:27:40'),
(11, 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', '2nd ed.', '9780596000356', 'Morville, Peter - Rosenfeld, Louis', NULL, 'Text', 'OReilly', 'Cambridge, Mass', 'English', '006.7 22', '', '', '', '', NULL, '2002', 'Information Architecture for the World Wide Web is about applying the principles of architecture and library science to web site design. Each website is like a public building, available for tourists and regulars alike to breeze through at their leisure. The job of the architect is to set up the framework for the site to make it comfortable and inviting for people to visit, relax in, and perhaps even return to someday.', NULL, NULL, NULL, '006.7-22 Mor i', 0, 0, NULL, '500p.', 'information_arch.jpg', '2007-11-29 17:26:14', '2007-11-29 16:32:25'),
(12, 'Corruption and development', '', '9780714649023', 'Robinson, Mark', 'Corruption - Development', 'Text', 'Taylor & Francis Inc.', 'London', 'English', '364.1/322/091724 21', '', '', '', '', 'My Library', '1998', 'The articles assembled in this volume offer a fresh approach to analysing the problem of corruption in developing countries and the k means to tackle the phenomenon.', NULL, 'B00006', 'Reference', '364.1 Rob c', 0, 0, NULL, '166 p. : ill. ; 22 cm.', 'corruption_development.jpg', '2007-11-29 17:45:30', '2007-11-29 16:20:53'),
(13, 'Corruption and development : the anti-corruption campaigns', '', '0230525504', 'Bracking, Sarah', 'Corruption', 'Text', 'Palgrave Macmillan', 'New York', 'English', '364.1/323091724 22', '', '', '', '', 'My Library', '2007', 'This book provides a multidisciplinary interrogation of the global anti-corruption campaigns of the last ten years, arguing that while some positive change is observable, the period is also replete with perverse consequences and unintended outcomes', NULL, 'B00005', 'Reference', '364.1 Bra c', 0, 0, NULL, '310p.', 'corruption_development_anti_campaign.jpg', '2007-11-29 17:49:49', '2007-11-29 16:19:48'),
(14, 'Pigs at the trough : how corporate greed and political corruption are undermining America', '', '1400047714', 'Huffington, Arianna Stassinopoulos', 'Corruption', 'Text', 'Crown publishers', 'New York', 'English', '364.1323', '', '', '', '', 'My Library', '2003', NULL, NULL, 'B00004', 'Reference', '364.1323 Huf p', 0, 0, NULL, '275 p. ; 22 cm.', 'pigs_at_trough.jpg', '2007-11-29 17:56:00', '2007-11-29 16:18:33'),
(15, 'Lords of poverty : the power, prestige, and corruption of the international aid business', '', '9780871134691', 'Hancock, Graham', 'Corruption - Poverty', 'Text', 'Atlantic Monthly Press', 'New York', 'English', '338.9/1/091724 20', '', '', '', '', 'My Library', '1994', 'Lords of Poverty is a case study in betrayals of a public trust. The shortcomings of aid are numerous, and serious enough to raise questions about the viability of the practice at its most fundamental levels. Hancocks report is thorough, deeply shocking, and certain to cause critical reevaluation of the governments motives in giving foreign aid, and of the true needs of our intended beneficiaries.', NULL, 'B00003', 'Reference', '338.9 Han l', 0, 0, NULL, 'xvi, 234 p. ; 22 cm.', 'lords_of_poverty.jpg', '2007-11-29 18:08:13', '2007-11-29 16:13:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `serial`
--

CREATE TABLE `serial` (
  `serial_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `period` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `gmd_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(3) NOT NULL,
  `setting_name` varchar(30) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'library_name', 's:7:\"Senayan\";'),
(2, 'library_subname', 's:37:\"Open Source Library Management System\";'),
(3, 'template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:26:\"template/default/style.css\";}'),
(4, 'admin_template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:32:\"admin_template/default/style.css\";}'),
(5, 'default_lang', 's:5:\"en_US\";'),
(6, 'opac_result_num', 's:2:\"10\";'),
(7, 'enable_promote_titles', 'N;'),
(8, 'quick_return', 'b:1;'),
(9, 'allow_loan_date_change', 'b:0;'),
(10, 'loan_limit_override', 'b:0;'),
(11, 'enable_xml_detail', 'b:1;'),
(12, 'enable_xml_result', 'b:1;'),
(13, 'allow_file_download', 'b:1;'),
(14, 'session_timeout', 's:4:\"7200\";'),
(15, 'circulation_receipt', 'b:0;'),
(16, 'barcode_encoding', 's:7:\"code128\";'),
(17, 'ignore_holidays_fine_calc', 'b:0;'),
(18, 'barcode_print_settings', 'a:12:{s:19:\"barcode_page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:21:\"barcode_items_per_row\";i:3;s:20:\"barcode_items_margin\";d:0.1000000000000000055511151231257827021181583404541015625;s:17:\"barcode_box_width\";i:7;s:18:\"barcode_box_height\";i:5;s:27:\"barcode_include_header_text\";i:1;s:17:\"barcode_cut_title\";i:50;s:19:\"barcode_header_text\";s:0:\"\";s:13:\"barcode_fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:17:\"barcode_font_size\";i:11;s:13:\"barcode_scale\";i:70;s:19:\"barcode_border_size\";i:1;}'),
(19, 'label_print_settings', 'a:10:{s:11:\"page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:13:\"items_per_row\";i:3;s:12:\"items_margin\";d:0.05000000000000000277555756156289135105907917022705078125;s:9:\"box_width\";i:8;s:10:\"box_height\";d:3.29999999999999982236431605997495353221893310546875;s:19:\"include_header_text\";i:1;s:11:\"header_text\";s:0:\"\";s:5:\"fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:9:\"font_size\";i:11;s:11:\"border_size\";i:1;}'),
(20, 'membercard_print_settings', 'a:1:{s:5:\"print\";a:1:{s:10:\"membercard\";a:61:{s:11:\"card_factor\";s:12:\"37.795275591\";s:21:\"card_include_id_label\";i:1;s:23:\"card_include_name_label\";i:1;s:22:\"card_include_pin_label\";i:1;s:23:\"card_include_inst_label\";i:0;s:24:\"card_include_email_label\";i:0;s:26:\"card_include_address_label\";i:1;s:26:\"card_include_barcode_label\";i:1;s:26:\"card_include_expired_label\";i:1;s:14:\"card_box_width\";d:8.5999999999999996447286321199499070644378662109375;s:15:\"card_box_height\";d:5.4000000000000003552713678800500929355621337890625;s:9:\"card_logo\";s:8:\"logo.png\";s:21:\"card_front_logo_width\";s:0:\"\";s:22:\"card_front_logo_height\";s:0:\"\";s:20:\"card_front_logo_left\";s:0:\"\";s:19:\"card_front_logo_top\";s:0:\"\";s:20:\"card_back_logo_width\";s:0:\"\";s:21:\"card_back_logo_height\";s:0:\"\";s:19:\"card_back_logo_left\";s:0:\"\";s:18:\"card_back_logo_top\";s:0:\"\";s:15:\"card_photo_left\";s:0:\"\";s:14:\"card_photo_top\";s:0:\"\";s:16:\"card_photo_width\";d:1.5;s:17:\"card_photo_height\";d:1.8000000000000000444089209850062616169452667236328125;s:23:\"card_front_header1_text\";s:19:\"Library Member Card\";s:28:\"card_front_header1_font_size\";s:2:\"12\";s:23:\"card_front_header2_text\";s:10:\"My Library\";s:28:\"card_front_header2_font_size\";s:2:\"12\";s:22:\"card_back_header1_text\";s:10:\"My Library\";s:27:\"card_back_header1_font_size\";s:2:\"12\";s:22:\"card_back_header2_text\";s:35:\"My Library Full Address and Website\";s:27:\"card_back_header2_font_size\";s:1:\"5\";s:17:\"card_header_color\";s:7:\"#0066FF\";s:18:\"card_bio_font_size\";s:2:\"11\";s:20:\"card_bio_font_weight\";s:4:\"bold\";s:20:\"card_bio_label_width\";s:3:\"100\";s:9:\"card_city\";s:9:\"City Name\";s:10:\"card_title\";s:15:\"Library Manager\";s:14:\"card_officials\";s:14:\"Librarian Name\";s:17:\"card_officials_id\";s:12:\"Librarian ID\";s:15:\"card_stamp_file\";s:9:\"stamp.png\";s:19:\"card_signature_file\";s:13:\"signature.png\";s:15:\"card_stamp_left\";s:0:\"\";s:14:\"card_stamp_top\";s:0:\"\";s:16:\"card_stamp_width\";s:0:\"\";s:17:\"card_stamp_height\";s:0:\"\";s:13:\"card_exp_left\";s:0:\"\";s:12:\"card_exp_top\";s:0:\"\";s:14:\"card_exp_width\";s:0:\"\";s:15:\"card_exp_height\";s:0:\"\";s:18:\"card_barcode_scale\";i:100;s:17:\"card_barcode_left\";s:0:\"\";s:16:\"card_barcode_top\";s:0:\"\";s:18:\"card_barcode_width\";s:0:\"\";s:19:\"card_barcode_height\";s:0:\"\";s:10:\"card_rules\";s:120:\"<ul><li>This card is published by Library.</li><li>Please return this card to its owner if you found it.</li></ul>\";s:20:\"card_rules_font_size\";s:1:\"8\";s:12:\"card_address\";s:76:\"My Library<br />website: http://slims.web.id, email : librarian@slims.web.id\";s:22:\"card_address_font_size\";s:1:\"7\";s:17:\"card_address_left\";s:0:\"\";s:16:\"card_address_top\";s:0:\"\";}}}'),
(21, 'enable_visitor_limitation', 's:1:\"0\";'),
(22, 'time_visitor_limitation', 's:2:\"60\";'),
(23, 'logo_image', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_take`
--

CREATE TABLE `stock_take` (
  `stock_take_id` int(11) NOT NULL,
  `stock_take_name` varchar(200) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `init_user` varchar(50) NOT NULL,
  `total_item_stock_taked` int(11) DEFAULT NULL,
  `total_item_lost` int(11) DEFAULT NULL,
  `total_item_exists` int(11) DEFAULT 0,
  `total_item_loan` int(11) DEFAULT NULL,
  `stock_take_users` mediumtext DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `report_file` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_take_item`
--

CREATE TABLE `stock_take_item` (
  `stock_take_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gmd_name` varchar(30) DEFAULT NULL,
  `classification` varchar(30) DEFAULT NULL,
  `coll_type_name` varchar(30) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `status` enum('e','m','u','l') NOT NULL DEFAULT 'm',
  `checked_by` varchar(50) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_log`
--

CREATE TABLE `system_log` (
  `log_id` int(11) NOT NULL,
  `log_type` enum('staff','member','system') NOT NULL DEFAULT 'staff',
  `id` varchar(50) DEFAULT NULL,
  `log_location` varchar(50) NOT NULL,
  `sub_module` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `log_msg` text NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `system_log`
--

INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `sub_module`, `action`, `log_msg`, `log_date`) VALUES
(1, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-03-17 07:42:28'),
(2, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-03-18 09:26:54'),
(3, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-03-18 11:47:27'),
(4, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-03-19 10:21:03'),
(5, 'staff', '1', 'membership', 'Add', 'OK', 'Admin add new member (alviandra) with ID (123)', '2025-03-19 11:48:41'),
(6, 'member', '123', 'Login', '', '', 'Login success for member 123 from address ::1', '2025-03-20 07:32:11'),
(7, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2025-03-20 08:03:38'),
(8, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-03-20 08:04:06'),
(9, 'member', 'al', 'Login', '', '', 'Login FAILED for member al from address ::1', '2025-03-20 09:45:22'),
(10, 'member', '123', 'Login', '', '', 'Login FAILED for member 123 from address ::1', '2025-03-20 09:45:35'),
(11, 'member', '123', 'Login', '', '', 'Login FAILED for member 123 from address ::1', '2025-03-20 09:45:46'),
(12, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2025-03-20 09:46:29'),
(13, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2025-03-20 09:48:11'),
(14, 'member', '1234', 'Login', '', '', 'Login success for member 1234 from address ::1', '2025-03-20 09:48:20'),
(15, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2025-03-20 10:30:44'),
(16, 'member', '11', 'Login', '', '', 'Login success for member 11 from address ::1', '2025-03-20 10:31:35'),
(17, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2025-03-20 10:33:25'),
(18, 'staff', 'andra', 'Login', '', '', 'Login FAILED for user andra from address 127.0.0.1', '2025-03-26 10:53:31'),
(19, 'staff', 'andra', 'Login', '', '', 'Login success for user andra from address 127.0.0.1', '2025-03-26 10:53:41'),
(20, 'staff', '2', 'system', '', '', 'alfirdaus geraldi Log Out from application from address 127.0.0.1', '2025-03-26 10:53:54'),
(21, 'staff', 'andra', 'Login', '', '', 'Login FAILED for user andra from address 127.0.0.1', '2025-03-26 10:53:58'),
(22, 'staff', 'andra', 'Login', '', '', 'Login success for user andra from address 127.0.0.1', '2025-03-26 10:54:03'),
(23, 'staff', 'andra', 'Login', '', '', 'Login success for user andra from address 127.0.0.1', '2025-03-26 15:02:28'),
(24, 'staff', 'andra', 'Login', '', '', 'Login success for user andra from address 127.0.0.1', '2025-03-27 08:27:39'),
(25, 'staff', '2', 'system', '', '', 'alfirdaus geraldi Log Out from application from address 127.0.0.1', '2025-03-27 08:27:45'),
(26, 'staff', 'andra', 'Login', '', '', 'Login success for user andra from address 127.0.0.1', '2025-03-27 08:31:33'),
(27, 'staff', '2', 'system', '', '', 'alfirdaus geraldi Log Out from application from address 127.0.0.1', '2025-03-27 09:36:50'),
(28, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-03-27 09:37:01'),
(29, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-03-27 09:37:07'),
(30, 'staff', 'andra', 'Login', '', '', 'Login success for user andra from address 127.0.0.1', '2025-03-27 09:37:20'),
(31, 'staff', '2', 'system', '', '', 'alfirdaus geraldi Log Out from application from address 127.0.0.1', '2025-03-27 10:27:25'),
(32, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-03-27 10:27:36'),
(33, 'staff', '1', 'system', 'User', 'Add', 'Admin add new user (faras habibi) with username (faras)', '2025-03-27 10:31:45'),
(34, 'member', '1234', 'Login', '', '', 'Login FAILED for member 1234 from address 127.0.0.1', '2025-04-11 09:36:06'),
(35, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-04-11 11:32:06'),
(36, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-04-11 11:33:16'),
(37, 'staff', '1', 'membership', 'Add', 'OK', 'Admin add new member (faras) with ID (213212)', '2025-04-11 11:35:53'),
(38, 'staff', '1', 'system', 'User group', 'Add', 'Admin add new group (faras)', '2025-04-11 13:13:42'),
(39, 'staff', '1', 'system', 'User', 'Add', 'Admin add new user (faras) with username (frs)', '2025-04-11 13:15:51'),
(40, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-04-11 13:17:44'),
(41, 'staff', '', 'system', '', '', 'Log Out from application from address 127.0.0.1', '2025-04-11 13:19:38'),
(42, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2025-04-15 09:20:29'),
(43, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-04-15 11:23:56'),
(44, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-04-15 11:24:40'),
(45, 'member', '', 'circulation', 'Loan', 'Started', 'Admin start transaction with member ()', '2025-04-15 11:24:52'),
(46, 'member', '123', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (123)', '2025-04-15 11:29:38'),
(47, 'member', '123', 'circulation', 'Loan', 'Add', 'Admin insert new loan (B00002) for member (123)', '2025-04-15 11:33:21'),
(48, 'member', '123', 'circulation', 'Transaction', 'finished', 'Admin finish circulation transaction with member (123)', '2025-04-15 11:33:33'),
(49, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2025-04-15 14:25:21'),
(50, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-04-15 14:25:36'),
(51, 'staff', '1', 'system', 'User', 'Add', 'Admin add new user (hanifan) with username (hanifan)', '2025-04-15 14:26:47'),
(52, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-04-15 14:27:18'),
(53, 'staff', '', 'system', '', '', 'Log Out from application from address 127.0.0.1', '2025-04-15 14:28:20'),
(54, 'staff', '', 'system', '', '', 'Log Out from application from address 127.0.0.1', '2025-04-16 08:26:15'),
(55, 'staff', '', 'system', '', '', 'Log Out from application from address 127.0.0.1', '2025-04-16 21:54:33'),
(56, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-04-17 09:11:24'),
(57, 'staff', '1', 'membership', 'Add', 'OK', 'Admin add new member (vian) with ID (12)', '2025-04-17 09:12:41'),
(58, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-04-17 09:15:22'),
(59, 'staff', 'frs', 'Login', '', '', 'Login success for user frs from address 127.0.0.1', '2025-04-17 09:15:37'),
(60, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-04-17 09:19:23'),
(61, 'staff', 'frs', 'Login', '', '', 'Login success for user frs from address 127.0.0.1', '2025-04-17 09:19:37'),
(62, 'staff', 'frs', 'Login', '', '', 'Login success for user frs from address 127.0.0.1', '2025-04-17 09:20:25'),
(63, 'staff', 'frs', 'Login', '', '', 'Login success for user frs from address 127.0.0.1', '2025-04-17 09:20:46'),
(64, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-04-17 09:21:00'),
(65, 'staff', 'frs', 'Login', '', '', 'Login success for user frs from address 127.0.0.1', '2025-04-17 09:48:09'),
(66, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-04-21 08:50:38'),
(67, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-04-21 09:05:33'),
(68, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-04-21 09:05:41'),
(69, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-04-21 09:15:52'),
(70, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-04-21 09:18:26'),
(71, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-04-22 10:07:01'),
(72, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2025-04-29 09:38:13'),
(73, 'member', '', 'circulation', 'Loan', 'Started', 'Admin start transaction with member ()', '2025-04-29 09:38:30'),
(74, 'member', '213212', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (213212)', '2025-04-29 09:39:04'),
(75, 'member', '213212', 'circulation', 'Loan', 'Add', 'Admin insert new loan (B00005) for member (213212)', '2025-04-29 09:42:44'),
(76, 'member', '213212', 'circulation', 'Transaction', 'finished', 'Admin finish circulation transaction with member (213212)', '2025-04-29 09:42:50'),
(77, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-04-29 09:43:03'),
(78, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-04-30 14:26:29'),
(79, 'staff', '1', 'system', 'User group', 'Update', 'Admin update group data (peminjaman)', '2025-04-30 14:31:33'),
(80, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-04-30 14:31:38'),
(81, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-04-30 14:33:22'),
(82, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-04-30 14:34:48'),
(83, 'member', '213212', 'circulation', 'Loan', 'Started', 'faras start transaction with member (213212)', '2025-04-30 14:41:28'),
(84, 'member', '213212', 'circulation', 'Loan', 'Return', 'faras return item B00005 for member (213212)', '2025-04-30 14:41:35'),
(85, 'member', '213212', 'circulation', 'Loan', 'Add', 'faras insert new loan (B00008) for member (213212)', '2025-04-30 14:43:18'),
(86, 'member', '213212', 'circulation', 'Transaction', 'finished', 'faras finish circulation transaction with member (213212)', '2025-04-30 14:43:29'),
(87, 'member', '12', 'circulation', 'Loan', 'Started', 'faras start transaction with member (12)', '2025-04-30 14:43:42'),
(88, 'member', '12', 'circulation', 'Loan', 'Add', 'faras insert new loan (B00006) for member (12)', '2025-04-30 14:43:48'),
(89, 'member', '12', 'circulation', 'Loan', 'Add', 'faras insert new loan (B00003) for member (12)', '2025-04-30 14:43:59'),
(90, 'member', '12', 'circulation', 'Transaction', 'finished', 'faras finish circulation transaction with member (12)', '2025-04-30 14:44:08'),
(91, 'member', '12', 'circulation', 'Loan', 'Started', 'faras start transaction with member (12)', '2025-04-30 14:44:27'),
(92, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-04-30 15:55:36'),
(93, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-04-30 15:56:09'),
(94, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-01 19:48:40'),
(95, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-02 09:15:02'),
(96, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-02 09:16:57'),
(97, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-02 10:06:44'),
(98, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-02 10:07:37'),
(99, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-02 10:08:05'),
(100, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-02 10:08:25'),
(101, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-05-02 10:09:17'),
(102, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-02 10:34:10'),
(103, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-02 10:35:24'),
(104, 'staff', '1', 'system', 'User', 'Add', 'Admin add new user (dika) with username (dika)', '2025-05-02 10:37:52'),
(105, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-05-02 10:38:03'),
(106, 'member', '12', 'circulation', 'Loan', 'Started', 'dika start transaction with member (12)', '2025-05-02 10:39:24'),
(107, 'member', '12', 'circulation', 'Loan', 'Return', 'dika return item B00006 for member (12)', '2025-05-02 10:39:33'),
(108, 'member', '12', 'circulation', 'Loan', 'Return', 'dika return item B00003 for member (12)', '2025-05-02 10:39:40'),
(109, 'member', '12', 'circulation', 'Transaction', 'finished', 'dika finish circulation transaction with member (12)', '2025-05-02 10:40:22'),
(110, 'member', '12', 'circulation', 'Loan', 'Started', 'dika start transaction with member (12)', '2025-05-02 10:40:25'),
(111, 'member', '12', 'circulation', 'Loan', 'Add', 'dika insert new loan (B00005) for member (12)', '2025-05-02 10:40:35'),
(112, 'member', '12', 'circulation', 'Transaction', 'finished', 'dika finish circulation transaction with member (12)', '2025-05-02 10:41:14'),
(113, 'staff', '6', 'system', '', '', 'dika Log Out from application from address 127.0.0.1', '2025-05-02 10:41:51'),
(114, 'staff', '', 'system', '', '', 'Log Out from application from address 127.0.0.1', '2025-05-02 10:49:04'),
(115, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-02 10:50:24'),
(116, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-05 08:52:52'),
(117, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-05 09:03:42'),
(118, 'member', '213212', 'circulation', 'Loan', 'Started', 'faras start transaction with member (213212)', '2025-05-05 09:35:29'),
(119, 'member', '213212', 'circulation', 'Loan', 'Return', 'faras return item B00008 for member (213212)', '2025-05-05 09:35:34'),
(120, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-05 09:35:42'),
(121, 'member', '213212', 'circulation', 'Loan', 'Started', 'faras start transaction with member (213212)', '2025-05-05 09:36:07'),
(122, 'member', '213212', 'circulation', 'Transaction', 'finished', 'faras finish circulation transaction with member (213212)', '2025-05-05 09:36:15'),
(123, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-05 09:36:18'),
(124, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-05 10:14:14'),
(125, 'member', '213212', 'circulation', 'Loan', 'Started', 'faras start transaction with member (213212)', '2025-05-05 10:15:21'),
(126, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-05 10:16:19'),
(127, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-06 10:20:40'),
(128, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-06 10:21:03'),
(129, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-06 10:23:20'),
(130, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-06 10:23:47'),
(131, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-07 07:50:47'),
(132, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-07 08:34:47'),
(133, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-07 10:17:07'),
(134, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-08 09:23:54'),
(135, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-08 09:25:05'),
(136, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-08 09:25:25'),
(137, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-08 09:26:33'),
(138, 'member', '123', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (123)', '2025-05-08 09:27:43'),
(139, 'member', '123', 'circulation', 'Loan', 'Return', 'Admin return item B00002 for member (123)', '2025-05-08 09:28:55'),
(140, 'member', '123', 'circulation', 'Transaction', 'finished', 'Admin finish circulation transaction with member (123)', '2025-05-08 09:29:00'),
(141, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-05-08 09:29:03'),
(142, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-08 10:01:51'),
(143, 'member', '123', 'circulation', 'Loan', 'Started', 'faras start transaction with member (123)', '2025-05-08 14:01:34'),
(144, 'member', '123', 'circulation', 'Loan', 'Add', 'faras insert new loan (B00002) for member (123)', '2025-05-08 14:02:09'),
(145, 'member', '123', 'circulation', 'Transaction', 'finished', 'faras finish circulation transaction with member (123)', '2025-05-08 14:02:15'),
(146, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-08 14:02:19'),
(147, 'member', '123', 'circulation', 'Loan', 'Started', 'faras start transaction with member (123)', '2025-05-08 14:04:26'),
(148, 'member', '123', 'circulation', 'Loan', 'Add', 'faras insert new loan (B00003) for member (123)', '2025-05-08 14:04:47'),
(149, 'member', '123', 'circulation', 'Transaction', 'finished', 'faras finish circulation transaction with member (123)', '2025-05-08 14:04:52'),
(150, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-08 14:04:56'),
(151, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-08 14:08:30'),
(152, 'member', '123', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (123)', '2025-05-08 14:09:21'),
(153, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2025-05-08 14:11:24'),
(154, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2025-05-08 15:21:01'),
(155, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-08 15:21:37'),
(156, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-08 15:53:05'),
(157, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-14 08:05:12'),
(158, 'member', '123', 'circulation', 'Loan', 'Started', 'faras start transaction with member (123)', '2025-05-14 09:18:43'),
(159, 'member', '123', 'circulation', 'Loan', 'Return', 'faras return item B00003 for member (123)', '2025-05-14 09:22:13'),
(160, 'member', '123', 'circulation', 'Transaction', 'finished', 'faras finish circulation transaction with member (123)', '2025-05-14 09:22:17'),
(161, 'member', '123', 'circulation', 'Loan', 'Started', 'faras start transaction with member (123)', '2025-05-14 09:22:23'),
(162, 'member', '123', 'circulation', 'Loan', 'Add', 'faras insert new loan (B00003) for member (123)', '2025-05-14 09:22:30'),
(163, 'member', '123', 'circulation', 'Transaction', 'finished', 'faras finish circulation transaction with member (123)', '2025-05-14 09:22:39'),
(164, 'member', '123', 'circulation', 'Loan', 'Started', 'faras start transaction with member (123)', '2025-05-14 09:22:43'),
(165, 'member', '123', 'circulation', 'Loan', 'Extended', 'faras extend loan for item B00002 for member (123)', '2025-05-14 09:24:06'),
(166, 'member', '123', 'circulation', 'Loan', 'Return', 'faras return item B00002 for member (123)', '2025-05-14 09:24:12'),
(167, 'member', '123', 'circulation', 'Transaction', 'finished', 'faras finish circulation transaction with member (123)', '2025-05-14 09:24:16'),
(168, 'member', '123', 'circulation', 'Loan', 'Started', 'faras start transaction with member (123)', '2025-05-14 09:24:37'),
(169, 'member', '123', 'circulation', 'Loan', 'Add', 'faras insert new loan (B00002) for member (123)', '2025-05-14 09:24:50'),
(170, 'member', '123', 'circulation', 'Transaction', 'finished', 'faras finish circulation transaction with member (123)', '2025-05-14 09:24:59'),
(171, 'staff', '4', 'system', '', '', 'faras Log Out from application from address 127.0.0.1', '2025-05-14 09:25:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `realname` varchar(100) NOT NULL,
  `passwd` varchar(64) NOT NULL,
  `2fa` text DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `user_type` smallint(2) DEFAULT NULL,
  `user_image` varchar(250) DEFAULT NULL,
  `social_media` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` char(15) DEFAULT NULL,
  `groups` varchar(200) DEFAULT NULL,
  `admin_template` text DEFAULT NULL,
  `forgot` varchar(80) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `2fa`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `admin_template`, `forgot`, `input_date`, `last_update`) VALUES
(1, 'admin', 'Admin', '$2y$10$1IP63.Ww7RwYowQ.6s9mAudrdG4dn7bHGswPkPBRcCDWYMFNKxySG', NULL, NULL, NULL, NULL, NULL, '2025-04-29 09:38:13', '127.0.0.1', 'a:1:{i:0;s:1:\"1\";}', NULL, NULL, '2025-03-14', '2025-03-14'),
(2, 'andra', 'alfirdaus geraldi', '$2y$12$8RKY1DwbQSCqSoSPGieyqO4drFa7FsbBsSbPMgKQjG3.U5YEQ.Zsu', NULL, 'aalgeraldi65@gmail.com', NULL, NULL, NULL, '2025-03-27 09:37:20', '127.0.0.1', NULL, NULL, NULL, '2025-03-26', '2025-03-26'),
(3, 'faras', 'faras habibi', '$2y$10$cTLBaUjrPckRouckO8luBeBjQdzmMvN9tCq2YiXtQaPkbt01b/.sq', NULL, 'faras@gmail.com', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27', '2025-03-27'),
(4, 'frs', 'faras', '$2y$10$6ftW8I5bFL6HJH4d5ZsBoeCw/UkktPnFy0pDv0rxyAa74E4wGlwiW', NULL, 'frs@gmail.com', 1, NULL, NULL, '2025-04-17 09:48:09', '127.0.0.1', 'a:1:{i:0;s:1:\"2\";}', NULL, NULL, '2025-04-11', '2025-04-11'),
(5, 'hanifan', 'hanifan', '$2y$10$id9P3b8n0hdEazMqs.UW3.croDx/oQ4WOYcape6HIKIwqTlkmTo4y', NULL, '', 1, NULL, NULL, NULL, NULL, 'a:1:{i:0;s:1:\"2\";}', NULL, NULL, '2025-04-15', '2025-04-15'),
(6, 'dika', 'dika', '$2y$10$fIxUUqesa5u3KIcjiw/LDeGbJJBhGY5y6h4YTafFGDq62qgDgzlbS', NULL, '', 2, NULL, NULL, NULL, NULL, 'a:1:{i:0;s:1:\"2\";}', NULL, NULL, '2025-05-02', '2025-05-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group`
--

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES
(1, 'Administrator', '2025-03-14', '2025-03-14'),
(2, 'peminjaman', '2025-04-11', '2025-04-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitor_count`
--

CREATE TABLE `visitor_count` (
  `visitor_id` int(11) NOT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `member_name` varchar(255) NOT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `room_code` varchar(5) DEFAULT NULL,
  `checkin_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `visitor_count`
--

INSERT INTO `visitor_count` (`visitor_id`, `member_id`, `member_name`, `institution`, `room_code`, `checkin_date`) VALUES
(1, '123', 'alviandra', '', NULL, '2025-04-15 11:33:33'),
(2, '213212', 'faras', '', NULL, '2025-04-29 09:42:50'),
(3, '213212', 'faras', '', NULL, '2025-04-30 14:43:29'),
(4, '12', 'vian', '', NULL, '2025-04-30 14:44:08'),
(5, '12', 'vian', '', NULL, '2025-05-02 10:40:22'),
(6, '213212', 'faras', '', NULL, '2025-05-05 09:36:15'),
(7, '123', 'alviandra', '', NULL, '2025-05-08 09:29:00'),
(8, '123', 'alviandra', '', NULL, '2025-05-14 09:22:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `backup_log`
--
ALTER TABLE `backup_log`
  ADD PRIMARY KEY (`backup_log_id`);

--
-- Indeks untuk tabel `biblio`
--
ALTER TABLE `biblio`
  ADD PRIMARY KEY (`biblio_id`),
  ADD KEY `references_idx` (`gmd_id`,`publisher_id`,`language_id`,`publish_place_id`),
  ADD KEY `classification` (`classification`),
  ADD KEY `biblio_flag_idx` (`opac_hide`,`promoted`),
  ADD KEY `rda_idx` (`content_type_id`,`media_type_id`,`carrier_type_id`),
  ADD KEY `uid` (`uid`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `title_ft_idx` (`title`,`series_title`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `notes_ft_idx` (`notes`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indeks untuk tabel `biblio_attachment`
--
ALTER TABLE `biblio_attachment`
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `biblio_id_2` (`biblio_id`,`file_id`);

--
-- Indeks untuk tabel `biblio_author`
--
ALTER TABLE `biblio_author`
  ADD PRIMARY KEY (`biblio_id`,`author_id`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indeks untuk tabel `biblio_custom`
--
ALTER TABLE `biblio_custom`
  ADD PRIMARY KEY (`biblio_id`);

--
-- Indeks untuk tabel `biblio_log`
--
ALTER TABLE `biblio_log`
  ADD PRIMARY KEY (`biblio_log_id`),
  ADD KEY `realname` (`realname`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `action` (`action`),
  ADD KEY `affectedrow` (`affectedrow`),
  ADD KEY `date` (`date`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `rawdata` (`rawdata`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `additional_information` (`additional_information`);

--
-- Indeks untuk tabel `biblio_mark`
--
ALTER TABLE `biblio_mark`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `member_id_idx` (`member_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indeks untuk tabel `biblio_relation`
--
ALTER TABLE `biblio_relation`
  ADD PRIMARY KEY (`biblio_id`,`rel_biblio_id`);

--
-- Indeks untuk tabel `biblio_topic`
--
ALTER TABLE `biblio_topic`
  ADD PRIMARY KEY (`biblio_id`,`topic_id`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indeks untuk tabel `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_path` (`content_path`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_title` (`content_title`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_desc` (`content_desc`);

--
-- Indeks untuk tabel `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_name` (`file_name`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_dir` (`file_dir`);

--
-- Indeks untuk tabel `files_read`
--
ALTER TABLE `files_read`
  ADD PRIMARY KEY (`filelog_id`);

--
-- Indeks untuk tabel `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fines_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indeks untuk tabel `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Indeks untuk tabel `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`),
  ADD UNIQUE KEY `holiday_dayname` (`holiday_dayname`,`holiday_date`);

--
-- Indeks untuk tabel `index_documents`
--
ALTER TABLE `index_documents`
  ADD PRIMARY KEY (`document_id`,`word_id`,`location`),
  ADD KEY `document_id` (`document_id`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `location` (`location`);

--
-- Indeks untuk tabel `index_words`
--
ALTER TABLE `index_words`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `uid` (`uid`),
  ADD KEY `item_references_idx` (`coll_type_id`,`location_id`,`item_status_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indeks untuk tabel `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kardex_id`),
  ADD KEY `fk_serial` (`serial_id`);

--
-- Indeks untuk tabel `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `input_date` (`input_date`,`last_update`,`uid`);

--
-- Indeks untuk tabel `loan_history`
--
ALTER TABLE `loan_history`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `member_name` (`member_name`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `member_type_id` (`member_type_id`);

--
-- Indeks untuk tabel `member_custom`
--
ALTER TABLE `member_custom`
  ADD PRIMARY KEY (`member_id`);

--
-- Indeks untuk tabel `mst_author`
--
ALTER TABLE `mst_author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `author_name` (`author_name`,`authority_type`);

--
-- Indeks untuk tabel `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`carrier_type`),
  ADD KEY `code` (`code`);

--
-- Indeks untuk tabel `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  ADD PRIMARY KEY (`coll_type_id`),
  ADD UNIQUE KEY `coll_type_name` (`coll_type_name`);

--
-- Indeks untuk tabel `mst_content_type`
--
ALTER TABLE `mst_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type` (`content_type`),
  ADD KEY `code` (`code`);

--
-- Indeks untuk tabel `mst_custom_field`
--
ALTER TABLE `mst_custom_field`
  ADD PRIMARY KEY (`dbfield`),
  ADD UNIQUE KEY `field_id` (`field_id`);

--
-- Indeks untuk tabel `mst_frequency`
--
ALTER TABLE `mst_frequency`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Indeks untuk tabel `mst_gmd`
--
ALTER TABLE `mst_gmd`
  ADD PRIMARY KEY (`gmd_id`),
  ADD UNIQUE KEY `gmd_name` (`gmd_name`),
  ADD UNIQUE KEY `gmd_code` (`gmd_code`);

--
-- Indeks untuk tabel `mst_item_status`
--
ALTER TABLE `mst_item_status`
  ADD PRIMARY KEY (`item_status_id`),
  ADD UNIQUE KEY `item_status_name` (`item_status_name`);

--
-- Indeks untuk tabel `mst_label`
--
ALTER TABLE `mst_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `label_name` (`label_name`);

--
-- Indeks untuk tabel `mst_language`
--
ALTER TABLE `mst_language`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Indeks untuk tabel `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  ADD PRIMARY KEY (`loan_rules_id`);

--
-- Indeks untuk tabel `mst_location`
--
ALTER TABLE `mst_location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Indeks untuk tabel `mst_media_type`
--
ALTER TABLE `mst_media_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`media_type`),
  ADD KEY `code` (`code`);

--
-- Indeks untuk tabel `mst_member_type`
--
ALTER TABLE `mst_member_type`
  ADD PRIMARY KEY (`member_type_id`),
  ADD UNIQUE KEY `member_type_name` (`member_type_name`);

--
-- Indeks untuk tabel `mst_module`
--
ALTER TABLE `mst_module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_name` (`module_name`,`module_path`);

--
-- Indeks untuk tabel `mst_place`
--
ALTER TABLE `mst_place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

--
-- Indeks untuk tabel `mst_publisher`
--
ALTER TABLE `mst_publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Indeks untuk tabel `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `mst_servers`
--
ALTER TABLE `mst_servers`
  ADD PRIMARY KEY (`server_id`);

--
-- Indeks untuk tabel `mst_supplier`
--
ALTER TABLE `mst_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`);

--
-- Indeks untuk tabel `mst_topic`
--
ALTER TABLE `mst_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topic` (`topic`,`topic_type`);

--
-- Indeks untuk tabel `mst_visitor_room`
--
ALTER TABLE `mst_visitor_room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_code_unq` (`unique_code`),
  ADD KEY `unique_code_idx` (`unique_code`);

--
-- Indeks untuk tabel `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  ADD PRIMARY KEY (`vocabolary_id`);

--
-- Indeks untuk tabel `plugins`
--
ALTER TABLE `plugins`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `references_idx` (`member_id`,`biblio_id`),
  ADD KEY `item_code_idx` (`item_code`);

--
-- Indeks untuk tabel `search_biblio`
--
ALTER TABLE `search_biblio`
  ADD UNIQUE KEY `biblio_id` (`biblio_id`),
  ADD KEY `add_indexes` (`gmd`,`publisher`,`publish_place`,`language`,`classification`,`publish_year`,`call_number`),
  ADD KEY `add_indexes2` (`opac_hide`,`promoted`),
  ADD KEY `rda_indexes` (`carrier_type`,`media_type`,`content_type`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `title` (`title`,`series_title`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `author` (`author`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `topic` (`topic`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `location` (`location`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `items` (`items`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `collection_types` (`collection_types`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indeks untuk tabel `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `fk_serial_biblio` (`biblio_id`),
  ADD KEY `fk_serial_gmd` (`gmd_id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indeks untuk tabel `stock_take`
--
ALTER TABLE `stock_take`
  ADD PRIMARY KEY (`stock_take_id`);

--
-- Indeks untuk tabel `stock_take_item`
--
ALTER TABLE `stock_take_item`
  ADD PRIMARY KEY (`stock_take_id`,`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `status` (`status`),
  ADD KEY `item_properties_idx` (`gmd_name`,`classification`,`coll_type_name`,`location`);

--
-- Indeks untuk tabel `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `realname` (`realname`);

--
-- Indeks untuk tabel `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indeks untuk tabel `visitor_count`
--
ALTER TABLE `visitor_count`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `room_code` (`room_code`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `backup_log`
--
ALTER TABLE `backup_log`
  MODIFY `backup_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `biblio`
--
ALTER TABLE `biblio`
  MODIFY `biblio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `biblio_log`
--
ALTER TABLE `biblio_log`
  MODIFY `biblio_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `files_read`
--
ALTER TABLE `files_read`
  MODIFY `filelog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fines`
--
ALTER TABLE `fines`
  MODIFY `fines_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `index_words`
--
ALTER TABLE `index_words`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT untuk tabel `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kardex_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `mst_author`
--
ALTER TABLE `mst_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  MODIFY `coll_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mst_content_type`
--
ALTER TABLE `mst_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `mst_custom_field`
--
ALTER TABLE `mst_custom_field`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mst_frequency`
--
ALTER TABLE `mst_frequency`
  MODIFY `frequency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `mst_gmd`
--
ALTER TABLE `mst_gmd`
  MODIFY `gmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `mst_label`
--
ALTER TABLE `mst_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  MODIFY `loan_rules_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mst_media_type`
--
ALTER TABLE `mst_media_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `mst_member_type`
--
ALTER TABLE `mst_member_type`
  MODIFY `member_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mst_module`
--
ALTER TABLE `mst_module`
  MODIFY `module_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `mst_place`
--
ALTER TABLE `mst_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `mst_publisher`
--
ALTER TABLE `mst_publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `mst_servers`
--
ALTER TABLE `mst_servers`
  MODIFY `server_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mst_supplier`
--
ALTER TABLE `mst_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mst_topic`
--
ALTER TABLE `mst_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `mst_visitor_room`
--
ALTER TABLE `mst_visitor_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  MODIFY `vocabolary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `serial`
--
ALTER TABLE `serial`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `stock_take`
--
ALTER TABLE `stock_take`
  MODIFY `stock_take_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `system_log`
--
ALTER TABLE `system_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `visitor_count`
--
ALTER TABLE `visitor_count`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
