-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 26, 2017 at 09:47 PM
-- Server version: 10.1.9-MariaDB-log
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `advantages`
--

CREATE TABLE `advantages` (
  `advantage_id` int(11) NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advantages`
--

INSERT INTO `advantages` (`advantage_id`, `title_en`, `title_ar`, `content_en`, `content_ar`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Always Online', 'دائما متصلين', '<p>Always Online and we are 24/24.</p>', '<p>دائما متصلين ونحن بالخدمة 24 ساعة.</p>', 'fa fa-headphones', '2017-12-16 18:26:18', '2017-12-16 18:26:18'),
(2, 'Excellant Service', 'خدمة ممتازة', '<p>We are providing you professional&nbsp;services</p>', '<p>نحن نقدم لكم خدمات على مستوى عالي من الاحترافية</p>', 'fa fa-users', '2017-12-16 18:28:34', '2017-12-16 18:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `attribute_id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`attribute_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 'content_en', '2017-12-16 17:48:16', '2017-12-16 17:48:16'),
(2, 'content_ar', '2017-12-16 17:48:24', '2017-12-16 17:48:24'),
(3, 'address', '2017-12-16 17:48:34', '2017-12-16 17:48:34'),
(4, 'phone', '2017-12-16 17:48:50', '2017-12-16 17:48:50'),
(5, 'title_en', '2017-12-16 17:49:04', '2017-12-16 17:49:04'),
(6, 'title_ar', '2017-12-16 17:49:12', '2017-12-16 17:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_page`
--

CREATE TABLE `attribute_page` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_page`
--

INSERT INTO `attribute_page` (`id`, `page_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'it is home page', '2017-12-16 17:49:57', '2017-12-16 17:49:57'),
(2, 10, 5, 'About Me', '2017-12-26 16:09:42', '2017-12-26 16:09:42'),
(3, 10, 6, 'من أنا', '2017-12-26 16:09:53', '2017-12-26 16:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `title`, `content`, `image`, `tag_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(108, 'Dr.', 'zschmitt@pollich.com', 'blog.jpg', 4, 7, '2017-12-17 19:25:09', NULL, NULL),
(109, 'Mr.', 'abbigail12@bernier.net', 'blog.jpg', 2, 10, '2017-12-17 19:25:09', NULL, NULL),
(110, 'Dr.', 'klittel@yahoo.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:09', NULL, NULL),
(111, 'Ms.', 'ispinka@gorczany.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:10', NULL, NULL),
(112, 'Miss', 'myrtice99@hotmail.com', 'blog.jpg', 2, 6, '2017-12-17 19:25:10', NULL, NULL),
(113, 'Prof.', 'jdouglas@quigley.com', 'blog.jpg', 1, 6, '2017-12-17 19:25:10', NULL, NULL),
(114, 'Prof.', 'njohns@hotmail.com', 'blog.jpg', 3, 7, '2017-12-17 19:25:10', NULL, NULL),
(115, 'Miss', 'audrey13@yahoo.com', 'blog.jpg', 4, 8, '2017-12-17 19:25:10', NULL, NULL),
(116, 'Dr.', 'adah26@gmail.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:10', NULL, NULL),
(117, 'Mr.', 'brycen22@howell.net', 'blog.jpg', 1, 7, '2017-12-17 19:25:10', NULL, NULL),
(118, 'Ms.', 'anna.nitzsche@yahoo.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:10', NULL, NULL),
(119, 'Dr.', 'lola.schamberger@kozey.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:10', NULL, NULL),
(120, 'Mr.', 'thompson.harry@kris.com', 'blog.jpg', 4, 4, '2017-12-17 19:25:10', NULL, NULL),
(121, 'Dr.', 'weber.don@stiedemann.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:10', NULL, NULL),
(122, 'Mr.', 'lerdman@gmail.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:10', NULL, NULL),
(123, 'Dr.', 'qdamore@gmail.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:10', NULL, NULL),
(124, 'Miss', 'bruen.norval@bailey.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:10', NULL, NULL),
(125, 'Dr.', 'davis.rachel@hotmail.com', 'blog.jpg', 4, 5, '2017-12-17 19:25:10', NULL, NULL),
(126, 'Mrs.', 'heller.kristoffer@hotmail.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:10', NULL, NULL),
(127, 'Ms.', 'zboyle@skiles.info', 'blog.jpg', 4, 3, '2017-12-17 19:25:11', NULL, NULL),
(128, 'Dr.', 'rkoepp@huel.net', 'blog.jpg', 3, 5, '2017-12-17 19:25:11', NULL, NULL),
(129, 'Miss', 'mable.kuvalis@yahoo.com', 'blog.jpg', 3, 8, '2017-12-17 19:25:11', NULL, NULL),
(130, 'Prof.', 'langosh.crystal@boehm.com', 'blog.jpg', 4, 4, '2017-12-17 19:25:11', NULL, NULL),
(131, 'Mrs.', 'roberta12@yahoo.com', 'blog.jpg', 3, 2, '2017-12-17 19:25:11', NULL, NULL),
(132, 'Prof.', 'lamont69@gmail.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:11', NULL, NULL),
(133, 'Miss', 'josie.johns@pfannerstill.info', 'blog.jpg', 4, 2, '2017-12-17 19:25:11', NULL, NULL),
(134, 'Prof.', 'demetrius41@gmail.com', 'blog.jpg', 1, 1, '2017-12-17 19:25:11', NULL, NULL),
(135, 'Dr.', 'macy.kling@hotmail.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:11', NULL, NULL),
(136, 'Prof.', 'rubie.okuneva@gmail.com', 'blog.jpg', 3, 1, '2017-12-17 19:25:11', NULL, NULL),
(137, 'Mr.', 'cesar.eichmann@gulgowski.info', 'blog.jpg', 3, 3, '2017-12-17 19:25:11', NULL, NULL),
(138, 'Prof.', 'rmetz@paucek.com', 'blog.jpg', 4, 5, '2017-12-17 19:25:12', NULL, NULL),
(139, 'Mr.', 'nhammes@mraz.biz', 'blog.jpg', 1, 7, '2017-12-17 19:25:12', NULL, NULL),
(140, 'Mr.', 'cschmidt@leffler.com', 'blog.jpg', 1, 4, '2017-12-17 19:25:12', NULL, NULL),
(141, 'Prof.', 'jevon.christiansen@schamberger.com', 'blog.jpg', 1, 3, '2017-12-17 19:25:12', NULL, NULL),
(142, 'Dr.', 'cemmerich@strosin.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:12', NULL, NULL),
(143, 'Prof.', 'fcarroll@hotmail.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:12', NULL, NULL),
(144, 'Dr.', 'anya.wisoky@hotmail.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:12', NULL, NULL),
(145, 'Mrs.', 'pgulgowski@gmail.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:12', NULL, NULL),
(146, 'Dr.', 'bveum@macejkovic.biz', 'blog.jpg', 2, 6, '2017-12-17 19:25:12', NULL, NULL),
(147, 'Dr.', 'zjenkins@yahoo.com', 'blog.jpg', 1, 9, '2017-12-17 19:25:12', NULL, NULL),
(148, 'Mrs.', 'volkman.boyd@yahoo.com', 'blog.jpg', 4, 2, '2017-12-17 19:25:12', NULL, NULL),
(149, 'Prof.', 'nyundt@funk.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:12', NULL, NULL),
(150, 'Ms.', 'dooley.aida@jaskolski.biz', 'blog.jpg', 3, 1, '2017-12-17 19:25:12', NULL, NULL),
(151, 'Ms.', 'jakubowski.gustave@hotmail.com', 'blog.jpg', 4, 6, '2017-12-17 19:25:12', NULL, NULL),
(152, 'Prof.', 'mgraham@gmail.com', 'blog.jpg', 1, 9, '2017-12-17 19:25:12', NULL, NULL),
(153, 'Dr.', 'orlo45@reichel.info', 'blog.jpg', 1, 9, '2017-12-17 19:25:12', NULL, NULL),
(154, 'Prof.', 'kasey16@yahoo.com', 'blog.jpg', 1, 3, '2017-12-17 19:25:12', NULL, NULL),
(155, 'Miss', 'madge.nienow@prohaska.com', 'blog.jpg', 3, 9, '2017-12-17 19:25:12', NULL, NULL),
(156, 'Mrs.', 'jbogan@yahoo.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:12', NULL, NULL),
(157, 'Mr.', 'miller.jefferey@cruickshank.com', 'blog.jpg', 3, 6, '2017-12-17 19:25:12', NULL, NULL),
(158, 'Prof.', 'mcglynn.destany@gmail.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:13', NULL, NULL),
(159, 'Miss', 'derek.hickle@gmail.com', 'blog.jpg', 2, 7, '2017-12-17 19:25:13', NULL, NULL),
(160, 'Miss', 'geovanny87@kuhlman.net', 'blog.jpg', 2, 2, '2017-12-17 19:25:13', NULL, NULL),
(161, 'Prof.', 'joe42@langosh.net', 'blog.jpg', 2, 7, '2017-12-17 19:25:13', NULL, NULL),
(162, 'Prof.', 'bridie.rodriguez@gmail.com', 'blog.jpg', 4, 4, '2017-12-17 19:25:13', NULL, NULL),
(163, 'Dr.', 'gislason.ariel@gibson.com', 'blog.jpg', 3, 9, '2017-12-17 19:25:13', NULL, NULL),
(164, 'Mr.', 'bins.vito@gmail.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:13', NULL, NULL),
(165, 'Ms.', 'rosenbaum.hertha@gmail.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:13', NULL, NULL),
(166, 'Mr.', 'gayle25@yost.com', 'blog.jpg', 2, 7, '2017-12-17 19:25:13', NULL, NULL),
(167, 'Mr.', 'qkertzmann@yahoo.com', 'blog.jpg', 1, 8, '2017-12-17 19:25:13', NULL, NULL),
(168, 'Mrs.', 'watsica.sherman@wolf.com', 'blog.jpg', 3, 9, '2017-12-17 19:25:13', NULL, NULL),
(169, 'Mr.', 'zkautzer@hotmail.com', 'blog.jpg', 3, 10, '2017-12-17 19:25:13', NULL, NULL),
(170, 'Miss', 'zlynch@ullrich.org', 'blog.jpg', 3, 4, '2017-12-17 19:25:13', NULL, NULL),
(171, 'Prof.', 'jenifer.rosenbaum@spinka.biz', 'blog.jpg', 2, 2, '2017-12-17 19:25:14', NULL, NULL),
(172, 'Dr.', 'mgrimes@rippin.org', 'blog.jpg', 3, 4, '2017-12-17 19:25:14', NULL, NULL),
(173, 'Dr.', 'glover.luis@walter.org', 'blog.jpg', 1, 10, '2017-12-17 19:25:14', NULL, NULL),
(174, 'Mr.', 'claudie27@yundt.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:14', NULL, NULL),
(175, 'Dr.', 'daisha.sporer@yahoo.com', 'blog.jpg', 1, 10, '2017-12-17 19:25:14', NULL, NULL),
(176, 'Dr.', 'feil.ocie@larkin.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:14', NULL, NULL),
(177, 'Prof.', 'hbruen@pollich.net', 'blog.jpg', 4, 8, '2017-12-17 19:25:14', NULL, NULL),
(178, 'Mrs.', 'heaney.burley@harber.org', 'blog.jpg', 1, 4, '2017-12-17 19:25:14', NULL, NULL),
(179, 'Mr.', 'cartwright.josefina@hotmail.com', 'blog.jpg', 1, 4, '2017-12-17 19:25:14', NULL, NULL),
(180, 'Prof.', 'rrice@wiegand.biz', 'blog.jpg', 1, 5, '2017-12-17 19:25:14', NULL, NULL),
(181, 'Ms.', 'annie.roob@gleason.info', 'blog.jpg', 3, 7, '2017-12-17 19:25:14', NULL, NULL),
(182, 'Dr.', 'juliana.sawayn@hotmail.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:14', NULL, NULL),
(183, 'Dr.', 'msipes@aufderhar.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:14', NULL, NULL),
(184, 'Mr.', 'darryl54@koepp.net', 'blog.jpg', 1, 6, '2017-12-17 19:25:15', NULL, NULL),
(185, 'Mr.', 'hahn.ivy@gmail.com', 'blog.jpg', 1, 5, '2017-12-17 19:25:15', NULL, NULL),
(186, 'Miss', 'bret.prosacco@gmail.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:15', NULL, NULL),
(187, 'Prof.', 'kurtis.champlin@leffler.info', 'blog.jpg', 3, 6, '2017-12-17 19:25:15', NULL, NULL),
(188, 'Dr.', 'santos47@hotmail.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:15', NULL, NULL),
(189, 'Dr.', 'frice@collier.com', 'blog.jpg', 2, 2, '2017-12-17 19:25:15', NULL, NULL),
(190, 'Dr.', 'mafalda33@jerde.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:15', NULL, NULL),
(191, 'Dr.', 'jeremie.bayer@zulauf.net', 'blog.jpg', 4, 3, '2017-12-17 19:25:15', NULL, NULL),
(192, 'Mr.', 'shanahan.dortha@yahoo.com', 'blog.jpg', 1, 3, '2017-12-17 19:25:15', NULL, NULL),
(193, 'Prof.', 'ankunding.lori@gmail.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:15', NULL, NULL),
(194, 'Miss', 'dstamm@hotmail.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:15', NULL, NULL),
(195, 'Mr.', 'gbaumbach@schaefer.org', 'blog.jpg', 3, 1, '2017-12-17 19:25:15', NULL, NULL),
(196, 'Ms.', 'stromp@yahoo.com', 'blog.jpg', 1, 5, '2017-12-17 19:25:15', NULL, NULL),
(197, 'Prof.', 'halie.stamm@muller.org', 'blog.jpg', 4, 2, '2017-12-17 19:25:15', NULL, NULL),
(198, 'Miss', 'bconroy@nitzsche.com', 'blog.jpg', 2, 2, '2017-12-17 19:25:15', NULL, NULL),
(199, 'Dr.', 'danika.stehr@yahoo.com', 'blog.jpg', 1, 4, '2017-12-17 19:25:15', NULL, NULL),
(200, 'Mrs.', 'quinten11@yahoo.com', 'blog.jpg', 3, 2, '2017-12-17 19:25:15', NULL, NULL),
(201, 'Miss', 'kamille.beier@schulist.org', 'blog.jpg', 3, 3, '2017-12-17 19:25:15', NULL, NULL),
(202, 'Ms.', 'gustave79@dubuque.com', 'blog.jpg', 3, 2, '2017-12-17 19:25:15', NULL, NULL),
(203, 'Prof.', 'guido.spinka@yahoo.com', 'blog.jpg', 4, 8, '2017-12-17 19:25:15', NULL, NULL),
(204, 'Ms.', 'kihn.dwight@gmail.com', 'blog.jpg', 2, 2, '2017-12-17 19:25:16', NULL, NULL),
(205, 'Mr.', 'wilderman.verla@moen.com', 'blog.jpg', 2, 7, '2017-12-17 19:25:16', NULL, NULL),
(206, 'Mr.', 'pdoyle@hotmail.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:16', NULL, NULL),
(207, 'Mrs.', 'reese.goodwin@hotmail.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:16', NULL, NULL),
(208, 'Mr.', 'eliane83@mcglynn.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:16', NULL, NULL),
(209, 'Mr.', 'gerson.huels@hotmail.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:16', NULL, NULL),
(210, 'Miss', 'rupton@hotmail.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:16', NULL, NULL),
(211, 'Dr.', 'upton.ramona@lowe.com', 'blog.jpg', 3, 6, '2017-12-17 19:25:16', NULL, NULL),
(212, 'Dr.', 'yhartmann@gmail.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:16', NULL, NULL),
(213, 'Prof.', 'pwill@paucek.biz', 'blog.jpg', 3, 4, '2017-12-17 19:25:16', NULL, NULL),
(214, 'Prof.', 'boyle.domenica@gmail.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:16', NULL, NULL),
(215, 'Prof.', 'erdman.cruz@lang.com', 'blog.jpg', 4, 1, '2017-12-17 19:25:16', NULL, NULL),
(216, 'Mr.', 'karolann18@yahoo.com', 'blog.jpg', 2, 9, '2017-12-17 19:25:16', NULL, NULL),
(217, 'Miss', 'norwood08@sporer.com', 'blog.jpg', 3, 6, '2017-12-17 19:25:16', NULL, NULL),
(218, 'Mr.', 'keagan.hammes@gmail.com', 'blog.jpg', 4, 2, '2017-12-17 19:25:16', NULL, NULL),
(219, 'Prof.', 'javon.hickle@simonis.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:16', NULL, NULL),
(220, 'Miss', 'mkozey@hotmail.com', 'blog.jpg', 4, 6, '2017-12-17 19:25:16', NULL, NULL),
(221, 'Dr.', 'berta.lemke@yahoo.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:16', NULL, NULL),
(222, 'Mr.', 'jaqueline41@mante.net', 'blog.jpg', 2, 9, '2017-12-17 19:25:17', NULL, NULL),
(223, 'Mr.', 'antonina.glover@hotmail.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:17', NULL, NULL),
(224, 'Dr.', 'xlehner@rowe.com', 'blog.jpg', 3, 10, '2017-12-17 19:25:17', NULL, NULL),
(225, 'Dr.', 'reilly.sylvan@gmail.com', 'blog.jpg', 1, 5, '2017-12-17 19:25:17', NULL, NULL),
(226, 'Miss', 'berta27@dickinson.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:17', NULL, NULL),
(227, 'Prof.', 'vsauer@kuphal.net', 'blog.jpg', 4, 8, '2017-12-17 19:25:17', NULL, NULL),
(228, 'Miss', 'considine.teresa@yahoo.com', 'blog.jpg', 1, 3, '2017-12-17 19:25:17', NULL, NULL),
(229, 'Dr.', 'maye.fahey@waelchi.info', 'blog.jpg', 2, 9, '2017-12-17 19:25:17', NULL, NULL),
(230, 'Ms.', 'vcruickshank@yahoo.com', 'blog.jpg', 2, 2, '2017-12-17 19:25:17', NULL, NULL),
(231, 'Miss', 'cali.hartmann@huel.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:17', NULL, NULL),
(232, 'Ms.', 'xkreiger@yahoo.com', 'blog.jpg', 1, 3, '2017-12-17 19:25:17', NULL, NULL),
(233, 'Prof.', 'ibednar@gmail.com', 'blog.jpg', 1, 5, '2017-12-17 19:25:17', NULL, NULL),
(234, 'Dr.', 'friedrich91@rolfson.info', 'blog.jpg', 1, 5, '2017-12-17 19:25:17', NULL, NULL),
(235, 'Mr.', 'heathcote.conner@gmail.com', 'blog.jpg', 3, 2, '2017-12-17 19:25:17', NULL, NULL),
(236, 'Mr.', 'schinner.kelsie@doyle.biz', 'blog.jpg', 3, 10, '2017-12-17 19:25:17', NULL, NULL),
(237, 'Prof.', 'mueller.franz@gmail.com', 'blog.jpg', 2, 2, '2017-12-17 19:25:17', NULL, NULL),
(238, 'Dr.', 'conner.dooley@gmail.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:17', NULL, NULL),
(239, 'Dr.', 'treva.littel@yahoo.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:17', NULL, NULL),
(240, 'Dr.', 'kutch.jacinthe@jones.com', 'blog.jpg', 1, 8, '2017-12-17 19:25:17', NULL, NULL),
(241, 'Mr.', 'theresa.deckow@luettgen.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:17', NULL, NULL),
(242, 'Dr.', 'felicia.shields@walker.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:18', NULL, NULL),
(243, 'Prof.', 'reichel.makenna@beer.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:18', NULL, NULL),
(244, 'Dr.', 'seichmann@gmail.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:18', NULL, NULL),
(245, 'Prof.', 'taryn.satterfield@yahoo.com', 'blog.jpg', 2, 6, '2017-12-17 19:25:18', NULL, NULL),
(246, 'Dr.', 'tsmith@rempel.net', 'blog.jpg', 4, 1, '2017-12-17 19:25:18', NULL, NULL),
(247, 'Mrs.', 'emma93@schuster.org', 'blog.jpg', 4, 4, '2017-12-17 19:25:18', NULL, NULL),
(248, 'Ms.', 'bashirian.rebeca@hotmail.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:18', NULL, NULL),
(249, 'Ms.', 'lucas.eichmann@volkman.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:18', NULL, NULL),
(250, 'Ms.', 'keanu.muller@ryan.com', 'blog.jpg', 4, 4, '2017-12-17 19:25:18', NULL, NULL),
(251, 'Mrs.', 'mcglynn.myrtice@kreiger.info', 'blog.jpg', 3, 2, '2017-12-17 19:25:18', NULL, NULL),
(252, 'Miss', 'parisian.odie@schaefer.biz', 'blog.jpg', 3, 7, '2017-12-17 19:25:18', NULL, NULL),
(253, 'Miss', 'prohaska.vincenza@lindgren.org', 'blog.jpg', 2, 4, '2017-12-17 19:25:18', NULL, NULL),
(254, 'Prof.', 'usatterfield@reichel.com', 'blog.jpg', 3, 5, '2017-12-17 19:25:18', NULL, NULL),
(255, 'Mr.', 'keegan.skiles@gmail.com', 'blog.jpg', 1, 6, '2017-12-17 19:25:18', NULL, NULL),
(256, 'Prof.', 'nhauck@vandervort.com', 'blog.jpg', 3, 7, '2017-12-17 19:25:18', NULL, NULL),
(257, 'Mrs.', 'jarvis.kihn@legros.org', 'blog.jpg', 2, 7, '2017-12-17 19:25:18', NULL, NULL),
(258, 'Miss', 'bridie.gaylord@wiegand.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:18', NULL, NULL),
(259, 'Mrs.', 'assunta.jacobi@moen.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:18', NULL, NULL),
(260, 'Dr.', 'riley.little@yahoo.com', 'blog.jpg', 3, 6, '2017-12-17 19:25:18', NULL, NULL),
(261, 'Mr.', 'janelle.marks@larson.info', 'blog.jpg', 4, 8, '2017-12-17 19:25:18', NULL, NULL),
(262, 'Prof.', 'marilou94@gmail.com', 'blog.jpg', 1, 1, '2017-12-17 19:25:19', NULL, NULL),
(263, 'Dr.', 'anderson.pietro@robel.com', 'blog.jpg', 2, 8, '2017-12-17 19:25:19', NULL, NULL),
(264, 'Dr.', 'kessler.orie@mraz.com', 'blog.jpg', 3, 10, '2017-12-17 19:25:19', NULL, NULL),
(265, 'Mr.', 'manuel13@gulgowski.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:19', NULL, NULL),
(266, 'Dr.', 'mollie.rippin@schmeler.info', 'blog.jpg', 3, 3, '2017-12-17 19:25:19', NULL, NULL),
(267, 'Mrs.', 'schmitt.fredy@hotmail.com', 'blog.jpg', 1, 9, '2017-12-17 19:25:19', NULL, NULL),
(268, 'Dr.', 'fanderson@okuneva.net', 'blog.jpg', 2, 4, '2017-12-17 19:25:19', NULL, NULL),
(269, 'Dr.', 'elyse29@hotmail.com', 'blog.jpg', 2, 5, '2017-12-17 19:25:19', NULL, NULL),
(270, 'Miss', 'rolson@hotmail.com', 'blog.jpg', 4, 1, '2017-12-17 19:25:19', NULL, NULL),
(271, 'Miss', 'karmstrong@hotmail.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:19', NULL, NULL),
(272, 'Mrs.', 'laury20@pfeffer.com', 'blog.jpg', 2, 7, '2017-12-17 19:25:19', NULL, NULL),
(273, 'Mr.', 'nikolaus.vallie@hotmail.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:19', NULL, NULL),
(274, 'Prof.', 'walker.rey@hotmail.com', 'blog.jpg', 4, 6, '2017-12-17 19:25:19', NULL, NULL),
(275, 'Miss', 'gregg.leannon@hotmail.com', 'blog.jpg', 4, 8, '2017-12-17 19:25:19', NULL, NULL),
(276, 'Mrs.', 'charlie.denesik@hotmail.com', 'blog.jpg', 3, 5, '2017-12-17 19:25:19', NULL, NULL),
(277, 'Miss', 'abelardo99@gmail.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:19', NULL, NULL),
(278, 'Mrs.', 'barry40@cruickshank.com', 'blog.jpg', 3, 7, '2017-12-17 19:25:19', NULL, NULL),
(279, 'Dr.', 'witting.judge@moen.info', 'blog.jpg', 1, 9, '2017-12-17 19:25:19', NULL, NULL),
(280, 'Dr.', 'corene77@kautzer.com', 'blog.jpg', 1, 9, '2017-12-17 19:25:19', NULL, NULL),
(281, 'Ms.', 'purdy.jackie@mosciski.org', 'blog.jpg', 3, 4, '2017-12-17 19:25:20', NULL, NULL),
(282, 'Mrs.', 'albin.graham@kassulke.biz', 'blog.jpg', 1, 3, '2017-12-17 19:25:20', NULL, NULL),
(283, 'Miss', 'norwood71@crona.info', 'blog.jpg', 3, 3, '2017-12-17 19:25:20', NULL, NULL),
(284, 'Mrs.', 'bgleichner@hotmail.com', 'blog.jpg', 3, 8, '2017-12-17 19:25:20', NULL, NULL),
(285, 'Ms.', 'wiza.herminia@hotmail.com', 'blog.jpg', 3, 7, '2017-12-17 19:25:20', NULL, NULL),
(286, 'Mr.', 'wmccullough@ortiz.org', 'blog.jpg', 4, 6, '2017-12-17 19:25:20', NULL, NULL),
(287, 'Dr.', 'fritsch.leann@doyle.com', 'blog.jpg', 1, 8, '2017-12-17 19:25:20', NULL, NULL),
(288, 'Ms.', 'modesto.gerlach@senger.biz', 'blog.jpg', 3, 2, '2017-12-17 19:25:20', NULL, NULL),
(289, 'Prof.', 'robel.river@hotmail.com', 'blog.jpg', 3, 2, '2017-12-17 19:25:20', NULL, NULL),
(290, 'Dr.', 'daniel.vincent@gmail.com', 'blog.jpg', 1, 1, '2017-12-17 19:25:20', NULL, NULL),
(291, 'Dr.', 'borer.seamus@borer.com', 'blog.jpg', 1, 1, '2017-12-17 19:25:20', NULL, NULL),
(292, 'Dr.', 'eduardo.waelchi@hotmail.com', 'blog.jpg', 3, 5, '2017-12-17 19:25:20', NULL, NULL),
(293, 'Mr.', 'predovic.gilbert@yahoo.com', 'blog.jpg', 4, 7, '2017-12-17 19:25:20', NULL, NULL),
(294, 'Miss', 'romaguera.paxton@hotmail.com', 'blog.jpg', 1, 5, '2017-12-17 19:25:20', NULL, NULL),
(295, 'Miss', 'bednar.tia@gmail.com', 'blog.jpg', 2, 2, '2017-12-17 19:25:20', NULL, NULL),
(296, 'Dr.', 'schinner.emmitt@hotmail.com', 'blog.jpg', 2, 10, '2017-12-17 19:25:20', NULL, NULL),
(297, 'Ms.', 'destini.weissnat@hickle.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:20', NULL, NULL),
(298, 'Dr.', 'emiliano.will@barrows.org', 'blog.jpg', 4, 5, '2017-12-17 19:25:20', NULL, NULL),
(299, 'Prof.', 'carissa28@yahoo.com', 'blog.jpg', 1, 5, '2017-12-17 19:25:21', NULL, NULL),
(300, 'Prof.', 'lily81@gmail.com', 'blog.jpg', 1, 6, '2017-12-17 19:25:21', NULL, NULL),
(301, 'Dr.', 'medhurst.ana@medhurst.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:21', NULL, NULL),
(302, 'Prof.', 'jacques.mcglynn@hotmail.com', 'blog.jpg', 3, 6, '2017-12-17 19:25:21', NULL, NULL),
(303, 'Ms.', 'maximo.schmeler@pouros.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:21', NULL, NULL),
(304, 'Mrs.', 'tobin66@ebert.com', 'blog.jpg', 4, 5, '2017-12-17 19:25:21', NULL, NULL),
(305, 'Ms.', 'jschaden@hotmail.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:21', NULL, NULL),
(306, 'Mrs.', 'egerhold@hilll.com', 'blog.jpg', 4, 8, '2017-12-17 19:25:21', NULL, NULL),
(307, 'Prof.', 'lambert44@daniel.net', 'blog.jpg', 4, 4, '2017-12-17 19:25:21', NULL, NULL),
(308, 'Dr.', 'deckow.lexi@hotmail.com', 'blog.jpg', 1, 1, '2017-12-17 19:25:21', NULL, NULL),
(309, 'Miss', 'roob.dasia@reynolds.info', 'blog.jpg', 4, 8, '2017-12-17 19:25:21', NULL, NULL),
(310, 'Prof.', 'edd39@hoeger.biz', 'blog.jpg', 1, 6, '2017-12-17 19:25:21', NULL, NULL),
(311, 'Dr.', 'witting.odessa@herzog.org', 'blog.jpg', 4, 6, '2017-12-17 19:25:21', NULL, NULL),
(312, 'Mr.', 'gussie.marquardt@kilback.info', 'blog.jpg', 3, 3, '2017-12-17 19:25:21', NULL, NULL),
(313, 'Mrs.', 'karmstrong@jacobs.com', 'blog.jpg', 3, 10, '2017-12-17 19:25:21', NULL, NULL),
(314, 'Prof.', 'tbalistreri@yahoo.com', 'blog.jpg', 3, 7, '2017-12-17 19:25:21', NULL, NULL),
(315, 'Dr.', 'jewell53@braun.com', 'blog.jpg', 3, 1, '2017-12-17 19:25:21', NULL, NULL),
(316, 'Ms.', 'rogers.leannon@okon.net', 'blog.jpg', 1, 5, '2017-12-17 19:25:21', NULL, NULL),
(317, 'Miss', 'cathryn.renner@veum.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:21', NULL, NULL),
(318, 'Mr.', 'jarrod.zemlak@hotmail.com', 'blog.jpg', 3, 2, '2017-12-17 19:25:21', NULL, NULL),
(319, 'Mr.', 'marilou81@ebert.com', 'blog.jpg', 1, 1, '2017-12-17 19:25:21', NULL, NULL),
(320, 'Mrs.', 'anderson.earl@krajcik.com', 'blog.jpg', 2, 5, '2017-12-17 19:25:22', NULL, NULL),
(321, 'Ms.', 'lourdes.kuhn@jacobs.net', 'blog.jpg', 3, 8, '2017-12-17 19:25:22', NULL, NULL),
(322, 'Dr.', 'norval36@gmail.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:22', NULL, NULL),
(323, 'Prof.', 'cody23@gmail.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:22', NULL, NULL),
(324, 'Prof.', 'cale46@gmail.com', 'blog.jpg', 2, 7, '2017-12-17 19:25:22', NULL, NULL),
(325, 'Mr.', 'katlyn66@hotmail.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:22', NULL, NULL),
(326, 'Dr.', 'simonis.yolanda@bergnaum.com', 'blog.jpg', 3, 2, '2017-12-17 19:25:22', NULL, NULL),
(327, 'Prof.', 'bradtke.kevon@marquardt.com', 'blog.jpg', 2, 9, '2017-12-17 19:25:22', NULL, NULL),
(328, 'Prof.', 'marilyne54@hotmail.com', 'blog.jpg', 1, 4, '2017-12-17 19:25:22', NULL, NULL),
(329, 'Dr.', 'xbins@hotmail.com', 'blog.jpg', 1, 1, '2017-12-17 19:25:22', NULL, NULL),
(330, 'Ms.', 'christa51@king.net', 'blog.jpg', 2, 2, '2017-12-17 19:25:22', NULL, NULL),
(331, 'Miss', 'hgibson@gmail.com', 'blog.jpg', 3, 5, '2017-12-17 19:25:22', NULL, NULL),
(332, 'Prof.', 'kassulke.olaf@yahoo.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:22', NULL, NULL),
(333, 'Prof.', 'wanda06@hotmail.com', 'blog.jpg', 1, 8, '2017-12-17 19:25:22', NULL, NULL),
(334, 'Dr.', 'alberto.lowe@yahoo.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:23', NULL, NULL),
(335, 'Miss', 'braun.eldred@murazik.org', 'blog.jpg', 4, 2, '2017-12-17 19:25:23', NULL, NULL),
(336, 'Prof.', 'csenger@dibbert.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:23', NULL, NULL),
(337, 'Prof.', 'mann.fabiola@gmail.com', 'blog.jpg', 3, 8, '2017-12-17 19:25:23', NULL, NULL),
(338, 'Dr.', 'ylegros@gmail.com', 'blog.jpg', 4, 4, '2017-12-17 19:25:23', NULL, NULL),
(339, 'Dr.', 'pwisozk@gmail.com', 'blog.jpg', 2, 6, '2017-12-17 19:25:23', NULL, NULL),
(340, 'Mrs.', 'ewill@cronin.org', 'blog.jpg', 3, 7, '2017-12-17 19:25:23', NULL, NULL),
(341, 'Prof.', 'ghahn@hotmail.com', 'blog.jpg', 4, 7, '2017-12-17 19:25:23', NULL, NULL),
(342, 'Dr.', 'bthompson@hotmail.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:23', NULL, NULL),
(343, 'Dr.', 'tbailey@koepp.com', 'blog.jpg', 1, 1, '2017-12-17 19:25:23', NULL, NULL),
(344, 'Dr.', 'era20@gmail.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:23', NULL, NULL),
(345, 'Mr.', 'ivah.ward@hotmail.com', 'blog.jpg', 2, 8, '2017-12-17 19:25:23', NULL, NULL),
(346, 'Mr.', 'palma.kertzmann@hotmail.com', 'blog.jpg', 3, 9, '2017-12-17 19:25:23', NULL, NULL),
(347, 'Miss', 'aschultz@ankunding.org', 'blog.jpg', 1, 9, '2017-12-17 19:25:24', NULL, NULL),
(348, 'Prof.', 'zwunsch@hotmail.com', 'blog.jpg', 2, 8, '2017-12-17 19:25:24', NULL, NULL),
(349, 'Dr.', 'fsauer@hotmail.com', 'blog.jpg', 3, 1, '2017-12-17 19:25:24', NULL, NULL),
(350, 'Prof.', 'waelchi.seamus@grant.com', 'blog.jpg', 4, 6, '2017-12-17 19:25:24', NULL, NULL),
(351, 'Mr.', 'durgan.aylin@balistreri.info', 'blog.jpg', 1, 2, '2017-12-17 19:25:24', NULL, NULL),
(352, 'Miss', 'vance.ziemann@pfannerstill.com', 'blog.jpg', 1, 5, '2017-12-17 19:25:24', NULL, NULL),
(353, 'Miss', 'leuschke.alden@mayer.com', 'blog.jpg', 4, 5, '2017-12-17 19:25:24', NULL, NULL),
(354, 'Prof.', 'hauck.olin@nikolaus.info', 'blog.jpg', 3, 9, '2017-12-17 19:25:24', NULL, NULL),
(355, 'Ms.', 'edmond44@hotmail.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:24', NULL, NULL),
(356, 'Dr.', 'lkuhic@conroy.info', 'blog.jpg', 3, 7, '2017-12-17 19:25:24', NULL, NULL),
(357, 'Dr.', 'jacinthe.shanahan@sipes.com', 'blog.jpg', 4, 2, '2017-12-17 19:25:24', NULL, NULL),
(358, 'Miss', 'zena20@hudson.com', 'blog.jpg', 2, 5, '2017-12-17 19:25:24', NULL, NULL),
(359, 'Prof.', 'lubowitz.virginie@hotmail.com', 'blog.jpg', 1, 10, '2017-12-17 19:25:24', NULL, NULL),
(360, 'Mrs.', 'zwalker@pfannerstill.com', 'blog.jpg', 4, 8, '2017-12-17 19:25:24', NULL, NULL),
(361, 'Prof.', 'name.ortiz@yahoo.com', 'blog.jpg', 3, 10, '2017-12-17 19:25:24', NULL, NULL),
(362, 'Mr.', 'wlabadie@torp.org', 'blog.jpg', 3, 6, '2017-12-17 19:25:24', NULL, NULL),
(363, 'Prof.', 'buford.denesik@oberbrunner.com', 'blog.jpg', 4, 1, '2017-12-17 19:25:24', NULL, NULL),
(364, 'Dr.', 'dejah20@fahey.info', 'blog.jpg', 4, 8, '2017-12-17 19:25:24', NULL, NULL),
(365, 'Dr.', 'bschmidt@yahoo.com', 'blog.jpg', 2, 9, '2017-12-17 19:25:24', NULL, NULL),
(366, 'Mr.', 'creichert@gmail.com', 'blog.jpg', 4, 6, '2017-12-17 19:25:25', NULL, NULL),
(367, 'Dr.', 'ivah61@ernser.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:25', NULL, NULL),
(368, 'Miss', 'gulgowski.lamont@greenfelder.info', 'blog.jpg', 1, 2, '2017-12-17 19:25:25', NULL, NULL),
(369, 'Dr.', 'jewell46@schimmel.com', 'blog.jpg', 2, 9, '2017-12-17 19:25:25', NULL, NULL),
(370, 'Dr.', 'streich.audrey@mcglynn.org', 'blog.jpg', 4, 3, '2017-12-17 19:25:25', NULL, NULL),
(371, 'Prof.', 'nona.littel@gmail.com', 'blog.jpg', 1, 9, '2017-12-17 19:25:25', NULL, NULL),
(372, 'Prof.', 'heathcote.shanel@padberg.com', 'blog.jpg', 2, 5, '2017-12-17 19:25:25', NULL, NULL),
(373, 'Dr.', 'ekoepp@gmail.com', 'blog.jpg', 4, 5, '2017-12-17 19:25:25', NULL, NULL),
(374, 'Dr.', 'sbreitenberg@farrell.net', 'blog.jpg', 4, 1, '2017-12-17 19:25:25', NULL, NULL),
(375, 'Mr.', 'ila.king@lebsack.biz', 'blog.jpg', 2, 1, '2017-12-17 19:25:25', NULL, NULL),
(376, 'Dr.', 'clara60@gottlieb.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:25', NULL, NULL),
(377, 'Mr.', 'astamm@boyle.net', 'blog.jpg', 3, 2, '2017-12-17 19:25:25', NULL, NULL),
(378, 'Mr.', 'nparisian@casper.biz', 'blog.jpg', 2, 1, '2017-12-17 19:25:25', NULL, NULL),
(379, 'Mr.', 'jconroy@kozey.com', 'blog.jpg', 2, 2, '2017-12-17 19:25:25', NULL, NULL),
(380, 'Ms.', 'hilpert.chasity@yahoo.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:26', NULL, NULL),
(381, 'Prof.', 'dayne.schmeler@bartoletti.org', 'blog.jpg', 2, 9, '2017-12-17 19:25:26', NULL, NULL),
(382, 'Mr.', 'oswald.zemlak@hermiston.org', 'blog.jpg', 2, 3, '2017-12-17 19:25:26', NULL, NULL),
(383, 'Miss', 'mabel60@lueilwitz.com', 'blog.jpg', 3, 7, '2017-12-17 19:25:26', NULL, NULL),
(384, 'Ms.', 'marina.kilback@bergstrom.org', 'blog.jpg', 4, 2, '2017-12-17 19:25:26', NULL, NULL),
(385, 'Prof.', 'kulas.frida@schmitt.info', 'blog.jpg', 1, 8, '2017-12-17 19:25:26', NULL, NULL),
(386, 'Dr.', 'americo.streich@ankunding.net', 'blog.jpg', 4, 2, '2017-12-17 19:25:26', NULL, NULL),
(387, 'Ms.', 'cecelia75@cummings.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:26', NULL, NULL),
(388, 'Prof.', 'stanley.runte@glover.com', 'blog.jpg', 1, 3, '2017-12-17 19:25:26', NULL, NULL),
(389, 'Dr.', 'lorenza00@lebsack.net', 'blog.jpg', 4, 7, '2017-12-17 19:25:26', NULL, NULL),
(390, 'Mr.', 'rudy.gutkowski@yahoo.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:26', NULL, NULL),
(391, 'Mrs.', 'vanderson@gmail.com', 'blog.jpg', 4, 6, '2017-12-17 19:25:26', NULL, NULL),
(392, 'Ms.', 'eleanore32@klein.org', 'blog.jpg', 4, 10, '2017-12-17 19:25:26', NULL, NULL),
(393, 'Miss', 'bhoppe@gmail.com', 'blog.jpg', 1, 1, '2017-12-17 19:25:26', NULL, NULL),
(394, 'Miss', 'wiza.sylvester@wisoky.com', 'blog.jpg', 4, 4, '2017-12-17 19:25:27', NULL, NULL),
(395, 'Mr.', 'mavis13@yahoo.com', 'blog.jpg', 4, 5, '2017-12-17 19:25:27', NULL, NULL),
(396, 'Dr.', 'dasia62@gerlach.com', 'blog.jpg', 2, 2, '2017-12-17 19:25:27', NULL, NULL),
(397, 'Miss', 'kiana.farrell@hansen.biz', 'blog.jpg', 1, 9, '2017-12-17 19:25:27', NULL, NULL),
(398, 'Prof.', 'hertha09@gmail.com', 'blog.jpg', 2, 8, '2017-12-17 19:25:27', NULL, NULL),
(399, 'Dr.', 'janiya.lowe@gmail.com', 'blog.jpg', 1, 5, '2017-12-17 19:25:27', NULL, NULL),
(400, 'Ms.', 'quinton.beatty@yahoo.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:27', NULL, NULL),
(401, 'Prof.', 'janae.wolff@yahoo.com', 'blog.jpg', 2, 10, '2017-12-17 19:25:27', NULL, NULL),
(402, 'Miss', 'pcassin@gmail.com', 'blog.jpg', 1, 8, '2017-12-17 19:25:27', NULL, NULL),
(403, 'Mrs.', 'geo.rath@gmail.com', 'blog.jpg', 4, 6, '2017-12-17 19:25:27', NULL, NULL),
(404, 'Dr.', 'kshlerin.annabell@bashirian.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:27', NULL, NULL),
(405, 'Mr.', 'una47@okeefe.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:28', NULL, NULL),
(406, 'Miss', 'dickinson.mya@gmail.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:28', NULL, NULL),
(407, 'Dr.', 'ullrich.christina@hotmail.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:28', NULL, NULL),
(408, 'Miss', 'green.cory@yahoo.com', 'blog.jpg', 1, 10, '2017-12-17 19:25:28', NULL, NULL),
(409, 'Mr.', 'renner.timmy@yahoo.com', 'blog.jpg', 3, 8, '2017-12-17 19:25:28', NULL, NULL),
(410, 'Prof.', 'qvolkman@lind.net', 'blog.jpg', 1, 2, '2017-12-17 19:25:28', NULL, NULL),
(411, 'Prof.', 'carroll.augusta@hotmail.com', 'blog.jpg', 2, 7, '2017-12-17 19:25:28', NULL, NULL),
(412, 'Mrs.', 'bshanahan@corkery.info', 'blog.jpg', 3, 3, '2017-12-17 19:25:28', NULL, NULL),
(413, 'Prof.', 'rubie18@yahoo.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:28', NULL, NULL),
(414, 'Dr.', 'melany.kassulke@yahoo.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:28', NULL, NULL),
(415, 'Mr.', 'sherman.schamberger@yahoo.com', 'blog.jpg', 1, 4, '2017-12-17 19:25:29', NULL, NULL),
(416, 'Prof.', 'hcormier@hotmail.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:29', NULL, NULL),
(417, 'Miss', 'mosciski.opal@frami.com', 'blog.jpg', 4, 8, '2017-12-17 19:25:29', NULL, NULL),
(418, 'Prof.', 'harold.toy@turner.info', 'blog.jpg', 3, 4, '2017-12-17 19:25:29', NULL, NULL),
(419, 'Prof.', 'zachery48@hotmail.com', 'blog.jpg', 4, 2, '2017-12-17 19:25:29', NULL, NULL),
(420, 'Miss', 'ihickle@mayer.com', 'blog.jpg', 4, 7, '2017-12-17 19:25:29', NULL, NULL),
(421, 'Mr.', 'hmann@friesen.com', 'blog.jpg', 2, 10, '2017-12-17 19:25:29', NULL, NULL),
(422, 'Miss', 'greenholt.stone@kiehn.com', 'blog.jpg', 1, 10, '2017-12-17 19:25:29', NULL, NULL),
(423, 'Prof.', 'rosalia35@mohr.com', 'blog.jpg', 1, 6, '2017-12-17 19:25:29', NULL, NULL),
(424, 'Prof.', 'chackett@yahoo.com', 'blog.jpg', 4, 2, '2017-12-17 19:25:29', NULL, NULL),
(425, 'Dr.', 'mckenzie.justus@gmail.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:30', NULL, NULL),
(426, 'Miss', 'mathew17@schmitt.info', 'blog.jpg', 1, 9, '2017-12-17 19:25:30', NULL, NULL),
(427, 'Dr.', 'prosacco.spencer@bernier.com', 'blog.jpg', 3, 9, '2017-12-17 19:25:30', NULL, NULL),
(428, 'Dr.', 'fhaag@gmail.com', 'blog.jpg', 1, 9, '2017-12-17 19:25:30', NULL, NULL),
(429, 'Prof.', 'zemlak.ryann@krajcik.com', 'blog.jpg', 2, 6, '2017-12-17 19:25:30', NULL, NULL),
(430, 'Prof.', 'gconroy@zboncak.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:30', NULL, NULL),
(431, 'Mrs.', 'rhoda.kuhn@murphy.com', 'blog.jpg', 1, 5, '2017-12-17 19:25:30', NULL, NULL),
(432, 'Dr.', 'uweissnat@hotmail.com', 'blog.jpg', 3, 2, '2017-12-17 19:25:30', NULL, NULL),
(433, 'Mrs.', 'ernest99@rosenbaum.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:30', NULL, NULL),
(434, 'Miss', 'ethelyn.wisoky@gmail.com', 'blog.jpg', 4, 5, '2017-12-17 19:25:30', NULL, NULL),
(435, 'Dr.', 'roma.harvey@zieme.net', 'blog.jpg', 4, 7, '2017-12-17 19:25:30', NULL, NULL),
(436, 'Mr.', 'wrowe@fay.org', 'blog.jpg', 3, 1, '2017-12-17 19:25:31', NULL, NULL),
(437, 'Prof.', 'elroy35@beatty.net', 'blog.jpg', 4, 3, '2017-12-17 19:25:31', NULL, NULL),
(438, 'Ms.', 'koepp.neha@gmail.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:31', NULL, NULL),
(439, 'Prof.', 'sadie.cummerata@hotmail.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:31', NULL, NULL),
(440, 'Mr.', 'vsawayn@gmail.com', 'blog.jpg', 4, 1, '2017-12-17 19:25:31', NULL, NULL),
(441, 'Prof.', 'stroman.sam@gmail.com', 'blog.jpg', 3, 10, '2017-12-17 19:25:31', NULL, NULL),
(442, 'Dr.', 'haley.giovanny@wehner.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:31', NULL, NULL),
(443, 'Dr.', 'emard.della@hotmail.com', 'blog.jpg', 4, 6, '2017-12-17 19:25:31', NULL, NULL),
(444, 'Mrs.', 'nveum@friesen.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:31', NULL, NULL),
(445, 'Dr.', 'brianne71@gmail.com', 'blog.jpg', 2, 7, '2017-12-17 19:25:32', NULL, NULL),
(446, 'Prof.', 'michel23@hotmail.com', 'blog.jpg', 4, 2, '2017-12-17 19:25:32', NULL, NULL),
(447, 'Dr.', 'ryan.graham@gmail.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:32', NULL, NULL),
(448, 'Dr.', 'ktillman@gmail.com', 'blog.jpg', 1, 8, '2017-12-17 19:25:32', NULL, NULL),
(449, 'Mrs.', 'autumn.leffler@gmail.com', 'blog.jpg', 4, 5, '2017-12-17 19:25:32', NULL, NULL),
(450, 'Prof.', 'charles93@connelly.com', 'blog.jpg', 3, 10, '2017-12-17 19:25:32', NULL, NULL),
(451, 'Miss', 'lee.bogisich@veum.com', 'blog.jpg', 2, 10, '2017-12-17 19:25:32', NULL, NULL),
(452, 'Mr.', 'roger.swaniawski@okuneva.com', 'blog.jpg', 1, 4, '2017-12-17 19:25:32', NULL, NULL),
(453, 'Prof.', 'smith.lucius@gmail.com', 'blog.jpg', 1, 6, '2017-12-17 19:25:32', NULL, NULL),
(454, 'Prof.', 'allan.jacobs@rau.org', 'blog.jpg', 4, 2, '2017-12-17 19:25:32', NULL, NULL),
(455, 'Prof.', 'shawna22@gmail.com', 'blog.jpg', 3, 8, '2017-12-17 19:25:32', NULL, NULL),
(456, 'Prof.', 'utorphy@yahoo.com', 'blog.jpg', 4, 7, '2017-12-17 19:25:32', NULL, NULL),
(457, 'Prof.', 'antone79@towne.com', 'blog.jpg', 2, 7, '2017-12-17 19:25:32', NULL, NULL),
(458, 'Prof.', 'bogan.amelie@hagenes.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:33', NULL, NULL),
(459, 'Prof.', 'dickinson.jannie@dubuque.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:33', NULL, NULL),
(460, 'Ms.', 'ofelia92@brekke.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:33', NULL, NULL),
(461, 'Dr.', 'trinity.mohr@olson.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:33', NULL, NULL),
(462, 'Dr.', 'zjacobson@yahoo.com', 'blog.jpg', 3, 1, '2017-12-17 19:25:33', NULL, NULL),
(463, 'Prof.', 'goyette.annamarie@hammes.net', 'blog.jpg', 4, 3, '2017-12-17 19:25:33', NULL, NULL),
(464, 'Mr.', 'sbeier@kunde.com', 'blog.jpg', 4, 4, '2017-12-17 19:25:33', NULL, NULL),
(465, 'Dr.', 'borer.eugene@yahoo.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:33', NULL, NULL),
(466, 'Prof.', 'qblick@yahoo.com', 'blog.jpg', 1, 4, '2017-12-17 19:25:33', NULL, NULL),
(467, 'Prof.', 'kory08@yahoo.com', 'blog.jpg', 3, 10, '2017-12-17 19:25:33', NULL, NULL),
(468, 'Dr.', 'theo91@gmail.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:33', NULL, NULL),
(469, 'Mrs.', 'penelope32@heller.com', 'blog.jpg', 1, 4, '2017-12-17 19:25:33', NULL, NULL),
(470, 'Dr.', 'ihaag@trantow.com', 'blog.jpg', 3, 1, '2017-12-17 19:25:34', NULL, NULL),
(471, 'Prof.', 'kjacobson@yahoo.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:34', NULL, NULL),
(472, 'Prof.', 'christiansen.millie@hotmail.com', 'blog.jpg', 1, 9, '2017-12-17 19:25:34', NULL, NULL),
(473, 'Prof.', 'kblock@gmail.com', 'blog.jpg', 1, 10, '2017-12-17 19:25:34', NULL, NULL),
(474, 'Prof.', 'sleuschke@hotmail.com', 'blog.jpg', 4, 1, '2017-12-17 19:25:34', NULL, NULL),
(475, 'Dr.', 'yost.alverta@hotmail.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:34', NULL, NULL),
(476, 'Mrs.', 'morissette.moises@gmail.com', 'blog.jpg', 3, 7, '2017-12-17 19:25:34', NULL, NULL),
(477, 'Prof.', 'kschowalter@yost.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:34', NULL, NULL),
(478, 'Mrs.', 'edmund96@gmail.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:34', NULL, NULL),
(479, 'Dr.', 'tdibbert@gmail.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:35', NULL, NULL),
(480, 'Mr.', 'sierra02@yahoo.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:35', NULL, NULL),
(481, 'Miss', 'cyost@hotmail.com', 'blog.jpg', 3, 8, '2017-12-17 19:25:35', NULL, NULL),
(482, 'Mrs.', 'julianne84@hotmail.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:35', NULL, NULL),
(483, 'Prof.', 'creilly@okuneva.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:35', NULL, NULL),
(484, 'Ms.', 'labadie.manuela@yahoo.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:35', NULL, NULL),
(485, 'Miss', 'keeling.alexys@cormier.com', 'blog.jpg', 2, 6, '2017-12-17 19:25:35', NULL, NULL),
(486, 'Ms.', 'qbins@kessler.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:35', NULL, NULL),
(487, 'Mr.', 'kuhn.turner@gmail.com', 'blog.jpg', 1, 10, '2017-12-17 19:25:35', NULL, NULL),
(488, 'Prof.', 'christop72@harris.com', 'blog.jpg', 3, 10, '2017-12-17 19:25:35', NULL, NULL),
(489, 'Prof.', 'vrice@okeefe.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:35', NULL, NULL),
(490, 'Prof.', 'marcelina05@hotmail.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:35', NULL, NULL),
(491, 'Ms.', 'mondricka@kutch.biz', 'blog.jpg', 3, 5, '2017-12-17 19:25:36', NULL, NULL),
(492, 'Miss', 'boyle.constance@gmail.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:36', NULL, NULL),
(493, 'Miss', 'corrine.streich@kuvalis.net', 'blog.jpg', 4, 2, '2017-12-17 19:25:36', NULL, NULL),
(494, 'Mr.', 'freddy.hettinger@gmail.com', 'blog.jpg', 2, 9, '2017-12-17 19:25:36', NULL, NULL),
(495, 'Miss', 'douglas.emie@sanford.com', 'blog.jpg', 1, 10, '2017-12-17 19:25:36', NULL, NULL),
(496, 'Mr.', 'anais09@paucek.com', 'blog.jpg', 4, 6, '2017-12-17 19:25:36', NULL, NULL),
(497, 'Miss', 'sipes.keegan@muller.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:36', NULL, NULL),
(498, 'Ms.', 'muller.davon@hotmail.com', 'blog.jpg', 1, 5, '2017-12-17 19:25:36', NULL, NULL),
(499, 'Prof.', 'kshlerin.lucie@yahoo.com', 'blog.jpg', 3, 5, '2017-12-17 19:25:37', NULL, NULL),
(500, 'Prof.', 'carmelo92@larson.org', 'blog.jpg', 2, 3, '2017-12-17 19:25:37', NULL, NULL),
(501, 'Prof.', 'oferry@kovacek.info', 'blog.jpg', 4, 4, '2017-12-17 19:25:37', NULL, NULL),
(502, 'Mr.', 'cora80@hotmail.com', 'blog.jpg', 4, 8, '2017-12-17 19:25:37', NULL, NULL),
(503, 'Prof.', 'uohara@gmail.com', 'blog.jpg', 1, 7, '2017-12-17 19:25:37', NULL, NULL),
(504, 'Mrs.', 'jerry.welch@schmitt.com', 'blog.jpg', 3, 2, '2017-12-17 19:25:38', NULL, NULL),
(505, 'Dr.', 'hoppe.carson@yahoo.com', 'blog.jpg', 3, 5, '2017-12-17 19:25:38', NULL, NULL),
(506, 'Dr.', 'gcollins@jacobi.com', 'blog.jpg', 3, 8, '2017-12-17 19:25:38', NULL, NULL),
(507, 'Ms.', 'bcarter@gmail.com', 'blog.jpg', 1, 9, '2017-12-17 19:25:38', NULL, NULL),
(508, 'Prof.', 'marina19@eichmann.info', 'blog.jpg', 3, 5, '2017-12-17 19:25:38', NULL, NULL),
(509, 'Ms.', 'vhoeger@hotmail.com', 'blog.jpg', 3, 6, '2017-12-17 19:25:38', NULL, NULL),
(510, 'Dr.', 'birdie39@fahey.com', 'blog.jpg', 1, 3, '2017-12-17 19:25:38', NULL, NULL),
(511, 'Mr.', 'alfonzo80@gleichner.com', 'blog.jpg', 3, 4, '2017-12-17 19:25:39', NULL, NULL),
(512, 'Prof.', 'spouros@hotmail.com', 'blog.jpg', 1, 4, '2017-12-17 19:25:39', NULL, NULL),
(513, 'Mr.', 'adrien.schroeder@bradtke.com', 'blog.jpg', 1, 6, '2017-12-17 19:25:39', NULL, NULL),
(514, 'Miss', 'dedrick.muller@hotmail.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:39', NULL, NULL),
(515, 'Ms.', 'gislason.annamarie@gutkowski.com', 'blog.jpg', 4, 1, '2017-12-17 19:25:39', NULL, NULL),
(516, 'Miss', 'ojones@hotmail.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:39', NULL, NULL),
(517, 'Dr.', 'bednar.jannie@swift.com', 'blog.jpg', 3, 2, '2017-12-17 19:25:39', NULL, NULL),
(518, 'Ms.', 'kuhic.libbie@tremblay.org', 'blog.jpg', 4, 2, '2017-12-17 19:25:39', NULL, NULL),
(519, 'Dr.', 'cupton@kerluke.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:39', NULL, NULL),
(520, 'Miss', 'gledner@yahoo.com', 'blog.jpg', 3, 5, '2017-12-17 19:25:39', NULL, NULL),
(521, 'Dr.', 'feeney.eloisa@mckenzie.com', 'blog.jpg', 3, 9, '2017-12-17 19:25:40', NULL, NULL),
(522, 'Mr.', 'lori.feeney@yahoo.com', 'blog.jpg', 3, 5, '2017-12-17 19:25:40', NULL, NULL),
(523, 'Dr.', 'irussel@hyatt.com', 'blog.jpg', 3, 2, '2017-12-17 19:25:40', NULL, NULL),
(524, 'Miss', 'iblanda@hotmail.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:40', NULL, NULL),
(525, 'Mr.', 'rohan.anne@hotmail.com', 'blog.jpg', 4, 8, '2017-12-17 19:25:41', NULL, NULL),
(526, 'Dr.', 'matt56@hotmail.com', 'blog.jpg', 3, 5, '2017-12-17 19:25:41', NULL, NULL),
(527, 'Miss', 'buford84@stamm.net', 'blog.jpg', 1, 1, '2017-12-17 19:25:41', NULL, NULL),
(528, 'Prof.', 'antone27@yahoo.com', 'blog.jpg', 2, 5, '2017-12-17 19:25:41', NULL, NULL),
(529, 'Prof.', 'germaine82@hotmail.com', 'blog.jpg', 2, 2, '2017-12-17 19:25:41', NULL, NULL),
(530, 'Miss', 'loyce.huels@wuckert.biz', 'blog.jpg', 3, 10, '2017-12-17 19:25:41', NULL, NULL),
(531, 'Ms.', 'jaclyn18@kassulke.org', 'blog.jpg', 1, 1, '2017-12-17 19:25:42', NULL, NULL),
(532, 'Dr.', 'esther96@gmail.com', 'blog.jpg', 1, 6, '2017-12-17 19:25:42', NULL, NULL),
(533, 'Prof.', 'lkozey@deckow.com', 'blog.jpg', 4, 8, '2017-12-17 19:25:42', NULL, NULL),
(534, 'Miss', 'clifton.kreiger@mcdermott.org', 'blog.jpg', 1, 7, '2017-12-17 19:25:42', NULL, NULL),
(535, 'Miss', 'arjun.miller@fahey.net', 'blog.jpg', 4, 6, '2017-12-17 19:25:42', NULL, NULL),
(536, 'Prof.', 'arvid.eichmann@reichel.com', 'blog.jpg', 3, 6, '2017-12-17 19:25:42', NULL, NULL),
(537, 'Mrs.', 'granville50@gmail.com', 'blog.jpg', 1, 2, '2017-12-17 19:25:43', NULL, NULL),
(538, 'Prof.', 'lreilly@yahoo.com', 'blog.jpg', 4, 6, '2017-12-17 19:25:43', NULL, NULL),
(539, 'Ms.', 'kuvalis.litzy@cartwright.com', 'blog.jpg', 4, 8, '2017-12-17 19:25:43', NULL, NULL),
(540, 'Prof.', 'zulauf.alyson@yahoo.com', 'blog.jpg', 4, 5, '2017-12-17 19:25:43', NULL, NULL),
(541, 'Prof.', 'delta.rodriguez@langworth.com', 'blog.jpg', 4, 1, '2017-12-17 19:25:43', NULL, NULL),
(542, 'Mr.', 'mortimer.effertz@dickens.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:43', NULL, NULL),
(543, 'Prof.', 'abrown@hahn.com', 'blog.jpg', 2, 10, '2017-12-17 19:25:43', NULL, NULL),
(544, 'Prof.', 'zrolfson@larkin.com', 'blog.jpg', 2, 2, '2017-12-17 19:25:43', NULL, NULL),
(545, 'Prof.', 'qbeier@brakus.info', 'blog.jpg', 2, 4, '2017-12-17 19:25:44', NULL, NULL),
(546, 'Mrs.', 'daren21@hotmail.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:44', NULL, NULL),
(547, 'Mr.', 'dicki.gabriella@yahoo.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:44', NULL, NULL),
(548, 'Mrs.', 'carter.mia@hirthe.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:44', NULL, NULL),
(549, 'Prof.', 'buck07@gmail.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:44', NULL, NULL),
(550, 'Dr.', 'gail97@gmail.com', 'blog.jpg', 1, 6, '2017-12-17 19:25:45', NULL, NULL),
(551, 'Miss', 'zhomenick@hotmail.com', 'blog.jpg', 2, 5, '2017-12-17 19:25:45', NULL, NULL),
(552, 'Prof.', 'schaden.herbert@murazik.com', 'blog.jpg', 1, 9, '2017-12-17 19:25:46', NULL, NULL),
(553, 'Prof.', 'kulas.rene@yahoo.com', 'blog.jpg', 4, 2, '2017-12-17 19:25:46', NULL, NULL),
(554, 'Dr.', 'mckenna13@gmail.com', 'blog.jpg', 4, 7, '2017-12-17 19:25:46', NULL, NULL),
(555, 'Ms.', 'rutherford.kelli@pacocha.biz', 'blog.jpg', 4, 2, '2017-12-17 19:25:46', NULL, NULL),
(556, 'Prof.', 'winston.bruen@wilderman.com', 'blog.jpg', 2, 10, '2017-12-17 19:25:46', NULL, NULL),
(557, 'Prof.', 'bergnaum.justice@gmail.com', 'blog.jpg', 1, 8, '2017-12-17 19:25:46', NULL, NULL),
(558, 'Dr.', 'vbednar@hotmail.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:46', NULL, NULL),
(559, 'Prof.', 'dicki.keith@yahoo.com', 'blog.jpg', 4, 1, '2017-12-17 19:25:46', NULL, NULL),
(560, 'Dr.', 'dickens.domenica@hotmail.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:47', NULL, NULL),
(561, 'Prof.', 'caitlyn90@monahan.biz', 'blog.jpg', 4, 4, '2017-12-17 19:25:47', NULL, NULL),
(562, 'Mr.', 'lbrekke@frami.net', 'blog.jpg', 4, 9, '2017-12-17 19:25:47', NULL, NULL),
(563, 'Mrs.', 'hessel.rhea@ledner.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:47', NULL, NULL),
(564, 'Mrs.', 'kautzer.thad@yahoo.com', 'blog.jpg', 3, 9, '2017-12-17 19:25:47', NULL, NULL),
(565, 'Mr.', 'joesph.schmitt@gmail.com', 'blog.jpg', 1, 6, '2017-12-17 19:25:47', NULL, NULL),
(566, 'Miss', 'fpowlowski@rempel.info', 'blog.jpg', 2, 7, '2017-12-17 19:25:47', NULL, NULL),
(567, 'Miss', 'abshire.graciela@zulauf.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:48', NULL, NULL),
(568, 'Prof.', 'bstanton@klocko.org', 'blog.jpg', 3, 1, '2017-12-17 19:25:48', NULL, NULL),
(569, 'Mr.', 'heaven.douglas@yahoo.com', 'blog.jpg', 1, 9, '2017-12-17 19:25:48', NULL, NULL),
(570, 'Dr.', 'astrid09@hane.info', 'blog.jpg', 2, 4, '2017-12-17 19:25:48', NULL, NULL),
(571, 'Dr.', 'tomasa.greenholt@yahoo.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:48', NULL, NULL),
(572, 'Miss', 'steuber.kyle@abernathy.com', 'blog.jpg', 1, 3, '2017-12-17 19:25:48', NULL, NULL),
(573, 'Dr.', 'jluettgen@yahoo.com', 'blog.jpg', 3, 3, '2017-12-17 19:25:48', NULL, NULL),
(574, 'Ms.', 'gsmith@gmail.com', 'blog.jpg', 4, 10, '2017-12-17 19:25:49', NULL, NULL),
(575, 'Mr.', 'gerlach.serenity@labadie.com', 'blog.jpg', 1, 4, '2017-12-17 19:25:49', NULL, NULL),
(576, 'Prof.', 'fisher.barton@kemmer.org', 'blog.jpg', 2, 1, '2017-12-17 19:25:49', NULL, NULL),
(577, 'Mr.', 'veum.greg@spencer.org', 'blog.jpg', 2, 1, '2017-12-17 19:25:49', NULL, NULL),
(578, 'Mrs.', 'zita.bechtelar@gmail.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:49', NULL, NULL),
(579, 'Dr.', 'dach.asha@hotmail.com', 'blog.jpg', 3, 8, '2017-12-17 19:25:49', NULL, NULL),
(580, 'Dr.', 'athena.smith@gmail.com', 'blog.jpg', 3, 10, '2017-12-17 19:25:49', NULL, NULL),
(581, 'Ms.', 'tyler70@hotmail.com', 'blog.jpg', 3, 9, '2017-12-17 19:25:50', NULL, NULL),
(582, 'Miss', 'estevan25@yahoo.com', 'blog.jpg', 4, 2, '2017-12-17 19:25:50', NULL, NULL),
(583, 'Dr.', 'christop38@hotmail.com', 'blog.jpg', 4, 3, '2017-12-17 19:25:50', NULL, NULL),
(584, 'Prof.', 'phermiston@yahoo.com', 'blog.jpg', 1, 1, '2017-12-17 19:25:50', NULL, NULL),
(585, 'Dr.', 'ezra.schimmel@hotmail.com', 'blog.jpg', 3, 9, '2017-12-17 19:25:50', NULL, NULL),
(586, 'Dr.', 'uschultz@gmail.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:50', NULL, NULL),
(587, 'Dr.', 'kozey.amara@yahoo.com', 'blog.jpg', 3, 10, '2017-12-17 19:25:50', NULL, NULL),
(588, 'Mrs.', 'windler.chanelle@hotmail.com', 'blog.jpg', 2, 1, '2017-12-17 19:25:50', NULL, NULL),
(589, 'Miss', 'retha83@ruecker.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:50', NULL, NULL),
(590, 'Dr.', 'eleanora39@smith.com', 'blog.jpg', 4, 6, '2017-12-17 19:25:51', NULL, NULL),
(591, 'Mr.', 'mikel65@yahoo.com', 'blog.jpg', 2, 8, '2017-12-17 19:25:51', NULL, NULL),
(592, 'Prof.', 'gabe.conn@hotmail.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:51', NULL, NULL),
(593, 'Dr.', 'kjacobi@gmail.com', 'blog.jpg', 3, 8, '2017-12-17 19:25:51', NULL, NULL),
(594, 'Miss', 'sporer.brady@yahoo.com', 'blog.jpg', 4, 9, '2017-12-17 19:25:51', NULL, NULL),
(595, 'Mr.', 'camilla07@gmail.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:51', NULL, NULL),
(596, 'Mr.', 'kennith.schuster@nicolas.net', 'blog.jpg', 2, 7, '2017-12-17 19:25:51', NULL, NULL),
(597, 'Mr.', 'otho06@mosciski.org', 'blog.jpg', 4, 3, '2017-12-17 19:25:51', NULL, NULL),
(598, 'Prof.', 'ransom.hansen@gmail.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:51', NULL, NULL),
(599, 'Dr.', 'janiya83@weimann.biz', 'blog.jpg', 2, 1, '2017-12-17 19:25:51', NULL, NULL),
(600, 'Dr.', 'bartell.fred@yahoo.com', 'blog.jpg', 2, 4, '2017-12-17 19:25:51', NULL, NULL),
(601, 'Dr.', 'stamm.vincenza@cronin.com', 'blog.jpg', 4, 1, '2017-12-17 19:25:51', NULL, NULL),
(602, 'Ms.', 'keebler.roger@treutel.com', 'blog.jpg', 2, 2, '2017-12-17 19:25:51', NULL, NULL),
(603, 'Prof.', 'emurray@yahoo.com', 'blog.jpg', 1, 5, '2017-12-17 19:25:51', NULL, NULL),
(604, 'Dr.', 'jack.bednar@sipes.com', 'blog.jpg', 3, 6, '2017-12-17 19:25:51', NULL, NULL),
(605, 'Dr.', 'benedict73@dickinson.info', 'blog.jpg', 1, 1, '2017-12-17 19:25:51', NULL, NULL),
(606, 'Prof.', 'lhaag@gmail.com', 'blog.jpg', 4, 1, '2017-12-17 19:25:52', NULL, NULL),
(607, 'Dr.', 'kaya.ortiz@yahoo.com', 'blog.jpg', 2, 3, '2017-12-17 19:25:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `card_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`card_id`, `title`, `number`, `value`, `price`, `created_at`, `updated_at`) VALUES
(4, 'fdsfs', '12345', '2500', '15', '2017-12-26 17:37:50', '2017-12-26 17:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_ar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title_en`, `title_ar`, `content_en`, `content_ar`, `type`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'paint', 'رسم', '<p>ىرىيبؤ</p>', '<p>رىمتسيىر</p>', 'full', 12, '2017-12-26 19:15:17', '2017-12-26 19:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name_en`, `name_ar`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Business', 'أعمال', 'SU', '2017-08-10 18:38:36', '2017-08-14 12:24:32'),
(2, 'Design', 'تصميم', 'MO', '2017-08-10 18:38:36', '2017-08-18 13:29:20'),
(3, 'Management', 'إدارة', 'MNG', '2017-12-17 19:34:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name_en` varchar(200) NOT NULL,
  `name_ar` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `state_id`, `name_en`, `name_ar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 'Jablah', 'جبلة', '2017-02-21 07:43:07', NULL, NULL),
(2, 16, 'Baniyas', 'بانياس', '2017-02-21 07:43:07', NULL, NULL),
(3, 10, 'Tadmur', 'تدمر', '2017-02-21 07:43:07', NULL, NULL),
(5, 14, 'Al Qunaytirah', 'القنيطرة', '2017-02-21 07:43:07', NULL, NULL),
(6, 8, 'Ar Raqqah', 'الرقة', '2017-02-21 07:43:07', NULL, NULL),
(7, 6, 'Lattakia', 'اللاذقية', '2017-02-21 07:43:07', NULL, NULL),
(8, 15, 'As Suwayda', 'السويداء', '2017-02-21 07:43:07', NULL, NULL),
(9, 12, 'Daraa', 'درعا', '2017-02-21 07:43:07', NULL, NULL),
(10, 9, 'Dayr az Zawr', 'ديرالزور', '2017-02-21 07:43:07', NULL, NULL),
(11, 4, 'Damascus', 'دمشق', '2017-02-21 07:43:07', NULL, NULL),
(12, 2, 'Aleppo', 'حلب', '2017-02-21 07:43:07', NULL, NULL),
(13, 11, 'Hamah', 'حماه', '2017-02-21 07:43:07', NULL, NULL),
(14, 10, 'Homs', 'حمص', '2017-02-21 07:43:07', NULL, NULL),
(15, 7, 'Idlib', 'إدلب', '2017-02-21 07:43:07', NULL, NULL),
(17, 16, 'Tartus', 'طرطوس', '2017-02-21 07:43:07', NULL, NULL),
(22, 13, '-', 'الحسكة', '2017-02-21 07:43:07', NULL, NULL),
(23, 13, '-', 'القامشلي', '2017-02-21 07:43:07', NULL, NULL),
(24, 0, 'Adler/Sochi', '', '2017-02-21 07:43:07', NULL, NULL),
(25, 0, 'Agades', '', '2017-02-21 07:43:07', NULL, NULL),
(26, 0, 'Agadir', '', '2017-02-21 07:43:07', NULL, NULL),
(27, 0, 'Agana', '', '2017-02-21 07:43:07', NULL, NULL),
(28, 0, 'Aggeneys', '', '2017-02-21 07:43:07', NULL, NULL),
(29, 0, 'Aguadilla', '', '2017-02-21 07:43:07', NULL, NULL),
(30, 0, 'Aguascaliente', '', '2017-02-21 07:43:07', NULL, NULL),
(31, 0, 'Ahmedabad', '', '2017-02-21 07:43:07', NULL, NULL),
(32, 0, 'Ajaccio', '', '2017-02-21 07:43:07', NULL, NULL),
(33, 0, 'Akita', '', '2017-02-21 07:43:07', NULL, NULL),
(34, 0, 'Akron, OH', '', '2017-02-21 07:43:07', NULL, NULL),
(35, 0, 'Akrotiri - RAF', '', '2017-02-21 07:43:07', NULL, NULL),
(36, 0, 'Aktyubinsk', '', '2017-02-21 07:43:07', NULL, NULL),
(37, 0, 'Al Ain', '', '2017-02-21 07:43:07', NULL, NULL),
(38, 0, 'Al Arish', '', '2017-02-21 07:43:07', NULL, NULL),
(39, 0, 'Al Arish', '', '2017-02-21 07:43:07', NULL, NULL),
(40, 0, 'Albany', '', '2017-02-21 07:43:07', NULL, NULL),
(41, 0, 'Albany, GA', '', '2017-02-21 07:43:07', NULL, NULL),
(42, 0, 'Albany, NY', '', '2017-02-21 07:43:07', NULL, NULL),
(43, 0, 'Albi', '', '2017-02-21 07:43:07', NULL, NULL),
(44, 0, 'Alborg', '', '2017-02-21 07:43:07', NULL, NULL),
(45, 0, 'Albuquerque, NM', '', '2017-02-21 07:43:07', NULL, NULL),
(46, 0, 'Albury', '', '2017-02-21 07:43:07', NULL, NULL),
(47, 0, 'Alesund', '', '2017-02-21 07:43:07', NULL, NULL),
(48, 0, 'Alexander Bay', '', '2017-02-21 07:43:07', NULL, NULL),
(49, 0, 'Alexandria, El Nhouza Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(50, 0, 'Alexandria, La', '', '2017-02-21 07:43:07', NULL, NULL),
(51, 0, 'Alfujairah (Fujairah)', '', '2017-02-21 07:43:07', NULL, NULL),
(52, 0, 'Alghero Sassari', '', '2017-02-21 07:43:07', NULL, NULL),
(53, 0, 'Algiers', '', '2017-02-21 07:43:07', NULL, NULL),
(54, 0, 'Al Hoceima', '', '2017-02-21 07:43:07', NULL, NULL),
(55, 0, 'Alicante', '', '2017-02-21 07:43:07', NULL, NULL),
(56, 0, 'Alice Springs', '', '2017-02-21 07:43:07', NULL, NULL),
(57, 0, 'Alldays', '', '2017-02-21 07:43:07', NULL, NULL),
(58, 0, 'Allentown, PA', '', '2017-02-21 07:43:07', NULL, NULL),
(59, 0, 'Alma Ata', '', '2017-02-21 07:43:07', NULL, NULL),
(60, 0, 'Almeria', '', '2017-02-21 07:43:07', NULL, NULL),
(61, 0, 'Alta', '', '2017-02-21 07:43:07', NULL, NULL),
(62, 0, 'Altenrhein', '', '2017-02-21 07:43:07', NULL, NULL),
(63, 0, 'Altoona, PA', '', '2017-02-21 07:43:07', NULL, NULL),
(64, 0, 'Amami', '', '2017-02-21 07:43:07', NULL, NULL),
(65, 0, 'Amarillo, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(66, 0, 'Amman, Queen Alia Intl', '', '2017-02-21 07:43:07', NULL, NULL),
(67, 0, 'Amman, Civil - Marka Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(68, 0, 'Amritsar', '', '2017-02-21 07:43:07', NULL, NULL),
(69, 0, 'Amsterdam, Schiphol', '', '2017-02-21 07:43:07', NULL, NULL),
(70, 0, 'Anand', '', '2017-02-21 07:43:07', NULL, NULL),
(71, 0, 'Anchorage, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(72, 0, 'Ancona', '', '2017-02-21 07:43:07', NULL, NULL),
(73, 0, 'Andorra La Vella H/P', '', '2017-02-21 07:43:07', NULL, NULL),
(74, 0, 'Anguilla', '', '2017-02-21 07:43:07', NULL, NULL),
(75, 0, 'Anjouan', '', '2017-02-21 07:43:07', NULL, NULL),
(76, 0, 'Ankara', '', '2017-02-21 07:43:07', NULL, NULL),
(77, 0, 'Annaba', '', '2017-02-21 07:43:07', NULL, NULL),
(78, 0, 'Ann Arbor, MI', '', '2017-02-21 07:43:07', NULL, NULL),
(79, 0, 'Annecy', '', '2017-02-21 07:43:07', NULL, NULL),
(80, 0, 'Anniston, AL', '', '2017-02-21 07:43:07', NULL, NULL),
(81, 0, 'Antalya', '', '2017-02-21 07:43:07', NULL, NULL),
(82, 0, 'Antananarivo (Tanannarive)', '', '2017-02-21 07:43:07', NULL, NULL),
(83, 0, 'Antigua', '', '2017-02-21 07:43:07', NULL, NULL),
(84, 0, 'Antwerp', '', '2017-02-21 07:43:07', NULL, NULL),
(85, 0, 'Aomori', '', '2017-02-21 07:43:07', NULL, NULL),
(86, 0, 'Apia', '', '2017-02-21 07:43:07', NULL, NULL),
(87, 0, 'Appelton/Neenah/Menasha, WI', '', '2017-02-21 07:43:07', NULL, NULL),
(88, 0, 'Aqaba', '', '2017-02-21 07:43:07', NULL, NULL),
(89, 0, 'Aracaju', '', '2017-02-21 07:43:07', NULL, NULL),
(90, 0, 'Arkhangelsk', '', '2017-02-21 07:43:07', NULL, NULL),
(91, 0, 'Arusha', '', '2017-02-21 07:43:07', NULL, NULL),
(92, 0, 'Araxos', '', '2017-02-21 07:43:07', NULL, NULL),
(93, 0, 'Arlit', '', '2017-02-21 07:43:07', NULL, NULL),
(94, 0, 'Armenia', '', '2017-02-21 07:43:07', NULL, NULL),
(95, 0, 'Arrecife/Lanzarote', '', '2017-02-21 07:43:07', NULL, NULL),
(96, 0, 'Aruba', '', '2017-02-21 07:43:07', NULL, NULL),
(97, 0, 'Asheville, NC', '', '2017-02-21 07:43:07', NULL, NULL),
(98, 0, 'Ashgabat, Ashkhabat', '', '2017-02-21 07:43:07', NULL, NULL),
(99, 0, 'Aspen Snowmass, CO', '', '2017-02-21 07:43:07', NULL, NULL),
(100, 0, 'Assiut', '', '2017-02-21 07:43:07', NULL, NULL),
(101, 0, 'Astana', '', '2017-02-21 07:43:07', NULL, NULL),
(102, 0, 'Asuncion', '', '2017-02-21 07:43:07', NULL, NULL),
(103, 0, 'Aswan, Daraw Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(104, 0, 'Athens', '', '2017-02-21 07:43:07', NULL, NULL),
(105, 0, 'Athens, Hellinikon Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(106, 0, 'Athens, GA', '', '2017-02-21 07:43:07', NULL, NULL),
(107, 0, 'Athens, OH', '', '2017-02-21 07:43:07', NULL, NULL),
(108, 0, 'Atlanta, Hartsfield Atlanta Int\'l Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(109, 0, 'Atlantic City, NJ', '', '2017-02-21 07:43:07', NULL, NULL),
(110, 0, 'Attawapiskat, NT', '', '2017-02-21 07:43:07', NULL, NULL),
(111, 0, 'Auckland', '', '2017-02-21 07:43:07', NULL, NULL),
(112, 0, 'Augsburg', '', '2017-02-21 07:43:07', NULL, NULL),
(113, 0, 'Augusta, GA', '', '2017-02-21 07:43:07', NULL, NULL),
(114, 0, 'Augusta, ME', '', '2017-02-21 07:43:07', NULL, NULL),
(115, 0, 'Aurillac', '', '2017-02-21 07:43:07', NULL, NULL),
(116, 0, 'Austin, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(117, 0, 'Ayers Rock', '', '2017-02-21 07:43:07', NULL, NULL),
(118, 0, 'Ayr', '', '2017-02-21 07:43:07', NULL, NULL),
(119, 0, 'Badajoz', '', '2017-02-21 07:43:07', NULL, NULL),
(120, 0, 'Bagdad, Al Muthana', '', '2017-02-21 07:43:07', NULL, NULL),
(121, 0, 'Bagdad, Saddam International', '', '2017-02-21 07:43:07', NULL, NULL),
(122, 0, 'Bagdogra', '', '2017-02-21 07:43:07', NULL, NULL),
(123, 0, 'Bahawalpur', '', '2017-02-21 07:43:07', NULL, NULL),
(124, 0, 'Bahrain', '', '2017-02-21 07:43:07', NULL, NULL),
(125, 0, 'Bakersfield, CA', '', '2017-02-21 07:43:07', NULL, NULL),
(126, 0, 'Baku', '', '2017-02-21 07:43:07', NULL, NULL),
(127, 0, 'Ballina', '', '2017-02-21 07:43:07', NULL, NULL),
(128, 0, 'Baltimore Washington Int\'l Airport; MD', '', '2017-02-21 07:43:07', NULL, NULL),
(129, 0, 'Bamaga', '', '2017-02-21 07:43:07', NULL, NULL),
(130, 0, 'Bamako', '', '2017-02-21 07:43:07', NULL, NULL),
(131, 0, 'Bambari', '', '2017-02-21 07:43:07', NULL, NULL),
(132, 0, 'Bandar Seri Begawan', '', '2017-02-21 07:43:07', NULL, NULL),
(133, 0, 'Bangalore', '', '2017-02-21 07:43:07', NULL, NULL),
(134, 0, 'Bangassou', '', '2017-02-21 07:43:07', NULL, NULL),
(135, 0, 'Bangkok', '', '2017-02-21 07:43:07', NULL, NULL),
(136, 0, 'Bangor, ME', '', '2017-02-21 07:43:07', NULL, NULL),
(137, 0, 'Bangui', '', '2017-02-21 07:43:07', NULL, NULL),
(138, 0, 'Banjul', '', '2017-02-21 07:43:07', NULL, NULL),
(139, 0, 'Bannu', '', '2017-02-21 07:43:07', NULL, NULL),
(140, 0, 'Barcelona', '', '2017-02-21 07:43:07', NULL, NULL),
(141, 0, 'Barcelona', '', '2017-02-21 07:43:07', NULL, NULL),
(142, 0, 'Bardufoss', '', '2017-02-21 07:43:07', NULL, NULL),
(143, 0, 'Bari', '', '2017-02-21 07:43:07', NULL, NULL),
(144, 0, 'Barisal', '', '2017-02-21 07:43:07', NULL, NULL),
(145, 0, 'Baronda', '', '2017-02-21 07:43:07', NULL, NULL),
(146, 0, 'Barranquilla', '', '2017-02-21 07:43:07', NULL, NULL),
(147, 0, 'Basel', '', '2017-02-21 07:43:07', NULL, NULL),
(148, 0, 'Basel/Mulhouse', '', '2017-02-21 07:43:07', NULL, NULL),
(149, 0, 'Basra, Basrah', '', '2017-02-21 07:43:07', NULL, NULL),
(150, 0, 'Bastia', '', '2017-02-21 07:43:07', NULL, NULL),
(151, 0, 'Baton Rouge, La', '', '2017-02-21 07:43:07', NULL, NULL),
(152, 0, 'Bayreuth', '', '2017-02-21 07:43:07', NULL, NULL),
(153, 0, 'Beaumont/Pt. Arthur, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(154, 0, 'Beckley, WV', '', '2017-02-21 07:43:07', NULL, NULL),
(155, 0, 'Beef Island', '', '2017-02-21 07:43:07', NULL, NULL),
(156, 0, 'Beijing', '', '2017-02-21 07:43:07', NULL, NULL),
(157, 0, 'Beijing - Nanyuan Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(158, 0, 'Beira', '', '2017-02-21 07:43:07', NULL, NULL),
(159, 0, 'Beirut', '', '2017-02-21 07:43:07', NULL, NULL),
(160, 0, 'Belem', '', '2017-02-21 07:43:07', NULL, NULL),
(161, 0, 'Belfast - Harbour', '', '2017-02-21 07:43:07', NULL, NULL),
(162, 0, 'Belfast International', '', '2017-02-21 07:43:07', NULL, NULL),
(163, 0, 'Belgaum', '', '2017-02-21 07:43:07', NULL, NULL),
(164, 0, 'Belgrad (Beograd)', '', '2017-02-21 07:43:07', NULL, NULL),
(165, 0, 'Belize City', '', '2017-02-21 07:43:07', NULL, NULL),
(166, 0, 'Bellingham, WA', '', '2017-02-21 07:43:07', NULL, NULL),
(167, 0, 'Belo Horizonte', '', '2017-02-21 07:43:07', NULL, NULL),
(168, 0, 'Bemidji, MN', '', '2017-02-21 07:43:07', NULL, NULL),
(169, 0, 'Bengasi', '', '2017-02-21 07:43:07', NULL, NULL),
(170, 0, 'Bengueka', '', '2017-02-21 07:43:07', NULL, NULL),
(171, 0, 'Benton Harbour, MI', '', '2017-02-21 07:43:07', NULL, NULL),
(172, 0, 'Berberati', '', '2017-02-21 07:43:07', NULL, NULL),
(173, 0, 'Bergamo', '', '2017-02-21 07:43:07', NULL, NULL),
(174, 0, 'Bergen', '', '2017-02-21 07:43:07', NULL, NULL),
(175, 0, 'Berlin', '', '2017-02-21 07:43:07', NULL, NULL),
(176, 0, 'Berlin, Schoenefeld', '', '2017-02-21 07:43:07', NULL, NULL),
(177, 0, 'Berlin, Tegel', '', '2017-02-21 07:43:07', NULL, NULL),
(178, 0, 'Berlin, Tempelhof', '', '2017-02-21 07:43:07', NULL, NULL),
(179, 0, 'Bermuda', '', '2017-02-21 07:43:07', NULL, NULL),
(180, 0, 'Bern', '', '2017-02-21 07:43:07', NULL, NULL),
(181, 0, 'Bern', '', '2017-02-21 07:43:07', NULL, NULL),
(182, 0, 'Bethel, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(183, 0, 'Bhopal', '', '2017-02-21 07:43:07', NULL, NULL),
(184, 0, 'Bhubaneswar', '', '2017-02-21 07:43:07', NULL, NULL),
(185, 0, 'Biarritz', '', '2017-02-21 07:43:07', NULL, NULL),
(186, 0, 'Bilbao', '', '2017-02-21 07:43:07', NULL, NULL),
(187, 0, 'Billings, MT', '', '2017-02-21 07:43:07', NULL, NULL),
(188, 0, 'Billund', '', '2017-02-21 07:43:07', NULL, NULL),
(189, 0, 'Bintulu', '', '2017-02-21 07:43:07', NULL, NULL),
(190, 0, 'Biraro', '', '2017-02-21 07:43:07', NULL, NULL),
(191, 0, 'Birmingham', '', '2017-02-21 07:43:07', NULL, NULL),
(192, 0, 'Birmingham, AL', '', '2017-02-21 07:43:07', NULL, NULL),
(193, 0, 'Bismarck/Mandan, ND', '', '2017-02-21 07:43:07', NULL, NULL),
(194, 0, 'Bissau', '', '2017-02-21 07:43:07', NULL, NULL),
(195, 0, 'Blackwater', '', '2017-02-21 07:43:07', NULL, NULL),
(196, 0, 'Blantyre', '', '2017-02-21 07:43:07', NULL, NULL),
(197, 0, 'Blenheim', '', '2017-02-21 07:43:07', NULL, NULL),
(198, 0, 'Bloemfontein', '', '2017-02-21 07:43:07', NULL, NULL),
(199, 0, 'Bloomington, IL', '', '2017-02-21 07:43:07', NULL, NULL),
(200, 0, 'Bloomington, IN', '', '2017-02-21 07:43:07', NULL, NULL),
(201, 0, 'Bluefield, WV', '', '2017-02-21 07:43:07', NULL, NULL),
(202, 0, 'Boa Vista', '', '2017-02-21 07:43:07', NULL, NULL),
(203, 0, 'Bobo/Dioulasso', '', '2017-02-21 07:43:07', NULL, NULL),
(204, 0, 'Bodo', '', '2017-02-21 07:43:07', NULL, NULL),
(205, 0, 'Bogota', '', '2017-02-21 07:43:07', NULL, NULL),
(206, 0, 'Boise, ID', '', '2017-02-21 07:43:07', NULL, NULL),
(207, 0, 'Bologna', '', '2017-02-21 07:43:07', NULL, NULL),
(208, 0, 'Bombay', '', '2017-02-21 07:43:07', NULL, NULL),
(209, 0, 'Bonaire', '', '2017-02-21 07:43:07', NULL, NULL),
(210, 0, 'Bonaventure, PQ', '', '2017-02-21 07:43:07', NULL, NULL),
(211, 0, 'Bora Bora', '', '2017-02-21 07:43:07', NULL, NULL),
(212, 0, 'Bordeaux', '', '2017-02-21 07:43:07', NULL, NULL),
(213, 0, 'Borg El Arab Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(214, 0, 'Borrego Springs, CA', '', '2017-02-21 07:43:07', NULL, NULL),
(215, 0, 'Boston - Logan, MA', '', '2017-02-21 07:43:07', NULL, NULL),
(216, 0, 'Bouake', '', '2017-02-21 07:43:07', NULL, NULL),
(217, 0, 'Bourgas/Burgas', '', '2017-02-21 07:43:07', NULL, NULL),
(218, 0, 'Bowen', '', '2017-02-21 07:43:07', NULL, NULL),
(219, 0, 'Bozeman, MT', '', '2017-02-21 07:43:07', NULL, NULL),
(220, 0, 'Bradford/Warren, PA/Olean, NY', '', '2017-02-21 07:43:07', NULL, NULL),
(221, 0, 'Brainerd, MN', '', '2017-02-21 07:43:07', NULL, NULL),
(222, 0, 'Brampton Island', '', '2017-02-21 07:43:07', NULL, NULL),
(223, 0, 'Brasilia', '', '2017-02-21 07:43:07', NULL, NULL),
(224, 0, 'Bratislava', '', '2017-02-21 07:43:07', NULL, NULL),
(225, 0, 'Brazzaville', '', '2017-02-21 07:43:07', NULL, NULL),
(226, 0, 'Bremen', '', '2017-02-21 07:43:07', NULL, NULL),
(227, 0, 'Brescia, Montichiari', '', '2017-02-21 07:43:07', NULL, NULL),
(228, 0, 'Brest', '', '2017-02-21 07:43:07', NULL, NULL),
(229, 0, 'Bria', '', '2017-02-21 07:43:07', NULL, NULL),
(230, 0, 'Bridgeport, CT', '', '2017-02-21 07:43:07', NULL, NULL),
(231, 0, 'Bridgetown, Grantley Adams Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(232, 0, 'Brindisi', '', '2017-02-21 07:43:07', NULL, NULL),
(233, 0, 'Brisbane', '', '2017-02-21 07:43:07', NULL, NULL),
(234, 0, 'Bristol', '', '2017-02-21 07:43:07', NULL, NULL),
(235, 0, 'Broennoeysund', '', '2017-02-21 07:43:07', NULL, NULL),
(236, 0, 'Broken Hill', '', '2017-02-21 07:43:07', NULL, NULL),
(237, 0, 'Brookings, SD', '', '2017-02-21 07:43:07', NULL, NULL),
(238, 0, 'Broome', '', '2017-02-21 07:43:07', NULL, NULL),
(239, 0, 'Brunswick, GA', '', '2017-02-21 07:43:07', NULL, NULL),
(240, 0, 'Brussels', '', '2017-02-21 07:43:07', NULL, NULL),
(241, 0, 'Bucaramanga', '', '2017-02-21 07:43:07', NULL, NULL),
(242, 0, 'Budapest, Ferihegy', '', '2017-02-21 07:43:07', NULL, NULL),
(243, 0, 'Buenos Aires', '', '2017-02-21 07:43:07', NULL, NULL),
(244, 0, 'Buenos Aires, Ezeiza Int\'l Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(245, 0, 'Buenos Aires, Jorge Newbery', '', '2017-02-21 07:43:07', NULL, NULL),
(246, 0, 'Buffalo Range', '', '2017-02-21 07:43:07', NULL, NULL),
(247, 0, 'Buffalo/Niagara Falls, NY', '', '2017-02-21 07:43:07', NULL, NULL),
(248, 0, 'Bujumbura', '', '2017-02-21 07:43:07', NULL, NULL),
(249, 0, 'Bucharest', '', '2017-02-21 07:43:07', NULL, NULL),
(250, 0, 'Bucharest, Otopeni', '', '2017-02-21 07:43:07', NULL, NULL),
(251, 0, 'Bulawayo', '', '2017-02-21 07:43:07', NULL, NULL),
(252, 0, 'Bullhead City, NV', '', '2017-02-21 07:43:07', NULL, NULL),
(253, 0, 'Bundaberg', '', '2017-02-21 07:43:07', NULL, NULL),
(254, 0, 'Burbank, CA', '', '2017-02-21 07:43:07', NULL, NULL),
(255, 0, 'Burlington, IA', '', '2017-02-21 07:43:07', NULL, NULL),
(256, 0, 'Burlington, VT', '', '2017-02-21 07:43:07', NULL, NULL),
(257, 0, 'Burnie (Wynyard)', '', '2017-02-21 07:43:07', NULL, NULL),
(258, 0, 'Butte, MT', '', '2017-02-21 07:43:07', NULL, NULL),
(259, 0, 'Cabinda', '', '2017-02-21 07:43:07', NULL, NULL),
(260, 0, 'Cagliari', '', '2017-02-21 07:43:07', NULL, NULL),
(261, 0, 'Cairns', '', '2017-02-21 07:43:07', NULL, NULL),
(262, 0, 'Cairo Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(263, 0, 'Calcutta (Kolkata) - Netaji Subhas Chandra', '', '2017-02-21 07:43:07', NULL, NULL),
(264, 0, 'Komatsu', '', '2017-02-21 07:43:07', NULL, NULL),
(265, 0, 'Calgary/Banff', '', '2017-02-21 07:43:07', NULL, NULL),
(266, 0, 'Cali', '', '2017-02-21 07:43:07', NULL, NULL),
(267, 0, 'Calicut', '', '2017-02-21 07:43:07', NULL, NULL),
(268, 0, 'Calvi', '', '2017-02-21 07:43:07', NULL, NULL),
(269, 0, 'Cambridge Bay', '', '2017-02-21 07:43:07', NULL, NULL),
(270, 0, 'Cambrigde', '', '2017-02-21 07:43:07', NULL, NULL),
(271, 0, 'Campo Grande', '', '2017-02-21 07:43:07', NULL, NULL),
(272, 0, 'Canberra', '', '2017-02-21 07:43:07', NULL, NULL),
(273, 0, 'Cancun', '', '2017-02-21 07:43:07', NULL, NULL),
(274, 0, 'Cape Town', '', '2017-02-21 07:43:07', NULL, NULL),
(275, 0, 'Caracas', '', '2017-02-21 07:43:07', NULL, NULL),
(276, 0, 'Cardiff', '', '2017-02-21 07:43:07', NULL, NULL),
(277, 0, 'Carlsbad, CA', '', '2017-02-21 07:43:07', NULL, NULL),
(278, 0, 'Carnarvon', '', '2017-02-21 07:43:07', NULL, NULL),
(279, 0, 'Carnot', '', '2017-02-21 07:43:07', NULL, NULL),
(280, 0, 'Casa de Campo/La Romana', '', '2017-02-21 07:43:07', NULL, NULL),
(281, 0, 'Casablanca', '', '2017-02-21 07:43:07', NULL, NULL),
(282, 0, 'Casablanca, Mohamed V', '', '2017-02-21 07:43:07', NULL, NULL),
(283, 0, 'Casino', '', '2017-02-21 07:43:07', NULL, NULL),
(284, 0, 'Casper, WY', '', '2017-02-21 07:43:07', NULL, NULL),
(285, 0, 'Catagena', '', '2017-02-21 07:43:07', NULL, NULL),
(286, 0, 'Catania', '', '2017-02-21 07:43:07', NULL, NULL),
(287, 0, 'Cayenne', '', '2017-02-21 07:43:07', NULL, NULL),
(288, 0, 'Cebu', '', '2017-02-21 07:43:07', NULL, NULL),
(289, 0, 'Cedar City, UT', '', '2017-02-21 07:43:07', NULL, NULL),
(290, 0, 'Cedar Rapids, IA', '', '2017-02-21 07:43:07', NULL, NULL),
(291, 0, 'Ceduna', '', '2017-02-21 07:43:07', NULL, NULL),
(292, 0, 'Cessnock', '', '2017-02-21 07:43:07', NULL, NULL),
(293, 0, 'Chabarovsk (Khabarovsk)', '', '2017-02-21 07:43:07', NULL, NULL),
(294, 0, 'Chambery', '', '2017-02-21 07:43:07', NULL, NULL),
(295, 0, 'Champaign, IL', '', '2017-02-21 07:43:07', NULL, NULL),
(296, 0, 'Chandigarh', '', '2017-02-21 07:43:07', NULL, NULL),
(297, 0, 'Changchun', '', '2017-02-21 07:43:07', NULL, NULL),
(298, 0, 'Chania', '', '2017-02-21 07:43:07', NULL, NULL),
(299, 0, 'Charleston, SC', '', '2017-02-21 07:43:07', NULL, NULL),
(300, 0, 'Charleston, WV', '', '2017-02-21 07:43:07', NULL, NULL),
(301, 0, 'Charlotte, NC', '', '2017-02-21 07:43:07', NULL, NULL),
(302, 0, 'Charlottesville, VA', '', '2017-02-21 07:43:07', NULL, NULL),
(303, 0, 'Charters Towers', '', '2017-02-21 07:43:07', NULL, NULL),
(304, 0, 'Chattanooga, TN', '', '2017-02-21 07:43:07', NULL, NULL),
(305, 0, 'Chengdu', '', '2017-02-21 07:43:07', NULL, NULL),
(306, 0, 'Chennai (Madras)', '', '2017-02-21 07:43:07', NULL, NULL),
(307, 0, 'Cheyenne, WY', '', '2017-02-21 07:43:07', NULL, NULL),
(308, 0, 'Chiang Mai', '', '2017-02-21 07:43:07', NULL, NULL),
(309, 0, 'Chiba City', '', '2017-02-21 07:43:07', NULL, NULL),
(310, 0, 'Chicago, Midway, IL', '', '2017-02-21 07:43:07', NULL, NULL),
(311, 0, 'Chicago O\'Hare Int\'l Airport, IL', '', '2017-02-21 07:43:06', NULL, NULL),
(312, 0, 'Chicago, IL', '', '2017-02-21 07:43:07', NULL, NULL),
(313, 0, 'Chichen Itza', '', '2017-02-21 07:43:07', NULL, NULL),
(314, 0, 'Chico, CA', '', '2017-02-21 07:43:07', NULL, NULL),
(315, 0, 'Chihuahua, Gen Fierro Villalobos', '', '2017-02-21 07:43:07', NULL, NULL),
(316, 0, 'Chios', '', '2017-02-21 07:43:07', NULL, NULL),
(317, 0, 'Chipata', '', '2017-02-21 07:43:07', NULL, NULL),
(318, 0, 'Chita (Tschita)', '', '2017-02-21 07:43:07', NULL, NULL),
(319, 0, 'Chitose', '', '2017-02-21 07:43:07', NULL, NULL),
(320, 0, 'Chitral', '', '2017-02-21 07:43:07', NULL, NULL),
(321, 0, 'Chittagong', '', '2017-02-21 07:43:07', NULL, NULL),
(322, 0, 'Chongqing', '', '2017-02-21 07:43:07', NULL, NULL),
(323, 0, 'Christchurch', '', '2017-02-21 07:43:07', NULL, NULL),
(324, 0, 'Christmas Line', '', '2017-02-21 07:43:07', NULL, NULL),
(325, 0, 'Chub Cay', '', '2017-02-21 07:43:07', NULL, NULL),
(326, 0, 'Churchill', '', '2017-02-21 07:43:07', NULL, NULL),
(327, 0, 'Cienfuegos', '', '2017-02-21 07:43:07', NULL, NULL),
(328, 0, 'Cincinnati, OH', '', '2017-02-21 07:43:07', NULL, NULL),
(329, 0, 'Ciudad Del Carmen', '', '2017-02-21 07:43:07', NULL, NULL),
(330, 0, 'Ciudad Juarez', '', '2017-02-21 07:43:07', NULL, NULL),
(331, 0, 'Ciudad Obregon', '', '2017-02-21 07:43:07', NULL, NULL),
(332, 0, 'Ciudad Victoria', '', '2017-02-21 07:43:07', NULL, NULL),
(333, 0, 'Clarksburg, WV', '', '2017-02-21 07:43:07', NULL, NULL),
(334, 0, 'Clermont', '', '2017-02-21 07:43:07', NULL, NULL),
(335, 0, 'Clermont Ferrand', '', '2017-02-21 07:43:07', NULL, NULL),
(336, 0, 'Cleveland, Burke Lakefront, OH', '', '2017-02-21 07:43:07', NULL, NULL),
(337, 0, 'Cleveland, Hopkins, OH', '', '2017-02-21 07:43:07', NULL, NULL),
(338, 0, 'Cochabamba', '', '2017-02-21 07:43:07', NULL, NULL),
(339, 0, 'Cochin', '', '2017-02-21 07:43:07', NULL, NULL),
(340, 0, 'Cody/Powell/Yellowstone, WY', '', '2017-02-21 07:43:07', NULL, NULL),
(341, 0, 'Coffmann Cove, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(342, 0, 'Coffs Harbour', '', '2017-02-21 07:43:07', NULL, NULL),
(343, 0, 'Coimbatore', '', '2017-02-21 07:43:07', NULL, NULL),
(344, 0, 'Colima', '', '2017-02-21 07:43:07', NULL, NULL),
(345, 0, 'College Station/Bryan, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(346, 0, 'Collinsville', '', '2017-02-21 07:43:07', NULL, NULL),
(347, 0, 'Cologne (Koeln)/Bonn', '', '2017-02-21 07:43:07', NULL, NULL),
(348, 0, 'Colombo', '', '2017-02-21 07:43:07', NULL, NULL),
(349, 0, 'Colorado Springs, CO', '', '2017-02-21 07:43:07', NULL, NULL),
(350, 0, 'Columbia, SC', '', '2017-02-21 07:43:07', NULL, NULL),
(351, 0, 'Columbus, GA', '', '2017-02-21 07:43:07', NULL, NULL),
(352, 0, 'Columbus, OH', '', '2017-02-21 07:43:07', NULL, NULL),
(353, 0, 'Conakry', '', '2017-02-21 07:43:07', NULL, NULL),
(354, 0, 'Concord, CA', '', '2017-02-21 07:43:07', NULL, NULL),
(355, 0, 'Constantine', '', '2017-02-21 07:43:07', NULL, NULL),
(356, 0, 'Constanza', '', '2017-02-21 07:43:07', NULL, NULL),
(357, 0, 'Coober Pedy', '', '2017-02-21 07:43:07', NULL, NULL),
(358, 0, 'Cooktown', '', '2017-02-21 07:43:07', NULL, NULL),
(359, 0, 'Cooma', '', '2017-02-21 07:43:07', NULL, NULL),
(360, 0, 'Copenhagen', '', '2017-02-21 07:43:07', NULL, NULL),
(361, 0, 'Cordoba', '', '2017-02-21 07:43:07', NULL, NULL),
(362, 0, 'Cordoba', '', '2017-02-21 07:43:07', NULL, NULL),
(363, 0, 'Cordova, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(364, 0, 'Corfu', '', '2017-02-21 07:43:07', NULL, NULL),
(365, 0, 'Cork', '', '2017-02-21 07:43:07', NULL, NULL),
(366, 0, 'Corpus Christi, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(367, 0, 'Cotonou', '', '2017-02-21 07:43:07', NULL, NULL),
(368, 0, 'Cozmel', '', '2017-02-21 07:43:07', NULL, NULL),
(369, 0, 'Craig, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(370, 0, 'Crescent City, CA', '', '2017-02-21 07:43:07', NULL, NULL),
(371, 0, 'Cuiaba', '', '2017-02-21 07:43:07', NULL, NULL),
(372, 0, 'Culiacan', '', '2017-02-21 07:43:07', NULL, NULL),
(373, 0, 'Curacao', '', '2017-02-21 07:43:07', NULL, NULL),
(374, 0, 'Curitiba', '', '2017-02-21 07:43:07', NULL, NULL),
(375, 0, 'Dakar', '', '2017-02-21 07:43:07', NULL, NULL),
(376, 0, 'Dalaman', '', '2017-02-21 07:43:07', NULL, NULL),
(377, 0, 'Dalby', '', '2017-02-21 07:43:07', NULL, NULL),
(378, 0, 'Dalian', '', '2017-02-21 07:43:07', NULL, NULL),
(379, 0, 'Dallas, Love Field, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(380, 0, 'Dallas/Ft. Worth, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(381, 0, 'Daloa', '', '2017-02-21 07:43:07', NULL, NULL),
(382, 0, 'Dammam, King Fahad Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(383, 0, 'Danville, VA', '', '2017-02-21 07:43:07', NULL, NULL),
(384, 0, 'Dar es Salam (Daressalam)', '', '2017-02-21 07:43:07', NULL, NULL),
(385, 0, 'Darwin', '', '2017-02-21 07:43:07', NULL, NULL),
(386, 0, 'Daydream Island', '', '2017-02-21 07:43:07', NULL, NULL),
(387, 0, 'Dayton, OH', '', '2017-02-21 07:43:07', NULL, NULL),
(388, 0, 'Daytona Beach, FL', '', '2017-02-21 07:43:07', NULL, NULL),
(389, 0, 'Decatur, IL', '', '2017-02-21 07:43:07', NULL, NULL),
(390, 0, 'Deer Lake/Corner Brook', '', '2017-02-21 07:43:07', NULL, NULL),
(391, 0, 'Delhi, Indira Gandhi', '', '2017-02-21 07:43:07', NULL, NULL),
(392, 0, 'Den Haag (The Hague)', '', '2017-02-21 07:43:07', NULL, NULL),
(393, 0, 'Denpasar/Bali', '', '2017-02-21 07:43:07', NULL, NULL),
(394, 0, 'Denver International Airport, CO', '', '2017-02-21 07:43:07', NULL, NULL),
(395, 0, 'Dera Ismail Khan', '', '2017-02-21 07:43:07', NULL, NULL),
(396, 0, 'Derby', '', '2017-02-21 07:43:07', NULL, NULL),
(397, 0, 'Derby (East Midlands)', '', '2017-02-21 07:43:07', NULL, NULL),
(398, 0, 'Derry (Londonderry)', '', '2017-02-21 07:43:07', NULL, NULL),
(399, 0, 'Des Moines, IA', '', '2017-02-21 07:43:07', NULL, NULL),
(400, 0, 'Detroit City, MI', '', '2017-02-21 07:43:07', NULL, NULL),
(401, 0, 'Detroit Metropolitan Wayne County Airport, MI', '', '2017-02-21 07:43:07', NULL, NULL),
(402, 0, 'Detroit Metropolitan Area, MI', '', '2017-02-21 07:43:07', NULL, NULL),
(403, 0, 'Devils Lake, ND', '', '2017-02-21 07:43:07', NULL, NULL),
(404, 0, 'Devonport', '', '2017-02-21 07:43:07', NULL, NULL),
(405, 0, 'Dhahran', '', '2017-02-21 07:43:07', NULL, NULL),
(406, 0, 'Dhaka', '', '2017-02-21 07:43:07', NULL, NULL),
(407, 0, 'Dillingham, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(408, 0, 'Dinard', '', '2017-02-21 07:43:07', NULL, NULL),
(409, 0, 'Djerba', '', '2017-02-21 07:43:07', NULL, NULL),
(410, 0, 'Djibouti', '', '2017-02-21 07:43:07', NULL, NULL),
(411, 0, 'Doha', '', '2017-02-21 07:43:07', NULL, NULL),
(412, 0, 'Doncaster, Robin Hood Int\'l Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(413, 0, 'Dongguan', '', '2017-02-21 07:43:07', NULL, NULL),
(414, 0, 'Dortmund', '', '2017-02-21 07:43:07', NULL, NULL),
(415, 0, 'Dothan, AL', '', '2017-02-21 07:43:07', NULL, NULL),
(416, 0, 'Douala', '', '2017-02-21 07:43:07', NULL, NULL),
(417, 0, 'Dresden', '', '2017-02-21 07:43:07', NULL, NULL),
(418, 0, 'Dubai', '', '2017-02-21 07:43:07', NULL, NULL),
(419, 0, 'Dubbo', '', '2017-02-21 07:43:07', NULL, NULL),
(420, 0, 'Dublin', '', '2017-02-21 07:43:07', NULL, NULL),
(421, 0, 'Dubois, PA', '', '2017-02-21 07:43:07', NULL, NULL),
(422, 0, 'Dubrovnik', '', '2017-02-21 07:43:07', NULL, NULL),
(423, 0, 'Dubuque, IA', '', '2017-02-21 07:43:07', NULL, NULL),
(424, 0, 'Duesseldorf', '', '2017-02-21 07:43:07', NULL, NULL),
(425, 0, 'Duluth, MN/Superior, WI', '', '2017-02-21 07:43:07', NULL, NULL),
(426, 0, 'Dunedin', '', '2017-02-21 07:43:07', NULL, NULL),
(427, 0, 'Dunk Iceland', '', '2017-02-21 07:43:07', NULL, NULL),
(428, 0, 'Durango, CO', '', '2017-02-21 07:43:07', NULL, NULL),
(429, 0, 'Durban', '', '2017-02-21 07:43:07', NULL, NULL),
(430, 0, 'Dushanbe (Duschanbe)', '', '2017-02-21 07:43:07', NULL, NULL),
(431, 0, 'Dutch Harbor, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(432, 0, 'Dysart', '', '2017-02-21 07:43:07', NULL, NULL),
(433, 0, 'Dzaoudzi', '', '2017-02-21 07:43:07', NULL, NULL),
(434, 0, 'East London', '', '2017-02-21 07:43:07', NULL, NULL),
(435, 0, 'Easter Island', '', '2017-02-21 07:43:07', NULL, NULL),
(436, 0, 'Eau Clarie, WI', '', '2017-02-21 07:43:07', NULL, NULL),
(437, 0, 'Edinburgh', '', '2017-02-21 07:43:07', NULL, NULL),
(438, 0, 'Edmonton', '', '2017-02-21 07:43:07', NULL, NULL),
(439, 0, 'Edmonton, International', '', '2017-02-21 07:43:07', NULL, NULL),
(440, 0, 'Edmonton, Municipal', '', '2017-02-21 07:43:07', NULL, NULL),
(441, 0, 'Egilsstadir', '', '2017-02-21 07:43:07', NULL, NULL),
(442, 0, 'Eindhoven', '', '2017-02-21 07:43:07', NULL, NULL),
(443, 0, 'El Paso, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(444, 0, 'Elat', '', '2017-02-21 07:43:07', NULL, NULL),
(445, 0, 'Elat, Ovula', '', '2017-02-21 07:43:07', NULL, NULL),
(446, 0, 'Elkhart, IN', '', '2017-02-21 07:43:07', NULL, NULL),
(447, 0, 'Elko, NV', '', '2017-02-21 07:43:07', NULL, NULL),
(448, 0, 'Ellisras', '', '2017-02-21 07:43:07', NULL, NULL),
(449, 0, 'El Minya', '', '2017-02-21 07:43:07', NULL, NULL),
(450, 0, 'Elmira, NY', '', '2017-02-21 07:43:07', NULL, NULL),
(451, 0, 'Ely, NV', '', '2017-02-21 07:43:07', NULL, NULL),
(452, 0, 'Emerald', '', '2017-02-21 07:43:07', NULL, NULL),
(453, 0, 'Emerald', '', '2017-02-21 07:43:07', NULL, NULL),
(454, 0, 'Enontekioe', '', '2017-02-21 07:43:07', NULL, NULL),
(455, 0, 'Entebbe', '', '2017-02-21 07:43:07', NULL, NULL),
(456, 0, 'Erfurt', '', '2017-02-21 07:43:07', NULL, NULL),
(457, 0, 'Erie, PA', '', '2017-02-21 07:43:07', NULL, NULL),
(458, 0, 'Eriwan (Yerevan, Jerevan)', '', '2017-02-21 07:43:07', NULL, NULL),
(459, 0, 'Esbjerg', '', '2017-02-21 07:43:07', NULL, NULL),
(460, 0, 'Escabana, MI', '', '2017-02-21 07:43:07', NULL, NULL),
(461, 0, 'Esperance', '', '2017-02-21 07:43:07', NULL, NULL),
(462, 0, 'Eugene, OR', '', '2017-02-21 07:43:07', NULL, NULL),
(463, 0, 'Eureka, CA', '', '2017-02-21 07:43:07', NULL, NULL),
(464, 0, 'Evansville, IN', '', '2017-02-21 07:43:07', NULL, NULL),
(465, 0, 'Evenes', '', '2017-02-21 07:43:07', NULL, NULL),
(466, 0, 'Fairbanks, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(467, 0, 'Faisalabad', '', '2017-02-21 07:43:07', NULL, NULL),
(468, 0, 'Fargo, ND, MN', '', '2017-02-21 07:43:07', NULL, NULL),
(469, 0, 'Farmington, NM', '', '2017-02-21 07:43:07', NULL, NULL),
(470, 0, 'Faro', '', '2017-02-21 07:43:07', NULL, NULL),
(471, 0, 'Faroer', '', '2017-02-21 07:43:07', NULL, NULL),
(472, 0, 'Fayetteville, AR', '', '2017-02-21 07:43:07', NULL, NULL),
(473, 0, 'Fayetteville/Ft. Bragg, NC', '', '2017-02-21 07:43:07', NULL, NULL),
(474, 0, 'Fes', '', '2017-02-21 07:43:07', NULL, NULL),
(475, 0, 'Figari', '', '2017-02-21 07:43:07', NULL, NULL),
(476, 0, 'Flagstaff, AZ', '', '2017-02-21 07:43:07', NULL, NULL),
(477, 0, 'Flin Flon', '', '2017-02-21 07:43:07', NULL, NULL),
(478, 0, 'Flint, MI', '', '2017-02-21 07:43:07', NULL, NULL),
(479, 0, 'Florence', '', '2017-02-21 07:43:07', NULL, NULL),
(480, 0, 'Florence, SC', '', '2017-02-21 07:43:07', NULL, NULL),
(481, 0, 'Florianopolis', '', '2017-02-21 07:43:07', NULL, NULL),
(482, 0, 'Floro', '', '2017-02-21 07:43:07', NULL, NULL),
(483, 0, 'Fort Albert', '', '2017-02-21 07:43:07', NULL, NULL),
(484, 0, 'Fort de France', '', '2017-02-21 07:43:07', NULL, NULL),
(485, 0, 'Fort Dodge, IA', '', '2017-02-21 07:43:07', NULL, NULL),
(486, 0, 'Fort Huachuca/Sierra Vista, AZ', '', '2017-02-21 07:43:07', NULL, NULL),
(487, 0, 'Fort Lauderdale/Hollywood, FL', '', '2017-02-21 07:43:07', NULL, NULL),
(488, 0, 'Fort McMurray', '', '2017-02-21 07:43:07', NULL, NULL),
(489, 0, 'Fort Myers, Metropolitan Area, FL', '', '2017-02-21 07:43:07', NULL, NULL),
(490, 0, 'Fort Myers, Southwest Florida Reg, FL', '', '2017-02-21 07:43:07', NULL, NULL),
(491, 0, 'Fort Smith', '', '2017-02-21 07:43:07', NULL, NULL),
(492, 0, 'Fort Smith, AR', '', '2017-02-21 07:43:07', NULL, NULL),
(493, 0, 'Fort St. John', '', '2017-02-21 07:43:07', NULL, NULL),
(494, 0, 'Fort Walton Beach, FL', '', '2017-02-21 07:43:07', NULL, NULL),
(495, 0, 'Fort Wayne, IN', '', '2017-02-21 07:43:07', NULL, NULL),
(496, 0, 'Fortaleza', '', '2017-02-21 07:43:07', NULL, NULL),
(497, 0, 'Francistown', '', '2017-02-21 07:43:07', NULL, NULL),
(498, 0, 'Frankfurt/Main Int\'l Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(499, 0, 'Frankfurt/Hahn', '', '2017-02-21 07:43:07', NULL, NULL),
(500, 0, 'Franklin/Oil City, PA', '', '2017-02-21 07:43:07', NULL, NULL),
(501, 0, 'Fredericton', '', '2017-02-21 07:43:07', NULL, NULL),
(502, 0, 'Freeport', '', '2017-02-21 07:43:07', NULL, NULL),
(503, 0, 'Freetown', '', '2017-02-21 07:43:07', NULL, NULL),
(504, 0, 'Frejus', '', '2017-02-21 07:43:07', NULL, NULL),
(505, 0, 'Fresno, CA', '', '2017-02-21 07:43:07', NULL, NULL),
(506, 0, 'Friedrichshafen', '', '2017-02-21 07:43:07', NULL, NULL),
(507, 0, 'Fuerteventura', '', '2017-02-21 07:43:07', NULL, NULL),
(508, 0, 'Fujairah, Int\'l Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(509, 0, 'Fukuoka', '', '2017-02-21 07:43:07', NULL, NULL),
(510, 0, 'Fukushima-shi, Fukushima Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(511, 0, 'Funchal', '', '2017-02-21 07:43:07', NULL, NULL),
(512, 0, 'Futuna', '', '2017-02-21 07:43:07', NULL, NULL),
(513, 0, 'Gaborone', '', '2017-02-21 07:43:07', NULL, NULL),
(514, 0, 'Gadsden, AL', '', '2017-02-21 07:43:07', NULL, NULL),
(515, 0, 'Gainesville, FL', '', '2017-02-21 07:43:07', NULL, NULL),
(516, 0, 'Galway', '', '2017-02-21 07:43:07', NULL, NULL),
(517, 0, 'Gander', '', '2017-02-21 07:43:07', NULL, NULL),
(518, 0, 'Garoua', '', '2017-02-21 07:43:07', NULL, NULL),
(519, 0, 'Gdansk', '', '2017-02-21 07:43:07', NULL, NULL),
(520, 0, 'Geelong', '', '2017-02-21 07:43:07', NULL, NULL),
(521, 0, 'Geneva', '', '2017-02-21 07:43:07', NULL, NULL),
(522, 0, 'Genoa', '', '2017-02-21 07:43:07', NULL, NULL),
(523, 0, 'George', '', '2017-02-21 07:43:07', NULL, NULL),
(524, 0, 'Georgetown', '', '2017-02-21 07:43:07', NULL, NULL),
(525, 0, 'Geraldton', '', '2017-02-21 07:43:07', NULL, NULL),
(526, 0, 'Gerona', '', '2017-02-21 07:43:07', NULL, NULL),
(527, 0, 'Gibraltar', '', '2017-02-21 07:43:07', NULL, NULL),
(528, 0, 'Gilette, WY', '', '2017-02-21 07:43:07', NULL, NULL),
(529, 0, 'Gilgit', '', '2017-02-21 07:43:07', NULL, NULL),
(530, 0, 'Gillam', '', '2017-02-21 07:43:07', NULL, NULL),
(531, 0, 'Gladstone', '', '2017-02-21 07:43:07', NULL, NULL),
(532, 0, 'Glasgow, Prestwick', '', '2017-02-21 07:43:07', NULL, NULL),
(533, 0, 'Glasgow', '', '2017-02-21 07:43:07', NULL, NULL),
(534, 0, 'Glasgow, MT', '', '2017-02-21 07:43:07', NULL, NULL),
(535, 0, 'Glendive, MT', '', '2017-02-21 07:43:07', NULL, NULL),
(536, 0, 'Goa', '', '2017-02-21 07:43:07', NULL, NULL),
(537, 0, 'Goiania', '', '2017-02-21 07:43:07', NULL, NULL),
(538, 0, 'Gold Coast', '', '2017-02-21 07:43:07', NULL, NULL),
(539, 0, 'Goondiwindi', '', '2017-02-21 07:43:07', NULL, NULL),
(540, 0, 'Goose Bay', '', '2017-02-21 07:43:07', NULL, NULL),
(541, 0, 'Gorna', '', '2017-02-21 07:43:07', NULL, NULL),
(542, 0, 'Goteborg', '', '2017-02-21 07:43:07', NULL, NULL),
(543, 0, 'Gove (Nhulunbuy)', '', '2017-02-21 07:43:07', NULL, NULL),
(544, 0, 'Govenors Harbour', '', '2017-02-21 07:43:07', NULL, NULL),
(545, 0, 'Granada', '', '2017-02-21 07:43:07', NULL, NULL),
(546, 0, 'Grand Bahama', '', '2017-02-21 07:43:07', NULL, NULL),
(547, 0, 'Grand Canyon, AZ', '', '2017-02-21 07:43:07', NULL, NULL),
(548, 0, 'Grand Cayman', '', '2017-02-21 07:43:07', NULL, NULL),
(549, 0, 'Grand Forks, ND', '', '2017-02-21 07:43:07', NULL, NULL),
(550, 0, 'Grand Junction, CO', '', '2017-02-21 07:43:07', NULL, NULL),
(551, 0, 'Grand Rapids, MI', '', '2017-02-21 07:43:07', NULL, NULL),
(552, 0, 'Grand Rapids, MN', '', '2017-02-21 07:43:07', NULL, NULL),
(553, 0, 'Graz', '', '2017-02-21 07:43:07', NULL, NULL),
(554, 0, 'Great Falls, MT', '', '2017-02-21 07:43:07', NULL, NULL),
(555, 0, 'Great Keppel Island', '', '2017-02-21 07:43:07', NULL, NULL),
(556, 0, 'Green Bay, WI', '', '2017-02-21 07:43:07', NULL, NULL),
(557, 0, 'Greenbrier/Lewisburg, WV', '', '2017-02-21 07:43:07', NULL, NULL),
(558, 0, 'Greensboro/Winston Salem, NC', '', '2017-02-21 07:43:07', NULL, NULL),
(559, 0, 'Greenville, MS', '', '2017-02-21 07:43:07', NULL, NULL),
(560, 0, 'Greenville, NC', '', '2017-02-21 07:43:07', NULL, NULL),
(561, 0, 'Greenville/Spartanburg, SC', '', '2017-02-21 07:43:07', NULL, NULL),
(562, 0, 'Grenada', '', '2017-02-21 07:43:07', NULL, NULL),
(563, 0, 'Grenoble', '', '2017-02-21 07:43:07', NULL, NULL),
(564, 0, 'Griffith', '', '2017-02-21 07:43:07', NULL, NULL),
(565, 0, 'Groote Eyeland', '', '2017-02-21 07:43:07', NULL, NULL),
(566, 0, 'Groote Eylandt', '', '2017-02-21 07:43:07', NULL, NULL),
(567, 0, 'Groton/New London, CT', '', '2017-02-21 07:43:07', NULL, NULL),
(568, 0, 'Guadalajara', '', '2017-02-21 07:43:07', NULL, NULL),
(569, 0, 'Guadalcanal', '', '2017-02-21 07:43:07', NULL, NULL),
(570, 0, 'Guam', '', '2017-02-21 07:43:07', NULL, NULL),
(571, 0, 'Guangzhou (Canton) - Baiyun (White Cloud)', '', '2017-02-21 07:43:07', NULL, NULL),
(572, 0, 'Guarulhos Int\'l - Sao Paulo', '', '2017-02-21 07:43:07', NULL, NULL),
(573, 0, 'Guatemala City', '', '2017-02-21 07:43:07', NULL, NULL),
(574, 0, 'Guayaquil', '', '2017-02-21 07:43:07', NULL, NULL),
(575, 0, 'Guernsey', '', '2017-02-21 07:43:07', NULL, NULL),
(576, 0, 'Gulfport/Biloxi, MS', '', '2017-02-21 07:43:07', NULL, NULL),
(577, 0, 'Gulu', '', '2017-02-21 07:43:07', NULL, NULL),
(578, 0, 'Gunnison/Crested Butte, CO', '', '2017-02-21 07:43:07', NULL, NULL),
(579, 0, 'Guwahati', '', '2017-02-21 07:43:07', NULL, NULL),
(580, 0, 'Gwadar', '', '2017-02-21 07:43:07', NULL, NULL),
(581, 0, 'Gweru', '', '2017-02-21 07:43:07', NULL, NULL),
(582, 0, 'Gympie', '', '2017-02-21 07:43:07', NULL, NULL),
(583, 0, 'Hachijo Jima', '', '2017-02-21 07:43:07', NULL, NULL),
(584, 0, 'Haifa', '', '2017-02-21 07:43:07', NULL, NULL),
(585, 0, 'Haines, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(586, 0, 'Hakodate', '', '2017-02-21 07:43:07', NULL, NULL),
(587, 0, 'Halifax Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(588, 0, 'Hall Beach', '', '2017-02-21 07:43:07', NULL, NULL),
(589, 0, 'Hamburg - Fuhlsbuettel', '', '2017-02-21 07:43:07', NULL, NULL),
(590, 0, 'Hamilton', '', '2017-02-21 07:43:07', NULL, NULL),
(591, 0, 'Hamilton', '', '2017-02-21 07:43:07', NULL, NULL),
(592, 0, 'Hamilton Island', '', '2017-02-21 07:43:07', NULL, NULL),
(593, 0, 'Hammerfest', '', '2017-02-21 07:43:07', NULL, NULL),
(594, 0, 'Hancock, MI', '', '2017-02-21 07:43:07', NULL, NULL),
(595, 0, 'Hangchow (Hangzhou)', '', '2017-02-21 07:43:07', NULL, NULL),
(596, 0, 'Hannover', '', '2017-02-21 07:43:07', NULL, NULL),
(597, 0, 'Hanoi - Noibai', '', '2017-02-21 07:43:07', NULL, NULL),
(598, 0, 'Harare', '', '2017-02-21 07:43:07', NULL, NULL),
(599, 0, 'Harbin (Haerbin)', '', '2017-02-21 07:43:07', NULL, NULL),
(600, 0, 'Harlington/South Padre Island, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(601, 0, 'Harrington Harbour, PQ', '', '2017-02-21 07:43:07', NULL, NULL),
(602, 0, 'Harrisburg, PA - Harrisburg Skyport', '', '2017-02-21 07:43:07', NULL, NULL),
(603, 0, 'Harrisburg, PA - Harrisburg Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(604, 0, 'Hartford, CT/Springfield, MA', '', '2017-02-21 07:43:07', NULL, NULL),
(605, 0, 'Hatyai (Hat Yai)', '', '2017-02-21 07:43:07', NULL, NULL),
(606, 0, 'Haugesund', '', '2017-02-21 07:43:07', NULL, NULL),
(607, 0, 'Havana - José Martí Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(608, 0, 'Havre, MT', '', '2017-02-21 07:43:07', NULL, NULL),
(609, 0, 'Hayman Island', '', '2017-02-21 07:43:07', NULL, NULL),
(610, 0, 'Helena, MT', '', '2017-02-21 07:43:07', NULL, NULL),
(611, 0, 'Helsingborg', '', '2017-02-21 07:43:07', NULL, NULL),
(612, 0, 'Helsinki - Vantaa', '', '2017-02-21 07:43:07', NULL, NULL),
(613, 0, 'Heraklion', '', '2017-02-21 07:43:07', NULL, NULL),
(614, 0, 'Hermosillo - Gen. Pesqueira Garcia', '', '2017-02-21 07:43:07', NULL, NULL),
(615, 0, 'Hervey Bay', '', '2017-02-21 07:43:07', NULL, NULL),
(616, 0, 'Hibbing, MN', '', '2017-02-21 07:43:07', NULL, NULL),
(617, 0, 'Hickory, NC', '', '2017-02-21 07:43:07', NULL, NULL),
(618, 0, 'Hilo, HI', '', '2017-02-21 07:43:07', NULL, NULL),
(619, 0, 'Hilton Head Island, SC', '', '2017-02-21 07:43:07', NULL, NULL),
(620, 0, 'Hinchinbrook Island', '', '2017-02-21 07:43:07', NULL, NULL),
(621, 0, 'Hiroshima International', '', '2017-02-21 07:43:07', NULL, NULL),
(622, 0, 'Ho Chi Minh City (Saigon)', '', '2017-02-21 07:43:07', NULL, NULL),
(623, 0, 'Hobart', '', '2017-02-21 07:43:07', NULL, NULL),
(624, 0, 'Hof', '', '2017-02-21 07:43:07', NULL, NULL),
(625, 0, 'Holguin', '', '2017-02-21 07:43:07', NULL, NULL),
(626, 0, 'Home Hill', '', '2017-02-21 07:43:07', NULL, NULL),
(627, 0, 'Homer, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(628, 0, 'Hong Kong - Int\'l Airport (HKIA)', '', '2017-02-21 07:43:07', NULL, NULL),
(629, 0, 'Hong Kong - Chek Lap Kok', '', '2017-02-21 07:43:07', NULL, NULL),
(630, 0, 'Honiara Henderson Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(631, 0, 'Honolulu, HI', '', '2017-02-21 07:43:07', NULL, NULL),
(632, 0, 'Hoonah, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(633, 0, 'Horta', '', '2017-02-21 07:43:07', NULL, NULL),
(634, 0, 'Houston, Hobby, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(635, 0, 'Houston, Intercontinental, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(636, 0, 'Huahine', '', '2017-02-21 07:43:07', NULL, NULL),
(637, 0, 'Huatulco', '', '2017-02-21 07:43:07', NULL, NULL),
(638, 0, 'Hue - Phu Bai', '', '2017-02-21 07:43:07', NULL, NULL),
(639, 0, 'Humberside', '', '2017-02-21 07:43:07', NULL, NULL),
(640, 0, 'Huntington, OH', '', '2017-02-21 07:43:07', NULL, NULL),
(641, 0, 'Huntsville, AL', '', '2017-02-21 07:43:07', NULL, NULL),
(642, 0, 'Hurghada Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(643, 0, 'Huron, SD', '', '2017-02-21 07:43:07', NULL, NULL),
(644, 0, 'Hwange National Park', '', '2017-02-21 07:43:07', NULL, NULL),
(645, 0, 'Hyannis, MA', '', '2017-02-21 07:43:07', NULL, NULL),
(646, 0, 'Hydaburg, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(647, 0, 'Hyderabad - Begumpet', '', '2017-02-21 07:43:07', NULL, NULL),
(648, 0, 'Hyderabad', '', '2017-02-21 07:43:07', NULL, NULL),
(649, 0, 'Ibiza', '', '2017-02-21 07:43:07', NULL, NULL),
(650, 0, 'Idaho Falls, ID', '', '2017-02-21 07:43:07', NULL, NULL),
(651, 0, 'Iguazu, Cataratas', '', '2017-02-21 07:43:07', NULL, NULL),
(652, 0, 'Ile des Pins', '', '2017-02-21 07:43:07', NULL, NULL),
(653, 0, 'Ile Ouen', '', '2017-02-21 07:43:07', NULL, NULL),
(654, 0, 'Iliamna, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(655, 0, 'Imperial, CA', '', '2017-02-21 07:43:07', NULL, NULL),
(656, 0, 'Incercargill', '', '2017-02-21 07:43:07', NULL, NULL),
(657, 0, 'Incheon, Incheon Int\'l Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(658, 0, 'Indianapolis, IN', '', '2017-02-21 07:43:07', NULL, NULL),
(659, 0, 'Ingham', '', '2017-02-21 07:43:07', NULL, NULL),
(660, 0, 'Innisfail', '', '2017-02-21 07:43:07', NULL, NULL),
(661, 0, 'Innsbruck - Kranebitten', '', '2017-02-21 07:43:07', NULL, NULL),
(662, 0, 'International Falls, MN', '', '2017-02-21 07:43:07', NULL, NULL),
(663, 0, 'Inuvik', '', '2017-02-21 07:43:07', NULL, NULL),
(664, 0, 'Invercargill', '', '2017-02-21 07:43:07', NULL, NULL),
(665, 0, 'Inverness', '', '2017-02-21 07:43:07', NULL, NULL),
(666, 0, 'Inykern, CA', '', '2017-02-21 07:43:07', NULL, NULL),
(667, 0, 'Iqaluit (Frobisher Bay)', '', '2017-02-21 07:43:07', NULL, NULL),
(668, 0, 'Iquitos', '', '2017-02-21 07:43:07', NULL, NULL),
(669, 0, 'Irkutsk', '', '2017-02-21 07:43:07', NULL, NULL),
(670, 0, 'Ishigaki', '', '2017-02-21 07:43:07', NULL, NULL),
(671, 0, 'Islamabad - Islamabad Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(672, 0, 'Isle of Man', '', '2017-02-21 07:43:07', NULL, NULL),
(673, 0, 'Istanbul - Ataturk', '', '2017-02-21 07:43:07', NULL, NULL),
(674, 0, 'Ithaca/Cortland, NY', '', '2017-02-21 07:43:07', NULL, NULL),
(675, 0, 'Ivalo', '', '2017-02-21 07:43:07', NULL, NULL),
(676, 0, 'Ixtapa/Zihuatenejo', '', '2017-02-21 07:43:07', NULL, NULL),
(677, 0, 'Izmir', '', '2017-02-21 07:43:07', NULL, NULL),
(678, 0, 'Jackson Hole, WY', '', '2017-02-21 07:43:07', NULL, NULL),
(679, 0, 'Jackson, MI', '', '2017-02-21 07:43:07', NULL, NULL),
(680, 0, 'Jackson, MS', '', '2017-02-21 07:43:07', NULL, NULL),
(681, 0, 'Jackson, TN', '', '2017-02-21 07:43:07', NULL, NULL),
(682, 0, 'Jacksonville, FL', '', '2017-02-21 07:43:07', NULL, NULL),
(683, 0, 'Jacksonville, NC', '', '2017-02-21 07:43:07', NULL, NULL),
(684, 0, 'Jacobabad', '', '2017-02-21 07:43:07', NULL, NULL),
(685, 0, 'Jaipur - Sanganeer', '', '2017-02-21 07:43:07', NULL, NULL),
(686, 0, 'Jakarta - Halim Perdanakusma', '', '2017-02-21 07:43:07', NULL, NULL),
(687, 0, 'Jakarta - Kemayoran', '', '2017-02-21 07:43:07', NULL, NULL),
(688, 0, 'Jakarta - Soekarno-Hatta', '', '2017-02-21 07:43:07', NULL, NULL),
(689, 0, 'Jalandhar', '', '2017-02-21 07:43:07', NULL, NULL),
(690, 0, 'Jamestown, ND', '', '2017-02-21 07:43:07', NULL, NULL),
(691, 0, 'Jamestown, NY', '', '2017-02-21 07:43:07', NULL, NULL),
(692, 0, 'Jamshedpur - Sonari', '', '2017-02-21 07:43:07', NULL, NULL),
(693, 0, 'Jeddah - King Abdulaziz Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(694, 0, 'Jerez de la Frontera/Cadiz', '', '2017-02-21 07:43:07', NULL, NULL),
(695, 0, 'Jersey', '', '2017-02-21 07:43:07', NULL, NULL),
(696, 0, 'Jerusalem', '', '2017-02-21 07:43:07', NULL, NULL),
(697, 0, 'Jinan', '', '2017-02-21 07:43:07', NULL, NULL),
(698, 0, 'Jiwani', '', '2017-02-21 07:43:07', NULL, NULL),
(699, 0, 'Joacaba', '', '2017-02-21 07:43:07', NULL, NULL),
(700, 0, 'Joao Pessoa - Castro Pinto', '', '2017-02-21 07:43:07', NULL, NULL),
(701, 0, 'Joenkoeping', '', '2017-02-21 07:43:07', NULL, NULL),
(702, 0, 'Joensuu', '', '2017-02-21 07:43:07', NULL, NULL),
(703, 0, 'Johannesburg - Johannesburg Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(704, 0, 'Johnstown, PA', '', '2017-02-21 07:43:07', NULL, NULL),
(705, 0, 'Johore Bahru', '', '2017-02-21 07:43:07', NULL, NULL),
(706, 0, 'Joplin, MO', '', '2017-02-21 07:43:07', NULL, NULL),
(707, 0, 'Jounieh', '', '2017-02-21 07:43:07', NULL, NULL),
(708, 0, 'Juneau, AK - Juneau Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(709, 0, 'Jyvaeskylae', '', '2017-02-21 07:43:07', NULL, NULL),
(710, 0, 'Kabul - Khwaja Rawash', '', '2017-02-21 07:43:07', NULL, NULL),
(711, 0, 'Kagoshima', '', '2017-02-21 07:43:07', NULL, NULL),
(712, 0, 'Kahului, HI', '', '2017-02-21 07:43:07', NULL, NULL),
(713, 0, 'Kajaani', '', '2017-02-21 07:43:07', NULL, NULL),
(714, 0, 'Kalamata', '', '2017-02-21 07:43:07', NULL, NULL),
(715, 0, 'Kalamazoo/Battle Creek, MI', '', '2017-02-21 07:43:07', NULL, NULL),
(716, 0, 'Kalgoorlie', '', '2017-02-21 07:43:07', NULL, NULL),
(717, 0, 'Kalispell, MT', '', '2017-02-21 07:43:07', NULL, NULL),
(718, 0, 'Kalmar', '', '2017-02-21 07:43:07', NULL, NULL),
(719, 0, 'Kano', '', '2017-02-21 07:43:07', NULL, NULL),
(720, 0, 'Kamuela, HI', '', '2017-02-21 07:43:07', NULL, NULL),
(721, 0, 'Kanpur', '', '2017-02-21 07:43:07', NULL, NULL),
(722, 0, 'Kansas City, MO - Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(723, 0, 'Kaohsiung Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(724, 0, 'Kapalua West, HI', '', '2017-02-21 07:43:07', NULL, NULL),
(725, 0, 'Karachi - Quaid-E-Azam Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(726, 0, 'Karlsruhe-Baden - Soellingen', '', '2017-02-21 07:43:07', NULL, NULL),
(727, 0, 'Karlstad', '', '2017-02-21 07:43:07', NULL, NULL),
(728, 0, 'Karpathos', '', '2017-02-21 07:43:07', NULL, NULL),
(729, 0, 'Karratha', '', '2017-02-21 07:43:07', NULL, NULL),
(730, 0, 'Karumba', '', '2017-02-21 07:43:07', NULL, NULL),
(731, 0, 'Karup', '', '2017-02-21 07:43:07', NULL, NULL),
(732, 0, 'Kaschechawan, PQ', '', '2017-02-21 07:43:07', NULL, NULL),
(733, 0, 'Kassala', '', '2017-02-21 07:43:07', NULL, NULL),
(734, 0, 'Katherine', '', '2017-02-21 07:43:07', NULL, NULL),
(735, 0, 'Kathmandu - Tribhuvan', '', '2017-02-21 07:43:07', NULL, NULL),
(736, 0, 'Katima Mulilo/Mpacha', '', '2017-02-21 07:43:07', NULL, NULL),
(737, 0, 'Kauhajoki', '', '2017-02-21 07:43:07', NULL, NULL),
(738, 0, 'Kaunakakai, HI', '', '2017-02-21 07:43:07', NULL, NULL),
(739, 0, 'Kavalla', '', '2017-02-21 07:43:07', NULL, NULL),
(740, 0, 'Kazan (Ka San)', '', '2017-02-21 07:43:07', NULL, NULL),
(741, 0, 'Keetmanshoop', '', '2017-02-21 07:43:07', NULL, NULL),
(742, 0, 'Kelowna, BC', '', '2017-02-21 07:43:07', NULL, NULL),
(743, 0, 'Kemi/Tornio', '', '2017-02-21 07:43:07', NULL, NULL),
(744, 0, 'Kempten', '', '2017-02-21 07:43:07', NULL, NULL),
(745, 0, 'Kenai, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(746, 0, 'Kerry County', '', '2017-02-21 07:43:07', NULL, NULL),
(747, 0, 'Ketchikan, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(748, 0, 'Key West, FL', '', '2017-02-21 07:43:07', NULL, NULL),
(749, 0, 'Khamis Mushayat', '', '2017-02-21 07:43:07', NULL, NULL),
(750, 0, 'Kharga - New Valley', '', '2017-02-21 07:43:07', NULL, NULL),
(751, 0, 'Khartoum', '', '2017-02-21 07:43:07', NULL, NULL),
(752, 0, 'Khuzdar', '', '2017-02-21 07:43:07', NULL, NULL),
(753, 0, 'Kiel - Holtenau', '', '2017-02-21 07:43:07', NULL, NULL),
(754, 0, 'Kiev - Borispol', '', '2017-02-21 07:43:07', NULL, NULL),
(755, 0, 'Kiev - Zhulhany', '', '2017-02-21 07:43:07', NULL, NULL),
(756, 0, 'Kigali - Gregoire Kayibanda', '', '2017-02-21 07:43:07', NULL, NULL),
(757, 0, 'Kilimadjaro', '', '2017-02-21 07:43:07', NULL, NULL),
(758, 0, 'Killeem, TX', '', '2017-02-21 07:43:07', NULL, NULL),
(759, 0, 'Kimberley', '', '2017-02-21 07:43:07', NULL, NULL),
(760, 0, 'King Island', '', '2017-02-21 07:43:07', NULL, NULL),
(761, 0, 'King Salomon, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(762, 0, 'Kingscote', '', '2017-02-21 07:43:07', NULL, NULL),
(763, 0, 'Kingston - Norman Manley', '', '2017-02-21 07:43:07', NULL, NULL),
(764, 0, 'Kingston, NC', '', '2017-02-21 07:43:07', NULL, NULL),
(765, 0, 'Kinshasa - N\'Djili', '', '2017-02-21 07:43:07', NULL, NULL),
(766, 0, 'Kirkenes', '', '2017-02-21 07:43:07', NULL, NULL),
(767, 0, 'Kirkuk', '', '2017-02-21 07:43:07', NULL, NULL),
(768, 0, 'Kiruna', '', '2017-02-21 07:43:07', NULL, NULL),
(769, 0, 'Kisangani', '', '2017-02-21 07:43:07', NULL, NULL),
(770, 0, 'Kittilä', '', '2017-02-21 07:43:07', NULL, NULL),
(771, 0, 'Kitwe', '', '2017-02-21 07:43:07', NULL, NULL),
(772, 0, 'Klagenfurt', '', '2017-02-21 07:43:07', NULL, NULL),
(773, 0, 'Klamath Fall, OR', '', '2017-02-21 07:43:07', NULL, NULL),
(774, 0, 'Klawock, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(775, 0, 'Kleinsee', '', '2017-02-21 07:43:07', NULL, NULL),
(776, 0, 'Knock', '', '2017-02-21 07:43:07', NULL, NULL),
(777, 0, 'Knoxville, TN', '', '2017-02-21 07:43:07', NULL, NULL),
(778, 0, 'Kobe', '', '2017-02-21 07:43:07', NULL, NULL),
(779, 0, 'Kochi', '', '2017-02-21 07:43:07', NULL, NULL),
(780, 0, 'Köln, Köln/Bonn', '', '2017-02-21 07:43:07', NULL, NULL),
(781, 0, 'Kodiak, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(782, 0, 'Kohat', '', '2017-02-21 07:43:07', NULL, NULL),
(783, 0, 'Kokkola/Pietarsaari', '', '2017-02-21 07:43:07', NULL, NULL),
(784, 0, 'Kolkata (Calcutta) - Netaji Subhas Chandra', '', '2017-02-21 07:43:07', NULL, NULL),
(785, 0, 'Kona, HI', '', '2017-02-21 07:43:07', NULL, NULL),
(786, 0, 'Korhogo', '', '2017-02-21 07:43:07', NULL, NULL),
(787, 0, 'Kos', '', '2017-02-21 07:43:07', NULL, NULL),
(788, 0, 'Kota Kinabalu', '', '2017-02-21 07:43:07', NULL, NULL),
(789, 0, 'Kotzbue, AK', '', '2017-02-21 07:43:07', NULL, NULL),
(790, 0, 'Kowanyama', '', '2017-02-21 07:43:07', NULL, NULL),
(791, 0, 'Krakau', '', '2017-02-21 07:43:07', NULL, NULL),
(792, 0, 'Kristiansand', '', '2017-02-21 07:43:07', NULL, NULL),
(793, 0, 'Kristianstad', '', '2017-02-21 07:43:07', NULL, NULL),
(794, 0, 'Kristiansund', '', '2017-02-21 07:43:07', NULL, NULL),
(795, 0, 'Kuala Belait', '', '2017-02-21 07:43:07', NULL, NULL);
INSERT INTO `cities` (`city_id`, `state_id`, `name_en`, `name_ar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(796, 0, 'Kuala Lumpur - Int\'l Airport', '', '2017-02-21 07:43:07', NULL, NULL),
(797, 0, 'Kuala Lumpur - Sultan Abdul Aziz Shah', '', '2017-02-21 07:43:07', NULL, NULL),
(798, 0, 'Kuantan', '', '2017-02-21 07:43:07', NULL, NULL),
(799, 0, 'Kuching', '', '2017-02-21 07:43:07', NULL, NULL),
(800, 0, 'Kumamoto', '', '2017-02-21 07:43:07', NULL, NULL),
(801, 0, 'Kununurra', '', '2017-02-21 07:43:07', NULL, NULL),
(802, 0, 'Kuopio', '', '2017-02-21 07:43:07', NULL, NULL),
(803, 0, 'Kushiro', '', '2017-02-21 07:43:07', NULL, NULL),
(804, 0, 'Kuujjuaq (FortChimo)', '', '2017-02-21 07:43:07', NULL, NULL),
(805, 0, 'Kuujjuarapik', '', '2017-02-21 07:43:07', NULL, NULL),
(806, 0, 'Kuusamo', '', '2017-02-21 07:43:07', NULL, NULL),
(807, 0, 'Kuwait - Kuwait Int\'l', '', '2017-02-21 07:43:07', NULL, NULL),
(808, 0, 'Kyoto', '', '2017-02-21 07:43:07', NULL, NULL),
(809, 0, 'Labe', '', '2017-02-21 07:43:08', NULL, NULL),
(810, 0, 'Labouchere Bay, AK', '', '2017-02-21 07:43:08', NULL, NULL),
(811, 0, 'Labuan', '', '2017-02-21 07:43:08', NULL, NULL),
(812, 0, 'Lac Brochet, MB', '', '2017-02-21 07:43:08', NULL, NULL),
(813, 0, 'La Coruna', '', '2017-02-21 07:43:08', NULL, NULL),
(814, 0, 'La Crosse, WI', '', '2017-02-21 07:43:08', NULL, NULL),
(815, 0, 'Lae', '', '2017-02-21 07:43:08', NULL, NULL),
(816, 0, 'La Rochelle', '', '2017-02-21 07:43:08', NULL, NULL),
(817, 0, 'Lafayette, IN', '', '2017-02-21 07:43:08', NULL, NULL),
(818, 0, 'Lafayette, La', '', '2017-02-21 07:43:08', NULL, NULL),
(819, 0, 'Lagos - Murtala Muhammed', '', '2017-02-21 07:43:08', NULL, NULL),
(820, 0, 'La Grande', '', '2017-02-21 07:43:08', NULL, NULL),
(821, 0, 'Lahore', '', '2017-02-21 07:43:08', NULL, NULL),
(822, 0, 'Lake Charles, La', '', '2017-02-21 07:43:08', NULL, NULL),
(823, 0, 'Lake Havasu City, AZ', '', '2017-02-21 07:43:08', NULL, NULL),
(824, 0, 'Lake Tahoe, CA', '', '2017-02-21 07:43:08', NULL, NULL),
(825, 0, 'Lakselv', '', '2017-02-21 07:43:08', NULL, NULL),
(826, 0, 'Lambarene', '', '2017-02-21 07:43:08', NULL, NULL),
(827, 0, 'Lamezia Terme', '', '2017-02-21 07:43:08', NULL, NULL),
(828, 0, 'Lampedusa', '', '2017-02-21 07:43:08', NULL, NULL),
(829, 0, 'Lanai City, HI', '', '2017-02-21 07:43:08', NULL, NULL),
(830, 0, 'Lancaster, PA', '', '2017-02-21 07:43:08', NULL, NULL),
(831, 0, 'Langkawi', '', '2017-02-21 07:43:08', NULL, NULL),
(832, 0, 'Lannion', '', '2017-02-21 07:43:08', NULL, NULL),
(833, 0, 'Lanseria', '', '2017-02-21 07:43:08', NULL, NULL),
(834, 0, 'Lansing, MI', '', '2017-02-21 07:43:08', NULL, NULL),
(835, 0, 'La Paz - El Alto', '', '2017-02-21 07:43:08', NULL, NULL),
(836, 0, 'La Paz - Leon', '', '2017-02-21 07:43:08', NULL, NULL),
(837, 0, 'Lappeenranta', '', '2017-02-21 07:43:08', NULL, NULL),
(838, 0, 'Laramie, WY', '', '2017-02-21 07:43:08', NULL, NULL),
(839, 0, 'Laredo, TX', '', '2017-02-21 07:43:08', NULL, NULL),
(840, 0, 'Larnaca', '', '2017-02-21 07:43:08', NULL, NULL),
(841, 0, 'Las Palmas', '', '2017-02-21 07:43:08', NULL, NULL),
(842, 0, 'Las Vegas, NV', '', '2017-02-21 07:43:08', NULL, NULL),
(843, 0, 'Latrobe, PA', '', '2017-02-21 07:43:08', NULL, NULL),
(844, 0, 'Launceston', '', '2017-02-21 07:43:08', NULL, NULL),
(845, 0, 'Laurel/Hattisburg, MS', '', '2017-02-21 07:43:08', NULL, NULL),
(846, 0, 'Laverton', '', '2017-02-21 07:43:08', NULL, NULL),
(847, 0, 'Lawton, OK', '', '2017-02-21 07:43:08', NULL, NULL),
(848, 0, 'Lazaro Cardenas', '', '2017-02-21 07:43:08', NULL, NULL),
(849, 0, 'Leaf Rapids', '', '2017-02-21 07:43:08', NULL, NULL),
(850, 0, 'Learmouth (Exmouth)', '', '2017-02-21 07:43:08', NULL, NULL),
(851, 0, 'Lebanon, NH', '', '2017-02-21 07:43:08', NULL, NULL),
(852, 0, 'Leeds/Bradford', '', '2017-02-21 07:43:08', NULL, NULL),
(853, 0, 'Leinster', '', '2017-02-21 07:43:08', NULL, NULL),
(854, 0, 'Leipzig', '', '2017-02-21 07:43:08', NULL, NULL),
(855, 0, 'Lelystad', '', '2017-02-21 07:43:08', NULL, NULL),
(856, 0, 'Leon', '', '2017-02-21 07:43:08', NULL, NULL),
(857, 0, 'Leonora', '', '2017-02-21 07:43:08', NULL, NULL),
(858, 0, 'Lewiston, ID', '', '2017-02-21 07:43:08', NULL, NULL),
(859, 0, 'Lewistown, MT', '', '2017-02-21 07:43:08', NULL, NULL),
(860, 0, 'Lexington, KY', '', '2017-02-21 07:43:08', NULL, NULL),
(861, 0, 'Libreville', '', '2017-02-21 07:43:08', NULL, NULL),
(862, 0, 'Lidkoeping', '', '2017-02-21 07:43:08', NULL, NULL),
(863, 0, 'Liege', '', '2017-02-21 07:43:08', NULL, NULL),
(864, 0, 'Lifou', '', '2017-02-21 07:43:08', NULL, NULL),
(865, 0, 'Lihue, HI', '', '2017-02-21 07:43:08', NULL, NULL),
(866, 0, 'Lille', '', '2017-02-21 07:43:08', NULL, NULL),
(867, 0, 'Lilongwe - Lilongwe International', '', '2017-02-21 07:43:08', NULL, NULL),
(868, 0, 'Lima - J Chavez Int\'l', '', '2017-02-21 07:43:08', NULL, NULL),
(869, 0, 'Limassol', '', '2017-02-21 07:43:08', NULL, NULL),
(870, 0, 'Limoges', '', '2017-02-21 07:43:08', NULL, NULL),
(871, 0, 'Lincoln, NE', '', '2017-02-21 07:43:08', NULL, NULL),
(872, 0, 'Lindeman Island', '', '2017-02-21 07:43:08', NULL, NULL),
(873, 0, 'Linz - Hoersching', '', '2017-02-21 07:43:08', NULL, NULL),
(874, 0, 'Lisala', '', '2017-02-21 07:43:08', NULL, NULL),
(875, 0, 'Lisbon - Lisboa', '', '2017-02-21 07:43:08', NULL, NULL),
(876, 0, 'Lismore', '', '2017-02-21 07:43:08', NULL, NULL),
(877, 0, 'Little Rock, AR', '', '2017-02-21 07:43:08', NULL, NULL),
(878, 0, 'Liverpool', '', '2017-02-21 07:43:08', NULL, NULL),
(879, 0, 'Lizard Island', '', '2017-02-21 07:43:08', NULL, NULL),
(880, 0, 'Ljubljana - Brnik', '', '2017-02-21 07:43:08', NULL, NULL),
(881, 0, 'Lockhart River', '', '2017-02-21 07:43:08', NULL, NULL),
(882, 0, 'Lome', '', '2017-02-21 07:43:08', NULL, NULL),
(883, 0, 'London', '', '2017-02-21 07:43:08', NULL, NULL),
(884, 0, 'London', '', '2017-02-21 07:43:08', NULL, NULL),
(885, 0, 'London - City Airport', '', '2017-02-21 07:43:08', NULL, NULL),
(886, 0, 'London - Gatwick', '', '2017-02-21 07:43:08', NULL, NULL),
(887, 0, 'London - Heathrow', '', '2017-02-21 07:43:08', NULL, NULL),
(888, 0, 'London - Luton', '', '2017-02-21 07:43:08', NULL, NULL),
(889, 0, 'London - Stansted', '', '2017-02-21 07:43:08', NULL, NULL),
(890, 0, 'Long Beach, CA', '', '2017-02-21 07:43:08', NULL, NULL),
(891, 0, 'Long Island, AK', '', '2017-02-21 07:43:08', NULL, NULL),
(892, 0, 'Long Island, Islip, NY - Mac Arthur', '', '2017-02-21 07:43:08', NULL, NULL),
(893, 0, 'Longreach', '', '2017-02-21 07:43:08', NULL, NULL),
(894, 0, 'Longview/Kilgore, TX', '', '2017-02-21 07:43:08', NULL, NULL),
(895, 0, 'Longyearbyen - Svalbard', '', '2017-02-21 07:43:08', NULL, NULL),
(896, 0, 'Loreto', '', '2017-02-21 07:43:08', NULL, NULL),
(897, 0, 'Lorient', '', '2017-02-21 07:43:08', NULL, NULL),
(898, 0, 'Los Angeles, CA - Int\'l', '', '2017-02-21 07:43:08', NULL, NULL),
(899, 0, 'Los Cabos', '', '2017-02-21 07:43:08', NULL, NULL),
(900, 0, 'Los Mochis', '', '2017-02-21 07:43:08', NULL, NULL),
(901, 0, 'Los Rodeos', '', '2017-02-21 07:43:08', NULL, NULL),
(902, 0, '(Mali) Losinj - Losinj Arpt', '', '2017-02-21 07:43:08', NULL, NULL),
(903, 0, 'Lourdes/Tarbes', '', '2017-02-21 07:43:08', NULL, NULL),
(904, 0, 'Louisville, KY', '', '2017-02-21 07:43:08', NULL, NULL),
(905, 0, 'Luanda - 4 de Fevereiro', '', '2017-02-21 07:43:08', NULL, NULL),
(906, 0, 'Lubbock, TX', '', '2017-02-21 07:43:08', NULL, NULL),
(907, 0, 'Lucknow', '', '2017-02-21 07:43:08', NULL, NULL),
(908, 0, 'Luederitz', '', '2017-02-21 07:43:08', NULL, NULL),
(909, 0, 'Luga', '', '2017-02-21 07:43:08', NULL, NULL),
(910, 0, 'Lugano', '', '2017-02-21 07:43:08', NULL, NULL),
(911, 0, 'Lulea', '', '2017-02-21 07:43:08', NULL, NULL),
(912, 0, 'Lumbumbashi', '', '2017-02-21 07:43:08', NULL, NULL),
(913, 0, 'Lusaka', '', '2017-02-21 07:43:08', NULL, NULL),
(914, 0, 'Lusisiki', '', '2017-02-21 07:43:08', NULL, NULL),
(915, 0, 'Luxembourg', '', '2017-02-21 07:43:08', NULL, NULL),
(916, 0, 'Luxor', '', '2017-02-21 07:43:08', NULL, NULL),
(917, 0, 'Lvov (Lwow, Lemberg)', '', '2017-02-21 07:43:08', NULL, NULL),
(918, 0, 'Lynchburg, VA', '', '2017-02-21 07:43:08', NULL, NULL),
(919, 0, 'Lyon', '', '2017-02-21 07:43:08', NULL, NULL),
(920, 0, 'Maastricht/Aachen', '', '2017-02-21 07:43:08', NULL, NULL),
(921, 0, 'Macapa', '', '2017-02-21 07:43:08', NULL, NULL),
(922, 0, 'Macau', '', '2017-02-21 07:43:08', NULL, NULL),
(923, 0, 'Maceio', '', '2017-02-21 07:43:08', NULL, NULL),
(924, 0, 'Mackay', '', '2017-02-21 07:43:08', NULL, NULL),
(925, 0, 'Macon, GA', '', '2017-02-21 07:43:08', NULL, NULL),
(926, 0, 'Mactan Island - Nab', '', '2017-02-21 07:43:08', NULL, NULL),
(927, 0, 'Madinah, Mohammad Bin Abdulaziz', '', '2017-02-21 07:43:08', NULL, NULL),
(928, 0, 'Madison, WI', '', '2017-02-21 07:43:08', NULL, NULL),
(929, 0, 'Madras (Chennai)', '', '2017-02-21 07:43:08', NULL, NULL),
(930, 0, 'Madrid - Barajas', '', '2017-02-21 07:43:08', NULL, NULL),
(931, 0, 'Mahe - Seychelles Int\'l', '', '2017-02-21 07:43:08', NULL, NULL),
(932, 0, 'Mahon', '', '2017-02-21 07:43:08', NULL, NULL),
(933, 0, 'Maitland', '', '2017-02-21 07:43:08', NULL, NULL),
(934, 0, 'Majunga', '', '2017-02-21 07:43:08', NULL, NULL),
(935, 0, 'Makung', '', '2017-02-21 07:43:08', NULL, NULL),
(936, 0, 'Malabo', '', '2017-02-21 07:43:08', NULL, NULL),
(937, 0, 'Malaga', '', '2017-02-21 07:43:08', NULL, NULL),
(938, 0, 'Male - International', '', '2017-02-21 07:43:08', NULL, NULL),
(939, 0, 'Malindi', '', '2017-02-21 07:43:08', NULL, NULL),
(940, 0, 'Malmo (Malmoe)', '', '2017-02-21 07:43:08', NULL, NULL),
(941, 0, 'Malmo (Malmoe) - Sturup', '', '2017-02-21 07:43:08', NULL, NULL),
(942, 0, 'Man', '', '2017-02-21 07:43:08', NULL, NULL),
(943, 0, 'Managua - Augusto C Sandino', '', '2017-02-21 07:43:08', NULL, NULL),
(944, 0, 'Manaus', '', '2017-02-21 07:43:08', NULL, NULL),
(945, 0, 'Manchester', '', '2017-02-21 07:43:08', NULL, NULL),
(946, 0, 'Manchester, NH', '', '2017-02-21 07:43:08', NULL, NULL),
(947, 0, 'Manguna', '', '2017-02-21 07:43:08', NULL, NULL),
(948, 0, 'Manihi', '', '2017-02-21 07:43:08', NULL, NULL),
(949, 0, 'Manila - Ninoy Aquino Int\'l', '', '2017-02-21 07:43:08', NULL, NULL),
(950, 0, 'Manzanillo', '', '2017-02-21 07:43:08', NULL, NULL),
(951, 0, 'Manzini - Matsapha Int\'l', '', '2017-02-21 07:43:08', NULL, NULL),
(952, 0, 'Maputo - Maputo International', '', '2017-02-21 07:43:08', NULL, NULL),
(953, 0, 'Mar del Plata', '', '2017-02-21 07:43:08', NULL, NULL),
(954, 0, 'Maracaibo - La Chinita', '', '2017-02-21 07:43:08', NULL, NULL),
(955, 0, 'Maradi', '', '2017-02-21 07:43:08', NULL, NULL),
(956, 0, 'Marathon, FL', '', '2017-02-21 07:43:08', NULL, NULL),
(957, 0, 'Mare', '', '2017-02-21 07:43:08', NULL, NULL),
(958, 0, 'Margate', '', '2017-02-21 07:43:08', NULL, NULL),
(959, 0, 'Margerita', '', '2017-02-21 07:43:08', NULL, NULL),
(960, 0, 'Maribor', '', '2017-02-21 07:43:08', NULL, NULL),
(961, 0, 'Mariehamn (Maarianhamina)', '', '2017-02-21 07:43:08', NULL, NULL),
(962, 0, 'Maroua', '', '2017-02-21 07:43:08', NULL, NULL),
(963, 0, 'Marquette, MI', '', '2017-02-21 07:43:08', NULL, NULL),
(964, 0, 'Marrakech - Menara', '', '2017-02-21 07:43:08', NULL, NULL),
(965, 0, 'Marsa Matrah (Marsa Matruh)', '', '2017-02-21 07:43:08', NULL, NULL),
(966, 0, 'Marseille', '', '2017-02-21 07:43:08', NULL, NULL),
(967, 0, 'Marsh Harbour', '', '2017-02-21 07:43:08', NULL, NULL),
(968, 0, 'Martha\'s Vineyard, MA', '', '2017-02-21 07:43:08', NULL, NULL),
(969, 0, 'Maryborough', '', '2017-02-21 07:43:08', NULL, NULL),
(970, 0, 'Maseru - Moshoeshoe Int\'l', '', '2017-02-21 07:43:08', NULL, NULL),
(971, 0, 'Mason City, IA', '', '2017-02-21 07:43:08', NULL, NULL),
(972, 0, 'Masvingo', '', '2017-02-21 07:43:08', NULL, NULL),
(973, 0, 'Matsumoto, Nagano', '', '2017-02-21 07:43:08', NULL, NULL),
(974, 0, 'Matsuyama', '', '2017-02-21 07:43:08', NULL, NULL),
(975, 0, 'Mattoon, IL', '', '2017-02-21 07:43:08', NULL, NULL),
(976, 0, 'Maun', '', '2017-02-21 07:43:08', NULL, NULL),
(977, 0, 'Maupiti', '', '2017-02-21 07:43:08', NULL, NULL),
(978, 0, 'Mauritius - S.Seewoosagur Ram Int\'l', '', '2017-02-21 07:43:08', NULL, NULL),
(979, 0, 'Mayaguez', '', '2017-02-21 07:43:08', NULL, NULL),
(980, 0, 'Mazatlan', '', '2017-02-21 07:43:08', NULL, NULL),
(981, 0, 'McAllen, TX', '', '2017-02-21 07:43:08', NULL, NULL),
(982, 0, 'Medan', '', '2017-02-21 07:43:08', NULL, NULL),
(983, 0, 'Medellin', '', '2017-02-21 07:43:08', NULL, NULL),
(984, 0, 'Medford, OR', '', '2017-02-21 07:43:08', NULL, NULL),
(985, 0, 'Medina', '', '2017-02-21 07:43:08', NULL, NULL),
(986, 0, 'Meekatharra', '', '2017-02-21 07:43:08', NULL, NULL),
(987, 0, 'Melbourne - Tullamarine', '', '2017-02-21 07:43:08', NULL, NULL),
(988, 0, 'Melbourne, FL', '', '2017-02-21 07:43:08', NULL, NULL),
(989, 0, 'Memphis, TN', '', '2017-02-21 07:43:08', NULL, NULL),
(990, 0, 'Mendoza', '', '2017-02-21 07:43:08', NULL, NULL),
(991, 0, 'Manado', '', '2017-02-21 07:43:08', NULL, NULL),
(992, 0, 'Merced, CA', '', '2017-02-21 07:43:08', NULL, NULL),
(993, 0, 'Merida', '', '2017-02-21 07:43:08', NULL, NULL),
(994, 0, 'Meridian, MS', '', '2017-02-21 07:43:08', NULL, NULL),
(995, 0, 'Merimbula', '', '2017-02-21 07:43:08', NULL, NULL),
(996, 0, 'Messina', '', '2017-02-21 07:43:08', NULL, NULL),
(997, 0, 'Metlakatla, AK', '', '2017-02-21 07:43:08', NULL, NULL),
(998, 0, 'Metz', '', '2017-02-21 07:43:08', NULL, NULL),
(999, 0, 'Mexicali', '', '2017-02-21 07:43:08', NULL, NULL),
(1000, 0, 'Mexico City', '', '2017-02-21 07:43:08', NULL, NULL),
(1001, 0, 'Mexico City - Juarez International', '', '2017-02-21 07:43:08', NULL, NULL),
(1002, 0, 'Mfuwe', '', '2017-02-21 07:43:08', NULL, NULL),
(1003, 0, 'Miami, FL', '', '2017-02-21 07:43:08', NULL, NULL),
(1004, 0, 'Mianwali', '', '2017-02-21 07:43:08', NULL, NULL),
(1005, 0, 'Middlemount', '', '2017-02-21 07:43:08', NULL, NULL),
(1006, 0, 'Midland/Odessa, TX', '', '2017-02-21 07:43:08', NULL, NULL),
(1007, 0, 'Mikkeli', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1008, 0, 'Milan', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1009, 0, 'Milan - Linate', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1010, 0, 'Milan - Malpensa', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1011, 0, 'Milan - Orio Al Serio', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1012, 0, 'Mildura', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1013, 0, 'Miles City, MT', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1014, 0, 'Milford Sound', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1015, 0, 'Milwaukee, WI', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1016, 0, 'Minatitlan', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1017, 0, 'Mineralnye Vody', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1018, 0, 'Minneapolis - St. Paul Int\'l Airport, MN', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1019, 0, 'Minot, ND', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1020, 0, 'Minsk, International', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1021, 0, 'Miri', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1022, 0, 'Mirpur', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1023, 0, 'Missula, MT', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1024, 0, 'Mitchell, SD', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1025, 0, 'Miyako Jima (Ryuku Islands) - Hirara', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1026, 0, 'Mkambati', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1027, 0, 'Moanda', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1028, 0, 'Mobile, AL - Pascagoula, MS', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1029, 0, 'Modesto, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1030, 0, 'Moenjodaro', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1031, 0, 'Mogadischu', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1032, 0, 'Mokuti', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1033, 0, 'Moline/Quad Cities, IL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1034, 0, 'Mombasa - Moi International', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1035, 0, 'Monastir', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1036, 0, 'Moncton', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1037, 0, 'Monroe, La', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1038, 0, 'Monrovia', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1039, 0, 'Monrovia - Roberts Int\'l', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1040, 0, 'Montenego Bay', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1041, 0, 'Montenegro', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1042, 0, 'Monterey, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1043, 0, 'Monterrey', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1044, 0, 'Monterrey - Aeropuerto Del Norte', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1045, 0, 'Montevideo - Carrasco', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1046, 0, 'Montgomery, AL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1047, 0, 'Montpellier - Frejorgues', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1048, 0, 'Montreal', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1049, 0, 'Montreal - Dorval (Montréal-Trudeau)', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1050, 0, 'Montreal - Mirabel', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1051, 0, 'Montrose/Tellruide, CO', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1052, 0, 'Moorea', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1053, 0, 'Moranbah', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1054, 0, 'Moree', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1055, 0, 'Morelia', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1056, 0, 'Morgantown, WV', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1057, 0, 'Morioka, Hanamaki', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1058, 0, 'Moroni - Prince Said Ibrahim', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1059, 0, 'Moroni - Iconi', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1060, 0, 'Moscow - Metropolitan Area', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1061, 0, 'Moscow - Domodedovo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1062, 0, 'Moscow - Sheremetyevo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1063, 0, 'Moscow - Vnukovo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1064, 0, 'Moses Lake, WA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1065, 0, 'Mostar', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1066, 0, 'Mosul', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1067, 0, 'Mouila', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1068, 0, 'Moundou', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1069, 0, 'Mount Cook', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1070, 0, 'Mount Gambier', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1071, 0, 'Mount Magnet', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1072, 0, 'Mt. Isa', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1073, 0, 'Mt. McKinley, AK', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1074, 0, 'Muenchen (Munich) - Franz Josef Strauss', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1075, 0, 'Muenster/Osnabrueck', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1076, 0, 'Muenster/Osnabrueck', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1077, 0, 'Mulhouse', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1078, 0, 'Multan', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1079, 0, 'Murcia', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1080, 0, 'Murmansk', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1081, 0, 'Muscat - Seeb', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1082, 0, 'Muscle Shoals, AL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1083, 0, 'Muskegon, MI', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1084, 0, 'Muzaffarabad', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1085, 0, 'Mvengue', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1086, 0, 'Mykonos', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1087, 0, 'Myrtle Beach, SC', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1088, 0, 'Miyazaki', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1089, 0, 'Mytilene (Lesbos)', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1090, 0, 'Mzamba', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1091, 0, 'Nadi', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1092, 0, 'Nagasaki', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1093, 0, 'Nagoya - Komaki AFB', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1094, 0, 'Nagpur', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1095, 0, 'Nairobi', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1096, 0, 'Nancy', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1097, 0, 'Nanisivik', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1098, 0, 'Nanning', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1099, 0, 'Nantes', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1100, 0, 'Nantucket, MA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1101, 0, 'Naples', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1102, 0, 'Naples, FL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1103, 0, 'Narrabri', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1104, 0, 'Narrandera', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1105, 0, 'Narsarsuaq', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1106, 0, 'Nashville, TN', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1107, 0, 'Nassau', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1108, 0, 'Natal', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1109, 0, 'Nausori', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1110, 0, 'Nawab Shah', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1111, 0, 'N\'Djamena', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1112, 0, 'N\'Dola', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1113, 0, 'Nelson', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1114, 0, 'Nelspruit', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1115, 0, 'Nelspruit - Kruger Mpumalanga Int\'l Airport', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1116, 0, 'Nevis', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1117, 0, 'New Bern, NC', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1118, 0, 'New Haven, CT', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1119, 0, 'New Orleans, La', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1120, 0, 'New Valley - Kharga', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1121, 0, 'New York - John F. Kennedy, NY', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1122, 0, 'New York - La Guardia, NY', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1123, 0, 'New York - Newark, NJ', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1124, 0, 'New York, NY', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1125, 0, 'Newburgh, NY', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1126, 0, 'Newcastle - Belmont', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1127, 0, 'Newcastle - Williamtown', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1128, 0, 'Newcastle', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1129, 0, 'Newcastle', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1130, 0, 'Newman', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1131, 0, 'Newport News/Williamsburg, VA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1132, 0, 'N\'Gaoundere', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1133, 0, 'Niagara Falls Int\'l', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1134, 0, 'Niamey', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1135, 0, 'Nice - Cote D\'Azur', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1136, 0, 'Nicosia', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1137, 0, 'Nikolaev', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1138, 0, 'Niigata', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1139, 0, 'Nimes', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1140, 0, 'Nis', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1141, 0, 'Nome, AK', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1142, 0, 'Noosa', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1143, 0, 'Norfolk Island', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1144, 0, 'Norfolk/Virginia Beach, VA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1145, 0, 'Norman Wells', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1146, 0, 'Norrkoeping', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1147, 0, 'North Bend, OR', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1148, 0, 'North Eleuthera', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1149, 0, 'Nouadhibou', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1150, 0, 'Nouakchott', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1151, 0, 'Noumea', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1152, 0, 'Novi Sad', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1153, 0, 'Novosibirsk - Tolmachevo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1154, 0, 'Nürnberg (Nuremberg)', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1155, 0, 'Nuevo Laredo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1156, 0, 'Nuku\'alofa - Fua\'Amotu International', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1157, 0, 'Oakland, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1158, 0, 'Oaxaca', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1159, 0, 'Odense', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1160, 0, 'Odessa', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1161, 0, 'Oerebro', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1162, 0, 'Ohrid', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1163, 0, 'Oita', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1164, 0, 'Okayama', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1165, 0, 'Okinawa, Ryukyo Island - Naha', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1166, 0, 'Oklahoma City, OK - Will Rogers World', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1167, 0, 'Olbia', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1168, 0, 'Olympic Dam', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1169, 0, 'Omaha, NE', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1170, 0, 'Ondangwa', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1171, 0, 'Ontario, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1172, 0, 'Oran (Ouahran)', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1173, 0, 'Orange', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1174, 0, 'Orange County (Santa Ana), CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1175, 0, 'Oranjemund', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1176, 0, 'Orkney', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1177, 0, 'Orlando Metropolitan Area, FL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1178, 0, 'Orlando Int\'l Airport, FL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1179, 0, 'Orpheus Island', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1180, 0, 'Osaka, Metropolitan Area', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1181, 0, 'Osaka - Itami', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1182, 0, 'Osaka - Kansai Int\'l Airport', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1183, 0, 'Oshkosh, WI', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1184, 0, 'Osijek', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1185, 0, 'Oslo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1186, 0, 'Oslo - Fornebu', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1187, 0, 'Oslo - Sandefjord', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1188, 0, 'Ottawa - Hull', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1189, 0, 'Ouadda', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1190, 0, 'Ouarzazate', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1191, 0, 'Oudtshoorn', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1192, 0, 'Ouagadougou', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1193, 0, 'Oujda', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1194, 0, 'Oulu', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1195, 0, 'Oviedo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1196, 0, 'Owensboro, KY', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1197, 0, 'Oxnard, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1198, 0, 'Oyem', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1199, 0, 'Paderborn/Lippstadt', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1200, 0, 'Paducah, KY', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1201, 0, 'Page/Lake Powell, AZ', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1202, 0, 'Pago Pago', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1203, 0, 'Pakersburg, WV/Marietta, OH', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1204, 0, 'Palermo - Punta Raisi', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1205, 0, 'Palm Springs, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1206, 0, 'Palma de Mallorca', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1207, 0, 'Palmdale/Lancaster, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1208, 0, 'Palmerston North', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1209, 0, 'Panama City - Tocumen International', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1210, 0, 'Panama City, FL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1211, 0, 'Panjgur', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1212, 0, 'Pantelleria', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1213, 0, 'Papeete - Faaa', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1214, 0, 'Paphos', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1215, 0, 'Paraburdoo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1216, 0, 'Paramaribo - Zanderij Int\'l', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1217, 0, 'Paris', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1218, 0, 'Paris - Charles de Gaulle', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1219, 0, 'Paris - Le Bourget', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1220, 0, 'Paris - Orly', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1221, 0, 'Paro', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1222, 0, 'Pasco, WA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1223, 0, 'Pasni', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1224, 0, 'Patna', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1225, 0, 'Pattaya', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1226, 0, 'Pau', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1227, 0, 'Pellston, MI', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1228, 0, 'Penang International', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1229, 0, 'Pendelton, OR', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1230, 0, 'Pensacola, FL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1231, 0, 'Peoria/Bloomington, IL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1232, 0, 'Pereira', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1233, 0, 'Perpignan', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1234, 0, 'Perth Int\'l', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1235, 0, 'Perugia', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1236, 0, 'Pescara', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1237, 0, 'Peshawar', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1238, 0, 'Petersburg, AK', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1239, 0, 'Phalaborwa', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1240, 0, 'Philadelphia, PA - Int\'l', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1241, 0, 'Phnom Penh - Pochentong', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1242, 0, 'Phoenix, AZ - Sky Harbor Int\'l', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1243, 0, 'Phuket', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1244, 0, 'Pierre, SD', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1245, 0, 'Pietermaritzburg', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1246, 0, 'Pietersburg', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1247, 0, 'Pilanesberg/Sun City', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1248, 0, 'Pisa - Gal Galilei', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1249, 0, 'Pittsburgh Int\'l Airport, PA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1250, 0, 'Plattsburgh, NY', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1251, 0, 'Plettenberg Bay', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1252, 0, 'Pocatello, ID', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1253, 0, 'Podgorica', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1254, 0, 'Pohnpei', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1255, 0, 'Pointe a Pitre', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1256, 0, 'Pointe Noire', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1257, 0, 'Ponce', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1258, 0, 'Ponta Delgada', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1259, 0, 'Pori', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1260, 0, 'Port Angeles, WA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1261, 0, 'Port au Prince', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1262, 0, 'Port Augusta', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1263, 0, 'Port Elizabeth', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1264, 0, 'Port Gentil', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1265, 0, 'Port Harcourt', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1266, 0, 'Port Hedland', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1267, 0, 'Portland', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1268, 0, 'Portland, ME', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1269, 0, 'Portland Int\'l, OR', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1270, 0, 'Port Lincoln', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1271, 0, 'Port Macquarie', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1272, 0, 'Port Menier, PQ', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1273, 0, 'Port Moresby - Jackson Field', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1274, 0, 'Porto', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1275, 0, 'Porto Alegre', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1276, 0, 'Port of Spain', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1277, 0, 'Port Said', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1278, 0, 'Porto Santo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1279, 0, 'Porto Velho', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1280, 0, 'Port Vila', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1281, 0, 'Poughkeepsie, NY', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1282, 0, 'Poznan, Lawica', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1283, 0, 'Prague - Ruzyne', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1284, 0, 'Praia', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1285, 0, 'Presque Island, ME', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1286, 0, 'Pretoria - Wonderboom Apt.', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1287, 0, 'Preveza/Lefkas', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1288, 0, 'Prince George', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1289, 0, 'Prince Rupert/Digby Island', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1290, 0, 'Pristina', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1291, 0, 'Prosperpine', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1292, 0, 'Providence, RI', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1293, 0, 'Prudhoe Bay, AK', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1294, 0, 'Puebla', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1295, 0, 'Pueblo, CO', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1296, 0, 'Puerto Escondido', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1297, 0, 'Puerto Ordaz', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1298, 0, 'Puerto Plata', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1299, 0, 'Puerto Vallarta', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1300, 0, 'Pukatawagan', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1301, 0, 'Pula', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1302, 0, 'Pullman, WA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1303, 0, 'Pune', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1304, 0, 'Punta Arenas', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1305, 0, 'Punta Cana', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1306, 0, 'Pu San (Pusan) - Kimhae', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1307, 0, 'Pyongyang - Sunan', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1308, 0, 'Quebec - Quebec Int\'l', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1309, 0, 'Queenstown', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1310, 0, 'Queenstown', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1311, 0, 'Quetta', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1312, 0, 'Qingdao', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1313, 0, 'Quimper', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1314, 0, 'Quincy, IL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1315, 0, 'Quito - Mariscal Sucr', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1316, 0, 'Rabat - Sale', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1317, 0, 'Rahim Yar Khan', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1318, 0, 'Raiatea', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1319, 0, 'Rainbow Lake, AB', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1320, 0, 'Rajkot', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1321, 0, 'Raleigh/Durham, NC', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1322, 0, 'Ranchi', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1323, 0, 'Rangiroa', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1324, 0, 'Rangoon (Yangon) - Mingaladon', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1325, 0, 'Rapid City, SD', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1326, 0, 'Rarotonga Cook', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1327, 0, 'Ras al Khaymah (Ras al Khaimah)', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1328, 0, 'Rawala Kot', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1329, 0, 'Rawalpindi', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1330, 0, 'Reading, PA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1331, 0, 'Recife', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1332, 0, 'Redding, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1333, 0, 'Redmond, OR', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1334, 0, 'Reggio Calabria', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1335, 0, 'Regina', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1336, 0, 'Reina Sofia', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1337, 0, 'Rennes', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1338, 0, 'Reno, NV', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1339, 0, 'Resolute Bay', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1340, 0, 'Reus', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1341, 0, 'Reykjavik - Metropolitan Area', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1342, 0, 'Reykjavik - Keflavik International', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1343, 0, 'Rhinelander, WI', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1344, 0, 'Rhodos', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1345, 0, 'Richards Bay', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1346, 0, 'Richmond, VA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1347, 0, 'Riga', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1348, 0, 'Rijeka', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1349, 0, 'Rimini', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1350, 0, 'Rio Branco', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1351, 0, 'Rio de Janeiro - Galeao', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1352, 0, 'Rio de Janeiro - Santos Dumont', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1353, 0, 'Rio de Janeiro', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1354, 0, 'Riyadh - King Khaled Int\'l', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1355, 0, 'Roanne', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1356, 0, 'Roanoke, VA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1357, 0, 'Roatan', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1358, 0, 'Rochester, MN', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1359, 0, 'Rochester, NY', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1360, 0, 'Rock Sound', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1361, 0, 'Rock Springs, WY', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1362, 0, 'Rockford, IL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1363, 0, 'Rockhampton', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1364, 0, 'Rockland, ME', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1365, 0, 'Rocky Mount - Wilson, NC', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1366, 0, 'Rodez', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1367, 0, 'Rodrigues Island', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1368, 0, 'Roenne', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1369, 0, 'Rome', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1370, 0, 'Rome - Ciampino', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1371, 0, 'Rome - Fuimicino', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1372, 0, 'Ronneby', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1373, 0, 'Rosario', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1374, 0, 'Rotorua', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1375, 0, 'Rotterdam', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1376, 0, 'Rovaniemi', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1377, 0, 'Rundu', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1378, 0, 'Ruse', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1379, 0, 'Saarbruecken', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1380, 0, 'Sacramento, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1381, 0, 'Sado Shima', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1382, 0, 'Saginaw/Bay City/Midland, MI', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1383, 0, 'Saidu Sharif', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1384, 0, 'Saigon (Ho Chi Minh City)', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1385, 0, 'Saint Brieuc', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1386, 0, 'Saint Denis de la Reunion', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1387, 0, 'Saint John', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1388, 0, 'Saipan', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1389, 0, 'Sal', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1390, 0, 'Salalah', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1391, 0, 'Salem, OR', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1392, 0, 'Salinas, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1393, 0, 'Salinas', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1394, 0, 'Salisbury', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1395, 0, 'Salisbury, MD', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1396, 0, 'Saloniki', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1397, 0, 'Salta, Gen Belgrano', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1398, 0, 'Salt Lake City, UT', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1399, 0, 'Salvador', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1400, 0, 'Salzburg - W.A. Mozart', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1401, 0, 'Samarkand', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1402, 0, 'Samos', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1403, 0, 'San Andres', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1404, 0, 'San Angelo, TX', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1405, 0, 'San Antonio, TX', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1406, 0, 'San Carlos de Bariloche', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1407, 0, 'San Diego - Lindberg Field Int\'l, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1408, 0, 'San Francisco - Int\'l Airport, SA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1409, 0, 'San Jose Cabo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1410, 0, 'San Jose', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1411, 0, 'San Jose, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1412, 0, 'San Juan Perto', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1413, 0, 'San Luis Obisco, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1414, 0, 'San Luis Potosi', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1415, 0, 'San Pedro', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1416, 0, 'San Pedro Sula', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1417, 0, 'San Salvador', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1418, 0, 'San Salvador', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1419, 0, 'San Sebastian', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1420, 0, 'Sanaa (Sana\'a) - Sana\'a International', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1421, 0, 'Sandspit', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1422, 0, 'Santa Barbara, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1423, 0, 'Santa Cruz de la Palma', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1424, 0, 'Santa Cruz de la Sierra', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1425, 0, 'Santa Katarina - Mount Sinai', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1426, 0, 'Santa Maria', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1427, 0, 'Santa Maria, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1428, 0, 'Santander', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1429, 0, 'Santa Rosa, CA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1430, 0, 'Santa Rosa', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1431, 0, 'Santa Rosa', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1432, 0, 'Santa Rosa', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1433, 0, 'Santa Rosa Copan', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1434, 0, 'Santa Rosalia', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1435, 0, 'Santa Rosalia', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1436, 0, 'Santiago - Antonio Maceo Airport', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1437, 0, 'Santiago de Chile - Arturo Merino Benitez', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1438, 0, 'Santiago de Compostela', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1439, 0, 'Santo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1440, 0, 'Santo Domingo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1441, 0, 'Sao Luis', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1442, 0, 'Sao Paulo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1443, 0, 'Sao Paulo - Congonhas', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1444, 0, 'Sao Paulo - Guarulhos', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1445, 0, 'Sao Paulo - Viracopos', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1446, 0, 'Sao Tome', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1447, 0, 'Sapporo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1448, 0, 'Sapporo - Okadama', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1449, 0, 'Sapporo - Shin-Chitose Airport', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL);
INSERT INTO `cities` (`city_id`, `state_id`, `name_en`, `name_ar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1450, 0, 'Sarajevo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1451, 0, 'Sarasota/Bradenton, FL', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1452, 0, 'Saskatoon', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1453, 0, 'Sassandra', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1454, 0, 'Savannah, GA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1455, 0, 'Savonlinna', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1456, 0, 'Scone', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1457, 0, 'Scottsdale, AZ', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1458, 0, 'Seattle/Tacoma, WA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1459, 0, 'Sehba', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1460, 0, 'Seinaejoki', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1461, 0, 'Selibi Phikwe', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1462, 0, 'Sendai', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1463, 0, 'Seoul - Incheon Int\'l Airport', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1464, 0, 'Seoul - Kimpo', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1465, 0, 'Sevilla', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1466, 0, 'Sfax', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1467, 0, 'Shamattawa, MB', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1468, 0, 'Shanghai - Hongqiao', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1469, 0, 'Shanghai - Pu Dong', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1470, 0, 'Shannon (Limerick)', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1471, 0, 'Sharjah', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1472, 0, 'Sharm El Sheikh', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1473, 0, 'Sheffield, City Airport', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1474, 0, 'Sheffield, Doncaster, Robin Hood Int\'l Airport', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1475, 0, 'Shenandoah Valley/Stauton, VA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1476, 0, 'Shenyang', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1477, 0, 'Shenzhen', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1478, 0, 'Sheridan, WY', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1479, 0, 'Shreveport, La', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1480, 0, 'Shute Harbour', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1481, 0, 'Sibu', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1482, 0, 'Sidney, MT', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1483, 0, 'Silistra', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1484, 0, 'Simferopol', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1485, 0, 'Sindhri', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1486, 0, 'Singapore - Paya Lebar', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1487, 0, 'Singapore - Changi', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1488, 0, 'Singleton', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1489, 0, 'Sioux City, IA', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1490, 0, 'Sioux Falls, SD', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1491, 0, 'Sishen', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1492, 0, 'Sitka, AK', '', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1493, 0, 'Siwa', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1494, 0, 'Skagway, AK', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1495, 0, 'Skardu', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1496, 0, 'Skiathos', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1497, 0, 'Skopje', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1498, 0, 'Skrydstrup', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1499, 0, 'Skukuza', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1500, 0, 'Sligo', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1501, 0, 'Smithers', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1502, 0, 'Sodankylae', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1503, 0, 'Soenderborg', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1504, 0, 'Soendre Stroemfjord', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1505, 0, 'Sofia - Vrazhdebna', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1506, 0, 'Sogndal', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1507, 0, 'Southampton - Eastleigh', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1508, 0, 'South Bend, IN', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1509, 0, 'South Indian Lake, MB', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1510, 0, 'South Molle Island', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1511, 0, 'Southend', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1512, 0, 'Split', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1513, 0, 'Spokane, WA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1514, 0, 'Springbok', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1515, 0, 'Springfield, IL', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1516, 0, 'Springfield, MO', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1517, 0, 'Srinagar', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1518, 0, 'St. Augustin, PQ', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1519, 0, 'St. Croix', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1520, 0, 'St. Etienne', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1521, 0, 'St. George, UT', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1522, 0, 'St. John\'s', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1523, 0, 'St. Kitts', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1524, 0, 'St. Louis - Lambert, MO', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1525, 0, 'St. Lucia Hewanorra', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1526, 0, 'St. Lucia Vigle', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1527, 0, 'St. Marteen', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1528, 0, 'St. Martin', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1529, 0, 'St. Petersburg (Leningrad) - Pulkovo', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1530, 0, 'St. Pierre, NF', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1531, 0, 'St. Thomas', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1532, 0, 'St. Vincent', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1533, 0, 'Stansted (London)', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1534, 0, 'State College/Belefonte, PA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1535, 0, 'Stavanger', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1536, 0, 'Steamboat Springs, CO', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1537, 0, 'Stettin', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1538, 0, 'Stockholm Metropolitan Area', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1539, 0, 'Stockholm - Arlanda', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1540, 0, 'Stockholm - Bromma', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1541, 0, 'Stockton, CA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1542, 0, 'Aarhus', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1543, 0, 'Abadan', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1544, 0, 'Abeche', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1545, 0, 'Aberdeen', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1546, 0, 'Aberdeen, SD', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1547, 0, 'Abidjan', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1548, 0, 'Abilene, TX', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1549, 0, 'Abu Dhabi', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1550, 0, 'Abuja International', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1551, 0, 'Abu Rudeis', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1552, 0, 'Abu Simbel', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1553, 0, 'Acapulco', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1554, 0, 'Accra', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1555, 0, 'Adana', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1556, 0, 'Addis Ababa', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1557, 0, 'Adelaide', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1558, 0, 'Aden', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1559, 0, 'Adler/Sochi', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1560, 0, 'Agades', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1561, 0, 'Agadir', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1562, 0, 'Agana', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1563, 0, 'Aggeneys', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1564, 0, 'Aguadilla', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1565, 0, 'Aguascaliente', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1566, 0, 'Ahmedabad', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1567, 0, 'Ajaccio', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1568, 0, 'Akita', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1569, 0, 'Akron, OH', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1570, 0, 'Akrotiri - RAF', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1571, 0, 'Aktyubinsk', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1572, 0, 'Al Ain', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1573, 0, 'Al Arish', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1574, 0, 'Al Arish', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1575, 0, 'Albany', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1576, 0, 'Albany, GA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1577, 0, 'Albany, NY', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1578, 0, 'Albi', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1579, 0, 'Alborg', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1580, 0, 'Albuquerque, NM', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1581, 0, 'Albury', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1582, 0, 'Alesund', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1583, 0, 'Alexander Bay', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1584, 0, 'Alexandria, El Nhouza Airport', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1585, 0, 'Alexandria, La', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1586, 0, 'Alfujairah (Fujairah)', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1587, 0, 'Alghero Sassari', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1588, 0, 'Algiers', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1589, 0, 'Al Hoceima', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1590, 0, 'Alicante', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1591, 0, 'Alice Springs', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1592, 0, 'Alldays', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1593, 0, 'Allentown, PA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1594, 0, 'Alma Ata', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1595, 0, 'Almeria', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1596, 0, 'Alta', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1597, 0, 'Altenrhein', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1598, 0, 'Altoona, PA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1599, 0, 'Amami', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1600, 0, 'Amarillo, TX', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1601, 0, 'Amman, Queen Alia Intl', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1602, 0, 'Amman, Civil - Marka Airport', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1603, 0, 'Amritsar', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1604, 0, 'Amsterdam, Schiphol', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1605, 0, 'Anand', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1606, 0, 'Anchorage, AK', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1607, 0, 'Ancona', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1608, 0, 'Andorra La Vella H/P', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1609, 0, 'Anguilla', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1610, 0, 'Anjouan', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1611, 0, 'Ankara', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1612, 0, 'Annaba', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1613, 0, 'Ann Arbor, MI', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1614, 0, 'Annecy', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1615, 0, 'Anniston, AL', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1616, 0, 'Antalya', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1617, 0, 'Antananarivo (Tanannarive)', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1618, 0, 'Antigua', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1619, 0, 'Antwerp', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1620, 0, 'Aomori', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1621, 0, 'Apia', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1622, 0, 'Appelton/Neenah/Menasha, WI', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1623, 0, 'Aqaba', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1624, 0, 'Aracaju', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1625, 0, 'Arkhangelsk', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1626, 0, 'Arusha', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1627, 0, 'Araxos', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1628, 0, 'Arlit', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1629, 0, 'Armenia', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1630, 0, 'Arrecife/Lanzarote', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1631, 0, 'Aruba', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1632, 0, 'Asheville, NC', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1633, 0, 'Ashgabat, Ashkhabat', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1634, 0, 'Aspen Snowmass, CO', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1635, 0, 'Assiut', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1636, 0, 'Astana', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1637, 0, 'Asuncion', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1638, 0, 'Aswan, Daraw Airport', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1639, 0, 'Athens', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1640, 0, 'Athens, Hellinikon Airport', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1641, 0, 'Athens, GA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1642, 0, 'Athens, OH', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1643, 0, 'Atlanta, Hartsfield Atlanta Int\'l Airport', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1644, 0, 'Atlantic City, NJ', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1645, 0, 'Attawapiskat, NT', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1646, 0, 'Auckland', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1647, 0, 'Augsburg', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1648, 0, 'Augusta, GA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1649, 0, 'Augusta, ME', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1650, 0, 'Aurillac', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1651, 0, 'Austin, TX', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1652, 0, 'Ayers Rock', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1653, 0, 'Ayr', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1654, 0, 'Badajoz', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1655, 0, 'Bagdad, Al Muthana', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1656, 0, 'Bagdad, Saddam International', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1657, 0, 'Bagdogra', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1658, 0, 'Bahawalpur', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1659, 0, 'Bahrain', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1660, 0, 'Bakersfield, CA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1661, 0, 'Baku', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1662, 0, 'Ballina', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1663, 0, 'Baltimore Washington Int\'l Airport; MD', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1664, 0, 'Bamaga', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1665, 0, 'Bamako', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1666, 0, 'Bambari', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1667, 0, 'Bandar Seri Begawan', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1668, 0, 'Bangalore', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1669, 0, 'Bangassou', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1670, 0, 'Bangkok', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1671, 0, 'Bangor, ME', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1672, 0, 'Bangui', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1673, 0, 'Banjul', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1674, 0, 'Bannu', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1675, 0, 'Barcelona', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1676, 0, 'Barcelona', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1677, 0, 'Bardufoss', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1678, 0, 'Bari', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1679, 0, 'Barisal', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1680, 0, 'Baronda', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1681, 0, 'Barranquilla', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1682, 0, 'Basel', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1683, 0, 'Basel/Mulhouse', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1684, 0, 'Basra, Basrah', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1685, 0, 'Bastia', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1686, 0, 'Baton Rouge, La', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1687, 0, 'Bayreuth', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1688, 0, 'Beaumont/Pt. Arthur, TX', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1689, 0, 'Beckley, WV', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1690, 0, 'Beef Island', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1691, 0, 'Beijing', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1692, 0, 'Beijing - Nanyuan Airport', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1693, 0, 'Beira', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1694, 0, 'Beirut', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1695, 0, 'Belem', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1696, 0, 'Belfast - Harbour', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1697, 0, 'Belfast International', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1698, 0, 'Belgaum', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1699, 0, 'Belgrad (Beograd)', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1700, 0, 'Belize City', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1701, 0, 'Bellingham, WA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1702, 0, 'Belo Horizonte', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1703, 0, 'Bemidji, MN', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1704, 0, 'Bengasi', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1705, 0, 'Bengueka', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1706, 0, 'Benton Harbour, MI', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1707, 0, 'Berberati', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1708, 0, 'Bergamo', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1709, 0, 'Bergen', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1710, 0, 'Berlin', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1711, 0, 'Berlin, Schoenefeld', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1712, 0, 'Berlin, Tegel', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1713, 0, 'Berlin, Tempelhof', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1714, 0, 'Bermuda', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1715, 0, 'Bern', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1716, 0, 'Bern', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1717, 0, 'Bethel, AK', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1718, 0, 'Bhopal', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1719, 0, 'Bhubaneswar', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1720, 0, 'Biarritz', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1721, 0, 'Bilbao', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1722, 0, 'Billings, MT', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1723, 0, 'Billund', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1724, 0, 'Bintulu', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1725, 0, 'Biraro', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1726, 0, 'Birmingham', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1727, 0, 'Birmingham, AL', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1728, 0, 'Bismarck/Mandan, ND', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1729, 0, 'Bissau', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1730, 0, 'Blackwater', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1731, 0, 'Blantyre', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1732, 0, 'Blenheim', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1733, 0, 'Bloemfontein', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1734, 0, 'Bloomington, IL', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1735, 0, 'Bloomington, IN', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1736, 0, 'Bluefield, WV', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1737, 0, 'Boa Vista', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1738, 0, 'Bobo/Dioulasso', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1739, 0, 'Bodo', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1740, 0, 'Bogota', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1741, 0, 'Boise, ID', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1742, 0, 'Bologna', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1743, 0, 'Bombay', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1744, 0, 'Bonaire', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1745, 0, 'Bonaventure, PQ', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1746, 0, 'Bora Bora', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1747, 0, 'Bordeaux', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1748, 0, 'Borg El Arab Airport', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1749, 0, 'Borrego Springs, CA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1750, 0, 'Boston - Logan, MA', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1751, 0, 'Bouake', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1752, 0, 'Bourgas/Burgas', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1753, 0, 'Bowen', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1754, 0, 'Bozeman, MT', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1755, 0, 'Bradford/Warren, PA/Olean, NY', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1756, 0, 'Brainerd, MN', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1757, 0, 'Brampton Island', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1758, 0, 'Brasilia', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1759, 0, 'Bratislava', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1760, 0, 'Brazzaville', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1761, 0, 'Bremen', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1762, 0, 'Brescia, Montichiari', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1763, 0, 'Brest', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1764, 0, 'Bria', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1765, 0, 'Bridgeport, CT', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1766, 0, 'Bridgetown, Grantley Adams Int\'l', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1767, 0, 'Brindisi', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1768, 0, 'Brisbane', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1769, 0, 'Bristol', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1770, 0, 'Broennoeysund', '', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1771, 31, 'Sok Algemaa', 'سوق الجمعة', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1772, 31, 'Tagoraa', 'تاجوراء', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1773, 114, 'Khoms', 'الخمس', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1774, 31, 'Aeen Zarah', 'عين زاره', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1775, 31, 'Central Tripoli', 'طرابلس المركز', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1776, 31, 'Tripoli', 'طرابلس', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1777, 106, 'Tarhuna', 'ترهونة', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1778, 93, 'Derna', 'درنة', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1779, 108, 'Gharyan', 'غريان', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1780, 31, 'Karh Bolli', 'قره بوللي', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1781, 111, 'Tobruk', 'طبرق', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1782, 110, 'Zawiya', 'الزاوية', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1783, 109, 'Zuwara', 'زوارة', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1784, 31, 'Swani', 'السواني', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1785, 31, 'Kaser Ben Ghashir', 'قصر بن غشير', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1786, 31, 'Alandalus', 'حي الأندلس', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1787, 31, 'Abo Slim', 'ابو سليم', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1788, 112, 'Ajdabiya', 'إجدابيا', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1789, 113, 'Bani Walid', 'بني وليد', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1790, 28, '-', 'الرياض', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1791, 28, '-', 'الدرعية', '2017-02-21 07:43:07', '0000-00-00 00:00:00', NULL),
(1792, 28, '-', 'الخرج', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1793, 28, '-', 'الدوادمي', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1794, 28, '-', 'المجمعة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1795, 28, '-', 'القويعية', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1796, 28, '-', 'الأفلاج', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1797, 28, '-', 'وادي الدواسر', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1798, 28, '-', 'الزلفي', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1799, 28, '-', 'شقراء', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1800, 28, '-', 'حوطة بني تميم', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1801, 28, '-', 'عفيف', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1802, 28, '-', 'الغاط', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1803, 28, '-', 'السليل', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1804, 28, '-', 'ضرما', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1805, 28, '-', 'المزاحمية', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1806, 28, '-', 'رماح', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1807, 28, '-', 'ثادق', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1808, 28, '-', 'حريملاء', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1809, 28, '-', 'الحريق', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1810, 28, '-', 'مرات', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1811, 27, '-', 'مكة المكرمة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1812, 27, '-', 'جدة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1813, 27, '-', 'الطائف', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1814, 27, '-', 'القنفذة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1815, 27, '-', 'الليث', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1816, 27, '-', 'رابغ', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1817, 27, '-', 'خليص', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1818, 27, '-', 'الخرمة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1819, 27, '-', 'رنية', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1820, 27, '-', 'تربة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1821, 27, '-', 'الجموم', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1822, 27, '-', 'الكامل', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1823, 27, '-', 'المويه', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1824, 27, '-', 'ميسان', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1825, 27, '-', 'أضم', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1826, 27, '-', 'العرضيات', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1827, 27, '-', 'بحرة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1828, 59, '-', 'المدينة المنورة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1829, 59, '-', 'ينبع', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1830, 59, '-', 'العلا', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1831, 59, '-', 'مهد الذهب', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1832, 59, '-', 'الحناكية', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1833, 59, '-', 'بدر', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1834, 59, '-', 'خيبر', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1835, 59, '-', 'العيص', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1836, 59, '-', 'وادي الفرع', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1837, 115, '-', 'بريدة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1838, 115, '-', 'عنيزة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1839, 115, '-', 'الرس', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1840, 115, '-', 'المذنب', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1841, 115, '-', 'البكيرية', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1842, 115, '-', 'البدائع', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1843, 115, '-', 'الأسياح', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1844, 115, '-', 'النبهانية', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1845, 115, '-', 'الشماسية', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1846, 115, '-', 'عيون الجواء', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1847, 115, '-', 'رياض الخبراء', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1848, 115, '-', 'عقلة الصقور', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1849, 115, '-', 'ضرية', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1850, 40, '-', 'الدمام', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1851, 40, '-', 'الأحساء', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1852, 40, '-', 'حفر الباطن', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1853, 40, '-', 'الجبيل', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1854, 40, '-', 'القطيف', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1855, 40, '-', 'الخبر', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1856, 40, '-', 'الخفجي', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1857, 40, '-', 'رأس تنورة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1858, 40, '-', 'بقيق', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1859, 40, '-', 'النعيرية', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1860, 40, '-', 'قرية العليا', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1861, 40, '-', 'العديد', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1862, 55, '-', 'أبها', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1863, 55, '-', 'خميس مشيط', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1864, 55, '-', 'بيشة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1865, 55, '-', 'النماص', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1866, 55, '-', 'محايل عسير', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1867, 55, '-', 'ظهران الجنوب', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1868, 55, '-', 'تثليث', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1869, 55, '-', 'سراة عبيدة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1870, 55, '-', 'رجال ألمع', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1871, 55, '-', 'بلقرن', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1872, 55, '-', 'أحد رفيدة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1873, 55, '-', 'المجاردة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1874, 55, '-', 'البرك', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1875, 55, '-', 'بارق', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1876, 55, '-', 'تنومة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1877, 55, '-', 'طريب', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1878, 57, 'Tabouk', 'تبوك', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1879, 57, '-', 'الوجه', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1880, 57, '-', 'ضبا', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1881, 57, '-', 'تيماء', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1882, 57, '-', 'أملج', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1883, 57, '-', 'حقل', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1884, 57, '-', 'البدع', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1885, 56, '-', 'حائل', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1886, 56, '-', 'بقعاء', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1887, 56, '-', 'الغزالة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1888, 56, '-', 'الشنان', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1889, 56, '-', 'الحائط', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1890, 56, '-', 'السليمي', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1891, 56, '-', 'الشملي', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1892, 56, '-', 'موقق', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1893, 56, '-', 'سميراء', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1894, 116, '-', 'عرعر', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1895, 116, '-', 'رفحاء', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1896, 116, '-', 'طريف', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1897, 116, '-', 'العويقيلة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1898, 117, '-', 'جازان', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1899, 117, '-', 'صبيا', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1900, 117, '-', 'أبو عريش', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1901, 117, '-', 'صامطة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1902, 117, '-', 'بيش', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1903, 117, '-', 'الدرب', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1904, 117, '-', 'الحرث', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1905, 117, '-', 'ضمد', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1906, 117, '-', 'الريث', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1907, 117, '-', 'جزر فرسان', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1908, 117, '-', 'الدائر', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1909, 117, '-', 'العارضة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1910, 117, '-', 'أحد المسارحة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1911, 117, '-', 'العيدابي', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1912, 117, '-', 'فيفاء', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1913, 117, '-', 'الطوال', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1914, 117, '-', 'هروب', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1915, 26, '-', 'نجران', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1916, 26, '-', 'شرورة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1917, 26, '-', 'حبونا', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1918, 26, '-', 'بدر الجنوب', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1919, 26, '-', 'يدمه', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1920, 26, '-', 'ثار', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1921, 26, '-', 'خباش', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1922, 26, '-', 'الخرخير', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1923, 68, '-', 'الباحة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1924, 68, '-', 'بلجرشي', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1925, 68, '-', 'المندق', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1926, 68, '-', 'المخواة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1927, 68, '-', 'قلوة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1928, 68, '-', 'العقيق', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1929, 68, '-', 'القرى', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1930, 68, '-', 'غامد الزناد', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1931, 68, '-', 'الحجرة', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1932, 68, '-', 'بني حسن', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1933, 67, '-', 'سكاكا', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1934, 67, '-', 'القريات', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1935, 67, '-', 'دومة الجندل', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1936, 67, '-', 'طبرجل', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL),
(1937, 118, 'Moscou', 'موسكو', '2017-02-21 07:43:08', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_say`
--

CREATE TABLE `client_say` (
  `client_say_id` int(6) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `say` varchar(2000) NOT NULL,
  `work` varchar(255) NOT NULL,
  `active` char(1) DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_say`
--

INSERT INTO `client_say` (`client_say_id`, `client_name`, `say`, `work`, `active`, `created_at`, `updated_at`) VALUES
(12, 'Mohammad', 'إن الموقه رائع وجميل', 'مبرمج', 'A', '2017-12-14 18:12:57', '2017-12-14 18:12:57'),
(13, 'Ali', 'its amazing website.', 'Teacher', 'A', '2017-12-14 18:13:33', '2017-12-14 18:13:33'),
(14, 'Mehdi', 'its very good.', 'Doctor', 'A', '2017-12-14 18:18:03', '2017-12-14 18:18:03'),
(15, 'Mohammad', 'إن الموقه رائع وجميل شكؤا لكم', 'مبرمج', 'A', '2017-12-14 18:12:57', '2017-12-14 18:12:57'),
(16, 'Ali', 'its amazing and beautiful website.', 'Teacher', 'A', '2017-12-14 18:13:33', '2017-12-14 18:13:33'),
(17, 'Mehdi', 'its very good.', 'Doctor', 'A', '2017-12-14 18:18:03', '2017-12-14 18:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `cmp_counters`
--

CREATE TABLE `cmp_counters` (
  `counter_id` int(11) NOT NULL,
  `title_en` varchar(200) NOT NULL,
  `title_ar` varchar(200) NOT NULL,
  `count` int(11) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `code` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cmp_counters`
--

INSERT INTO `cmp_counters` (`counter_id`, `title_en`, `title_ar`, `count`, `icon`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Lines Of Codes', 'أسطر الأكواد', 11000, 'fa fa-code', 'LOF', '2017-12-14 17:31:35', '2017-12-14 17:31:35', NULL),
(6, 'Hours Of Coding', 'ساعات البرمجة', 326, 'fa fa-clock-o', 'HOF', '2017-12-14 17:33:46', '2017-12-14 17:33:46', NULL),
(7, 'Happy Clients', 'العملاء السعداء', 1200, 'fa fa-users', 'HP', '2017-12-14 17:35:09', '2017-12-14 17:35:09', NULL),
(8, 'Templates', 'القوالب', 246000, 'fa fa-file-text-o', 'TEMP', '2017-12-14 17:37:11', '2017-12-14 17:37:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cmp_generals`
--

CREATE TABLE `cmp_generals` (
  `general_id` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_520_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `cmp_generals`
--

INSERT INTO `cmp_generals` (`general_id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'loader', 'Zeyad', '2017-12-11 16:32:30', '2017-12-11 17:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blog_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `content`, `blog_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'fkljsadol', 108, '2017-12-19 18:00:28', '2017-12-19 15:48:55', NULL),
(2, 1, 'kjkbhb', 108, '2017-12-22 06:06:02', '2017-12-22 06:06:02', '2017-12-22 08:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(11) NOT NULL,
  `code` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `code`, `value`, `expire_date`, `created_at`, `deleted_at`) VALUES
(1, '12345', '15', '2017-12-29', '2017-12-26 16:26:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8_unicode_ci,
  `content_ar` text COLLATE utf8_unicode_ci,
  `place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `title_en`, `title_ar`, `content_en`, `content_ar`, `place`, `date`, `time`, `image`, `created_at`, `updated_at`) VALUES
(1, 'C#', 'C#', NULL, NULL, 'Aleppo', '2017-12-12', '05:03:00', 'gdf.jpeg', '2017-12-14 16:42:20', '2017-12-14 18:50:53'),
(2, 'Java', 'Java', NULL, NULL, 'Damas', '2017-12-18', '05:05:00', 'gdf.jpeg', '2017-12-14 18:51:31', '2017-12-14 18:51:31'),
(3, 'PHP', 'PHP', NULL, NULL, 'Oman', '2017-12-01', '04:05:00', 'gdf.jpeg', '2017-12-14 18:51:50', '2017-12-14 18:51:50'),
(4, 'C#', 'C#', NULL, NULL, 'Aleppo', '2017-12-12', '05:03:00', 'gdf.jpeg', '2017-12-14 16:42:20', '2017-12-14 18:50:53'),
(5, 'Java', 'Java', NULL, NULL, 'Damas', '2017-12-18', '05:05:00', 'gdf.jpeg', '2017-12-14 18:51:31', '2017-12-14 18:51:31'),
(6, 'PHP', 'PHP', NULL, NULL, 'Oman', '2017-12-01', '04:05:00', 'gdf.jpeg', '2017-12-14 18:51:50', '2017-12-14 18:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `font_awesomes`
--

CREATE TABLE `font_awesomes` (
  `font_id` int(11) NOT NULL,
  `icon` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `font_awesomes`
--

INSERT INTO `font_awesomes` (`font_id`, `icon`, `content`, `created_at`, `updated_at`) VALUES
(6, 'fa fa-adjust', 'fa-adjust', '2017-12-14 15:49:32', '2017-12-14 15:49:32'),
(7, 'fa fa-adn', 'fa-adn', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(8, 'fa fa-align-center', 'fa-align-center', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(9, 'fa fa-align-justify', 'fa-align-justify', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(10, 'fa fa-align-left', 'fa-align-left', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(11, 'fa fa-align-right', 'fa-align-right', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(12, 'fa fa-amazon', 'fa-amazon', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(13, 'fa fa-ambulance', 'fa-ambulance', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(14, 'fa fa-american-sign-language-interpreting', 'fa-american-sign-language-interpreting', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(15, 'fa fa-anchor', 'fa-anchor', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(16, 'fa fa-android', 'fa-android', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(17, 'fa fa-angellist', 'fa-angellist', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(18, 'fa fa-angle-double-down', 'fa-angle-double-down', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(19, 'fa fa-angle-double-left', 'fa-angle-double-left', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(20, 'fa fa-angle-double-right', 'fa-angle-double-right', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(21, 'fa fa-angle-double-up', 'fa-angle-double-up', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(22, 'fa fa-angle-down', 'fa-angle-down', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(23, 'fa fa-angle-left', 'fa-angle-left', '2017-12-14 15:49:33', '2017-12-14 15:49:33'),
(24, 'fa fa-angle-right', 'fa-angle-right', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(25, 'fa fa-angle-up', 'fa-angle-up', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(26, 'fa fa-apple', 'fa-apple', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(27, 'fa fa-archive', 'fa-archive', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(28, 'fa fa-area-chart', 'fa-area-chart', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(29, 'fa fa-arrow-circle-down', 'fa-arrow-circle-down', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(30, 'fa fa-arrow-circle-left', 'fa-arrow-circle-left', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(31, 'fa fa-arrow-circle-o-down', 'fa-arrow-circle-o-down', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(32, 'fa fa-arrow-circle-o-left', 'fa-arrow-circle-o-left', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(33, 'fa fa-arrow-circle-o-right', 'fa-arrow-circle-o-right', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(34, 'fa fa-arrow-circle-o-up', 'fa-arrow-circle-o-up', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(35, 'fa fa-arrow-circle-right', 'fa-arrow-circle-right', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(36, 'fa fa-arrow-circle-up', 'fa-arrow-circle-up', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(37, 'fa fa-arrow-down', 'fa-arrow-down', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(38, 'fa fa-arrow-left', 'fa-arrow-left', '2017-12-14 15:49:34', '2017-12-14 15:49:34'),
(39, 'fa fa-arrow-right', 'fa-arrow-right', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(40, 'fa fa-arrow-up', 'fa-arrow-up', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(41, 'fa fa-arrows', 'fa-arrows', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(42, 'fa fa-arrows-alt', 'fa-arrows-alt', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(43, 'fa fa-arrows-h', 'fa-arrows-h', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(44, 'fa fa-arrows-v', 'fa-arrows-v', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(45, 'fa fa-assistive-listening-systems', 'fa-assistive-listening-systems', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(46, 'fa fa-asterisk', 'fa-asterisk', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(47, 'fa fa-at', 'fa-at', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(48, 'fa fa-audio-description', 'fa-audio-description', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(49, 'fa fa-backward', 'fa-backward', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(50, 'fa fa-balance-scale', 'fa-balance-scale', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(51, 'fa fa-ban', 'fa-ban', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(52, 'fa fa-bandcamp', 'fa-bandcamp', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(53, 'fa fa-bar-chart', 'fa-bar-chart', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(54, 'fa fa-barcode', 'fa-barcode', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(55, 'fa fa-bars', 'fa-bars', '2017-12-14 15:49:35', '2017-12-14 15:49:35'),
(56, 'fa fa-bath', 'fa-bath', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(57, 'fa fa-battery-empty', 'fa-battery-empty', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(58, 'fa fa-battery-full', 'fa-battery-full', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(59, 'fa fa-battery-half', 'fa-battery-half', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(60, 'fa fa-battery-quarter', 'fa-battery-quarter', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(61, 'fa fa-battery-three-quarters', 'fa-battery-three-quarters', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(62, 'fa fa-bed', 'fa-bed', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(63, 'fa fa-beer', 'fa-beer', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(64, 'fa fa-behance', 'fa-behance', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(65, 'fa fa-behance-square', 'fa-behance-square', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(66, 'fa fa-bell', 'fa-bell', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(67, 'fa fa-bell-o', 'fa-bell-o', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(68, 'fa fa-bell-slash', 'fa-bell-slash', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(69, 'fa fa-bell-slash-o', 'fa-bell-slash-o', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(70, 'fa fa-bicycle', 'fa-bicycle', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(71, 'fa fa-binoculars', 'fa-binoculars', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(72, 'fa fa-birthday-cake', 'fa-birthday-cake', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(73, 'fa fa-bitbucket', 'fa-bitbucket', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(74, 'fa fa-bitbucket-square', 'fa-bitbucket-square', '2017-12-14 15:49:36', '2017-12-14 15:49:36'),
(75, 'fa fa-black-tie', 'fa-black-tie', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(76, 'fa fa-blind', 'fa-blind', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(77, 'fa fa-bluetooth', 'fa-bluetooth', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(78, 'fa fa-bluetooth-b', 'fa-bluetooth-b', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(79, 'fa fa-bold', 'fa-bold', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(80, 'fa fa-bolt', 'fa-bolt', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(81, 'fa fa-bomb', 'fa-bomb', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(82, 'fa fa-book', 'fa-book', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(83, 'fa fa-bookmark', 'fa-bookmark', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(84, 'fa fa-bookmark-o', 'fa-bookmark-o', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(85, 'fa fa-braille', 'fa-braille', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(86, 'fa fa-briefcase', 'fa-briefcase', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(87, 'fa fa-btc', 'fa-btc', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(88, 'fa fa-bug', 'fa-bug', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(89, 'fa fa-building', 'fa-building', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(90, 'fa fa-building-o', 'fa-building-o', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(91, 'fa fa-bullhorn', 'fa-bullhorn', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(92, 'fa fa-bullseye', 'fa-bullseye', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(93, 'fa fa-bus', 'fa-bus', '2017-12-14 15:49:37', '2017-12-14 15:49:37'),
(94, 'fa fa-buysellads', 'fa-buysellads', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(95, 'fa fa-calculator', 'fa-calculator', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(96, 'fa fa-calendar', 'fa-calendar', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(97, 'fa fa-calendar-check-o', 'fa-calendar-check-o', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(98, 'fa fa-calendar-minus-o', 'fa-calendar-minus-o', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(99, 'fa fa-calendar-o', 'fa-calendar-o', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(100, 'fa fa-calendar-plus-o', 'fa-calendar-plus-o', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(101, 'fa fa-calendar-times-o', 'fa-calendar-times-o', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(102, 'fa fa-camera', 'fa-camera', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(103, 'fa fa-camera-retro', 'fa-camera-retro', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(104, 'fa fa-car', 'fa-car', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(105, 'fa fa-caret-down', 'fa-caret-down', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(106, 'fa fa-caret-left', 'fa-caret-left', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(107, 'fa fa-caret-right', 'fa-caret-right', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(108, 'fa fa-caret-square-o-down', 'fa-caret-square-o-down', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(109, 'fa fa-caret-square-o-left', 'fa-caret-square-o-left', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(110, 'fa fa-caret-square-o-right', 'fa-caret-square-o-right', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(111, 'fa fa-caret-square-o-up', 'fa-caret-square-o-up', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(112, 'fa fa-caret-up', 'fa-caret-up', '2017-12-14 15:49:38', '2017-12-14 15:49:38'),
(113, 'fa fa-cart-arrow-down', 'fa-cart-arrow-down', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(114, 'fa fa-cart-plus', 'fa-cart-plus', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(115, 'fa fa-cc', 'fa-cc', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(116, 'fa fa-cc-amex', 'fa-cc-amex', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(117, 'fa fa-cc-diners-club', 'fa-cc-diners-club', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(118, 'fa fa-cc-discover', 'fa-cc-discover', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(119, 'fa fa-cc-jcb', 'fa-cc-jcb', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(120, 'fa fa-cc-mastercard', 'fa-cc-mastercard', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(121, 'fa fa-cc-paypal', 'fa-cc-paypal', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(122, 'fa fa-cc-stripe', 'fa-cc-stripe', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(123, 'fa fa-cc-visa', 'fa-cc-visa', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(124, 'fa fa-certificate', 'fa-certificate', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(125, 'fa fa-chain-broken', 'fa-chain-broken', '2017-12-14 15:49:39', '2017-12-14 15:49:39'),
(126, 'fa fa-check', 'fa-check', '2017-12-14 15:49:40', '2017-12-14 15:49:40'),
(127, 'fa fa-check-circle', 'fa-check-circle', '2017-12-14 15:49:40', '2017-12-14 15:49:40'),
(128, 'fa fa-check-circle-o', 'fa-check-circle-o', '2017-12-14 15:49:40', '2017-12-14 15:49:40'),
(129, 'fa fa-check-square', 'fa-check-square', '2017-12-14 15:49:40', '2017-12-14 15:49:40'),
(130, 'fa fa-check-square-o', 'fa-check-square-o', '2017-12-14 15:49:40', '2017-12-14 15:49:40'),
(131, 'fa fa-chevron-circle-down', 'fa-chevron-circle-down', '2017-12-14 15:49:40', '2017-12-14 15:49:40'),
(132, 'fa fa-chevron-circle-left', 'fa-chevron-circle-left', '2017-12-14 15:49:40', '2017-12-14 15:49:40'),
(133, 'fa fa-chevron-circle-right', 'fa-chevron-circle-right', '2017-12-14 15:49:40', '2017-12-14 15:49:40'),
(134, 'fa fa-chevron-circle-up', 'fa-chevron-circle-up', '2017-12-14 15:49:40', '2017-12-14 15:49:40'),
(135, 'fa fa-chevron-down', 'fa-chevron-down', '2017-12-14 15:49:40', '2017-12-14 15:49:40'),
(136, 'fa fa-chevron-left', 'fa-chevron-left', '2017-12-14 15:49:41', '2017-12-14 15:49:41'),
(137, 'fa fa-chevron-right', 'fa-chevron-right', '2017-12-14 15:49:41', '2017-12-14 15:49:41'),
(138, 'fa fa-chevron-up', 'fa-chevron-up', '2017-12-14 15:49:41', '2017-12-14 15:49:41'),
(139, 'fa fa-child', 'fa-child', '2017-12-14 15:49:41', '2017-12-14 15:49:41'),
(140, 'fa fa-chrome', 'fa-chrome', '2017-12-14 15:49:41', '2017-12-14 15:49:41'),
(141, 'fa fa-circle', 'fa-circle', '2017-12-14 15:49:41', '2017-12-14 15:49:41'),
(142, 'fa fa-circle-o', 'fa-circle-o', '2017-12-14 15:49:41', '2017-12-14 15:49:41'),
(143, 'fa fa-circle-o-notch', 'fa-circle-o-notch', '2017-12-14 15:49:41', '2017-12-14 15:49:41'),
(144, 'fa fa-circle-thin', 'fa-circle-thin', '2017-12-14 15:49:41', '2017-12-14 15:49:41'),
(145, 'fa fa-clipboard', 'fa-clipboard', '2017-12-14 15:49:41', '2017-12-14 15:49:41'),
(146, 'fa fa-clock-o', 'fa-clock-o', '2017-12-14 15:49:41', '2017-12-14 15:49:41'),
(147, 'fa fa-clone', 'fa-clone', '2017-12-14 15:49:42', '2017-12-14 15:49:42'),
(148, 'fa fa-cloud', 'fa-cloud', '2017-12-14 15:49:42', '2017-12-14 15:49:42'),
(149, 'fa fa-cloud-download', 'fa-cloud-download', '2017-12-14 15:49:42', '2017-12-14 15:49:42'),
(150, 'fa fa-cloud-upload', 'fa-cloud-upload', '2017-12-14 15:49:42', '2017-12-14 15:49:42'),
(151, 'fa fa-code', 'fa-code', '2017-12-14 15:49:42', '2017-12-14 15:49:42'),
(152, 'fa fa-code-fork', 'fa-code-fork', '2017-12-14 15:49:42', '2017-12-14 15:49:42'),
(153, 'fa fa-codepen', 'fa-codepen', '2017-12-14 15:49:42', '2017-12-14 15:49:42'),
(154, 'fa fa-codiepie', 'fa-codiepie', '2017-12-14 15:49:42', '2017-12-14 15:49:42'),
(155, 'fa fa-coffee', 'fa-coffee', '2017-12-14 15:49:42', '2017-12-14 15:49:42'),
(156, 'fa fa-cog', 'fa-cog', '2017-12-14 15:49:42', '2017-12-14 15:49:42'),
(157, 'fa fa-cogs', 'fa-cogs', '2017-12-14 15:49:43', '2017-12-14 15:49:43'),
(158, 'fa fa-columns', 'fa-columns', '2017-12-14 15:49:43', '2017-12-14 15:49:43'),
(159, 'fa fa-comment', 'fa-comment', '2017-12-14 15:49:43', '2017-12-14 15:49:43'),
(160, 'fa fa-comment-o', 'fa-comment-o', '2017-12-14 15:49:43', '2017-12-14 15:49:43'),
(161, 'fa fa-commenting', 'fa-commenting', '2017-12-14 15:49:43', '2017-12-14 15:49:43'),
(162, 'fa fa-commenting-o', 'fa-commenting-o', '2017-12-14 15:49:43', '2017-12-14 15:49:43'),
(163, 'fa fa-comments', 'fa-comments', '2017-12-14 15:49:43', '2017-12-14 15:49:43'),
(164, 'fa fa-comments-o', 'fa-comments-o', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(165, 'fa fa-compass', 'fa-compass', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(166, 'fa fa-compress', 'fa-compress', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(167, 'fa fa-connectdevelop', 'fa-connectdevelop', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(168, 'fa fa-contao', 'fa-contao', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(169, 'fa fa-copyright', 'fa-copyright', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(170, 'fa fa-creative-commons', 'fa-creative-commons', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(171, 'fa fa-credit-card', 'fa-credit-card', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(172, 'fa fa-credit-card-alt', 'fa-credit-card-alt', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(173, 'fa fa-crop', 'fa-crop', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(174, 'fa fa-crosshairs', 'fa-crosshairs', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(175, 'fa fa-css3', 'fa-css3', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(176, 'fa fa-cube', 'fa-cube', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(177, 'fa fa-cubes', 'fa-cubes', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(178, 'fa fa-cutlery', 'fa-cutlery', '2017-12-14 15:49:44', '2017-12-14 15:49:44'),
(179, 'fa fa-dashcube', 'fa-dashcube', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(180, 'fa fa-database', 'fa-database', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(181, 'fa fa-deaf', 'fa-deaf', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(182, 'fa fa-delicious', 'fa-delicious', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(183, 'fa fa-desktop', 'fa-desktop', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(184, 'fa fa-deviantart', 'fa-deviantart', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(185, 'fa fa-diamond', 'fa-diamond', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(186, 'fa fa-digg', 'fa-digg', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(187, 'fa fa-dot-circle-o', 'fa-dot-circle-o', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(188, 'fa fa-download', 'fa-download', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(189, 'fa fa-dribbble', 'fa-dribbble', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(190, 'fa fa-dropbox', 'fa-dropbox', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(191, 'fa fa-drupal', 'fa-drupal', '2017-12-14 15:49:45', '2017-12-14 15:49:45'),
(192, 'fa fa-edge', 'fa-edge', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(193, 'fa fa-eercast', 'fa-eercast', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(194, 'fa fa-eject', 'fa-eject', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(195, 'fa fa-ellipsis-h', 'fa-ellipsis-h', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(196, 'fa fa-ellipsis-v', 'fa-ellipsis-v', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(197, 'fa fa-empire', 'fa-empire', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(198, 'fa fa-envelope', 'fa-envelope', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(199, 'fa fa-envelope-o', 'fa-envelope-o', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(200, 'fa fa-envelope-open', 'fa-envelope-open', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(201, 'fa fa-envelope-open-o', 'fa-envelope-open-o', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(202, 'fa fa-envelope-square', 'fa-envelope-square', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(203, 'fa fa-envira', 'fa-envira', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(204, 'fa fa-eraser', 'fa-eraser', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(205, 'fa fa-etsy', 'fa-etsy', '2017-12-14 15:49:46', '2017-12-14 15:49:46'),
(206, 'fa fa-eur', 'fa-eur', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(207, 'fa fa-exchange', 'fa-exchange', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(208, 'fa fa-exclamation', 'fa-exclamation', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(209, 'fa fa-exclamation-circle', 'fa-exclamation-circle', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(210, 'fa fa-exclamation-triangle', 'fa-exclamation-triangle', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(211, 'fa fa-expand', 'fa-expand', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(212, 'fa fa-expeditedssl', 'fa-expeditedssl', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(213, 'fa fa-external-link', 'fa-external-link', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(214, 'fa fa-external-link-square', 'fa-external-link-square', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(215, 'fa fa-eye', 'fa-eye', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(216, 'fa fa-eye-slash', 'fa-eye-slash', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(217, 'fa fa-eyedropper', 'fa-eyedropper', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(218, 'fa fa-facebook', 'fa-facebook', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(219, 'fa fa-facebook-official', 'fa-facebook-official', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(220, 'fa fa-facebook-square', 'fa-facebook-square', '2017-12-14 15:49:47', '2017-12-14 15:49:47'),
(221, 'fa fa-fast-backward', 'fa-fast-backward', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(222, 'fa fa-fast-forward', 'fa-fast-forward', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(223, 'fa fa-fax', 'fa-fax', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(224, 'fa fa-female', 'fa-female', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(225, 'fa fa-fighter-jet', 'fa-fighter-jet', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(226, 'fa fa-file', 'fa-file', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(227, 'fa fa-file-archive-o', 'fa-file-archive-o', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(228, 'fa fa-file-audio-o', 'fa-file-audio-o', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(229, 'fa fa-file-code-o', 'fa-file-code-o', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(230, 'fa fa-file-excel-o', 'fa-file-excel-o', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(231, 'fa fa-file-image-o', 'fa-file-image-o', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(232, 'fa fa-file-o', 'fa-file-o', '2017-12-14 15:49:48', '2017-12-14 15:49:48'),
(233, 'fa fa-file-pdf-o', 'fa-file-pdf-o', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(234, 'fa fa-file-powerpoint-o', 'fa-file-powerpoint-o', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(235, 'fa fa-file-text', 'fa-file-text', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(236, 'fa fa-file-text-o', 'fa-file-text-o', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(237, 'fa fa-file-video-o', 'fa-file-video-o', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(238, 'fa fa-file-word-o', 'fa-file-word-o', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(239, 'fa fa-files-o', 'fa-files-o', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(240, 'fa fa-film', 'fa-film', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(241, 'fa fa-filter', 'fa-filter', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(242, 'fa fa-fire', 'fa-fire', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(243, 'fa fa-fire-extinguisher', 'fa-fire-extinguisher', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(244, 'fa fa-firefox', 'fa-firefox', '2017-12-14 15:49:49', '2017-12-14 15:49:49'),
(245, 'fa fa-first-order', 'fa-first-order', '2017-12-14 15:49:50', '2017-12-14 15:49:50'),
(246, 'fa fa-flag', 'fa-flag', '2017-12-14 15:49:50', '2017-12-14 15:49:50'),
(247, 'fa fa-flag-checkered', 'fa-flag-checkered', '2017-12-14 15:49:50', '2017-12-14 15:49:50'),
(248, 'fa fa-flag-o', 'fa-flag-o', '2017-12-14 15:49:50', '2017-12-14 15:49:50'),
(249, 'fa fa-flask', 'fa-flask', '2017-12-14 15:49:50', '2017-12-14 15:49:50'),
(250, 'fa fa-flickr', 'fa-flickr', '2017-12-14 15:49:50', '2017-12-14 15:49:50'),
(251, 'fa fa-floppy-o', 'fa-floppy-o', '2017-12-14 15:49:50', '2017-12-14 15:49:50'),
(252, 'fa fa-folder', 'fa-folder', '2017-12-14 15:49:50', '2017-12-14 15:49:50'),
(253, 'fa fa-folder-o', 'fa-folder-o', '2017-12-14 15:49:50', '2017-12-14 15:49:50'),
(254, 'fa fa-folder-open', 'fa-folder-open', '2017-12-14 15:49:50', '2017-12-14 15:49:50'),
(255, 'fa fa-folder-open-o', 'fa-folder-open-o', '2017-12-14 15:49:51', '2017-12-14 15:49:51'),
(256, 'fa fa-font', 'fa-font', '2017-12-14 15:49:51', '2017-12-14 15:49:51'),
(257, 'fa fa-font-awesome', 'fa-font-awesome', '2017-12-14 15:49:51', '2017-12-14 15:49:51'),
(258, 'fa fa-fonticons', 'fa-fonticons', '2017-12-14 15:49:51', '2017-12-14 15:49:51'),
(259, 'fa fa-fort-awesome', 'fa-fort-awesome', '2017-12-14 15:49:51', '2017-12-14 15:49:51'),
(260, 'fa fa-forumbee', 'fa-forumbee', '2017-12-14 15:49:51', '2017-12-14 15:49:51'),
(261, 'fa fa-forward', 'fa-forward', '2017-12-14 15:49:51', '2017-12-14 15:49:51'),
(262, 'fa fa-foursquare', 'fa-foursquare', '2017-12-14 15:49:51', '2017-12-14 15:49:51'),
(263, 'fa fa-free-code-camp', 'fa-free-code-camp', '2017-12-14 15:49:52', '2017-12-14 15:49:52'),
(264, 'fa fa-frown-o', 'fa-frown-o', '2017-12-14 15:49:52', '2017-12-14 15:49:52'),
(265, 'fa fa-futbol-o', 'fa-futbol-o', '2017-12-14 15:49:52', '2017-12-14 15:49:52'),
(266, 'fa fa-gamepad', 'fa-gamepad', '2017-12-14 15:49:52', '2017-12-14 15:49:52'),
(267, 'fa fa-gavel', 'fa-gavel', '2017-12-14 15:49:52', '2017-12-14 15:49:52'),
(268, 'fa fa-gbp', 'fa-gbp', '2017-12-14 15:49:52', '2017-12-14 15:49:52'),
(269, 'fa fa-genderless', 'fa-genderless', '2017-12-14 15:49:52', '2017-12-14 15:49:52'),
(270, 'fa fa-get-pocket', 'fa-get-pocket', '2017-12-14 15:49:52', '2017-12-14 15:49:52'),
(271, 'fa fa-gg', 'fa-gg', '2017-12-14 15:49:53', '2017-12-14 15:49:53'),
(272, 'fa fa-gg-circle', 'fa-gg-circle', '2017-12-14 15:49:53', '2017-12-14 15:49:53'),
(273, 'fa fa-gift', 'fa-gift', '2017-12-14 15:49:53', '2017-12-14 15:49:53'),
(274, 'fa fa-git', 'fa-git', '2017-12-14 15:49:53', '2017-12-14 15:49:53'),
(275, 'fa fa-git-square', 'fa-git-square', '2017-12-14 15:49:53', '2017-12-14 15:49:53'),
(276, 'fa fa-github', 'fa-github', '2017-12-14 15:49:53', '2017-12-14 15:49:53'),
(277, 'fa fa-github-alt', 'fa-github-alt', '2017-12-14 15:49:54', '2017-12-14 15:49:54'),
(278, 'fa fa-github-square', 'fa-github-square', '2017-12-14 15:49:54', '2017-12-14 15:49:54'),
(279, 'fa fa-gitlab', 'fa-gitlab', '2017-12-14 15:49:54', '2017-12-14 15:49:54'),
(280, 'fa fa-glass', 'fa-glass', '2017-12-14 15:49:54', '2017-12-14 15:49:54'),
(281, 'fa fa-glide', 'fa-glide', '2017-12-14 15:49:54', '2017-12-14 15:49:54'),
(282, 'fa fa-glide-g', 'fa-glide-g', '2017-12-14 15:49:54', '2017-12-14 15:49:54'),
(283, 'fa fa-globe', 'fa-globe', '2017-12-14 15:49:54', '2017-12-14 15:49:54'),
(284, 'fa fa-google', 'fa-google', '2017-12-14 15:49:55', '2017-12-14 15:49:55'),
(285, 'fa fa-google-plus', 'fa-google-plus', '2017-12-14 15:49:55', '2017-12-14 15:49:55'),
(286, 'fa fa-google-plus-official', 'fa-google-plus-official', '2017-12-14 15:49:55', '2017-12-14 15:49:55'),
(287, 'fa fa-google-plus-square', 'fa-google-plus-square', '2017-12-14 15:49:55', '2017-12-14 15:49:55'),
(288, 'fa fa-google-wallet', 'fa-google-wallet', '2017-12-14 15:49:55', '2017-12-14 15:49:55'),
(289, 'fa fa-graduation-cap', 'fa-graduation-cap', '2017-12-14 15:49:55', '2017-12-14 15:49:55'),
(290, 'fa fa-gratipay', 'fa-gratipay', '2017-12-14 15:49:55', '2017-12-14 15:49:55'),
(291, 'fa fa-grav', 'fa-grav', '2017-12-14 15:49:55', '2017-12-14 15:49:55'),
(292, 'fa fa-h-square', 'fa-h-square', '2017-12-14 15:49:55', '2017-12-14 15:49:55'),
(293, 'fa fa-hacker-news', 'fa-hacker-news', '2017-12-14 15:49:55', '2017-12-14 15:49:55'),
(294, 'fa fa-hand-lizard-o', 'fa-hand-lizard-o', '2017-12-14 15:49:55', '2017-12-14 15:49:55'),
(295, 'fa fa-hand-o-down', 'fa-hand-o-down', '2017-12-14 15:49:56', '2017-12-14 15:49:56'),
(296, 'fa fa-hand-o-left', 'fa-hand-o-left', '2017-12-14 15:49:56', '2017-12-14 15:49:56'),
(297, 'fa fa-hand-o-right', 'fa-hand-o-right', '2017-12-14 15:49:56', '2017-12-14 15:49:56'),
(298, 'fa fa-hand-o-up', 'fa-hand-o-up', '2017-12-14 15:49:56', '2017-12-14 15:49:56'),
(299, 'fa fa-hand-paper-o', 'fa-hand-paper-o', '2017-12-14 15:49:56', '2017-12-14 15:49:56'),
(300, 'fa fa-hand-peace-o', 'fa-hand-peace-o', '2017-12-14 15:49:56', '2017-12-14 15:49:56'),
(301, 'fa fa-hand-pointer-o', 'fa-hand-pointer-o', '2017-12-14 15:49:56', '2017-12-14 15:49:56'),
(302, 'fa fa-hand-rock-o', 'fa-hand-rock-o', '2017-12-14 15:49:56', '2017-12-14 15:49:56'),
(303, 'fa fa-hand-scissors-o', 'fa-hand-scissors-o', '2017-12-14 15:49:57', '2017-12-14 15:49:57'),
(304, 'fa fa-hand-spock-o', 'fa-hand-spock-o', '2017-12-14 15:49:57', '2017-12-14 15:49:57'),
(305, 'fa fa-handshake-o', 'fa-handshake-o', '2017-12-14 15:49:57', '2017-12-14 15:49:57'),
(306, 'fa fa-hashtag', 'fa-hashtag', '2017-12-14 15:49:57', '2017-12-14 15:49:57'),
(307, 'fa fa-hdd-o', 'fa-hdd-o', '2017-12-14 15:49:57', '2017-12-14 15:49:57'),
(308, 'fa fa-header', 'fa-header', '2017-12-14 15:49:57', '2017-12-14 15:49:57'),
(309, 'fa fa-headphones', 'fa-headphones', '2017-12-14 15:49:57', '2017-12-14 15:49:57'),
(310, 'fa fa-heart', 'fa-heart', '2017-12-14 15:49:57', '2017-12-14 15:49:57'),
(311, 'fa fa-heart-o', 'fa-heart-o', '2017-12-14 15:49:57', '2017-12-14 15:49:57'),
(312, 'fa fa-heartbeat', 'fa-heartbeat', '2017-12-14 15:49:57', '2017-12-14 15:49:57'),
(313, 'fa fa-history', 'fa-history', '2017-12-14 15:49:57', '2017-12-14 15:49:57'),
(314, 'fa fa-home', 'fa-home', '2017-12-14 15:49:58', '2017-12-14 15:49:58'),
(315, 'fa fa-hospital-o', 'fa-hospital-o', '2017-12-14 15:49:58', '2017-12-14 15:49:58'),
(316, 'fa fa-hourglass', 'fa-hourglass', '2017-12-14 15:49:59', '2017-12-14 15:49:59'),
(317, 'fa fa-hourglass-end', 'fa-hourglass-end', '2017-12-14 15:49:59', '2017-12-14 15:49:59'),
(318, 'fa fa-hourglass-half', 'fa-hourglass-half', '2017-12-14 15:49:59', '2017-12-14 15:49:59'),
(319, 'fa fa-hourglass-o', 'fa-hourglass-o', '2017-12-14 15:49:59', '2017-12-14 15:49:59'),
(320, 'fa fa-hourglass-start', 'fa-hourglass-start', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(321, 'fa fa-houzz', 'fa-houzz', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(322, 'fa fa-html5', 'fa-html5', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(323, 'fa fa-i-cursor', 'fa-i-cursor', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(324, 'fa fa-id-badge', 'fa-id-badge', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(325, 'fa fa-id-card', 'fa-id-card', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(326, 'fa fa-id-card-o', 'fa-id-card-o', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(327, 'fa fa-ils', 'fa-ils', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(328, 'fa fa-imdb', 'fa-imdb', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(329, 'fa fa-inbox', 'fa-inbox', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(330, 'fa fa-indent', 'fa-indent', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(331, 'fa fa-industry', 'fa-industry', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(332, 'fa fa-info', 'fa-info', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(333, 'fa fa-info-circle', 'fa-info-circle', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(334, 'fa fa-inr', 'fa-inr', '2017-12-14 15:50:00', '2017-12-14 15:50:00'),
(335, 'fa fa-instagram', 'fa-instagram', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(336, 'fa fa-internet-explorer', 'fa-internet-explorer', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(337, 'fa fa-ioxhost', 'fa-ioxhost', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(338, 'fa fa-italic', 'fa-italic', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(339, 'fa fa-joomla', 'fa-joomla', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(340, 'fa fa-jpy', 'fa-jpy', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(341, 'fa fa-jsfiddle', 'fa-jsfiddle', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(342, 'fa fa-key', 'fa-key', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(343, 'fa fa-keyboard-o', 'fa-keyboard-o', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(344, 'fa fa-krw', 'fa-krw', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(345, 'fa fa-language', 'fa-language', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(346, 'fa fa-laptop', 'fa-laptop', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(347, 'fa fa-lastfm', 'fa-lastfm', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(348, 'fa fa-lastfm-square', 'fa-lastfm-square', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(349, 'fa fa-leaf', 'fa-leaf', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(350, 'fa fa-leanpub', 'fa-leanpub', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(351, 'fa fa-lemon-o', 'fa-lemon-o', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(352, 'fa fa-level-down', 'fa-level-down', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(353, 'fa fa-level-up', 'fa-level-up', '2017-12-14 15:50:01', '2017-12-14 15:50:01'),
(354, 'fa fa-life-ring', 'fa-life-ring', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(355, 'fa fa-lightbulb-o', 'fa-lightbulb-o', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(356, 'fa fa-line-chart', 'fa-line-chart', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(357, 'fa fa-link', 'fa-link', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(358, 'fa fa-linkedin', 'fa-linkedin', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(359, 'fa fa-linkedin-square', 'fa-linkedin-square', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(360, 'fa fa-linode', 'fa-linode', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(361, 'fa fa-linux', 'fa-linux', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(362, 'fa fa-list', 'fa-list', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(363, 'fa fa-list-alt', 'fa-list-alt', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(364, 'fa fa-list-ol', 'fa-list-ol', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(365, 'fa fa-list-ul', 'fa-list-ul', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(366, 'fa fa-location-arrow', 'fa-location-arrow', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(367, 'fa fa-lock', 'fa-lock', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(368, 'fa fa-long-arrow-down', 'fa-long-arrow-down', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(369, 'fa fa-long-arrow-left', 'fa-long-arrow-left', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(370, 'fa fa-long-arrow-right', 'fa-long-arrow-right', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(371, 'fa fa-long-arrow-up', 'fa-long-arrow-up', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(372, 'fa fa-low-vision', 'fa-low-vision', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(373, 'fa fa-magic', 'fa-magic', '2017-12-14 15:50:02', '2017-12-14 15:50:02'),
(374, 'fa fa-magnet', 'fa-magnet', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(375, 'fa fa-male', 'fa-male', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(376, 'fa fa-map', 'fa-map', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(377, 'fa fa-map-marker', 'fa-map-marker', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(378, 'fa fa-map-o', 'fa-map-o', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(379, 'fa fa-map-pin', 'fa-map-pin', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(380, 'fa fa-map-signs', 'fa-map-signs', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(381, 'fa fa-mars', 'fa-mars', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(382, 'fa fa-mars-double', 'fa-mars-double', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(383, 'fa fa-mars-stroke', 'fa-mars-stroke', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(384, 'fa fa-mars-stroke-h', 'fa-mars-stroke-h', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(385, 'fa fa-mars-stroke-v', 'fa-mars-stroke-v', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(386, 'fa fa-maxcdn', 'fa-maxcdn', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(387, 'fa fa-meanpath', 'fa-meanpath', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(388, 'fa fa-medium', 'fa-medium', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(389, 'fa fa-medkit', 'fa-medkit', '2017-12-14 15:50:03', '2017-12-14 15:50:03'),
(390, 'fa fa-meetup', 'fa-meetup', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(391, 'fa fa-meh-o', 'fa-meh-o', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(392, 'fa fa-mercury', 'fa-mercury', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(393, 'fa fa-microchip', 'fa-microchip', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(394, 'fa fa-microphone', 'fa-microphone', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(395, 'fa fa-microphone-slash', 'fa-microphone-slash', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(396, 'fa fa-minus', 'fa-minus', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(397, 'fa fa-minus-circle', 'fa-minus-circle', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(398, 'fa fa-minus-square', 'fa-minus-square', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(399, 'fa fa-minus-square-o', 'fa-minus-square-o', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(400, 'fa fa-mixcloud', 'fa-mixcloud', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(401, 'fa fa-mobile', 'fa-mobile', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(402, 'fa fa-modx', 'fa-modx', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(403, 'fa fa-money', 'fa-money', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(404, 'fa fa-moon-o', 'fa-moon-o', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(405, 'fa fa-motorcycle', 'fa-motorcycle', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(406, 'fa fa-mouse-pointer', 'fa-mouse-pointer', '2017-12-14 15:50:04', '2017-12-14 15:50:04'),
(407, 'fa fa-music', 'fa-music', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(408, 'fa fa-neuter', 'fa-neuter', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(409, 'fa fa-newspaper-o', 'fa-newspaper-o', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(410, 'fa fa-object-group', 'fa-object-group', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(411, 'fa fa-object-ungroup', 'fa-object-ungroup', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(412, 'fa fa-odnoklassniki', 'fa-odnoklassniki', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(413, 'fa fa-odnoklassniki-square', 'fa-odnoklassniki-square', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(414, 'fa fa-opencart', 'fa-opencart', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(415, 'fa fa-openid', 'fa-openid', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(416, 'fa fa-opera', 'fa-opera', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(417, 'fa fa-optin-monster', 'fa-optin-monster', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(418, 'fa fa-outdent', 'fa-outdent', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(419, 'fa fa-pagelines', 'fa-pagelines', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(420, 'fa fa-paint-brush', 'fa-paint-brush', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(421, 'fa fa-paper-plane', 'fa-paper-plane', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(422, 'fa fa-paper-plane-o', 'fa-paper-plane-o', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(423, 'fa fa-paperclip', 'fa-paperclip', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(424, 'fa fa-paragraph', 'fa-paragraph', '2017-12-14 15:50:05', '2017-12-14 15:50:05'),
(425, 'fa fa-pause', 'fa-pause', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(426, 'fa fa-pause-circle', 'fa-pause-circle', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(427, 'fa fa-pause-circle-o', 'fa-pause-circle-o', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(428, 'fa fa-paw', 'fa-paw', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(429, 'fa fa-paypal', 'fa-paypal', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(430, 'fa fa-pencil', 'fa-pencil', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(431, 'fa fa-pencil-square', 'fa-pencil-square', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(432, 'fa fa-pencil-square-o', 'fa-pencil-square-o', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(433, 'fa fa-percent', 'fa-percent', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(434, 'fa fa-phone', 'fa-phone', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(435, 'fa fa-phone-square', 'fa-phone-square', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(436, 'fa fa-picture-o', 'fa-picture-o', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(437, 'fa fa-pie-chart', 'fa-pie-chart', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(438, 'fa fa-pied-piper', 'fa-pied-piper', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(439, 'fa fa-pied-piper-alt', 'fa-pied-piper-alt', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(440, 'fa fa-pied-piper-pp', 'fa-pied-piper-pp', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(441, 'fa fa-pinterest', 'fa-pinterest', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(442, 'fa fa-pinterest-p', 'fa-pinterest-p', '2017-12-14 15:50:06', '2017-12-14 15:50:06'),
(443, 'fa fa-pinterest-square', 'fa-pinterest-square', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(444, 'fa fa-plane', 'fa-plane', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(445, 'fa fa-play', 'fa-play', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(446, 'fa fa-play-circle', 'fa-play-circle', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(447, 'fa fa-play-circle-o', 'fa-play-circle-o', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(448, 'fa fa-plug', 'fa-plug', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(449, 'fa fa-plus', 'fa-plus', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(450, 'fa fa-plus-circle', 'fa-plus-circle', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(451, 'fa fa-plus-square', 'fa-plus-square', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(452, 'fa fa-plus-square-o', 'fa-plus-square-o', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(453, 'fa fa-podcast', 'fa-podcast', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(454, 'fa fa-power-off', 'fa-power-off', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(455, 'fa fa-print', 'fa-print', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(456, 'fa fa-product-hunt', 'fa-product-hunt', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(457, 'fa fa-puzzle-piece', 'fa-puzzle-piece', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(458, 'fa fa-qq', 'fa-qq', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(459, 'fa fa-qrcode', 'fa-qrcode', '2017-12-14 15:50:07', '2017-12-14 15:50:07'),
(460, 'fa fa-question', 'fa-question', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(461, 'fa fa-question-circle', 'fa-question-circle', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(462, 'fa fa-question-circle-o', 'fa-question-circle-o', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(463, 'fa fa-quora', 'fa-quora', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(464, 'fa fa-quote-left', 'fa-quote-left', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(465, 'fa fa-quote-right', 'fa-quote-right', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(466, 'fa fa-random', 'fa-random', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(467, 'fa fa-ravelry', 'fa-ravelry', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(468, 'fa fa-rebel', 'fa-rebel', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(469, 'fa fa-recycle', 'fa-recycle', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(470, 'fa fa-reddit', 'fa-reddit', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(471, 'fa fa-reddit-alien', 'fa-reddit-alien', '2017-12-14 15:50:08', '2017-12-14 15:50:08'),
(472, 'fa fa-reddit-square', 'fa-reddit-square', '2017-12-14 15:50:09', '2017-12-14 15:50:09'),
(473, 'fa fa-refresh', 'fa-refresh', '2017-12-14 15:50:09', '2017-12-14 15:50:09'),
(474, 'fa fa-registered', 'fa-registered', '2017-12-14 15:50:09', '2017-12-14 15:50:09'),
(475, 'fa fa-renren', 'fa-renren', '2017-12-14 15:50:09', '2017-12-14 15:50:09'),
(476, 'fa fa-repeat', 'fa-repeat', '2017-12-14 15:50:10', '2017-12-14 15:50:10'),
(477, 'fa fa-reply', 'fa-reply', '2017-12-14 15:50:10', '2017-12-14 15:50:10'),
(478, 'fa fa-reply-all', 'fa-reply-all', '2017-12-14 15:50:10', '2017-12-14 15:50:10'),
(479, 'fa fa-retweet', 'fa-retweet', '2017-12-14 15:50:10', '2017-12-14 15:50:10'),
(480, 'fa fa-road', 'fa-road', '2017-12-14 15:50:10', '2017-12-14 15:50:10'),
(481, 'fa fa-rocket', 'fa-rocket', '2017-12-14 15:50:10', '2017-12-14 15:50:10'),
(482, 'fa fa-rss', 'fa-rss', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(483, 'fa fa-rss-square', 'fa-rss-square', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(484, 'fa fa-rub', 'fa-rub', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(485, 'fa fa-safari', 'fa-safari', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(486, 'fa fa-scissors', 'fa-scissors', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(487, 'fa fa-scribd', 'fa-scribd', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(488, 'fa fa-search', 'fa-search', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(489, 'fa fa-search-minus', 'fa-search-minus', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(490, 'fa fa-search-plus', 'fa-search-plus', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(491, 'fa fa-sellsy', 'fa-sellsy', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(492, 'fa fa-server', 'fa-server', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(493, 'fa fa-share', 'fa-share', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(494, 'fa fa-share-alt', 'fa-share-alt', '2017-12-14 15:50:11', '2017-12-14 15:50:11'),
(495, 'fa fa-share-alt-square', 'fa-share-alt-square', '2017-12-14 15:50:12', '2017-12-14 15:50:12'),
(496, 'fa fa-share-square', 'fa-share-square', '2017-12-14 15:50:12', '2017-12-14 15:50:12'),
(497, 'fa fa-share-square-o', 'fa-share-square-o', '2017-12-14 15:50:12', '2017-12-14 15:50:12'),
(498, 'fa fa-shield', 'fa-shield', '2017-12-14 15:50:12', '2017-12-14 15:50:12'),
(499, 'fa fa-ship', 'fa-ship', '2017-12-14 15:50:12', '2017-12-14 15:50:12'),
(500, 'fa fa-shirtsinbulk', 'fa-shirtsinbulk', '2017-12-14 15:50:12', '2017-12-14 15:50:12'),
(501, 'fa fa-shopping-bag', 'fa-shopping-bag', '2017-12-14 15:50:12', '2017-12-14 15:50:12'),
(502, 'fa fa-shopping-basket', 'fa-shopping-basket', '2017-12-14 15:50:12', '2017-12-14 15:50:12'),
(503, 'fa fa-shopping-cart', 'fa-shopping-cart', '2017-12-14 15:50:12', '2017-12-14 15:50:12'),
(504, 'fa fa-shower', 'fa-shower', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(505, 'fa fa-sign-in', 'fa-sign-in', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(506, 'fa fa-sign-language', 'fa-sign-language', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(507, 'fa fa-sign-out', 'fa-sign-out', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(508, 'fa fa-signal', 'fa-signal', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(509, 'fa fa-simplybuilt', 'fa-simplybuilt', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(510, 'fa fa-sitemap', 'fa-sitemap', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(511, 'fa fa-skyatlas', 'fa-skyatlas', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(512, 'fa fa-skype', 'fa-skype', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(513, 'fa fa-slack', 'fa-slack', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(514, 'fa fa-sliders', 'fa-sliders', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(515, 'fa fa-slideshare', 'fa-slideshare', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(516, 'fa fa-smile-o', 'fa-smile-o', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(517, 'fa fa-snapchat', 'fa-snapchat', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(518, 'fa fa-snapchat-ghost', 'fa-snapchat-ghost', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(519, 'fa fa-snapchat-square', 'fa-snapchat-square', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(520, 'fa fa-snowflake-o', 'fa-snowflake-o', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(521, 'fa fa-sort', 'fa-sort', '2017-12-14 15:50:13', '2017-12-14 15:50:13'),
(522, 'fa fa-sort-alpha-asc', 'fa-sort-alpha-asc', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(523, 'fa fa-sort-alpha-desc', 'fa-sort-alpha-desc', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(524, 'fa fa-sort-amount-asc', 'fa-sort-amount-asc', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(525, 'fa fa-sort-amount-desc', 'fa-sort-amount-desc', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(526, 'fa fa-sort-asc', 'fa-sort-asc', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(527, 'fa fa-sort-desc', 'fa-sort-desc', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(528, 'fa fa-sort-numeric-asc', 'fa-sort-numeric-asc', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(529, 'fa fa-sort-numeric-desc', 'fa-sort-numeric-desc', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(530, 'fa fa-soundcloud', 'fa-soundcloud', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(531, 'fa fa-space-shuttle', 'fa-space-shuttle', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(532, 'fa fa-spinner', 'fa-spinner', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(533, 'fa fa-spoon', 'fa-spoon', '2017-12-14 15:50:14', '2017-12-14 15:50:14'),
(534, 'fa fa-spotify', 'fa-spotify', '2017-12-14 15:50:15', '2017-12-14 15:50:15'),
(535, 'fa fa-square', 'fa-square', '2017-12-14 15:50:15', '2017-12-14 15:50:15'),
(536, 'fa fa-square-o', 'fa-square-o', '2017-12-14 15:50:15', '2017-12-14 15:50:15'),
(537, 'fa fa-stack-exchange', 'fa-stack-exchange', '2017-12-14 15:50:15', '2017-12-14 15:50:15'),
(538, 'fa fa-stack-overflow', 'fa-stack-overflow', '2017-12-14 15:50:15', '2017-12-14 15:50:15'),
(539, 'fa fa-star', 'fa-star', '2017-12-14 15:50:15', '2017-12-14 15:50:15'),
(540, 'fa fa-star-half', 'fa-star-half', '2017-12-14 15:50:15', '2017-12-14 15:50:15'),
(541, 'fa fa-star-half-o', 'fa-star-half-o', '2017-12-14 15:50:15', '2017-12-14 15:50:15'),
(542, 'fa fa-star-o', 'fa-star-o', '2017-12-14 15:50:16', '2017-12-14 15:50:16'),
(543, 'fa fa-steam', 'fa-steam', '2017-12-14 15:50:16', '2017-12-14 15:50:16'),
(544, 'fa fa-steam-square', 'fa-steam-square', '2017-12-14 15:50:16', '2017-12-14 15:50:16'),
(545, 'fa fa-step-backward', 'fa-step-backward', '2017-12-14 15:50:16', '2017-12-14 15:50:16'),
(546, 'fa fa-step-forward', 'fa-step-forward', '2017-12-14 15:50:16', '2017-12-14 15:50:16'),
(547, 'fa fa-stethoscope', 'fa-stethoscope', '2017-12-14 15:50:16', '2017-12-14 15:50:16'),
(548, 'fa fa-sticky-note', 'fa-sticky-note', '2017-12-14 15:50:16', '2017-12-14 15:50:16'),
(549, 'fa fa-sticky-note-o', 'fa-sticky-note-o', '2017-12-14 15:50:16', '2017-12-14 15:50:16'),
(550, 'fa fa-stop', 'fa-stop', '2017-12-14 15:50:16', '2017-12-14 15:50:16'),
(551, 'fa fa-stop-circle', 'fa-stop-circle', '2017-12-14 15:50:16', '2017-12-14 15:50:16'),
(552, 'fa fa-stop-circle-o', 'fa-stop-circle-o', '2017-12-14 15:50:17', '2017-12-14 15:50:17'),
(553, 'fa fa-street-view', 'fa-street-view', '2017-12-14 15:50:17', '2017-12-14 15:50:17'),
(554, 'fa fa-strikethrough', 'fa-strikethrough', '2017-12-14 15:50:17', '2017-12-14 15:50:17'),
(555, 'fa fa-stumbleupon', 'fa-stumbleupon', '2017-12-14 15:50:17', '2017-12-14 15:50:17'),
(556, 'fa fa-stumbleupon-circle', 'fa-stumbleupon-circle', '2017-12-14 15:50:17', '2017-12-14 15:50:17'),
(557, 'fa fa-subscript', 'fa-subscript', '2017-12-14 15:50:17', '2017-12-14 15:50:17'),
(558, 'fa fa-subway', 'fa-subway', '2017-12-14 15:50:17', '2017-12-14 15:50:17'),
(559, 'fa fa-suitcase', 'fa-suitcase', '2017-12-14 15:50:17', '2017-12-14 15:50:17'),
(560, 'fa fa-sun-o', 'fa-sun-o', '2017-12-14 15:50:17', '2017-12-14 15:50:17'),
(561, 'fa fa-superpowers', 'fa-superpowers', '2017-12-14 15:50:17', '2017-12-14 15:50:17'),
(562, 'fa fa-superscript', 'fa-superscript', '2017-12-14 15:50:18', '2017-12-14 15:50:18'),
(563, 'fa fa-table', 'fa-table', '2017-12-14 15:50:18', '2017-12-14 15:50:18'),
(564, 'fa fa-tablet', 'fa-tablet', '2017-12-14 15:50:18', '2017-12-14 15:50:18'),
(565, 'fa fa-tachometer', 'fa-tachometer', '2017-12-14 15:50:18', '2017-12-14 15:50:18'),
(566, 'fa fa-tag', 'fa-tag', '2017-12-14 15:50:18', '2017-12-14 15:50:18'),
(567, 'fa fa-tags', 'fa-tags', '2017-12-14 15:50:18', '2017-12-14 15:50:18'),
(568, 'fa fa-tasks', 'fa-tasks', '2017-12-14 15:50:18', '2017-12-14 15:50:18'),
(569, 'fa fa-taxi', 'fa-taxi', '2017-12-14 15:50:18', '2017-12-14 15:50:18'),
(570, 'fa fa-telegram', 'fa-telegram', '2017-12-14 15:50:19', '2017-12-14 15:50:19'),
(571, 'fa fa-television', 'fa-television', '2017-12-14 15:50:19', '2017-12-14 15:50:19'),
(572, 'fa fa-tencent-weibo', 'fa-tencent-weibo', '2017-12-14 15:50:19', '2017-12-14 15:50:19'),
(573, 'fa fa-terminal', 'fa-terminal', '2017-12-14 15:50:19', '2017-12-14 15:50:19'),
(574, 'fa fa-text-height', 'fa-text-height', '2017-12-14 15:50:19', '2017-12-14 15:50:19'),
(575, 'fa fa-text-width', 'fa-text-width', '2017-12-14 15:50:19', '2017-12-14 15:50:19'),
(576, 'fa fa-th', 'fa-th', '2017-12-14 15:50:19', '2017-12-14 15:50:19'),
(577, 'fa fa-th-large', 'fa-th-large', '2017-12-14 15:50:19', '2017-12-14 15:50:19'),
(578, 'fa fa-th-list', 'fa-th-list', '2017-12-14 15:50:19', '2017-12-14 15:50:19'),
(579, 'fa fa-themeisle', 'fa-themeisle', '2017-12-14 15:50:19', '2017-12-14 15:50:19'),
(580, 'fa fa-thermometer-empty', 'fa-thermometer-empty', '2017-12-14 15:50:19', '2017-12-14 15:50:19'),
(581, 'fa fa-thermometer-full', 'fa-thermometer-full', '2017-12-14 15:50:20', '2017-12-14 15:50:20');
INSERT INTO `font_awesomes` (`font_id`, `icon`, `content`, `created_at`, `updated_at`) VALUES
(582, 'fa fa-thermometer-half', 'fa-thermometer-half', '2017-12-14 15:50:20', '2017-12-14 15:50:20'),
(583, 'fa fa-thermometer-quarter', 'fa-thermometer-quarter', '2017-12-14 15:50:20', '2017-12-14 15:50:20'),
(584, 'fa fa-thermometer-three-quarters', 'fa-thermometer-three-quarters', '2017-12-14 15:50:20', '2017-12-14 15:50:20'),
(585, 'fa fa-thumb-tack', 'fa-thumb-tack', '2017-12-14 15:50:20', '2017-12-14 15:50:20'),
(586, 'fa fa-thumbs-down', 'fa-thumbs-down', '2017-12-14 15:50:20', '2017-12-14 15:50:20'),
(587, 'fa fa-thumbs-o-down', 'fa-thumbs-o-down', '2017-12-14 15:50:20', '2017-12-14 15:50:20'),
(588, 'fa fa-thumbs-o-up', 'fa-thumbs-o-up', '2017-12-14 15:50:20', '2017-12-14 15:50:20'),
(589, 'fa fa-thumbs-up', 'fa-thumbs-up', '2017-12-14 15:50:20', '2017-12-14 15:50:20'),
(590, 'fa fa-ticket', 'fa-ticket', '2017-12-14 15:50:21', '2017-12-14 15:50:21'),
(591, 'fa fa-times', 'fa-times', '2017-12-14 15:50:21', '2017-12-14 15:50:21'),
(592, 'fa fa-times-circle', 'fa-times-circle', '2017-12-14 15:50:21', '2017-12-14 15:50:21'),
(593, 'fa fa-times-circle-o', 'fa-times-circle-o', '2017-12-14 15:50:21', '2017-12-14 15:50:21'),
(594, 'fa fa-tint', 'fa-tint', '2017-12-14 15:50:21', '2017-12-14 15:50:21'),
(595, 'fa fa-toggle-off', 'fa-toggle-off', '2017-12-14 15:50:21', '2017-12-14 15:50:21'),
(596, 'fa fa-toggle-on', 'fa-toggle-on', '2017-12-14 15:50:21', '2017-12-14 15:50:21'),
(597, 'fa fa-trademark', 'fa-trademark', '2017-12-14 15:50:21', '2017-12-14 15:50:21'),
(598, 'fa fa-train', 'fa-train', '2017-12-14 15:50:21', '2017-12-14 15:50:21'),
(599, 'fa fa-transgender', 'fa-transgender', '2017-12-14 15:50:21', '2017-12-14 15:50:21'),
(600, 'fa fa-transgender-alt', 'fa-transgender-alt', '2017-12-14 15:50:22', '2017-12-14 15:50:22'),
(601, 'fa fa-trash', 'fa-trash', '2017-12-14 15:50:22', '2017-12-14 15:50:22'),
(602, 'fa fa-trash-o', 'fa-trash-o', '2017-12-14 15:50:22', '2017-12-14 15:50:22'),
(603, 'fa fa-tree', 'fa-tree', '2017-12-14 15:50:22', '2017-12-14 15:50:22'),
(604, 'fa fa-trello', 'fa-trello', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(605, 'fa fa-tripadvisor', 'fa-tripadvisor', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(606, 'fa fa-trophy', 'fa-trophy', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(607, 'fa fa-truck', 'fa-truck', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(608, 'fa fa-try', 'fa-try', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(609, 'fa fa-tty', 'fa-tty', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(610, 'fa fa-tumblr', 'fa-tumblr', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(611, 'fa fa-tumblr-square', 'fa-tumblr-square', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(612, 'fa fa-twitch', 'fa-twitch', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(613, 'fa fa-twitter', 'fa-twitter', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(614, 'fa fa-twitter-square', 'fa-twitter-square', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(615, 'fa fa-umbrella', 'fa-umbrella', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(616, 'fa fa-underline', 'fa-underline', '2017-12-14 15:50:23', '2017-12-14 15:50:23'),
(617, 'fa fa-undo', 'fa-undo', '2017-12-14 15:50:24', '2017-12-14 15:50:24'),
(618, 'fa fa-universal-access', 'fa-universal-access', '2017-12-14 15:50:24', '2017-12-14 15:50:24'),
(619, 'fa fa-university', 'fa-university', '2017-12-14 15:50:24', '2017-12-14 15:50:24'),
(620, 'fa fa-unlock', 'fa-unlock', '2017-12-14 15:50:24', '2017-12-14 15:50:24'),
(621, 'fa fa-unlock-alt', 'fa-unlock-alt', '2017-12-14 15:50:24', '2017-12-14 15:50:24'),
(622, 'fa fa-upload', 'fa-upload', '2017-12-14 15:50:24', '2017-12-14 15:50:24'),
(623, 'fa fa-usb', 'fa-usb', '2017-12-14 15:50:24', '2017-12-14 15:50:24'),
(624, 'fa fa-usd', 'fa-usd', '2017-12-14 15:50:25', '2017-12-14 15:50:25'),
(625, 'fa fa-user', 'fa-user', '2017-12-14 15:50:25', '2017-12-14 15:50:25'),
(626, 'fa fa-user-circle', 'fa-user-circle', '2017-12-14 15:50:25', '2017-12-14 15:50:25'),
(627, 'fa fa-user-circle-o', 'fa-user-circle-o', '2017-12-14 15:50:25', '2017-12-14 15:50:25'),
(628, 'fa fa-user-md', 'fa-user-md', '2017-12-14 15:50:25', '2017-12-14 15:50:25'),
(629, 'fa fa-user-o', 'fa-user-o', '2017-12-14 15:50:25', '2017-12-14 15:50:25'),
(630, 'fa fa-user-plus', 'fa-user-plus', '2017-12-14 15:50:25', '2017-12-14 15:50:25'),
(631, 'fa fa-user-secret', 'fa-user-secret', '2017-12-14 15:50:25', '2017-12-14 15:50:25'),
(632, 'fa fa-user-times', 'fa-user-times', '2017-12-14 15:50:25', '2017-12-14 15:50:25'),
(633, 'fa fa-users', 'fa-users', '2017-12-14 15:50:26', '2017-12-14 15:50:26'),
(634, 'fa fa-venus', 'fa-venus', '2017-12-14 15:50:26', '2017-12-14 15:50:26'),
(635, 'fa fa-venus-double', 'fa-venus-double', '2017-12-14 15:50:26', '2017-12-14 15:50:26'),
(636, 'fa fa-venus-mars', 'fa-venus-mars', '2017-12-14 15:50:26', '2017-12-14 15:50:26'),
(637, 'fa fa-viacoin', 'fa-viacoin', '2017-12-14 15:50:26', '2017-12-14 15:50:26'),
(638, 'fa fa-viadeo', 'fa-viadeo', '2017-12-14 15:50:26', '2017-12-14 15:50:26'),
(639, 'fa fa-viadeo-square', 'fa-viadeo-square', '2017-12-14 15:50:26', '2017-12-14 15:50:26'),
(640, 'fa fa-video-camera', 'fa-video-camera', '2017-12-14 15:50:26', '2017-12-14 15:50:26'),
(641, 'fa fa-vimeo', 'fa-vimeo', '2017-12-14 15:50:26', '2017-12-14 15:50:26'),
(642, 'fa fa-vimeo-square', 'fa-vimeo-square', '2017-12-14 15:50:26', '2017-12-14 15:50:26'),
(643, 'fa fa-vine', 'fa-vine', '2017-12-14 15:50:26', '2017-12-14 15:50:26'),
(644, 'fa fa-vk', 'fa-vk', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(645, 'fa fa-volume-control-phone', 'fa-volume-control-phone', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(646, 'fa fa-volume-down', 'fa-volume-down', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(647, 'fa fa-volume-off', 'fa-volume-off', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(648, 'fa fa-volume-up', 'fa-volume-up', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(649, 'fa fa-weibo', 'fa-weibo', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(650, 'fa fa-weixin', 'fa-weixin', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(651, 'fa fa-whatsapp', 'fa-whatsapp', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(652, 'fa fa-wheelchair', 'fa-wheelchair', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(653, 'fa fa-wheelchair-alt', 'fa-wheelchair-alt', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(654, 'fa fa-wifi', 'fa-wifi', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(655, 'fa fa-wikipedia-w', 'fa-wikipedia-w', '2017-12-14 15:50:27', '2017-12-14 15:50:27'),
(656, 'fa fa-window-close', 'fa-window-close', '2017-12-14 15:50:28', '2017-12-14 15:50:28'),
(657, 'fa fa-window-close-o', 'fa-window-close-o', '2017-12-14 15:50:28', '2017-12-14 15:50:28'),
(658, 'fa fa-window-maximize', 'fa-window-maximize', '2017-12-14 15:50:28', '2017-12-14 15:50:28'),
(659, 'fa fa-window-minimize', 'fa-window-minimize', '2017-12-14 15:50:28', '2017-12-14 15:50:28'),
(660, 'fa fa-window-restore', 'fa-window-restore', '2017-12-14 15:50:28', '2017-12-14 15:50:28'),
(661, 'fa fa-windows', 'fa-windows', '2017-12-14 15:50:28', '2017-12-14 15:50:28'),
(662, 'fa fa-wordpress', 'fa-wordpress', '2017-12-14 15:50:29', '2017-12-14 15:50:29'),
(663, 'fa fa-wpbeginner', 'fa-wpbeginner', '2017-12-14 15:50:29', '2017-12-14 15:50:29'),
(664, 'fa fa-wpexplorer', 'fa-wpexplorer', '2017-12-14 15:50:29', '2017-12-14 15:50:29'),
(665, 'fa fa-wpforms', 'fa-wpforms', '2017-12-14 15:50:29', '2017-12-14 15:50:29'),
(666, 'fa fa-wrench', 'fa-wrench', '2017-12-14 15:50:29', '2017-12-14 15:50:29'),
(667, 'fa fa-xing', 'fa-xing', '2017-12-14 15:50:29', '2017-12-14 15:50:29'),
(668, 'fa fa-xing-square', 'fa-xing-square', '2017-12-14 15:50:30', '2017-12-14 15:50:30'),
(669, 'fa fa-y-combinator', 'fa-y-combinator', '2017-12-14 15:50:30', '2017-12-14 15:50:30'),
(670, 'fa fa-yahoo', 'fa-yahoo', '2017-12-14 15:50:30', '2017-12-14 15:50:30'),
(671, 'fa fa-yelp', 'fa-yelp', '2017-12-14 15:50:30', '2017-12-14 15:50:30'),
(672, 'fa fa-yoast', 'fa-yoast', '2017-12-14 15:50:30', '2017-12-14 15:50:30'),
(673, 'fa fa-youtube', 'fa-youtube', '2017-12-14 15:50:30', '2017-12-14 15:50:30'),
(674, 'fa fa-youtube-play', 'fa-youtube-play', '2017-12-14 15:50:30', '2017-12-14 15:50:30'),
(675, 'fa fa-youtube-square', 'fa-youtube-square', '2017-12-14 15:50:30', '2017-12-14 15:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `isLiked` tinyint(1) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `article_id`, `isLiked`, `user_id`) VALUES
(1, 34, 1, 1),
(2, 35, 1, 4),
(3, 71, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about_manager` text COLLATE utf8_unicode_ci,
  `image_manager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8_unicode_ci,
  `mission` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `name`, `about_manager`, `image_manager`, `overview`, `mission`, `created_at`, `updated_at`) VALUES
(1, 'Zeyad', 'dsadas', 'zeyad8a4a519fa69658eddd8471237d79f5487155df6d.jpeg', 'dsad', 'das', '2017-12-26 18:51:11', '2017-12-26 17:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `menu_item_id` int(10) NOT NULL,
  `name_en` varchar(200) NOT NULL,
  `name_ar` varchar(200) NOT NULL,
  `target` varchar(500) DEFAULT NULL,
  `target_extra` varchar(50) DEFAULT NULL,
  `type` char(1) NOT NULL DEFAULT 'I',
  `order` char(5) DEFAULT NULL,
  `is_root` char(1) NOT NULL DEFAULT 'N',
  `parent_id` int(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`menu_item_id`, `name_en`, `name_ar`, `target`, `target_extra`, `type`, `order`, `is_root`, `parent_id`, `deleted_at`, `updated_at`, `created_at`) VALUES
(50, 'Home', 'الرئيسية', 'home', NULL, 'E', 'A0.0', 'N', NULL, NULL, '2017-12-12 16:52:53', '2017-11-25 09:23:34'),
(56, 'Achievments', 'الإنجازات', 'page', 'achievments', 'I', 'B0.0', 'N', NULL, NULL, '2017-12-12 16:53:13', '2017-12-12 14:38:04'),
(57, 'About Us', 'من نحن', NULL, NULL, 'V', 'C0.0', 'Y', NULL, NULL, '2017-12-12 16:53:50', '2017-12-12 16:44:27'),
(58, 'Our Story', 'قصتنا', 'page', 'our-story', 'I', 'C0.1', 'N', 57, NULL, '2017-12-22 10:56:47', '2017-12-12 17:00:37'),
(59, 'Contact', 'اتصل بنا', 'contact', NULL, 'E', 'C0.2', 'N', 57, NULL, '2017-12-12 17:02:14', '2017-12-12 17:02:14'),
(60, 'Our Services', 'خدماتنا', 'our-services', NULL, 'E', 'C0.3', 'N', 57, NULL, '2017-12-12 17:03:13', '2017-12-12 17:03:13'),
(61, 'Common Inquiries', 'استفسارات شائعة', 'common-inquiries', NULL, 'E', 'C0.4', 'N', 57, NULL, '2017-12-12 17:04:30', '2017-12-12 17:04:18'),
(62, 'Blog', 'المدونة', 'blogs', NULL, 'E', 'D0.0', 'N', NULL, NULL, '2017-12-22 10:54:12', '2017-12-12 17:05:24'),
(63, 'Market', 'المتجر', 'market', NULL, 'V', 'E0.0', 'Y', NULL, NULL, '2017-12-12 17:06:16', '2017-12-12 17:06:16'),
(64, 'Services', 'الخدمات', 'services', NULL, 'E', 'E0.1', 'N', 63, NULL, '2017-12-12 17:07:38', '2017-12-12 17:07:38'),
(65, 'Products', 'المنتجات', 'products', NULL, 'E', 'E0.2', 'N', 63, NULL, '2017-12-12 17:08:13', '2017-12-12 17:08:13'),
(66, 'Price Of Another Services', 'أسعار الخدمات الاخرى', 'requests', NULL, 'E', 'E0.3', 'N', 63, NULL, '2017-12-26 17:54:11', '2017-12-12 17:09:28'),
(67, 'Shipping & Delivery', 'الشحن و التسليم', 'shipping-delivery', NULL, 'E', 'E0.4', 'N', 63, NULL, '2017-12-12 17:11:26', '2017-12-12 17:11:26'),
(68, 'Insert Code', 'إدخال كود الدفع', 'insert', NULL, 'E', 'F0', 'N', NULL, NULL, '2017-12-26 17:51:40', '2017-12-26 17:51:40'),
(71, 'Careers', 'فرص العمل', 'careers', NULL, 'E', 'G0', 'N', NULL, NULL, '2017-12-26 19:20:57', '2017-12-26 19:20:57'),
(72, 'Privacy Policies', 'شروط الموقع', 'privacy', NULL, 'E', 'H0', 'N', NULL, NULL, '2017-12-26 19:21:29', '2017-12-26 19:21:29');

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
(1, '2017_12_25_080729_create_advantages_table', 0),
(2, '2017_12_25_080729_create_attribute_page_table', 0),
(3, '2017_12_25_080729_create_attributes_table', 0),
(4, '2017_12_25_080729_create_blogs_table', 0),
(5, '2017_12_25_080729_create_categories_table', 0),
(6, '2017_12_25_080729_create_client_say_table', 0),
(7, '2017_12_25_080729_create_cmp_counters_table', 0),
(8, '2017_12_25_080729_create_cmp_generals_table', 0),
(9, '2017_12_25_080729_create_comments_table', 0),
(10, '2017_12_25_080729_create_courses_table', 0),
(11, '2017_12_25_080729_create_font_awesomes_table', 0),
(12, '2017_12_25_080729_create_likes_table', 0),
(13, '2017_12_25_080729_create_menu_items_table', 0),
(14, '2017_12_25_080729_create_pages_table', 0),
(15, '2017_12_25_080729_create_products_table', 0),
(16, '2017_12_25_080729_create_questions_table', 0),
(17, '2017_12_25_080729_create_requests_table', 0),
(18, '2017_12_25_080729_create_sections_table', 0),
(19, '2017_12_25_080729_create_seos_table', 0),
(20, '2017_12_25_080729_create_services_table', 0),
(21, '2017_12_25_080729_create_shoppingcart_table', 0),
(22, '2017_12_25_080729_create_tags_table', 0),
(23, '2017_12_25_080729_create_team_table', 0),
(24, '2017_12_25_080729_create_users_table', 0),
(25, '2017_12_25_080734_add_foreign_keys_to_products_table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `created_at`, `updated_at`) VALUES
(1, 'home', '2017-11-16 10:27:45', NULL),
(2, 'about', '2017-11-16 11:43:09', NULL),
(3, 'under-construction', '2017-11-16 11:53:27', NULL),
(4, 'coming-soon', '2017-11-18 09:54:14', NULL),
(5, 'services', '2017-11-18 09:54:14', NULL),
(6, 'partners', '2017-11-18 09:55:15', NULL),
(7, 'join-us', '2017-11-18 09:55:15', NULL),
(8, 'login', '2017-11-25 09:04:10', NULL),
(9, 'admin', '2017-11-25 09:50:58', NULL),
(10, 'about-me', '2017-12-26 16:05:50', '2017-12-26 16:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` int(11) NOT NULL,
  `text_en` text COLLATE utf8_unicode_ci,
  `text_ar` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `text_en`, `text_ar`, `created_at`, `updated_at`) VALUES
(1, '<p>vjfdkv.bdkvbdkjbjkdfbkdf,gmd.f</p>', '<p>vxnc k,v xc,mvn xc,</p>', '2017-12-26 19:39:36', '2017-12-26 19:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8_unicode_ci,
  `description_ar` text COLLATE utf8_unicode_ci,
  `price` int(7) NOT NULL,
  `is_saled` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name_en`, `name_ar`, `category_id`, `image`, `description_en`, `description_ar`, `price`, `is_saled`, `sale`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Dean Rice', ' منتج5523', 1, 'blog.jpg', 'Non molestiae omnis porro rerum quibusdam dicta. Laboriosam rerum voluptatem incidunt eos voluptate quaerat quia quo. Ut voluptatum odio quia officia.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1723, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(3, 'Prof. Joey Medhurst', ' منتج22848', 1, 'blog.jpg', 'Soluta itaque at delectus ducimus nemo et laudantium sed. Eveniet qui id est tempore a consequatur accusantium nulla.\nUt aperiam esse consequatur. Fuga pariatur omnis qui recusandae eos ut.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 934, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(4, 'Mr. Guy Price V', ' منتج25358', 1, 'blog.jpg', 'Et inventore optio ducimus qui incidunt et libero. Facere commodi necessitatibus hic est.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1098, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(5, 'Boris Gleason', ' منتج2893', 1, 'blog.jpg', 'Aut aut laudantium cupiditate sit at commodi recusandae. Dolorem ut beatae et culpa eum. Deleniti consequatur error tempora laboriosam ut eos. Aut nihil tenetur sit dolor ad.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 572, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(6, 'Annamae Kutch Sr.', ' منتج18384', 1, 'blog.jpg', 'Id necessitatibus atque quia consequatur illum consequatur omnis. Voluptas nihil sed occaecati non qui. Dolore sed error autem rem dolores aut aperiam. Ex voluptas eos eligendi cum numquam.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 502, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(7, 'Prof. Quincy Klein', ' منتج25172', 1, 'blog.jpg', 'Est aut asperiores ab dolore. Fugiat aut in est laudantium ex repudiandae aut. Magni libero molestias magnam aut est voluptatibus.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 871, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(8, 'Miss Lyda Orn', ' منتج13505', 1, 'blog.jpg', 'Harum nisi est aut quasi voluptatem quia. Quaerat tempora ipsam perspiciatis mollitia.\nIn nam officiis et rerum laborum eum corporis accusamus. Nihil voluptate ut corrupti aliquam quidem.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1314, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(9, 'Alvera Carter', ' منتج11696', 1, 'blog.jpg', 'Nesciunt voluptas excepturi qui. Molestias veritatis quo omnis. Eaque vero aperiam assumenda sunt repellat voluptatem nisi. Dolorem rerum eaque at et.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1335, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(10, 'Cruz Borer PhD', ' منتج11044', 1, 'blog.jpg', 'Ut aut consectetur in aut. Nobis soluta totam eos quia consequatur qui. Dolor esse consequatur aut aut ipsa tempora.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 888, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(11, 'Fredrick Gerlach', ' منتج10841', 1, 'blog.jpg', 'Quod aut error et eaque odit. Quam rerum sed aut laborum. Earum cum iusto reiciendis. Aut non dolores magni vitae ut eum ullam.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1594, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(12, 'Prof. Scarlett Batz', ' منتج20449', 1, 'blog.jpg', 'Pariatur enim in rerum occaecati. Illum dicta aliquam et est aut quod modi. Dolores tenetur aut asperiores fugit molestiae accusamus quisquam quia. Beatae est blanditiis eaque.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1673, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(13, 'Prof. Edwin McLaughlin', ' منتج3738', 1, 'blog.jpg', 'Aliquid soluta ducimus et est vel officiis et quaerat. Tempora maxime adipisci repellat quia. Optio praesentium magni voluptates voluptate nihil et fugiat.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 889, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(14, 'Gerry Blick', ' منتج5775', 1, 'blog.jpg', 'Sint sunt animi commodi. Necessitatibus vel fuga illo in facere similique et. Eligendi in doloremque magni omnis iure sed. Nihil sunt nisi adipisci ut molestias autem eaque.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1977, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(15, 'Albert Lesch DDS', ' منتج24180', 1, 'blog.jpg', 'Quaerat iste ab explicabo a voluptatem delectus. Sed eum omnis omnis et et quisquam.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1635, NULL, NULL, '2017-12-17 19:25:52', NULL, NULL),
(16, 'Kelly Senger', ' منتج7133', 1, 'blog.jpg', 'Et voluptatum quos quos quis tempora praesentium. Quia ab nesciunt sunt voluptatibus commodi optio quod. Alias ea nobis rerum magni.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 838, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(17, 'Irwin Barrows MD', ' منتج2794', 1, 'blog.jpg', 'Nisi maiores minima ex reprehenderit. Illum consectetur nihil est nobis. Quam autem id nihil est rem qui similique officia.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1841, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(18, 'Alisa Beer', ' منتج21862', 1, 'blog.jpg', 'Voluptas vitae sed voluptatem. Ea veniam voluptatem ut in beatae. Et vel asperiores expedita porro velit.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1064, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(19, 'Jason Wyman', ' منتج18742', 1, 'blog.jpg', 'Necessitatibus quia atque vel temporibus. Error ut illo cum eum ad. Eos voluptatem non qui soluta tenetur nihil error ex.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 913, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(20, 'Angelica Cremin', ' منتج18368', 1, 'blog.jpg', 'Voluptates odit consectetur explicabo cupiditate. Nulla labore culpa natus eius fuga autem velit qui. Est quaerat et nulla magnam. Autem iure molestiae voluptas quas quis pariatur.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1060, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(21, 'Milo Botsford', ' منتج4520', 1, 'blog.jpg', 'Optio natus ut at suscipit ducimus sunt a. Doloribus architecto eum sed aut earum. Odit consequuntur est corrupti omnis.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1021, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(22, 'Dr. Arnaldo Will Sr.', ' منتج6647', 1, 'blog.jpg', 'Cum enim aliquid dolor nam in quasi. Ut et vel qui ipsum. Atque expedita consequatur nam alias ea. Officia omnis sed praesentium.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 725, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(23, 'Althea Hermann DDS', ' منتج6673', 1, 'blog.jpg', 'Neque corrupti repudiandae ipsam praesentium quia. Iure ea qui et iusto recusandae ea. Quos ut molestiae quis quia.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1928, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(24, 'Jaylen McDermott', ' منتج9566', 1, 'blog.jpg', 'Voluptatem ad sit est aperiam. Vitae exercitationem est est voluptatem qui earum. Quo voluptatem et qui quisquam architecto.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1061, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(25, 'John Schiller', ' منتج252', 1, 'blog.jpg', 'Nihil consequatur ipsa alias in. Ipsum minus dolorem deserunt dolorum magni sed illum. Voluptas eos possimus laudantium doloremque. Facere vero doloremque cum inventore sed doloribus rerum.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 574, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(26, 'Oceane Bins', ' منتج13842', 1, 'blog.jpg', 'Quis voluptate repudiandae eaque libero iste molestiae. Eos magnam similique in sapiente. Nesciunt at perferendis qui nam.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 732, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(27, 'Dora Bogan', ' منتج19098', 1, 'blog.jpg', 'Cumque incidunt saepe voluptatem amet est. Quo quis atque eveniet sed qui. Corporis dolorem rerum sequi odio ipsam quo in. Ipsum ut aut minus aut.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 777, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(28, 'Penelope Jacobs', ' منتج9176', 1, 'blog.jpg', 'Repudiandae libero architecto et sit reprehenderit est. Eum asperiores enim quia et commodi. Cupiditate ut saepe incidunt consectetur. Dolor et quidem rerum nesciunt.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1024, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(29, 'Gerardo Roberts', ' منتج9564', 1, 'blog.jpg', 'Aliquam ut sunt rem minus enim hic quas. Rerum amet consectetur rem dolorum. Reprehenderit et quidem praesentium ipsa sunt tenetur.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1835, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(30, 'Prof. Kaleigh Emard', ' منتج11713', 1, 'blog.jpg', 'Laborum quod et expedita voluptatibus. Sunt provident pariatur et eos. Voluptatem sed veniam et at amet.\nUt et ea in nemo amet debitis. In in asperiores omnis sit. Quia aut corporis non provident.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1696, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(31, 'Prof. Ned Erdman', ' منتج7111', 1, 'blog.jpg', 'Id omnis consequatur voluptas autem consequatur quia ea. Debitis est exercitationem eveniet. Nisi et vero mollitia ut sed ullam. Est facilis voluptas veritatis id facere.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1867, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(32, 'Simone Parisian', ' منتج658', 1, 'blog.jpg', 'Quia iusto amet cupiditate praesentium. Ut aut vitae autem quis rem debitis. Voluptas qui omnis laboriosam culpa est.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1585, NULL, NULL, '2017-12-17 19:25:53', NULL, NULL),
(33, 'Nakia Keeling', ' منتج21609', 1, 'blog.jpg', 'Ut architecto odit rem nulla. Sed dolores quia expedita ex voluptate.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1740, NULL, NULL, '2017-12-17 19:25:54', NULL, NULL),
(34, 'Prof. Diamond Lind IV', ' منتج19671', 1, 'blog.jpg', 'Dolor nemo ex mollitia nisi et. Occaecati ratione in et laboriosam. Neque voluptas quidem nemo eveniet optio placeat sunt voluptatem.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1501, NULL, NULL, '2017-12-17 19:25:54', NULL, NULL),
(35, 'Cassidy Lemke', ' منتج11304', 1, 'blog.jpg', 'Vitae at et harum et consequuntur et. Odit voluptates qui repudiandae consectetur. Et eum reiciendis nam delectus est. Voluptates praesentium aut illo.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 507, NULL, NULL, '2017-12-17 19:25:54', NULL, NULL),
(36, 'Ladarius Howell', ' منتج22695', 1, 'blog.jpg', 'Neque dolores sed sed enim asperiores. Eum dolor debitis et repellat soluta. Quidem fugit voluptatum fuga non.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1693, NULL, NULL, '2017-12-17 19:25:54', NULL, NULL),
(37, 'Moriah Yost', ' منتج6274', 1, 'blog.jpg', 'Maxime veniam delectus ut voluptatem beatae ut. Quas laboriosam minus veritatis ipsa. Nam sit qui sed est exercitationem. Et excepturi et pariatur sit.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1388, NULL, NULL, '2017-12-17 19:25:54', NULL, NULL),
(38, 'Jo Ruecker', ' منتج20855', 1, 'blog.jpg', 'Quis minima odio est ratione. Quasi et officiis dignissimos voluptas dolorum. Rerum facilis vitae eum accusamus a.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1543, NULL, NULL, '2017-12-17 19:25:54', NULL, NULL),
(39, 'Jarrett Klocko', ' منتج20172', 1, 'blog.jpg', 'Ut velit eum officia autem. Ducimus eligendi quos molestiae dolore. Laudantium tenetur cum aut officia amet voluptatem provident.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1163, NULL, NULL, '2017-12-17 19:25:54', NULL, NULL),
(40, 'Davin Prohaska', ' منتج13823', 1, 'blog.jpg', 'Ab ratione quo amet saepe. Aut mollitia necessitatibus soluta et quia eum. Tempora assumenda itaque velit dolore delectus nulla qui. At eligendi at ipsum tempore dolorum dolorem.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 500, NULL, NULL, '2017-12-17 19:25:54', NULL, NULL),
(41, 'Petra Oberbrunner', ' منتج14996', 1, 'blog.jpg', 'Omnis dolorum iure tempore et cupiditate ut sunt. Adipisci tenetur aut ad error eveniet ullam. Rerum asperiores beatae impedit dolores sit inventore laborum numquam.', '\r\nشبكات تمكنك من بناء بنية صلبة وشكل في التصميمات الخاصة بك. هذا الكتاب سوف اقول لكم لماذا وكيف يمكن استخدام أنظمة الشبكة لتحقيق التأثير المطلوب في تصميم المواقع. مزيد من المعلومات عن الطرق المقترحة لتنظيم وحدات موقعك.', 1837, NULL, NULL, '2017-12-17 19:25:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `text`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'هل لديكم متجر خاص؟', 'أجل لدينا,', '2017-12-14 19:49:58', '2017-12-14 19:49:58'),
(2, 'هل تمتلكون سحابة الكترونية؟', 'لا, وشكرا', '2017-12-14 19:50:32', '2017-12-14 19:50:32'),
(3, 'Do you have ps4?', 'Yes, we do.', '2017-12-14 19:51:08', '2017-12-14 19:51:08'),
(4, 'هل لديكم زلاجة الكترونية؟', 'أجل لدينا,', '2017-12-14 19:49:58', '2017-12-14 19:49:58'),
(5, 'هل تمتلكون موقع أخر؟', 'لا, وشكرا', '2017-12-14 19:50:32', '2017-12-14 19:50:32'),
(6, 'Do you have Xbox?', 'Yes, we do.', '2017-12-14 19:51:08', '2017-12-14 19:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `request_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_plcae` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_way` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_bool` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_way` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paper_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `print_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_choices` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_design` text COLLATE utf8_unicode_ci,
  `experiences` text COLLATE utf8_unicode_ci,
  `reason` text COLLATE utf8_unicode_ci,
  `side_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `is_accepted` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`request_id`, `name`, `email`, `phone`, `delivery_plcae`, `delivery_way`, `shipping_bool`, `payment_way`, `paper_type`, `doc_type`, `print_type`, `other_choices`, `description_design`, `experiences`, `reason`, `side_type`, `price`, `is_accepted`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Aktaa', 'memeaktaa@gmail.com', '0945345645', NULL, NULL, NULL, 'bank_transfer', NULL, NULL, NULL, NULL, 'jvbdfsk', NULL, NULL, NULL, NULL, NULL, '2017-12-22 14:57:45', '2017-12-22 14:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `section_id` int(11) NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`section_id`, `name_en`, `name_ar`, `value`, `order`, `created_at`, `updated_at`) VALUES
(2, 'blogs', 'المدونة', 1, 11, '2017-12-15 18:00:34', '2017-12-15 18:32:33'),
(3, 'shop', 'المتجر', 1, 13, '2017-12-15 18:00:51', '2017-12-15 18:33:11'),
(4, 'advantages', 'المميزات', 1, 9, '2017-12-15 18:01:34', '2017-12-15 18:32:13'),
(5, 'brands-logo', 'اللوغو والشعارات', 1, 14, '2017-12-15 18:02:58', '2017-12-15 18:33:51'),
(6, 'our-story', 'قصتنا', 1, 2, '2017-12-15 18:03:30', '2017-12-15 18:29:43'),
(8, 'team', 'الفريق', 1, 8, '2017-12-15 18:04:02', '2017-12-15 18:32:04'),
(9, 'cooperating', 'التعاون', 1, 6, '2017-12-15 18:05:26', '2017-12-15 18:31:24'),
(10, 'counter-opinions', 'العدادات والآراء', 1, 7, '2017-12-15 18:05:54', '2017-12-15 18:31:43'),
(11, 'upcoming-products', 'المنتجات القادمة', 1, 12, '2017-12-15 18:06:37', '2017-12-15 18:32:47'),
(12, 'what-we-do', 'ماذا نفعل', 1, 3, '2017-12-15 18:06:55', '2017-12-15 18:30:51'),
(13, 'contact', 'اتصل بنا', 1, 10, '2017-12-15 18:07:13', '2017-12-15 18:32:26'),
(14, 'study-with-us', 'ادرس معنا', 1, 5, '2017-12-15 18:07:35', '2017-12-15 18:31:13'),
(15, 'statistics-questions', 'الإحصائيات و الأسئلة الشائعة', 1, 4, '2017-12-15 18:09:46', '2017-12-15 18:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(11) NOT NULL,
  `title_en` varchar(200) NOT NULL,
  `title_ar` varchar(200) NOT NULL,
  `description_en` varchar(310) NOT NULL,
  `description_ar` varchar(310) NOT NULL,
  `keyword_en` varchar(300) NOT NULL,
  `keyword_ar` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `title_en`, `title_ar`, `description_en`, `description_ar`, `keyword_en`, `keyword_ar`, `created_at`, `updated_at`) VALUES
(4, 'fdgdf', 'bkbn,', '<p>bnmb mnb&nbsp;</p>', '<p>b nm,b ,n m</p>', 'nm,n ,m', 'bn,b nb', '2017-12-11 19:57:50', '2017-12-11 19:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `name_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `name_en`, `name_ar`, `content_en`, `content_ar`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'GRAPHIC DESIGN', 'تصميم الواجهات', 'Graphic design plays a vital role in all our templates. In Brave, it stands in the first place. Performed by qualified and highly talented designers, this template can impress anyone.', 'تصميم الجرافيك يلعب دورا حيويا في جميع قوالبنا. في بريف، فإنه يقف في المقام الأول. يؤديها المصممين المؤهلين والموهوبين للغاية، وهذا القالب يمكن إقناع أي شخص.', 'fa fa-bookmark', '2017-12-14 16:10:35', '2017-12-15 11:34:48'),
(2, 'DEVELOPMENT', 'المطورين', 'The developers at Incomemake every effort to enable our templates with unparalleled functionality based on Bootstrap Framework and Advanced UI Kit.', 'المطورين في انكوم يبذلون كل جهد ممكن لتمكين قوالب لدينا مع وظائف لا مثيل لها على أساس بوتستراب الإطار و أوي المتقدمة كيت.', 'fa fa-code', '2017-12-14 16:18:45', '2017-12-15 11:32:09'),
(3, 'Paying', 'الدفع', 'Paying is easy with us', 'الدفع لدينا سهل', 'fa fa-paypal', '2017-12-15 11:26:55', '2017-12-15 11:26:55'),
(5, 'MARKETING', 'التسوق', 'We provide a wide variety of marketing services and proper support included in our templates. This allows you to promote your products and services using Brave and its features.', 'نحن نقدم مجموعة واسعة من الخدمات التسويقية والدعم المناسب المدرجة في قوالب لدينا. هذا يسمح لك للترويج للمنتجات والخدمات الخاصة بك باستخدام الشجعان وميزاته.', 'fa fa-microphone', '2017-12-15 11:28:09', '2017-12-15 11:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `text_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_ar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_of_btn` int(2) DEFAULT NULL,
  `btn1_text` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btn2_text` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `text_en`, `text_ar`, `num_of_btn`, `btn1_text`, `btn2_text`, `url1`, `url2`, `created_at`, `updated_at`) VALUES
(1, 'sda', 'das', 2, 'das', 'das', 'das', 'das', '2017-12-26 15:47:37', '2017-12-26 15:47:37'),
(2, 'eqwr', 'rwe', 1, 'rwe', NULL, 'rwe', NULL, '2017-12-26 15:47:49', '2017-12-26 15:47:49');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `name_en`, `name_ar`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Buissnes', 'أعمال', 'BUS', '2017-12-17 17:12:40', '2017-12-17 17:12:40'),
(2, 'Fun', 'ضحك', 'FUN', '2017-12-17 17:12:52', '2017-12-17 17:12:52'),
(3, 'Cultural', 'ثقافي', 'CUT', '2017-12-17 17:13:21', '2017-12-17 17:13:21'),
(4, 'Music', 'موسيقا', 'MUS', '2017-12-17 17:14:32', '2017-12-17 17:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `name_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `job_title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_title_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_order` int(3) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `name_en`, `name_ar`, `job_title_en`, `job_title_ar`, `facebook`, `linkedin`, `google`, `team_order`, `image`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mohammad', 'محمد', 'Programmer', 'مبرمج', 'Mohammad Aktaa', 'Mohammad Aktaa', 'Mohammad Aktaa', 1, 'zeyad84ac6422dad39265bc34d020875364be45cf6a09.jpeg', NULL, '2017-12-14 19:11:47', '2017-12-26 17:00:09', NULL),
(2, 'Mohammad Aktaa', 'Mohammad Aktaa', 'Designer', 'مصمم', 'Mohammad Aktaa', 'v', 'Mohammad Aktaa', 2, 'mohammad_aktaae46b3472d4d06db58a006e4312c74d761f7550ef.jpeg', NULL, '2017-12-14 19:12:04', '2017-12-15 19:32:30', NULL),
(3, 'Ali', 'علي', 'Analyser', 'محلل', 'Mohammad Aktaa', 'Mohammad Aktaa', 'Mohammad Aktaa', 3, 'ali9c6d08673aeecf7652d2a7ae55a5bed443b36f33.jpeg', NULL, '2017-12-14 19:12:36', '2017-12-15 19:33:06', NULL),
(4, 'Zeyad', 'زياد', 'Developer', 'مطور', 'Zeyad', 'Zeyad', 'Zeyad', 4, 'zeyad69dadd9d7777ad556af8490b490e1779a27995fa.jpeg', NULL, '2017-12-14 19:13:06', '2017-12-15 19:35:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_money` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `account_money`, `is_admin`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'mohammad', 'memeaktaa@gmail.com', '9500', 1, NULL, '$2y$10$FIan1IRZCTlDGyik54sBnuwF6wmm7FE/kLbEHNxWFobDeBS63Jvv6', NULL, '2017-12-23 05:41:45', '2017-12-26 17:49:23'),
(5, 'zeyad', 'zeyad@gmail.com', '20000', 0, NULL, '$2y$10$jEI4ZieWrOHuK9pgfxOoGO45gFLbzmnGIRquNCobfp/slim9LA0Qe', NULL, '2017-12-23 05:43:57', '2017-12-23 05:43:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advantages`
--
ALTER TABLE `advantages`
  ADD PRIMARY KEY (`advantage_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `attribute_page`
--
ALTER TABLE `attribute_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`card_id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `client_say`
--
ALTER TABLE `client_say`
  ADD PRIMARY KEY (`client_say_id`);

--
-- Indexes for table `cmp_counters`
--
ALTER TABLE `cmp_counters`
  ADD PRIMARY KEY (`counter_id`);

--
-- Indexes for table `cmp_generals`
--
ALTER TABLE `cmp_generals`
  ADD PRIMARY KEY (`general_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `font_awesomes`
--
ALTER TABLE `font_awesomes`
  ADD PRIMARY KEY (`font_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`menu_item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advantages`
--
ALTER TABLE `advantages`
  MODIFY `advantage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `attribute_page`
--
ALTER TABLE `attribute_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;
--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1938;
--
-- AUTO_INCREMENT for table `client_say`
--
ALTER TABLE `client_say`
  MODIFY `client_say_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `cmp_counters`
--
ALTER TABLE `cmp_counters`
  MODIFY `counter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cmp_generals`
--
ALTER TABLE `cmp_generals`
  MODIFY `general_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `font_awesomes`
--
ALTER TABLE `font_awesomes`
  MODIFY `font_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=676;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `menu_item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `category_product` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
