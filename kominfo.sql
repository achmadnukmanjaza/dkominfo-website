-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 08:32 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kominfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kel_desa`
--

CREATE TABLE `kel_desa` (
  `no` int(11) NOT NULL,
  `kecamatan_id` int(33) NOT NULL,
  `kel_desa` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kel_desa`
--

INSERT INTO `kel_desa` (`no`, `kecamatan_id`, `kel_desa`) VALUES
(1, 1, 'Pondokagung'),
(2, 1, 'Bayem'),
(3, 1, 'Wonoagung'),
(4, 1, 'Kasembon'),
(5, 1, 'Sukosari'),
(6, 1, 'Pait'),
(7, 2, 'Pagersari'),
(8, 2, 'Sidodadi'),
(9, 2, 'Banjarejo'),
(10, 2, 'Purworejo'),
(11, 2, 'Ngantru'),
(12, 2, 'Banturejo'),
(13, 2, 'Pandansari'),
(14, 2, 'Mulyorejo'),
(15, 2, 'Sumberagung'),
(16, 2, 'Kaumrejo'),
(17, 2, 'Tulungrejo'),
(18, 2, 'Waturejo'),
(19, 2, 'Jombok'),
(20, 3, 'Bendosari'),
(21, 3, 'Sukomulyo'),
(22, 3, 'Pujon Kidul'),
(23, 3, 'Pandesari'),
(24, 3, 'Pujon Lor'),
(25, 3, 'Ngroto'),
(26, 3, 'Ngabab'),
(27, 3, 'Tawangsari'),
(28, 3, 'Madiredo'),
(29, 3, 'Wiyurejo'),
(30, 4, 'Pagetan'),
(31, 4, 'Losari'),
(32, 4, 'Candirenggo'),
(33, 4, 'Wonorejo'),
(34, 4, 'Dengkol'),
(35, 4, 'Baturetno'),
(36, 4, 'Watugede'),
(37, 4, 'Banjararum'),
(38, 4, 'Langlang'),
(39, 4, 'Purwoasri'),
(40, 4, 'Klampok'),
(41, 4, 'Gunungrejo'),
(42, 4, 'Tamanharjo'),
(43, 4, 'Ardimulyo'),
(44, 4, 'Toyomarto'),
(45, 4, 'Randuagung'),
(46, 4, 'Tunjungtirto'),
(47, 5, 'Kalirejo'),
(48, 5, 'Lawang'),
(49, 5, 'Sidoluhur'),
(50, 5, 'Srigading'),
(51, 5, 'Sidodadi'),
(52, 5, 'Bedali'),
(53, 5, 'Mulyoarjo'),
(54, 5, 'Sumbergepoh'),
(55, 5, 'Sumberporong'),
(56, 5, 'Turirejo'),
(57, 5, 'Ketindan'),
(58, 5, 'Wonorejo'),
(59, 6, 'Tegalgondo'),
(60, 6, 'Kepuharjo'),
(61, 6, 'Ngenep'),
(62, 6, 'Ngijo'),
(63, 6, 'Ampeldento'),
(64, 6, 'Girimoyo'),
(65, 6, 'Bocek'),
(66, 6, 'Donowarih'),
(67, 6, 'Tawangargo'),
(68, 7, 'Kucur'),
(69, 7, 'Kalisongo'),
(70, 7, 'Karangwidoro'),
(71, 7, 'Tegalweru'),
(72, 7, 'Landungsari'),
(73, 7, 'Gadingkulon'),
(74, 7, 'Petungsewu'),
(75, 7, 'Selorejo'),
(76, 7, 'Sumbersekar'),
(77, 7, 'Mulyoagung'),
(78, 8, 'Ngingit'),
(79, 8, 'Kidal'),
(80, 8, 'Kambingan'),
(81, 8, 'Pandanajeng'),
(82, 8, 'Pulungdowo'),
(83, 8, 'Bokor'),
(84, 8, 'Slamet'),
(85, 8, 'Jeru'),
(86, 8, 'Wringinsongo'),
(87, 8, 'Malangsuko'),
(88, 8, 'Tumpang'),
(89, 8, 'Tulusbesar '),
(90, 8, 'Duwet'),
(91, 8, 'Benjor'),
(92, 8, 'Duwet Krajan'),
(93, 9, 'Kedungrejo'),
(94, 9, 'Banjarejo'),
(95, 9, 'Pucangsongo'),
(96, 9, 'Sukoanyar'),
(97, 9, 'Sumberpasir'),
(98, 9, 'Sumberkeradenan'),
(99, 9, 'Ampeldento'),
(100, 9, 'Sekarpuro'),
(101, 9, 'Mangliawan'),
(102, 9, 'Tirtomulyo'),
(103, 9, 'Sapterenggo'),
(104, 9, 'Asrikaton'),
(105, 9, 'Bunutwetan'),
(106, 9, 'Pakisjajar'),
(107, 9, 'Pakiskembar'),
(108, 10, 'Taji'),
(109, 10, 'Ngadirejo'),
(110, 10, 'Kenongo'),
(111, 10, 'Sidorejo'),
(112, 10, 'Sukapuro'),
(113, 10, 'Pandansari Lor'),
(114, 10, 'Sidomulyo'),
(115, 10, 'Gadingkembar'),
(116, 10, 'Argosari'),
(117, 10, 'Kemantren'),
(118, 10, 'Sukolilo'),
(119, 10, 'Gunungjati'),
(120, 10, 'Jabung'),
(121, 10, 'Slamparejo'),
(122, 10, 'Kemiri'),
(123, 11, 'Dawuhan'),
(124, 11, 'Sumberejo'),
(125, 11, 'Pandansari'),
(126, 11, 'Ngadireso'),
(127, 11, 'Wonorejo'),
(128, 11, 'Karangnongko'),
(129, 11, 'Karanganyar'),
(130, 11, 'Jambesari'),
(131, 11, 'Ngebruk'),
(132, 11, 'Pajaran'),
(133, 11, 'Argosuko'),
(134, 11, 'Wonomulyo'),
(135, 11, 'Belung'),
(136, 11, 'Wringinanom'),
(137, 11, 'Poncokusumo'),
(138, 11, 'Gubugklakah'),
(139, 11, 'Ngadas'),
(140, 12, 'Sudimoro'),
(141, 12, 'Kasri'),
(142, 12, 'Bakalan'),
(143, 12, 'Krebet'),
(144, 12, 'Gading'),
(145, 12, 'Sukonolo'),
(146, 12, 'Lumbangsari'),
(147, 12, 'Wandanpuro'),
(148, 12, 'Sempalwadak'),
(149, 12, 'Bululawang'),
(150, 12, 'Krebet Senggrong'),
(151, 12, 'Kuwolu'),
(152, 12, 'Kasembon'),
(153, 12, 'Pringo'),
(154, 13, 'Sumberputih'),
(155, 13, 'Wonoayu'),
(156, 13, 'Codo'),
(157, 13, 'Sukolilo'),
(158, 13, 'Bambang'),
(159, 13, 'Bringin'),
(160, 13, 'Dadapan'),
(161, 13, 'Patokpicis'),
(162, 13, 'Blayu'),
(163, 13, 'Kidangbang'),
(164, 13, 'Sukoanyar'),
(165, 13, 'Wajak'),
(166, 13, 'Ngembal'),
(167, 14, 'Gunungsari'),
(168, 14, 'Gunungronggo'),
(169, 14, 'Purwosekar'),
(170, 14, 'Ngawonggo'),
(171, 14, 'Pandanmulyo'),
(172, 14, 'Jatisari'),
(173, 14, 'Tajinan'),
(174, 14, 'Randugading'),
(175, 14, 'Jambearjo'),
(176, 14, 'Tangkilsari'),
(177, 14, 'Sumbersuko'),
(178, 14, 'Tambakasri'),
(179, 15, 'Gondanglegi Wetan'),
(180, 15, 'Gondanglegi Kulon'),
(181, 15, 'Putat Lor'),
(182, 15, 'Putat Kidul'),
(183, 15, 'Urek Urek'),
(184, 15, 'Putukrejo'),
(185, 15, 'Sumberjaya'),
(186, 15, 'Bulupitu'),
(187, 15, 'Ganjaran'),
(188, 15, 'Panggungrejo'),
(189, 15, 'Sukosari'),
(190, 15, 'Sepanjang'),
(191, 15, 'Ketawang'),
(192, 15, 'Sukorejo'),
(193, 16, 'Pagelaran'),
(194, 16, 'Banjarejo'),
(195, 16, 'Brongkal'),
(196, 16, 'Kanigoro'),
(197, 16, 'Kademangan'),
(198, 16, 'Sidorejo'),
(199, 16, 'Swaru'),
(200, 16, 'Clumprit'),
(201, 16, 'Karangsuko'),
(202, 16, 'Balearjo'),
(203, 17, 'Sedayu'),
(204, 17, 'Turen'),
(205, 17, 'Tawangrejeni'),
(206, 17, 'Kemulan'),
(207, 17, 'Sawahan'),
(208, 17, 'Undakan'),
(209, 17, 'Kedok kulon'),
(210, 17, 'Kedok Wetan'),
(211, 17, 'Talok'),
(212, 17, 'Tanggung'),
(213, 17, 'Jeru'),
(214, 17, 'Pagedangan'),
(215, 17, 'Sananrejo'),
(216, 17, 'Sanankerto'),
(217, 17, 'Kedok'),
(218, 17, 'Talangsuko'),
(219, 17, 'Tumpukrenteng'),
(220, 18, 'Dampit'),
(221, 18, 'Sukodono'),
(222, 18, 'Sumbersuko'),
(223, 18, 'Srimulyo'),
(224, 18, 'Baturetno'),
(225, 18, 'Bumirejo'),
(226, 18, 'Amadanom'),
(227, 18, 'Pamotan'),
(228, 18, 'Majangtengah'),
(229, 18, 'Rembun'),
(230, 18, 'Pojok'),
(231, 18, 'Jambangan'),
(232, 19, 'Pujiharjo'),
(233, 19, 'Sumbertangkil'),
(234, 19, 'Kepatihan'),
(235, 19, 'Jogomulyan'),
(236, 19, 'Tlogosari'),
(237, 19, 'Ampelgading'),
(238, 19, 'Gadungsari'),
(239, 19, 'Wonoagung'),
(240, 19, 'Tamankuncaran'),
(241, 19, 'Tamansatrian'),
(242, 19, 'Tirtoyudo'),
(243, 19, 'Sukorejo'),
(244, 19, 'Purwodadi'),
(245, 20, 'Lebakharjo'),
(246, 20, 'Wirotaman'),
(247, 20, 'Tamansari'),
(248, 20, 'Tirtomarto'),
(249, 20, 'Argoyuwono'),
(250, 20, 'Mulyoasri'),
(251, 20, 'Tawangagung'),
(252, 20, 'Simojayan'),
(253, 20, 'Tamanasri'),
(254, 20, 'Sonowangi'),
(255, 20, 'Purwoharjo'),
(256, 20, 'Sidorenggo'),
(257, 20, 'Tirtomoyo'),
(258, 21, 'Tambakasri'),
(259, 21, 'Tegalrejo'),
(260, 21, 'Sekarbanyu'),
(261, 21, 'Klepu'),
(262, 21, 'Ringinkembar'),
(263, 21, 'Kedungbanteng'),
(264, 21, 'Sitiarjo'),
(265, 21, 'Sumberagung'),
(266, 21, 'Argotirto'),
(267, 21, 'Harjokuncaran'),
(268, 21, 'Sumbermanjing Wetan'),
(269, 21, 'Ringinsari'),
(270, 21, 'Druju'),
(271, 21, 'Tambakrejo'),
(272, 21, 'Sidoasri'),
(273, 22, 'Penarukan'),
(274, 22, 'Cempokomulyo'),
(275, 22, 'Kepanjen'),
(276, 22, 'Ardirejo'),
(277, 22, 'Kemiri'),
(278, 22, 'Sengguruh'),
(279, 22, 'Mangunrejo'),
(280, 22, 'Jenggolo'),
(281, 22, 'Kedungpandaringan'),
(282, 22, 'Jatirejoyoso'),
(283, 22, 'Mojosari'),
(284, 22, 'Ngadilangkung'),
(285, 22, 'Talangagung'),
(286, 22, 'Panggungrejo'),
(287, 22, 'Tegalsari'),
(288, 22, 'Sukoraharjo'),
(289, 22, 'Curungrejo'),
(290, 22, 'Dilem'),
(291, 23, 'Permanu'),
(292, 23, 'Karangpandan'),
(293, 23, 'Glanggang'),
(294, 23, 'Wonokerso'),
(295, 23, 'Karangduren'),
(296, 23, 'Sutojayan'),
(297, 23, 'Pakisaji'),
(298, 23, 'Jatisari'),
(299, 23, 'Wadung'),
(300, 23, 'Kendalpayak'),
(301, 23, 'Genengan'),
(302, 23, 'Kebonagung'),
(303, 24, 'Sumbersuko'),
(304, 24, 'Mendalanwangi'),
(305, 24, 'Sitirejo'),
(306, 24, 'Parangargo'),
(307, 24, 'Gondowangi'),
(308, 24, 'Pandanrejo'),
(309, 24, 'Petungsewu'),
(310, 24, 'Sukodadi'),
(311, 24, 'Sidorahayu'),
(312, 24, 'Dalisodo'),
(313, 24, 'Pandanlandung'),
(314, 24, 'Jedong'),
(315, 25, 'Ngajum'),
(316, 25, 'Palaan'),
(317, 25, 'Banjarsari'),
(318, 25, 'Krangan'),
(319, 25, 'Kesamben'),
(320, 25, 'Maguan'),
(321, 25, 'Balesari'),
(322, 25, 'Babadan'),
(323, 25, 'Ngasem'),
(324, 26, 'Wonosari'),
(325, 26, 'Kebobang'),
(326, 26, 'Plaosan'),
(327, 26, 'Kluwut'),
(328, 26, 'Bangelan'),
(329, 26, 'Sumbertempur'),
(330, 26, 'Sumberdem'),
(331, 26, 'Plandi'),
(332, 27, 'Jatiguwi'),
(333, 27, 'Sambigede'),
(334, 27, 'Senggreng'),
(335, 27, 'Trenyang'),
(336, 27, 'Ngebruk'),
(337, 27, 'Karangkates'),
(338, 27, 'Sumberpucung'),
(339, 28, 'Kromengan'),
(340, 28, 'Slorok'),
(341, 28, 'Jatikerto'),
(342, 28, 'Ngadirejo'),
(343, 28, 'Peniwen'),
(344, 28, 'Jambuwer'),
(345, 28, 'Karangrejo'),
(346, 29, 'Sumbermanjing Kulon'),
(347, 29, 'Pandanrejo'),
(348, 29, 'Sumberkerto'),
(349, 29, 'Sempol'),
(350, 29, 'Pagak'),
(351, 29, 'Tlogorejo'),
(352, 29, 'Gampingan'),
(353, 29, 'Sumberejo'),
(354, 30, 'Putukrejo'),
(355, 30, 'Kalipare'),
(356, 30, 'Sumberpetung'),
(357, 30, 'Sukowilangun'),
(358, 30, 'Tumpakrejo'),
(359, 30, 'Arjosari'),
(360, 30, 'Kalirejo'),
(361, 30, 'Arjowinangun'),
(362, 30, 'Kaliasri'),
(363, 31, 'Tulungejo'),
(364, 31, 'Banjarejo'),
(365, 31, 'Kadungsalam'),
(366, 31, 'Tlogosari'),
(367, 31, 'Tempursari'),
(368, 31, 'Donomulyo'),
(369, 31, 'Purworejo'),
(370, 31, 'Sumberoto'),
(371, 31, 'Mentaraman'),
(372, 31, 'Purwodadi'),
(373, 32, 'Sidodadi'),
(374, 32, 'Gajahrejo'),
(375, 32, 'Sindurejo'),
(376, 32, 'Gedangan'),
(377, 32, 'Segaran'),
(378, 32, 'Sumberejo'),
(379, 32, 'Tumpakrejo'),
(380, 32, 'Girimulyo'),
(381, 33, 'Wonokerto'),
(382, 33, 'Rejosari'),
(383, 33, 'Bantur'),
(384, 33, 'Wonorejo'),
(385, 33, 'Srigonco'),
(386, 33, 'Sumberbening'),
(387, 33, 'Bandungrejo'),
(388, 33, 'Pringgondani'),
(389, 33, 'Rejoyoso'),
(390, 33, 'Karangsari');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_kecamatan`
--

CREATE TABLE `m_kecamatan` (
  `id_kecamatan` int(20) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kecamatan`
--

INSERT INTO `m_kecamatan` (`id_kecamatan`, `nama_kecamatan`, `active`) VALUES
(1, 'Kasembon', 1),
(2, 'Ngantang', 1),
(3, 'Pujon', 1),
(4, 'Singosari', 1),
(5, 'Lawang', 1),
(6, 'Karangploso', 1),
(7, 'Dau', 1),
(8, 'Tumpang', 1),
(9, 'Pakis', 1),
(10, 'Jabung', 1),
(11, 'Poncokusumo', 1),
(12, 'Bululawang', 1),
(13, 'Wajak', 1),
(14, 'Tajinan', 1),
(15, 'Gondanglegi', 1),
(16, 'Pagelaran', 1),
(17, 'Turen', 1),
(18, 'Dampit', 1),
(19, 'Tirtoyudo', 1),
(20, 'Ampelgading', 1),
(21, 'Sumberwajing Wetan', 1),
(22, 'Kepanjen', 1),
(23, 'Pakisaji', 1),
(24, 'Wagir', 1),
(25, 'Ngajum', 1),
(26, 'Wonosari', 1),
(27, 'Suberpucung', 1),
(28, 'Kromengan', 1),
(29, 'Pagak', 1),
(30, 'Kalipare', 1),
(31, 'Donomulyo', 1),
(32, 'Gedangan', 1),
(33, 'Bantur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_guru`
--

CREATE TABLE `t_guru` (
  `nik` bigint(16) NOT NULL,
  `no_guru` varchar(11) NOT NULL,
  `no_kecamatan` set('Kasembon','Ngantang','Pujon','Singosari','Lawang','Karangploso','Dau','Tumpang','Pakis','Jabung','Poncokusumo','Bululawang','Wajak','Tajinan','Gondanglegi','Pagelaran','Turen','Dampit','Tirtoyudo','Ampelgading','Sumberwajing Wetan','Kepanjen','Pakisaji','Wagir','Ngajum','Wonosari','Suberpucung','Kromengan','Pagak','Kalipare','Donomulyo','Gedangan','Bantur') NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `rt` varchar(2) NOT NULL,
  `rw` varchar(2) NOT NULL,
  `kel_desa` varchar(200) NOT NULL,
  `nama_lembaga` varchar(200) NOT NULL,
  `alamat_lembaga` varchar(200) NOT NULL,
  `jenis_lembaga` set('TPQ','Sekolah Minggu','Pasrainan','') NOT NULL,
  `NSTPQ` bigint(15) NOT NULL,
  `nama_rekening` varchar(200) NOT NULL,
  `no_rekening` bigint(11) NOT NULL,
  `cabang` varchar(200) NOT NULL,
  `no_hp` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Bintal', 'bintal@gmail.com', NULL, '$2y$10$emQOSZPBf/D8bXbYqsN9Wu77Ot0ptH.aEwVTwr9HF8y5tL.yAe9Gu', 'XF5mTQ1vcjEvIE4YlBfl1GCMiZtdUmHMPRkYuNbteB2OY8ARJd5H2Tk93Eas', '2020-10-04 23:32:36', '2020-10-04 23:32:36'),
(2, 'users', 'Kasembon', 'kasembon@gmail.com', NULL, '$2y$10$xy/8prkX/S0KbrBO8HU5Ruw.gZUP18BKQzjuPR1ZXqzhZ1OlfuP7O', 'xEqah9UUxD7TAYfAKR7TpP71hfQNhYT7FLAFts2niUqONT4AT78ZwAS0Txcu', '2020-10-14 19:50:54', '2020-10-14 19:50:54'),
(3, 'users', 'Ngantang', 'ngantang@gmail.com', NULL, '$2y$10$wYDCyw85NS9TR.znu1hvauvHbaAFSC6qD17hDN0yHRG6wzlm7cDyS', 'TdBlfYKSMUqto3hXvezlGA7YhAMM5hP7F6yD8tTvizaDYDAthax9tY30LypY', '2020-10-15 07:23:46', '2020-10-15 07:23:46'),
(4, 'users', 'Pujon', 'pujon@gmail.com', NULL, '$2y$10$skXnvxf44kkn3ZKEdu/1qeKOwywqevtCDio3xqBfIQkgnQ5Dy1zVu', 'jCmexdoL3Kd1mkyLCCNXj1YlmppL5PVJRrFbe0W99byD1hP9iiUTLa65enmg', '2020-10-15 07:26:23', '2020-10-15 07:26:23'),
(5, 'users', 'Singosari', 'singosari@gmail.com', NULL, '$2y$10$jokJEE3XCz5ybKwfVp01eebCwJmD.aRtHFR4nAtN/89PbBiO.olEe', '8q29Vel6vahN520zgFExjCAowOmvgJCXIY9n4BE3ExRGweDgJES13YkaJlmk', '2020-10-15 07:28:11', '2020-10-15 07:28:11'),
(6, 'users', 'Lawang', 'lawang@gmail.com', NULL, '$2y$10$SrMQI17M20hL5N0RBsBgMuFNEj2NgnsYwTHpigeD.mXnykb4Istmq', 'C9BvvUGzHPfXPNxe1DoSRVE2A37OKlVvS16s4cg0ctxB7msai9pR1sQ4OUwU', '2020-10-15 07:29:01', '2020-10-15 07:29:01'),
(7, 'users', 'Karangploso', 'karangploso@gmail.com', NULL, '$2y$10$BHD7Qn0.fPqQf3YHHZGXCu0is5R9s5xAfAtDbvukMzW9CM2NKkxem', 'MpoldxHTVssmFlPX5h11NJu1Jo0npEtvOvX8QTQg8LtA1cIkkuyAAHbcef5s', '2020-10-15 07:30:38', '2020-10-15 07:30:38'),
(8, 'users', 'Dau', 'dau@gmail.com', NULL, '$2y$10$3uKhg26oDU3ttqklbjNqd.n46cFhmzYzydU.IX/ndRFJV7mGNbYjm', 'MMJjiGAfSCtNKJqxfuiz6GHRhCLdbZeqEchUQCke0K4tBaTFQxRIceoYQz9C', '2020-10-15 07:31:33', '2020-10-15 07:31:33'),
(9, 'users', 'Tumpang', 'tumpang@gmail.com', NULL, '$2y$10$vq3KOoa2vV479iBspZGOrOydk/VzZzBcdKWSr7GmuNXhYjgxdlblq', 'uZ2Nt1sjrCK2xICdaYKVSmX6yPmXfiKkI52erY6gSvO73NLpH2Yy4naureKn', '2020-10-15 07:32:56', '2020-10-15 07:32:56'),
(10, 'users', 'Pakis', 'pakis@gmail.com', NULL, '$2y$10$oxJB0ocdKvu1r7AnNYcvSu3L4w3jOiCG7h7NTz4MB4ve4enykTaE6', 'uv2qoAOLl4WgvDLjsakeedsvHgZrQTTaUvs5avzaIxTVI4SphGyKT7n0aefc', '2020-10-15 07:34:24', '2020-10-15 07:34:24'),
(11, 'users', 'Jabung', 'jabung@gmail.com', NULL, '$2y$10$9gtTiYtrXIYB/OrvWHQZhObpZ8TlL.rADxADRbjwt/d8XFUSxo2cu', 'IJKx5tX12z6vaXfQ6ngRFKfEXGQnT9tCphGYpZf6qfjwaBfEsgoIfjDZLWrP', '2020-10-15 07:35:05', '2020-10-15 07:35:05'),
(12, 'users', 'Poncokusumo', 'poncokusumo@gmail.com', NULL, '$2y$10$ZuxhNL32Nq.MQKZsQdNEruWlIYXhSONox4d.ddCHs8y.J.wAfk8WG', '29aTRy8gvTX5bM42ynlqYn6c16hK1h7Yu40XSefWZJHYx1i3ghIb7SVH0ZkG', '2020-10-15 07:37:57', '2020-10-15 07:37:57'),
(13, 'users', 'Bululawang', 'bululawang@gmail.com', NULL, '$2y$10$SfNtjbWNIi0nMH.J54SqeOBromySB.8awAyjdL.W/q8IU7cTXeTYu', 'xsUF1JiszPwBPLKEASz40CHi51Nmnbgn2sNaX2JjJneD0jshhBhdmcLBQklU', '2020-10-15 07:39:04', '2020-10-15 07:39:04'),
(14, 'users', 'Wajak', 'wajak@gmail.com', NULL, '$2y$10$oSEOUrHrmIE9qiGhUzGqpep9dMGiL6niq8LSXTIkJJYkl9HneUGfW', 'y3N8RGJM5IdoAP8ChCfORb15qbX0NRq3blDCOt1tloA2tlCmQSqVLBGrRzcG', '2020-10-15 07:39:50', '2020-10-15 07:39:50'),
(15, 'users', 'Tajinan', 'tajinan@gmail.com', NULL, '$2y$10$lNpEXJTb6fJADyAGPazCJeJYn8apJrY7shj5LTJ4AjnWJum6T2xom', 'D41kh176Ybo4MpIA3OSVh0fdnAZUxm0P1njmU3SIvfuJDga94HAVdjdXi7OB', '2020-10-15 07:41:43', '2020-10-15 07:41:43'),
(16, 'users', 'Gondanglegi', 'gondanglegi@gmail.com', NULL, '$2y$10$kExz8royLSRwESjnx2sowO/XPBAQzCzgeQxpEVQ7ESAbQ51X8JU7u', '6gCUVcidU6ytIHUIwXnZZE1qYGOVFiaeSofnoBulYoIOUK3WNAJ9KJiZSppd', '2020-10-15 07:42:48', '2020-10-15 07:42:48'),
(17, 'users', 'Pagelaran', 'pagelaran@gmail.com', NULL, '$2y$10$SiWcwcZ1PV9JV62MvYMfAO4hsQZtW9n1JSpP5PbEzh/v47BNZaQsK', 'gGClYsdpH8jxf8hzCND814JYivly6zU23pfDyaBlu3EIhYFnU1kmTzeKUFlo', '2020-10-15 07:43:58', '2020-10-15 07:43:58'),
(18, 'users', 'Turen', 'turen@gmail.com', NULL, '$2y$10$DpBt.E/pggLF3HiHwWmY8enrxP/NJafPHRg2B47QBAsMHIcmb.tya', 'HFDBHwEb73zTdvquesD7u8iDNRZoxw5kAkjSzT2Gyw0RALEjEn3bRhL34zKG', '2020-10-15 07:44:54', '2020-10-15 07:44:54'),
(19, 'users', 'Dampit', 'dampit@gmail.com', NULL, '$2y$10$l1JYSrJpItOXPDL0w6e5tuhQI3LJAgvjJ0JP96JVtZXNoZJmG/enu', 'AOINlsRBYuMfARxK9wtoh0Yng7SzkgqDcoHuYA2l9Qqia8mo6aPJ4LvP4tcb', '2020-10-15 07:45:39', '2020-10-15 07:45:39'),
(20, 'users', 'Tirtoyudo', 'tirtoyudo@gmail.com', NULL, '$2y$10$35pYLkuZaGoGeujvcaD3C.V6Q4UvONUak7UfJvJ7mxwOxnaKbVImO', '72Q6xS91VfK2f3rGCE3PAOUJzzwB6RNVhNaSk3UV9F7E4AcFpUfHZ5zv2LrL', '2020-10-15 07:46:53', '2020-10-15 07:46:53'),
(21, 'users', 'Ampelgading', 'ampelgading@gmail.com', NULL, '$2y$10$f1VDaACZ47iq7bU9000MfOO6m/krkgHkr5lCXOZtu0SBeGe9deC0O', 'Orv7tyGn5FiG9GuaLJtCqq1H6CGKWayVrLrn5LDoEccv1QXpD59Nm8K2cSed', '2020-10-15 07:47:43', '2020-10-15 07:47:43'),
(22, 'users', 'Sumberwajing Wetan', 'sumberwajingwetan@gmail.com', NULL, '$2y$10$E8HGNUQD2bbTpfQrEYpjHeEHHyEyXfr5TSbh2sp.Huro1Ml4JKJCu', '40Jynia1TYzbxA0U2eFGrIx1CQitNVJ13PDxQY3zSGmHJRieP0fIuAGfL6zS', '2020-10-15 07:48:56', '2020-10-15 07:48:56'),
(23, 'users', 'Kepanjen', 'kepanjen@gmail.com', NULL, '$2y$10$sO0Dt.opWrAxrxzNiiDwmuDvEBNX6QdxdJxZz/vcsIUFT6gKOu2V.', 'K6bSMPGsL592p0bByg55L3uxoBKsH7wm7pXCv25iip4Msot2B7RMxYanzFhB', '2020-10-15 07:51:12', '2020-10-15 07:51:12'),
(24, 'users', 'Pakisaji', 'pakisaji@gmail.com', NULL, '$2y$10$sUvYpjOjWzpxg.NjexOwMuC5yPqSx8o.bAlKn9n5nxP6/FPZm5UsW', 'jrrrz9nALzHRHobqsNA6HJFC8dTdBobTyO4Ui9H1EFhN6LbhcgAikh8qQ8Tx', '2020-10-15 07:52:03', '2020-10-15 07:52:03'),
(25, 'users', 'Wagir', 'wagir@gmail.com', NULL, '$2y$10$tYna9MnsLXTQEosDy3oOeuSZ3xkcxe5navKblRc5IR5V1EHxv08nW', '9XgbyoNUJn7CkYzOTVmJx0bpZCKfRM9AeuliY19VAp2Rjnr8u34XOllFOwRb', '2020-10-15 07:52:52', '2020-10-15 07:52:52'),
(26, 'users', 'Ngajum', 'ngajum@gmail.com', NULL, '$2y$10$X1epbAylvtrXP0FZ7RheW.CdLi4f0owgBXbCy5p3fWytHvTC9Jt5a', 'pu2hL6wf6ju9gBOngNxih6kC926TkX7AJloiYkXi0v0FdyUKWo77yRlF4Mc0', '2020-10-15 07:54:10', '2020-10-15 07:54:10'),
(27, 'users', 'Wonosari', 'wonosari@gmail.com', NULL, '$2y$10$BejE8qY8lSbn5uc8XKZ9MOZkB/UToPLeBADVJJkKHxKcNKssakBce', 'mKS3YKREhSPZYFNshE0QzGMh13ZTG6XglPFBtTrocVxUXkdNtFTWOPxd2OB2', '2020-10-15 07:54:56', '2020-10-15 07:54:56'),
(28, 'users', 'Sumberpucung', 'sumberpucung@gmail.com', NULL, '$2y$10$EdD/XlqVzEzZ9V1gjNZj1.jc5hf5avek.DMaXOYaaa1LNOpwjvhBW', 'FKZvYlcWVEpwOHzY2caXzedyXPkbjMrT8N08FsdvWc1Cqpn9BxdL9rc7AbR0', '2020-10-15 07:58:02', '2020-10-15 07:58:02'),
(29, 'users', 'Kromengan', 'kromengan@gmail.com', NULL, '$2y$10$7TRgwnMXkfs0wKqIIdRiHO/1.n8idwyFBf2PjGf9g0JDc0mVZsZTq', 'DNybs7CINK9Ed71KBVQngVYzr0dp4XoL695LkF8tgXYJ0F6q6kHc9AzxoZb5', '2020-10-15 08:10:02', '2020-10-15 08:10:02'),
(30, 'users', 'Pagak', 'pagak@gmail.com', NULL, '$2y$10$FFqlEYg6s.tNPPywCOpd0OuRTkaaNeiAQYR5IrROE2m2ADcAbQnw2', 'jfXAgaBgQLl3conBTXwF6bpItjIekjamKMAIeALDmspp3Xm1lfjCP0aXCDPt', '2020-10-15 08:10:57', '2020-10-15 08:10:57'),
(31, 'users', 'Kalipare', 'kalipare@gmail.com', NULL, '$2y$10$dZVPQEiXO43VozTkx8Wdx.BvhLM9jX.QZtQu3dCO6OcBbhy2P4ooW', 'RbHkWJD7CfhikWrs9RFCb9a9IRBunvS8LndToAWBjKydevEkPKQHZDkwgvvc', '2020-10-15 08:11:55', '2020-10-15 08:11:55'),
(32, 'users', 'Donomulyo', 'donomulyo@gmail.com', NULL, '$2y$10$4B76xhEgNaH6xQ2b8SMVrOWx7b6g4PltscWZQ0yf39zNd6pZ1V2oK', 'GIsO2x9lT3ttLKcscBU9retPFkD0LDcJil78iYoo46eZnXCAwAPsGgPRUY4G', '2020-10-15 08:14:08', '2020-10-15 08:14:08'),
(33, 'users', 'Gedangan', 'gedangan@gmail.com', NULL, '$2y$10$0LTNHKLM0e1DIO80.IfRMuZjNMeYgeft2VUhZ1rnqEVBqlXQ8LLj.', 'L9fhNOaJbR3NrK0VF2ZRmIjLo3kmsxAsUOY5HeH0aWqnmHA5qtvFdQrwzTE7', '2020-10-15 08:14:57', '2020-10-15 08:14:57'),
(34, 'users', 'Bantur', 'bantur@gmail.com', NULL, '$2y$10$JpqeVQVXiCm2tIFyXnDgiOKJJaYvfQIY1IUCsfKd3SaaQn1XSoTSa', 'v6WsrPS38UEz4kCBkzool6Qv0zL5KS1YRnKvqWV7RiwlFsIrA5JyUYy8P0VF', '2020-10-15 08:15:42', '2020-10-15 08:15:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kel_desa`
--
ALTER TABLE `kel_desa`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_kecamatan`
--
ALTER TABLE `m_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `t_guru`
--
ALTER TABLE `t_guru`
  ADD PRIMARY KEY (`nik`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `t_guru`
--
ALTER TABLE `t_guru`
  MODIFY `nik` bigint(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
