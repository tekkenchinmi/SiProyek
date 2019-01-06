-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jul 2018 pada 06.02
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk-tanaman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(10) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `foto`, `username`, `password`, `nama`) VALUES
(1, NULL, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin'),
(2, 'admin27786.jpg', 'Hortikultura', '2ba94503f9d48468b8610a916e6a2079', 'Kementrian Hortikultura'),
(10, NULL, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_aturan_bobot`
--

CREATE TABLE `tbl_aturan_bobot` (
  `id_aturan_bobot` int(255) NOT NULL,
  `id_bobot` varchar(255) NOT NULL,
  `aturan` varchar(255) DEFAULT NULL,
  `nilai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_aturan_bobot`
--

INSERT INTO `tbl_aturan_bobot` (`id_aturan_bobot`, `id_bobot`, `aturan`, `nilai`) VALUES
(3, '3', 'Waktu Tanam yang diinginkan â‰¤ 70 Hari', '1'),
(4, '3', 'Waktu Tanam yang diinginkan > 70-90 Hari', '2'),
(5, '3', 'Waktu Tanam yang diinginkan >90-120 Hari', '3'),
(6, '3', 'Waktu Tanam yang diinginkan > 120 Hari', '4'),
(8, '4', '1 kali panen', '1'),
(9, '4', 'Lebih dari 1 kali panen', '2'),
(10, '5', 'Polybag', '1'),
(11, '5', 'Hidroponik', '2'),
(12, '5', 'Bedengan', '3'),
(13, '6', 'Ketinggian Tanah <700 mdpl', '1'),
(14, '6', 'Ketinggian Tanah 700-1200 mdpl', '2'),
(15, '6', 'Ketinggian Tanah >1200-2000 mdpl', '3'),
(16, '6', 'Ketinggian Tanah > 2000 mdpl', '4'),
(21, '8', 'Harga Tanaman â‰¤ 10.000 Rupiah/kg', '1'),
(22, '8', 'Harga Tanaman >10.00-30.000 Rupiah/kg', '2'),
(23, '8', 'Harga Tanaman >30.000 Rupiah/kg', '3'),
(36, '15', '<3 % (Datar)', '1'),
(37, '15', '3-8 % (Berombak)', '2'),
(39, '15', '>8-15 % (Bergelombang)', '3'),
(40, '17', 'Agak Kering (Ustic)', '1'),
(41, '17', 'Lembab (Udic) ', '2'),
(42, '17', 'Basah ( Aquic)', '3'),
(43, '15', '>15 - 40 % (Berbukit)', '4'),
(44, '15', '>40 % (Bergunung)', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bobot`
--

CREATE TABLE `tbl_bobot` (
  `id_bobot` int(10) NOT NULL,
  `nama_kriteria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bobot`
--

INSERT INTO `tbl_bobot` (`id_bobot`, `nama_kriteria`) VALUES
(3, 'Waktu penanaman hingga siap panen'),
(4, 'Total pemanenan'),
(5, 'Cara Tanam'),
(6, 'Ketinggian Permukaan Tanah (Elevasi)'),
(8, 'Harga hasil Tanaman Perkilogram'),
(15, 'Topografi Kelerengan'),
(17, 'Kelembaban');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bobot_keputusan`
--

CREATE TABLE `tbl_bobot_keputusan` (
  `id_bobot_keputusan` int(10) NOT NULL,
  `id_keputusan` int(10) DEFAULT NULL,
  `id_bobot` int(10) DEFAULT NULL,
  `id_aturan_bobot` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bobot_keputusan`
--

INSERT INTO `tbl_bobot_keputusan` (`id_bobot_keputusan`, `id_keputusan`, `id_bobot`, `id_aturan_bobot`) VALUES
(433, 56, 3, 5),
(434, 56, 4, 9),
(435, 56, 5, 12),
(436, 56, 6, 14),
(437, 56, 8, 21),
(438, 56, 15, 39),
(439, 56, 17, 41),
(447, 58, 3, 5),
(448, 58, 4, 9),
(449, 58, 5, 12),
(450, 58, 6, 14),
(451, 58, 8, 21),
(452, 58, 15, 43),
(453, 58, 17, 41),
(454, 59, 3, 4),
(455, 59, 4, 9),
(456, 59, 5, 12),
(457, 59, 6, 13),
(458, 59, 8, 22),
(459, 59, 15, 39),
(460, 59, 17, 41),
(461, 60, 3, 4),
(462, 60, 4, 8),
(463, 60, 5, 11),
(464, 60, 6, 13),
(465, 60, 8, 22),
(466, 60, 15, 37),
(467, 60, 17, 41),
(468, 61, 3, 4),
(469, 61, 4, 9),
(470, 61, 5, 10),
(471, 61, 6, 13),
(472, 61, 8, 22),
(473, 61, 15, 37),
(474, 61, 17, 41),
(475, 62, 3, 3),
(476, 62, 4, 8),
(477, 62, 5, 12),
(478, 62, 6, 13),
(479, 62, 8, 22),
(480, 62, 15, 37),
(481, 62, 17, 41),
(482, 63, 3, 5),
(483, 63, 4, 8),
(484, 63, 5, 12),
(485, 63, 6, 15),
(486, 63, 8, 22),
(487, 63, 15, 43),
(488, 63, 17, 41),
(489, 64, 3, 5),
(490, 64, 4, 9),
(491, 64, 5, 12),
(492, 64, 6, 14),
(493, 64, 8, 22),
(494, 64, 15, 43),
(495, 64, 17, 41),
(496, 65, 3, 3),
(497, 65, 4, 8),
(498, 65, 5, 12),
(499, 65, 6, 13),
(500, 65, 8, 22),
(501, 65, 15, 36),
(502, 65, 17, 40),
(503, 66, 3, 5),
(504, 66, 4, 9),
(505, 66, 5, 12),
(506, 66, 6, 14),
(507, 66, 8, 22),
(508, 66, 15, 39),
(509, 66, 17, 41),
(510, 67, 3, 4),
(511, 67, 4, 9),
(512, 67, 5, 10),
(513, 67, 6, 13),
(514, 67, 8, 22),
(515, 67, 15, 37),
(516, 67, 17, 41),
(517, 68, 3, 4),
(518, 68, 4, 9),
(519, 68, 5, 10),
(520, 68, 6, 13),
(521, 68, 8, 22),
(522, 68, 15, 37),
(523, 68, 17, 41),
(531, 70, 3, 4),
(532, 70, 4, 9),
(533, 70, 5, 12),
(534, 70, 6, 13),
(535, 70, 8, 22),
(536, 70, 15, 37),
(537, 70, 17, 41),
(545, 72, 3, 5),
(546, 72, 4, 8),
(547, 72, 5, 12),
(548, 72, 6, 15),
(549, 72, 8, 22),
(550, 72, 15, 43),
(551, 72, 17, 41),
(552, 73, 3, 5),
(553, 73, 4, 8),
(554, 73, 5, 10),
(555, 73, 6, 15),
(556, 73, 8, 22),
(557, 73, 15, 43),
(558, 73, 17, 41),
(582, 77, 3, 4),
(583, 77, 4, 8),
(584, 77, 5, 10),
(585, 77, 6, 15),
(586, 77, 8, 23),
(587, 77, 15, 39),
(588, 77, 17, 40),
(589, 78, 3, 4),
(590, 78, 4, 9),
(591, 78, 5, 11),
(592, 78, 6, 13),
(593, 78, 8, 21),
(594, 78, 15, 39),
(595, 78, 17, 41);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bobot_kriteria`
--

CREATE TABLE `tbl_bobot_kriteria` (
  `id_bobot_kriteria` int(11) NOT NULL,
  `id_kriteria` varchar(255) DEFAULT NULL,
  `id_bobot` varchar(255) DEFAULT NULL,
  `id_aturan_bobot` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bobot_kriteria`
--

INSERT INTO `tbl_bobot_kriteria` (`id_bobot_kriteria`, `id_kriteria`, `id_bobot`, `id_aturan_bobot`) VALUES
(1, '1', '3', '4'),
(2, '1', '4', '9'),
(3, '1', '5', '10'),
(4, '1', '6', '14'),
(5, '1', '7', '18'),
(6, '1', '8', '22'),
(7, '1', '15', '36'),
(8, '1', '16', NULL),
(9, '1', '17', NULL),
(10, '2', '3', '5'),
(11, '2', '4', '8'),
(12, '2', '5', '11'),
(13, '2', '6', '15'),
(14, '2', '8', '22'),
(15, '2', '15', '43'),
(16, '2', '17', '42'),
(17, '1', '18', NULL),
(18, '2', '18', NULL),
(19, '3', '3', '4'),
(20, '3', '4', '9'),
(21, '3', '5', '12'),
(22, '3', '6', '14'),
(23, '3', '8', '21'),
(24, '3', '15', '43'),
(25, '3', '17', '41'),
(26, '3', '18', '45'),
(27, '4', '3', '3'),
(28, '4', '4', '9'),
(29, '4', '5', '10'),
(30, '4', '6', '13'),
(31, '4', '8', '22'),
(32, '4', '15', '37'),
(33, '4', '17', '41'),
(34, '5', '3', '4'),
(35, '5', '4', '9'),
(36, '5', '5', '12'),
(37, '5', '6', '13'),
(38, '5', '8', '22'),
(39, '5', '15', '37'),
(40, '5', '17', '41'),
(41, '6', '3', '5'),
(42, '6', '4', '9'),
(43, '6', '5', '12'),
(44, '6', '6', '15'),
(45, '6', '8', '22'),
(46, '6', '15', '39'),
(47, '6', '17', '41'),
(48, '7', '3', '5'),
(49, '7', '4', '8'),
(50, '7', '5', '12'),
(51, '7', '6', '15'),
(52, '7', '8', '22'),
(53, '7', '15', '44'),
(54, '7', '17', '42'),
(55, '8', '3', '5'),
(56, '8', '4', '9'),
(57, '8', '5', '12'),
(58, '8', '6', '14'),
(59, '8', '8', '22'),
(60, '8', '15', '39'),
(61, '8', '17', '41'),
(62, '9', '3', '3'),
(63, '9', '4', '8'),
(64, '9', '5', '12'),
(65, '9', '6', '13'),
(66, '9', '8', '22'),
(67, '9', '15', '36'),
(68, '9', '17', '40'),
(69, '10', '3', '5'),
(70, '10', '4', '8'),
(71, '10', '5', '11'),
(72, '10', '6', '14'),
(73, '10', '8', '22'),
(74, '10', '15', '43'),
(75, '10', '17', '41'),
(76, '11', '3', '3'),
(77, '11', '4', '8'),
(78, '11', '5', '12'),
(79, '11', '6', '13'),
(80, '11', '8', '22'),
(81, '11', '15', '36'),
(82, '11', '17', '40'),
(83, '12', '3', '3'),
(84, '12', '4', '9'),
(85, '12', '5', '12'),
(86, '12', '6', '13'),
(87, '12', '8', '22'),
(88, '12', '15', '37'),
(89, '12', '17', '41'),
(90, '13', '3', '4'),
(91, '13', '4', '9'),
(92, '13', '5', '12'),
(93, '13', '6', '14'),
(94, '13', '8', '22'),
(95, '13', '15', '39'),
(96, '13', '17', '41'),
(97, '14', '3', '3'),
(98, '14', '4', '8'),
(99, '14', '5', '11'),
(100, '14', '6', '13'),
(101, '14', '8', '21'),
(102, '14', '15', '36'),
(103, '14', '17', '40'),
(104, '15', '3', '4'),
(105, '15', '4', '9'),
(106, '15', '5', '12'),
(107, '16', '3', '4'),
(108, '16', '4', '9'),
(109, '16', '5', '10'),
(110, '16', '6', '13'),
(111, '16', '8', '22'),
(112, '16', '15', '37'),
(113, '16', '17', '41'),
(114, '17', '3', '4'),
(115, '17', '4', '8'),
(116, '17', '5', '11'),
(117, '17', '6', '13'),
(118, '17', '8', '22'),
(119, '17', '15', '37'),
(120, '17', '17', '41'),
(121, '18', '3', '3'),
(122, '18', '4', '8'),
(123, '18', '5', '12'),
(124, '18', '6', '13'),
(125, '18', '8', '21'),
(126, '18', '15', '36'),
(127, '18', '17', '40'),
(128, '1', '18', NULL),
(129, '10', '18', NULL),
(130, '11', '18', NULL),
(131, '12', '18', NULL),
(132, '13', '18', NULL),
(133, '14', '18', NULL),
(134, '15', '18', NULL),
(135, '16', '18', NULL),
(136, '17', '18', NULL),
(137, '18', '18', NULL),
(138, '2', '18', NULL),
(139, '3', '18', NULL),
(140, '4', '18', NULL),
(141, '5', '18', NULL),
(142, '6', '18', NULL),
(143, '7', '18', NULL),
(144, '8', '18', NULL),
(145, '9', '18', NULL),
(146, '19', '3', '5'),
(147, '19', '4', '8'),
(148, '19', '5', '12'),
(149, '19', '6', '15'),
(150, '19', '8', '22'),
(151, '19', '15', '43'),
(152, '19', '17', '41'),
(153, '20', '3', '5'),
(154, '20', '4', '9'),
(155, '20', '5', '12'),
(156, '20', '6', '14'),
(157, '20', '8', '21'),
(158, '20', '15', '39'),
(159, '20', '17', '41'),
(160, '21', '3', '5'),
(161, '21', '4', '8'),
(162, '21', '5', '10'),
(163, '21', '6', '15'),
(164, '21', '8', '22'),
(165, '21', '15', '43'),
(166, '21', '17', '41'),
(167, '22', '3', '5'),
(168, '22', '4', '9'),
(169, '22', '5', '12'),
(170, '22', '6', '14'),
(171, '22', '8', '21'),
(172, '22', '15', '43'),
(173, '22', '17', '41'),
(174, '23', '3', '4'),
(175, '23', '4', '9'),
(176, '23', '5', '12'),
(177, '23', '6', '13'),
(178, '23', '8', '22'),
(179, '23', '15', '39'),
(180, '23', '17', '41'),
(181, '24', '3', '4'),
(182, '24', '4', '8'),
(183, '24', '5', '11'),
(184, '24', '6', '13'),
(185, '24', '8', '22'),
(186, '24', '15', '37'),
(187, '24', '17', '41'),
(188, '25', '3', '4'),
(189, '25', '4', '9'),
(190, '25', '5', '10'),
(191, '25', '6', '13'),
(192, '25', '8', '22'),
(193, '25', '15', '37'),
(194, '25', '17', '41'),
(195, '26', '3', '3'),
(196, '26', '4', '8'),
(197, '26', '5', '12'),
(198, '26', '6', '13'),
(199, '26', '8', '22'),
(200, '26', '15', '37'),
(201, '26', '17', '41'),
(202, '27', '3', '5'),
(203, '27', '4', '8'),
(204, '27', '5', '12'),
(205, '27', '6', '15'),
(206, '27', '8', '22'),
(207, '27', '15', '43'),
(208, '27', '17', '41'),
(209, '28', '3', '5'),
(210, '28', '4', '9'),
(211, '28', '5', '12'),
(212, '28', '6', '14'),
(213, '28', '8', '22'),
(214, '28', '15', '43'),
(215, '28', '17', '41'),
(216, '29', '3', '3'),
(217, '29', '4', '8'),
(218, '29', '5', '12'),
(219, '29', '6', '13'),
(220, '29', '8', '22'),
(221, '29', '15', '36'),
(222, '29', '17', '40'),
(223, '30', '3', '5'),
(224, '30', '4', '9'),
(225, '30', '5', '12'),
(226, '30', '6', '14'),
(227, '30', '8', '22'),
(228, '30', '15', '39'),
(229, '30', '17', '41'),
(230, '31', '3', '4'),
(231, '31', '4', '9'),
(232, '31', '5', '10'),
(233, '31', '6', '13'),
(234, '31', '8', '22'),
(235, '31', '15', '37'),
(236, '31', '17', '41'),
(237, '32', '3', '4'),
(238, '32', '4', '9'),
(239, '32', '5', '10'),
(240, '32', '6', '13'),
(241, '32', '8', '22'),
(242, '32', '15', '37'),
(243, '32', '17', '41'),
(244, '33', '3', '4'),
(245, '33', '4', '9'),
(246, '33', '5', '12'),
(247, '33', '6', '13'),
(248, '33', '8', '22'),
(249, '33', '15', '37'),
(250, '33', '17', '41'),
(251, '34', '3', '5'),
(252, '34', '4', '8'),
(253, '34', '5', '12'),
(254, '34', '6', '15'),
(255, '34', '8', '22'),
(256, '34', '15', '43'),
(257, '34', '17', '41'),
(258, '35', '3', '5'),
(259, '35', '4', '8'),
(260, '35', '5', '10'),
(261, '35', '6', '15'),
(262, '35', '8', '22'),
(263, '35', '15', '43'),
(264, '35', '17', '41'),
(265, '1', '19', NULL),
(266, '10', '19', NULL),
(267, '11', '19', NULL),
(268, '12', '19', NULL),
(269, '13', '19', NULL),
(270, '14', '19', NULL),
(271, '15', '19', NULL),
(272, '16', '19', NULL),
(273, '17', '19', NULL),
(274, '18', '19', NULL),
(275, '19', '19', NULL),
(276, '2', '19', NULL),
(277, '20', '19', NULL),
(278, '21', '19', NULL),
(279, '22', '19', NULL),
(280, '23', '19', NULL),
(281, '24', '19', NULL),
(282, '25', '19', NULL),
(283, '26', '19', NULL),
(284, '27', '19', NULL),
(285, '28', '19', NULL),
(286, '29', '19', NULL),
(287, '3', '19', NULL),
(288, '30', '19', NULL),
(289, '31', '19', NULL),
(290, '32', '19', NULL),
(291, '33', '19', NULL),
(292, '34', '19', NULL),
(293, '35', '19', NULL),
(294, '4', '19', NULL),
(295, '5', '19', NULL),
(296, '6', '19', NULL),
(297, '7', '19', NULL),
(298, '8', '19', NULL),
(299, '9', '19', NULL),
(300, '38', '3', '4'),
(301, '38', '4', '8'),
(302, '38', '5', '10'),
(303, '38', '6', '15'),
(304, '38', '8', '23'),
(305, '38', '15', '39'),
(306, '38', '17', '41'),
(307, '39', '3', '4'),
(308, '39', '4', '9'),
(309, '39', '5', '11'),
(310, '39', '6', '13'),
(311, '39', '8', '21'),
(312, '39', '15', '39'),
(313, '39', '17', '41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bobot_tanaman`
--

CREATE TABLE `tbl_bobot_tanaman` (
  `id_bobot_tanaman` int(11) NOT NULL,
  `id_tanaman` varchar(255) DEFAULT NULL,
  `id_bobot` varchar(255) DEFAULT NULL,
  `id_aturan_bobot` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bobot_tanaman`
--

INSERT INTO `tbl_bobot_tanaman` (`id_bobot_tanaman`, `id_tanaman`, `id_bobot`, `id_aturan_bobot`) VALUES
(1, '41', '3', '3'),
(2, '41', '4', '8'),
(3, '41', '5', '12'),
(4, '41', '6', '13'),
(6, '41', '8', '22'),
(7, '42', '3', '3'),
(8, '42', '4', '8'),
(9, '42', '5', '12'),
(10, '42', '6', '13'),
(12, '42', '8', '22'),
(13, '43', '3', '5'),
(14, '43', '4', '9'),
(15, '43', '5', '12'),
(16, '43', '6', '14'),
(18, '43', '8', '22'),
(19, '44', '3', '5'),
(20, '44', '4', '9'),
(21, '44', '5', '12'),
(22, '44', '6', '14'),
(24, '44', '8', '22'),
(25, '45', '3', '4'),
(26, '45', '4', '9'),
(27, '45', '5', '10'),
(28, '45', '6', '13'),
(30, '45', '8', '22'),
(31, '46', '3', '4'),
(32, '46', '4', '9'),
(33, '46', '5', '12'),
(34, '46', '6', '13'),
(36, '46', '8', '22'),
(37, '47', '3', '5'),
(38, '47', '4', '9'),
(39, '47', '5', '12'),
(40, '47', '6', '14'),
(42, '47', '8', '21'),
(43, '48', '3', '5'),
(44, '48', '4', '9'),
(45, '48', '5', '12'),
(46, '48', '6', '14'),
(48, '48', '8', '21'),
(49, '49', '3', '5'),
(50, '49', '4', '8'),
(51, '49', '5', '12'),
(52, '49', '6', '15'),
(54, '49', '8', '22'),
(55, '50', '3', '5'),
(56, '50', '4', '8'),
(57, '50', '5', '12'),
(58, '50', '6', '15'),
(60, '50', '8', '22'),
(61, '51', '3', '4'),
(62, '51', '4', '8'),
(63, '51', '5', '11'),
(64, '51', '6', '13'),
(66, '51', '8', '22'),
(67, '52', '3', '5'),
(68, '52', '4', '8'),
(69, '52', '5', '10'),
(70, '52', '6', '15'),
(72, '52', '8', '22'),
(137, '41', '15', '36'),
(138, '42', '15', '36'),
(139, '43', '15', '39'),
(140, '44', '15', '39'),
(141, '45', '15', '37'),
(142, '46', '15', '39'),
(143, '47', '15', '43'),
(144, '48', '15', '43'),
(145, '49', '15', '43'),
(146, '50', '15', '44'),
(147, '51', '15', '37'),
(148, '52', '15', '43'),
(186, '41', '17', '40'),
(187, '42', '17', '40'),
(188, '43', '17', '41'),
(189, '44', '17', '41'),
(190, '45', '17', '40'),
(191, '46', '17', '41'),
(192, '47', '17', '41'),
(193, '48', '17', '41'),
(194, '49', '17', '41'),
(195, '50', '17', '42'),
(196, '51', '17', '41'),
(197, '52', '17', '42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_info_tanaman`
--

CREATE TABLE `tbl_info_tanaman` (
  `id_infotanaman` int(11) NOT NULL,
  `nama_info_tanaman` text NOT NULL,
  `des_1` text NOT NULL,
  `gambar_info_tanaman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_info_tanaman`
--

INSERT INTO `tbl_info_tanaman` (`id_infotanaman`, `nama_info_tanaman`, `des_1`, `gambar_info_tanaman`) VALUES
(4, 'Bawang Merah', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bawang merah (Allium ascalonicum L.) termasuk famili Liliaceae dan merupakan sayuran semusim, berumur pendek. Perbanyakannya dapat dilakukan secara vegetatif menggunakan umbi, maupun secara generatif dengan biji (TSS=True Shallot Seed). Pada umumnya bawang merah digunakan sebagai bumbu masakan atau dapat digunakan sebagai obat tradisional untuk menurunkan suhu tubuh orang sakit</p>\r\n\r\n<h4 align="justify"><b>Persyaratan Tumbuh</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tanaman bawang merah cocok tumbuh didataran rendah sampai tinggi (&gt;0-1.000 mdpl) dengan ketinggian optimum 0-450 mdpl. Syarat tumbuh lainya antara lain ialah cahaya matahari minimum 70%, suhu udara 25-32&deg; C, dan kelembaban nisbi 50-70%. Struktur tanah remah, tekstur sedang sampai tinggi, drainase dan aerasi yang baik, mengandung bahan organik yang cukup, dan Ph tanah netral (5,6-6,5). Jenis tanah yang paling cocok ialah tanah Aluvial atau kombinasinya dengan tanah Glei-Humus atau Latosol</p>\r\n\r\n<h4 align="justify"><b>Budidaya Bawang Merah</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Varietas yang dianjurkan antara lain ialah Bima brebes, Bima curut, Kuning, Pikatan, Pancasona, Trisula, Maja, dan Mentes</p>\r\n\r\n<h4 align="justify"><b>Persiapan Lahan</b></h4>\r\n\r\n<p><b>Lahan bekas padi sawah atau tebu</b><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pada lahan dibuat bedengan bedengan dengan lebar 1,75 m dan panjangnya disesuaikan dengan kondisi lahan dengan kedalaman parit 50-60 cm dan lebar parit 40-50 cm. Arah badengan Timur-Barat. Tanah yang telah diolah dibiarkan sampai kering kemudian diolah kembali sebanyak2-3 kali sampai gembur. Sisa tanaman padi atau tebu yang tertinggal dibersihkan</p>\r\n\r\n<h5 align="justify"><b>Lahan tegalan atau lahan kering</b></h5>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tanah dibajak atau dicangkul sedalam 30 cm, kemudian dibuat bedengan-bedengan dengan lebar 1-1,2 m, tinggi 40 cm, sedangkan panjangnya tergantung pada kondisi lahan. Lahan dengan pH kurang dari 5,6 diberi Dolomit minimal 2 minggu sebelum tanam dengan dosis 1-1,5 ton/ha/tahun (untuk dua musim tanam berikutnya) yang disebar pada permukaan tanah, kemudian diaduk rata</p>\r\n\r\n<h4 align="justify"><b>Penanaman</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pemotongan ujung bibit hanya dilakukan apabila bibit bawang merah belum siap ditanam (pertumbuhan tunas dalam umbi 80%). Kebutuhan umbi bibit 1-1,2 ton/ha dengan ukuran umbi sedang (5-10g) dan berumur 2-3 bulan setelah panen (ciri tunas sudah sampai ke ujung umbi). Jarak tanam yang digunakan 20cm x 15 cm</p>\r\n\r\n<h4 align="justify"><b>Pemupukan</b></h4>\r\n\r\n<p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lahan bekas padi sawah atau tebu</b>&nbsp;Pupuk dasar berupa pupuk buatan 100 kg SP-36/ha, 60k KCI/ha, dan 500 kg NPK (16:16:16) disebar serta diaduk rata dengan tanah, tujuh hari sebelum tanam. Pupuk susulan berupa 180 kg Urea/ha, atau 400 kg ZA/ha diaplikasikan pada umur 10-15 hari setelah tanam. Pada umur 30-35 hari setelah tanam dipupuk menggunakan 180 kg Urea/ha&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Lahan tegalan atau lahan kering</b>&nbsp;Pupuk dasar berupa pupuk kandan sapi/kuda (15-20 ton/ha) atau kotoran ayam (5-6 ton/ha) atau kompos (2,5-5 ton/ha) dan pupuk buatan SP-36 (250 kg/ha). Pupuk dasar diberikan dengan cara disebar serta diaduk rata dengan tanah 1-3 hari sebelum tanam. Pemupukan seusulan mengunakan Urea (150-200 kg/ha) dan ZA (300-500 kg/ha) dilakukan pada umur 10-15 hari setelah tanam dan pada umur 1 bulan setelah tanam masing masing 1/2 dosis. Atau menggunakan pupuk mejamuk NPK (16-16-16) 600kg/ha yyang diberikan seminggu sekali dengan cara dicor (disiramkan) disekitar tanaman.</p>\r\n\r\n<h4 align="justify"><b>Pemeliharaan tanaman</b></h4>\r\n\r\n<ul>\r\n	<li>Tanamn bawang merah membutuhkan air yang cukup banyak selama pertumbuhan dan pembentukan umbi, terutama pada musim kemarau</li>\r\n	<li>Pada lahan bekas sawah, penyiraman dilakukan satu kali sehari pada pagi atau sore hari sejak tanam sampai menjelang panen</li>\r\n	<li>pada musim hujan, penyiraman ditunjukan untuk membilas daun tanaman dari tanah yang menempel. Periode kritis dari kekurangan air terjadi saat pembentukan umbi</li>\r\n	<li>penimbunan diperlukan agar umbi tidak terpapar sinar matahari secara langsung</li>\r\n	<li>penyiangan dilakukan 2-3 kali selama satu musim tanam, terutama pada umur 2 minggu setelah tanam</li>\r\n	<li>Perbaikan pinggir bedengan dilakukan bersamaan dengan waktu penyiangan</li>\r\n	<li>Pengendalian dengan menunakan teknologi penendalian hama terpadu (PHT), yaitu\r\n	<ul>\r\n		<li>Secara kultur teknis (Pemupukan berimbang, penggunaan varietas tanah OPT, penggunaan musuh alami seperti parasitoid, predator dan patogen seranga)</li>\r\n		<li>secara mekanik (pemotongan daun yang sakit atau terdapat kelompok telur Spodoptera exigua, penggunaan jaring kelambu, penggunaan feromon seks, perangkap kuning, perangkap lampu dll)</li>\r\n		<li>penggunaan bio-pestisida</li>\r\n		<li>penggunaan pestisida selektif berdasarkan ambang pengendalian</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h4 align="justify"><b>Panen dan Pascapanen</b></h4>\r\n\r\n<ul>\r\n	<li>panen bawang merah dilakukan setelah umurya cukup tua, biasanya pada umur 60-70 hari dengan tanda tanda berupa leher batang 60% lunak, tanaman rebah dan daun menguning</li>\r\n	<li>bawang merah yang dipanen diikat pada batangnya untuk mempermudah penanganan dan umbi dijemur sampai cukup kering(1-2 minggu) dibawah sinar matahari langsung</li>\r\n	<li>Jika tidak langsung dijual, umbi disimpan dengan cara menggantungkan ikatan bawang merah atau disimpan dirak digudang khusus, pada suhu 25-30 &deg; C dan kelembaban rendah (60-80%)</li>\r\n</ul>\r\n\r\n<h5 align="right">Oleh : Rini Rosliani (Badan penelitian dan pengembangan pertanian kementrian pertanian)</h5>\r\n', 'bawang.jpg'),
(5, 'Cabai Merah', '<p>Cabai merah (Capsicum annuum) termasuk famili Solanaceae dan merupakan salah satu komoditas sayuran yang memiliki banyak manfaat, bernilai ekonomi tinggi, dan mempunyai prospek pasar yang menarik. Buah cabai selain dapat dikonsumsi segar untuk bumbu masak juga dapat diawetkan, misalnya dalam bentuk acar, saus, tepung cabai, dan buah kering.</p>\r\n\r\n<h4 align="justify"><b>Persyaratan Tumbuh</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cabai merah cocok dibudidayakan di dataran rendah maupun dataran tinggi, pada lahan sawah atau tegalan dengan ketinggian 0-1000 mdpl. Tanah yang baik untuk pertanaman cabai adalah berstruktur remah atau gembur, subur, kaya akan bahan organik, dan pH tanah antara 6&mdash;7. Kandungan air tanah juga perlu diperhatikan. Hal tersebut berhubungan dengan tempat tumbuh tanaman cabai (sawah atau tegalan). Tanaman cabai yang dibudidayakan di sawah sebaiknya ditanam pada akhir musim hujan, sedangkan di tegalan ditanam pada musim hujan.</p>\r\n\r\n<h4 align="justify"><b>Budidaya Cabai Merah</b></h4>\r\n\r\n<ul>\r\n	<li>Varietas yang dianjurkan</li>\r\n	<li>Varietas cabai merah yang dianjurkan antara lain Lembang-l, Lingga, Tanjung-2, Hot Chili, Ciko dan Kencana. Kebutuhan benih cabai merah sebesar 250&mdash;350 g/ha.</li>\r\n	<li>Persemaian</li>\r\n	<li>Sebelum disemai, benih direndam dulu dalam air hangat (500 &deg; C) atau larutan Propamokarb Hidroklorida (lcc/l) selama 12 jam. Benih disebar secara merata pada bedengan persemaian dengan media berupa campuran tanah dan pupuk kandang/kompos (1: 1), kemudian ditutup dengan daun pisang selama 2&mdash;3 hari. Bedengan persemaian diberi naungan/atap dari kasa/plastik transparan kemudian persemaian ditutup untuk menghindari serangan OPT. Setelah berumur 7&mdash;8 hari, bibit dipindahkan ke dalam bumbunan daun pisang atau polibag kecil dengan media yang sama (tanah dan pupuk kandang steril). Penyiraman dilakukan setiap hari. Bibit siap ditanam di lapangan setelah berumur 4&mdash;5 minggu</li>\r\n</ul>\r\n\r\n<h4 align="justify"><b>Pengolahan Lahan</b></h4>\r\n\r\n<ul>\r\n	<li>Lahan kering/tegalan</li>\r\n	<li>Lahan dicangkul sedalam 30&mdash;40 cm sampai gembur, kemudian dibuat bedengan-bedengan dengan lebar 1&mdash;1,2 m, tinggi 30 cm, dan jarak antar bedengan 30 cm. Lubang tanam dibuat dengan jarak 50&mdash;60 cm, sehingga dalam tiap bedengan terdapat dua baris tanaman.</li>\r\n	<li>Lahan Sawah</li>\r\n	<li>Tanah dicangkul sampai gembur kemudian dibuat bedengan-bedengan dengan lebar 1,5 m dan antar bedengan dibuat parit sedalam 50 cm. Dibuat lubang tanam dengan jarak 50 x 60 cm. Bila pH tanah kurang dari 5,5 dilakukan pengapuran menggunakan Kaptan/Dolomit dengan dosis 1,5 t/ha pada 3&mdash;4 minggu sebelumtanam (bersamaan dengan pengolahan tanah dengan cara disebar dipermukaan tanah dan diaduk rata).</li>\r\n</ul>\r\n\r\n<h4 align="justify"><b>Pemupukan</b></h4>\r\n\r\n<ul>\r\n	<li>Cabai Monokultur dilahan kering</li>\r\n	<li>Pupuk dasar yang diberikan berupa pupukkandang kuda atau sapi sebanyak 20&mdash;40 t/ha dan pupuk buatan TSP 200&mdash;225 kg/ha diberikan sebelum tanam. Pupuk susulan berupa Urea 100-150 kg/ha, ZA 300-400 kg/ha, dan KCL 150-200 kg/ha diberikan tiga kali pada umur 3,6, dan 9 MST.</li>\r\n	<li>Cabai Tumpang gilir dengan bawang merah\r\n	<ul>\r\n		<li>Bawang Merah</li>\r\n		<li>Pupuk kandang kuda atau ayam/domba 10-20 t/ha dan TSP 150-200 kg/ha diberikan 7 hari sebelum tanam, kemudian Urea 150-200 kg/ha, ZK 400-500 kg/ha, dan KCI 150&mdash;200 kg/ha diberikan pada umur 7 dan 25 hari setelah tanam masing-masing 1/2 dosis.</li>\r\n		<li>Cabai Merah</li>\r\n		<li>Pupuk kandang kuda 10&mdash;15 t/ha dan TSP 100&mdash;150 kg/ha diberikan seminggu setelah tanam. Urea 100&mdash;150 kg/ha, ZA 300-400 kg/ha, dan KCI 100-150 kg/ha diberikan pada umur 4,7, dan 10 minggu setelah tanam.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Cabai tumpang gilir dengan kubis</li>\r\n	<li>Pupuk kandang kuda, ayam/domba 30&mdash;40 t/ha dan NPK 15:15:15 sebanyak 700 kg/ha diberikan seminggu sebelum tanam dengan cara disebar dan diaduk secara rata dengan tanah. Pupuk susulan diberikan dalam bentuk pupuk NPK 15:15:15 yang dicairkan (1,5&mdash;2 g/l air), dengan volume semprot 4.000 | larutan/ha. Pupuk tersebut diberikan mulai umur 6 minggu sebelum tanam dan diulang setiap 10&mdash;15 hari.</li>\r\n</ul>\r\n\r\n<h4 align="justify"><b>Penggunaan Mulsa</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mulsa jerami setebal 5 cm (10 t/ha) digunakan pada musim kemarau, diberikan 2 MST. Mulsa plastik hitam perak digunakan didataran tinggi pada musim kemarau atau musim hujan.</p>\r\n\r\n<h4 align="justify"><b>Pemeliharaan</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Penyulaman dilakukan paling lambat 1&mdash;2 MST untuk mengganti bibit yang mati atau sakit. Pengairan diberikan dengan cara dileb (digenangi) atau dengan disiram per lubang. Penggemburan tanah atau pendangiran dilakukan bersamaan dengan pemupukan kedua atau pemupukan susuIan. Pemberian ajir dilakukan untuk menopang berdirinya tanaman. Tunas air yang tumbuh di bawah cabang utama sebaiknya dipangkas.</p>\r\n\r\n<h4 align="justify"><b>Pengendalian Organisme Pengganggu Tumbuhan (OPT)</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; OPT penting yang menyerang tanaman cabai antara Iain kutu kebul, trips, kutudaun, ulat grayak, ulat buah tomat, Ialat buah, antraknos, penyakit layu, virus kuning, dsb. Pengendalian OPT dilakukan bergantung pada OPT yang menyerang. Beberapa cara yang dapat dilakukan antar Iain :</p>\r\n\r\n<ul>\r\n	<li>Penggunaan border 4&mdash;6 baris jagung</li>\r\n	<li>Pemanfaatan musuh alami (predator: Menochilus sexmaculatus)</li>\r\n	<li>Penggunaan perangkap (kuning, metil eugenol)</li>\r\n	<li>Penggunaan pestisida nabati</li>\r\n	<li>Penggunaan pestisida kimia sesuai kebutuhan den gan dos is yang direkomendasikan. Pengendalian dengan pestisida harus dilakukan dengan benar, baik pemilihan jenis, dosis, volume semprot, cara aplikasi, interval maupun waktu aplikasinya.</li>\r\n</ul>\r\n\r\n<h4 align="justify"><b>Panen dan Pascapanen</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cabai merah didataran rendah dapat dipanen pertama kali pada umur 70&mdash;75 hari setelah tanam, sedangkan di dataran tinggi pada umur 4&mdash;5 bulan dengan interval panen 3&mdash;7 hari. Buah rusak yang disebabkan oleh lalat buah atau antraknos sebaiknya langsung dimusnahkan. Buah yang akan dijual segar sebaiknya dipanen matang. Buah yang dikirim untuk jarak jauh dipanen matang hijau. Buah yang akan dikeringkan dipanen setelah matang penuh. Sortasi dilakukan untuk memisahkan buah cabai merah yang sehat, bentuk normal dan baik dengan buah yang kualitasnya tidak baik. Pengemasan cabai untuk transportasi jarak jauh sebaiknya menggunakan kemasan yang diberi lubang angin yang cukup atau menggunakan karung jala. Apabila hendak disimpan sebaiknya disimpan di tempat penyimpanan yang kering, sejuk, dan cukup sirkulasi udara.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<h5 align="right">Pusat Penelitian dan Pengembangan Hortikultura Badan Penelitian dan Pengembangan Pertanian Kementrian Pertaniam (2015)</h5>\r\n', 'Cabaimerah.jpg'),
(6, 'Cabai Rawit', '<p>Cabai rawit atau cabai kecil (Capsicum frutescens) termasuk dalam famili Solanaceae dan merupakan tanaman berumur panjang (menahun), dapat hidup sampai 2-3 tahun apabila dipelihara dengan baik dan kebutuhan haranya tercukupi. Terdapat beberapa macam cabai rawit antara lain rawit kecil sedang dan besar. Umumnya cabai rawit kecil rasanya sangat pedas. Cabai rawit digunakan untuk sayur, bumbu masak, asinan dan Obat.</p>\r\n\r\n<h4 align="justify"><b>Persyaratan Tumbuh</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cabai rawit dapat ditanam didataran rendah maupun di dataran tinggi, namun tanaman ini lebih cocok ditanam di ketinggian antara 0-500 m dpl. Produksi pada ketinggian di atas 500 mdpl tidak jauh berbeda namun waktu panennya lebih panjang. Tanaman ini menghendaki tanah gembur, kaya akan bahan organik dan pH netral 6-7.</p>\r\n\r\n<h4 align="justify"><b>Pesemaian</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kebutuhan benih tiap hetar berkisar 100-125g. Badengan persemaian dibuat arah utara selatan menghadap ke timur. Media semai dibuat dari campuran tanah dan kompos steril denan perbandingan 1:1. Benih ditaburkan secara merata diatas media semai kemudian ditutup dengan tanah tipis, disiram dan ditutup dengan daun pisang. Setelah umur semaian kurang lebih 7 hari, semaian dipindahkan ke bumbunan yang terbuat daru daun pisang yang diisi campuran tanah dan kompos steril dengan perbandingan 1:1. Bibit berumur kurang lebih 30-35 hari setelah semai atau telah mempunyai 5-6 helai daun siap untuk dipindahkan ke lapangan.</p>\r\n\r\n<h4 align="justify"><b>Penyiapan Lahan dan Penanaman</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tanah dibajak dan dicangkul sedalam 30-40 cm lalu dibalik kemudian bongkahan tanah dihaluskan, Sisa pertanaman sebelumnya dibersihkan agar tidak menjadi sumber penyakit.</p>\r\n\r\n<ul>\r\n	<li>Dibuat badengan dengan lebar1-1,2m, tinggi 40-50 cm. Jarak antar bedengan kurang lebih 40-50cm.</li>\r\n	<li>Pemberian kapur pertanian (jika kondisi tanah terlalu masam) dilakukan bersama dengan pengolahan tanah, 2-3 mingu sebelum tanam. Kapur (1-1,5 ton/ha)ditaburkan dipermukaan tanah kemudian dicampur rata dengan tanah.</li>\r\n	<li>Permukaan bedengan dibuat agak setengah lingkaran untuk mempermudah pemasangan mulsa</li>\r\n	<li>pada jarak tanam yang telah ditentukan (50 cm x 70 cm) dibuat lubang tanam pada mulsa plastik dengan menggunakan kaleng yang dipanaskan.</li>\r\n	<li>Lubang tanam dibuat dengan kedalaman 15-20 cm dan diameter 20-25 cm.</li>\r\n	<li>Ditanam satu bibit pada tiap lubang tanam.</li>\r\n</ul>\r\n\r\n<h4 align="justify"><b>Pemupukan</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pemupukan menggunakan urea 200-300 kg/ha, sp-36 200-300 kg/ha dan KCI 150-250 kg/ha. Pemberian pupuk kandang sebanyak 30 ton/ha dan kapur pertanian dilakukan saat pembuatan bedengan. Pupuk buatan sebagai pupuk dasar diberikan dengan cara membuat larikan berjarak 25-30 cm dari tepi bedengan dan jarak tanra larikan 70cm. Pemberian pupuk dasar ini dilakukan sebelum pemasangan mulsa sebanyak2/3 dosis dan 1/3 dosis dan digunakan sebagai pupuk susulan. Pemupukan susulan diberikan pada saat tanaman berumur satu bulan, menggunakan sisa pupuk dasar. Pemupukan susulan ini bisa dberikan dengan cara dicor, setiap tanaman disiram dengan 200 ml larutan pupuk. Larutan pupuk dibuat dengan mengencerkan 2,0 kg pupuk buatan per 100|air. Karena tanaman cabai rawit merupakan tanaman tahunan yang masih dapat berproduksi sampai 2-3 tahun maka sebaiknya dilakukan pemupukan ulang setiap 14 hari atau sesuai kebutuhan agar produksinya terus bertahan. Pengendaiian Organisme Pengganggu Tumbuhan (OPT) Hama lalat buah dapat dikendalikan dengan pemasangan perangkap lalat buah yang mengandung metil eugenol. Hama-hama pengisap seperti kutudaun, trips dan kutu kebul dapat dikendalikan dengan pemasangan mulsa plastik hitam perak dan juga pemasangan perangkap lekat warna kuning. Penyakit antraknose dapat dikendalikan dengan penggunaan varietas tahan dan juga penggunaan fungisida secara selektif. Apabila dalam mengendalikan OPT menggunakan pestisida. maka pemilihan jenis pestisida, dosis, volume semprot, cara aplikasi, interval dan waktu aplikasinya harus tepat.</p>\r\n\r\n<h4 align="justify"><b>Panen dan Pascapanen</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pada saat panen, buah yang rusak sebaiknya dimusnahkan. kemudian buah yang dipanen dimasukkan dalam karung jala dan jika akan disimpan sebaiknya penyimpanan dilakukan di tempat yang kering. sejuk dengan sirkulasi udara yang baik.&nbsp;</p>\r\n\r\n<h5 align="right">Pusat Penelitian dan Pengembangan Hortikultura Badan Penelitian dan Pengembangan Pertanian Kementrian Pertaniam (2015)</h5>\r\n', 'Cabairawit.jpg'),
(7, 'Tomat', '<p>Tanaman tomat merupakan sayuran penting. Buah tomat selain dimakan mentah, juga digunakan sebagai sayuran atau dijadikan saus. Diduga tanaman tomat berasal dari Peru dan Ekuador, yang kemudian menyebar ke seluruh dunia. Pada saat ini negara produsen tomat dunia adalah Arabia, Bulgaria, Spanyol dan Mersir. Tanaman tomat merupakan herba semusim, bunganya hermaprodit dan bersifat self compatiable pada daerah yang lebih dingin. Tanaman tomat ada yang pertumbuhanya pendek tegak atau pendek dan menjalar sampai 5 lebih dari 5 meter. Taaman tomat toleran terhadap beberapa kondisi linkungan tumbuh, namun tanaman ini mengghendaki sinar yang cerak sedikitnya 6 jam serta suhu yang sejuk. Agar tumbuh optimum diperlukan suhu antara 20-25 &deg; C.&nbsp;</p>\r\n\r\n<h4 align="justify"><b>Media Tanam dan Media Semai</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Media tanam terdiri atas tanah, pupuk kandang yang sudah matang dan arang sekam dengan perbandingan 1:1:1. Campuran bahan tersebut diukus selama 6 jam pada suhu 120 &deg; C. Setelah itu didinginkan. Media tanam diaduk menjadi satu dimasukan kedalam polybag, pot, talang atau paralon sebagai bahan penanaman dengan cara vertikultur. Pupuk NPK dan kapur diberikan beberapa hari sebelum tanam sebagai pupuk dasar dengan dosis 5 gram per polybag/tanam, kemudian dilakukan penyiraman.</p>\r\n\r\n<h4 align="justify"><b>Pesemaian</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Media semai dimasukkan kedalam baki semai, kemudian disiram air, sebelum benih disemai untuk menghindari terjadi serangan penyakit rebah bibit dengan menggunakan previcur N, dengan dosis 1 cc/liter air. Benih direndam selama 1 jam, lalu ditiriskan kemudian disemai/ditanam pada lubang tadi satu persatu. Selanjutnya benih ditutup denan selapis tipis media semai secara merata ( menggunakan ayakan) Setelah itu baki persemaian ditutup dengan plastik hitam atau daun pisan. Tutup persemaian lalu buka setelah umur 7-10 hari setelah semai.</p>\r\n\r\n<h4 align="justify"><b>Penanaman</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Polybag berukuran 50x50 cm disi dengan media tanam sebanyak 8-12kg/ polybag, lalu disiram air. Penanaman dilakukan setelah bibit berumur 14-21 hari setelah semai atau bibit sudah berdaun 4-5 helai. Penanaman sebaiknya dilakukan pada sore hari supaya bibit tidak stres. Bibit dikeluarkan dari bak semai dengan tanahnya dan ditanam satu persatu dalam polybag yang sudah disiapkan.</p>\r\n\r\n<h4 align="justify"><b>Pemeliharaan tanaman</b></h4>\r\n\r\n<ul>\r\n	<li>Penyiraman</li>\r\n	<li>Penyiraman tanaman sangatlah penting terlebih pada tanaman yang baru ditanam. Penyiraman dilakukan apabila tidak ada hujan. Penyiraman dilakukan 1 hari sekali, dilakukan pada pagi atau sore hari.</li>\r\n	<li>Pemupukan</li>\r\n	<li>Pemupukan diberikan sebelum tanam untuk pupuk organik dan anorganik sebagai pupuk dasar. Pupuk anorganik (NPK) diberikan setengah dosis tujuh hari sebelum tanam dan setenah dosisnya lagi diberikan selama periode tanam sebagai pupuk susulan. Pemupukan susulan dapat diberikan dengan dua cara, yaitu ditabur di sekeliling tanaman pada polybag atau dengan cara dikocor dengan dosis 10 g/l air/5 tanaman (200 ml/tanaman) diaplikasikan dengan interval 7-10 hari sekali.</li>\r\n	<li>Pewiwilan</li>\r\n	<li>Perwiwilan atau pembuangan tunas air dan tunas samping perlu dilakukan untuk mendapatkan kualitas buah yang baik dan produktivitas yang tinggi. perwiwilan dilakukan setiap 3 hari sekali</li>\r\n	<li>Turus Penyangga Tanaman dan Pengikatan Tanaman pada Turus</li>\r\n	<li>Pemasangan turus pada tanaman tomat sangatlah penting terutama bagi varietas yang tinggi dan menjalar denan tujuan supaya tanaman tomat tidak menjalar ke tanah dan juga memudahkan dalam pemeliharaan. Pemasangan turus dilakukan sejak tanaman berumur 1-2 minggu. Pengikatan tanaman perlu dilakukan dengan tujuan agar tanaman menempel pada turus, sehingga dapat berdiri tegak. Kegiatan pengikatan dilakukan berkali-kali selama masa pertumbuhan berlangsung.</li>\r\n	<li>Pengendalian OPT</li>\r\n	<li>Pengendalian OPT dilakukan menggunakan pestisida kimia sintetik, maupun nabati, pengendalian dilakukan 1-2 kali dalam semiggu tergantung pada intensitas serangan.</li>\r\n</ul>\r\n\r\n<h4 align="justify"><b>Pemanenan</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pemanenan buah tomat dilakukan setelah tanaman berumur sembilan puluh hari (3 bulan). Pemanenan dilakukan beberapa kali karena tingkat kematangan buah tidak serempak, Selama satu musim tanam dilakukan 9-13 kali panen untuk varietas yang indeterminite sedangkan untuk varietas tomat yang determinate 5-7 kali panen.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<h5 align="right">Oleh : Rini Rosliani (Badan penelitian dan pengembangan pertanian kementrian pertanian)</h5>\r\n', 'tomat.JPG'),
(8, 'Kentang', '<p>Ketang (Solanum tubersum L.) termasuk famili Solanaceae dan merupakan salah satu komoditas sayuran yang mempunyai nilai ekonomi tinggi, tidak mudah rusak seperti sayuran lain, dan merupakan sumber kalori, protein dan juga vitamin. kentang dapat dikonsumsi sebagai sumber karbohidrat atau sayuran dan dapat pula diolah sebagai bahan baku pembuatan berbagai jenis makanan.</p>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<h4 align="justify"><b>Persyaratan Tumbuh</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tanaman kentang cocok ditanam didataran tinggi diatas ketinggian 1000 Mdpl. Ciri-ciri tanah yang baik untuk budidaya kentang antara lain ialah tekstur sedang, gembur, subur dan berdrainase baik, dengan pH antara 5-6.5</p>\r\n\r\n<h4 align="justify"><b>Budidaya Kentang</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Varietas yang di anjurkan antara lain ialah Granola, Atlantik, Manohara, Krespo atau varietas lainnya yang tahan terhadap penyakit busuk daun dan layu bakteri. Kebutuhan umbi untuk luasan satu hektar sekitar 1200 kg (ukuran umbi 30g/knol)</p>\r\n\r\n<h4 align="justify"><b>Pemilihan lahan dan pengolahan tanah</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lahan untuk budidaya kentang sebaiknya bukan daerah endemik penyakit layu bakteri dan bukan bekas tanaman anggota famili Solanaceae. Tanah di cangkul sebanyak 2 kali dengan kedalaman 30 cm, lalu digemburkan. sisa-sisa tanaman sebelumnya dikumpulkan lalu dimusnahkan</p>\r\n\r\n<h4 align="justify"><b>Penanaman</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Penanaman kentang dilakukan dengan sistem baris ganda (doble row) yang ditanam pada bedengan lebar 1m, tingggi bedengan 30-40 cm, jarak antar bedengan 40-50 cm. Bibit kentang ditanam pada barisan tanaman dengan jarak antar barisan 80 cm dan jarak dalam barisan 30 cm</p>\r\n\r\n<h4 align="justify"><b>Pemupukan</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pupuk kandan kuda/sapi 30t/ha yang diberikan pada bedenan tanaman. Pupuk anorganik yang digunakan yaitu 300 kg SP-36/ha yang diberikan sekaligus pada saat tanam; 54 kg Urea/ha, 120 kg ZA/ha dan 80 kg KCI/ha yang diberikan pada saat tanam dan 15 hari setelah tanam</p>\r\n\r\n<h4 align="justify"><b>Pemeliharaan tanaman</b></h4>\r\n\r\n<ul>\r\n	<li>penyiraman dilakukan sesuai dengan kebutuhan</li>\r\n	<li>penyiangan dilakukan 2-3 kali selama satu musim tanam</li>\r\n	<li>penimbunan bedengan dilakukan bersamaan dengan waktu penyiangan</li>\r\n	<li>penimbunan diperlukan agar umbi tidak terpapar sinar matahari secara langsung</li>\r\n	<li>Pengendalian OPT yang dilakukan antara lain ialah\r\n	<ul>\r\n		<li>Subsoiling pada pengolahan tanah</li>\r\n		<li>solarisasi, tanah yang sudah diolah ditutup dengan plastik putih transparan selama 6 minggu sampai mencapai suhu 50 drajat celcius</li>\r\n		<li>Penanaman Tagetes sp. diantara barisan tanaman kentang dengan jarak 60 cm dalam barisan</li>\r\n		<li>penggunaan perangkat kun dan feromon seks setiap minu sekali dari umur 4 minggu sampai 10 minggu</li>\r\n		<li>penggunaan pestisida nabati</li>\r\n		<li>penggunaan pestisida kimia selektif (jika diperlukan)</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h4 align="justify"><b>Panen dan Pascapanen</b></h4>\r\n\r\n<ul>\r\n	<li>Umbi kentang dapat dipanen setelah daunya berwarna kekuningan, yaitu sekitar umur i90 setelah tanam tergantung pada varietasnya</li>\r\n	<li>Sortasi dilakukan untuk memisahkan umbi yang berkualitas jelek dan dilakukan grading atau pengelompokan umbi berdasarkan ukuran atau berat umbi menjadi kelas A, B dan C</li>\r\n	<li>Umbi yang sudah disortasi dan digrading ditempatkan dalam karung jala, keranjang atau kotak untuk tujuan pengangkutan dan penyimpanan sementara</li>\r\n	<li>Jika tidak langsung dipasarkan, umbis ebaiknya disimpan pada suhu dingin (di dalam cold storage), yaitu pada suhu 10&deg; dan RH 90%. Penyimpanan seperti ini dapat memperpanjang umur simpan sampai 2 bulan.</li>\r\n	<li>Kentang dapat diolah menjadi keripik kentang, kentang siap saji, pati entang dan bubur kentang, Varietes kentang yang cocok sebagai bahan baku produk olahan ialah varietes Atlantik</li>\r\n</ul>\r\n\r\n<h5 align="right">Oleh : Rini Rosliani (Badan penelitian dan pengembangan pertanian kementrian pertanian)</h5>\r\n', 'kentang.jpg'),
(9, 'Seledri', '<p>&nbsp; Tanaman seledri berasal dari daerah subropik Eropa dan Asia. Didaerah subtropik seledri ditanam untuk diambil tangkai daunnya yang besar, berdaging dan berair untuk dimakan mentah sebagai lalap, sedangkan daunya untuk sup. Selain untuk itu sendiri digunakan sebagai bahan obat-obatan terutama untuk menurunkan tekanan darah. Didaerah tropik tanaman ini kurang besar ukuran batangnya, sehingga seluruh bagian tanaman digunakan sebagai sayur. Daunnya juga digunakan sebagai bahan kosmetik. Tanaman seledri bercabang banyak bersifat dwi musim. Batangnya halus tidak berambut. Oada tahun pertama tanaman ini berbentuk roset dulu sampai dengan terbentuknya daun yang lebar, yang biasanya digunakan untuk sayuran. Apabila tanaman diperuntukkan sebagai penghasil biji, maka dibiarkan tumbuh terus. Jarak tanaman dalam barisan 30 cm dan antara barisan 60 cm bila ditanam dikebun. Seledri cocok ditanam didataran tingi pada ketinggian di atas 900dpl dengan kelembaban yang tinggi. Seledri dapat juga tumbuh didataran rendah, namun ukuran batangnya lebih kecil dibandingkan dengan yang ditanam didataran tingi. Tanah yang sessuai adalah yang mengandung humus tinggi, tanah lempung berpasir atau lempung berdebu dengan kisaran pH tanah 5,5-6,7. Tanaman seledri lebih sesuai tumbuh di temoat yang teduh (ternaungi).</p>\r\n\r\n<h4 align="justify"><b>Media Tanam dan Media Semai</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Media tanam terdiri atas tanah, pupuk kandang yang sudah matang dan arang sekam dengan perbandingan 1:1:1 dan ditambah sedikit kapur pertanian. Campuran bahan tersebut dikukus selama 6 jam pada suhu 120 &deg; C. Setelah itu didinginkan. Media tanam diaduk menjadi satu dimasukkan kedalam polybag, pot,talan atau paralon sebagai bahan penanaman denan cara vertikultur. Pupuk NPK dan kapur diberikan beberapa hari sebelum tanam sebagai pupuk dasardengan dosis 5 gram per polybag/tanaman, kemudian dilakukan penyiraman.</p>\r\n\r\n<h4 align="justify"><b>Pesemaian</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sebelum ditanam biji seledri disemai terlebih dahulu Media semai yang sudah disterilkan dimasukkan kedalam baki semai. Biji seledri dianam satu persatu. Kemudian biji ditutup kembali dengan media semai dengan menggunakan ayakan supaya merata tetapi jangan terlalu tebal. Selanjutnya persemaian tutup dengan daun pisan atau plastik mulsa. Tutup dibuka kembali setelah 3-5 hari setelah semai, biji seledri sudah berkecambah. Setelah umur 7-10 hari bibit dipindah ke bumbungan. Bibit dapat dipidah ke polybag/pot atau tempat vertikultur setelah berumur 20-30 hari.</p>\r\n\r\n<h4 align="justify"><b>Penanaman</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Polybag/pot diisi dengan media tanam. Pupuk NPK sebanyak 2-5 g/ polybag dimasukkan lalu media disiram dengan air. Penanaman sebaiknya dilakukan pada sore hari supaya bibit yan ditanam tidak layu.</p>\r\n\r\n<h4 align="justify"><b>Pemeliharaan tanaman</b></h4>\r\n\r\n<ul>\r\n	<li>Penyiraman</li>\r\n	<li>Penyiraman dilakukan secara intensif sampai tanaman berumur 2 minggu, selanjutnya penyiraman dilakukan sesuai dengan kebutuhan. Jika tidak ada hujan penyiraman dilakukan 1 hari sekali, pada pagi atau sore hari jangan dilakukan siang hari.</li>\r\n	<li>Pemupukan</li>\r\n	<li>Pemupukan susulan dilakukan setelah tanaman berumur 2 mingu setelah tanam, dengan cara pupuk ditabur disekelilin tanaman dnegan dosis 2 gram pertanaman, kemudian langsun disiram sampai basah. Atau dengan cara dikocor denan dosis 1kg NPK tambahkan aur 100 liter untuk 500 tanaman, atau 2 g/200ml/tanaman, dengan interval pemberian 7 hari sampai mendekati usia panen.</li>\r\n	<li>Pengendalian OPT</li>\r\n	<li>Hama yan umum menyeran tanaman seeldri ialah kutu daun yang bersifat mengisap cairan daun seledri sehinga daun seledri yan terangsang menjadi kuning sampe coklat. Kalau dibiarkan tanaman seledri mati. Pengendalian dilakukan menggunakan insektisida. Jika tanaman terserang tungau, digunakan akarisida.</li>\r\n</ul>\r\n\r\n<h4 align="justify"><b>Pemanenan</b></h4>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tanaman seledri dipanen dengan memotong mulai dari akarnya. Biasanhya tanaman dipapnen setelah 90-120 hari sejak tanam. Bila terlalu tua tankai daunnya sering pecah-pecah. Ada kalanya seledri dipanen setelah berumur 6 minggu, tergantun varietasnya.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<h5 align="right">Oleh : Uum Sumpena Dan Asep Permana (Badan penelitian dan pengembangan pertanian kementrian pertanian)</h5>\r\n', 'seledri.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_keputusan`
--

CREATE TABLE `tbl_keputusan` (
  `id_keputusan` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `nama_pemilik` varchar(255) DEFAULT NULL,
  `alamat_lahan` varchar(255) DEFAULT NULL,
  `luas_lahan` varchar(255) DEFAULT NULL,
  `nama_tanaman` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_keputusan`
--

INSERT INTO `tbl_keputusan` (`id_keputusan`, `id_user`, `nama_pemilik`, `alamat_lahan`, `luas_lahan`, `nama_tanaman`) VALUES
(56, 23, 'Jaya Asih', 'Wargajaya, Sukamakmur, Bogor,\r\n', '10.000', 'Cabai Merah'),
(58, 24, 'Wahana Hijau', 'Ds. Sukagalih Kecamatan Megamendung\r\n', '30.000', 'Tomat '),
(59, 25, 'Pondok Meteng', 'Kp. Pondok Menteng Desa Cipeten Ciawi\r\n', '75.000', 'Cabai Merah'),
(60, 26, 'City Farm', 'Jl Bukit Cimanggu city raya no 3\r\n', '100', 'Seledri'),
(61, 27, 'Nusa Jati', 'Desa Cibatok 1. Kecamatan Cibungbulang\r\n', '10.000', 'Cabai Rawit'),
(62, 30, 'Usaha Tani ', 'Kp.Bojong Kidul Rt. 02/03 Kemang\r\n', '300.000', 'Bawang Merah'),
(63, 31, 'Mekar Asih', 'Ds. Tugu Selatan Kecamatan Cisarua\r\n', '100.000', 'Kentang'),
(64, 24, 'Wahana Hijau', 'Ds. Sukagalih Kecamatan Megamendung\r\n', '30.000', 'Cabai Merah'),
(65, 32, 'Tani Jaya', 'Kp. Lame Rt 01/04 Kecamatan Kemang\r\n', '350.000', 'Bawang Merah'),
(66, 33, 'Silih Asih', 'KP. Pondok Menteng Desa Bojong Murni \r\n', '50.000', 'Cabai Merah'),
(67, 34, 'Sabisa Farm', 'Sindang barang loji Gedung seng RT 03/05', '40.000', 'Cabai Rawit'),
(68, 30, 'Usaha Tani ', 'Kp.Bojong Kidul Rt. 02/03 Kemang\r\n', '300.000', 'Cabai Rawit'),
(70, 35, 'Desa Karya', 'Leuwisadeng desa Sadengkolot \r\n', '10.000', 'Seledri'),
(72, 70, 'Godog Organik', 'Ds. Tugu Selatan Kecamatan Cisarua', '160.000', 'Kentang'),
(73, 70, 'Godog Organik', 'Ds. Tugu Selatan Kecamatan Cisarua', '160.000', 'Kentang'),
(77, 71, 'Rizki Erdianto Saput', 'Cibedug', '300', 'Cabai Rawit'),
(78, 71, 'saputra', 'JL raya tajur', '300', 'Cabai Merah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kriteria`
--

CREATE TABLE `tbl_kriteria` (
  `id_kriteria` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `nama_pemilik` varchar(255) DEFAULT NULL,
  `alamat_lahan` varchar(255) DEFAULT NULL,
  `luas_lahan` varchar(255) DEFAULT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kriteria`
--

INSERT INTO `tbl_kriteria` (`id_kriteria`, `id_user`, `nama_pemilik`, `alamat_lahan`, `luas_lahan`, `tanggal`) VALUES
(2, 10, 'ASih', 'Sinbarjo', '20.000', '2017-10-10'),
(14, 10, 'Arfan', 'bukit cimanggu city', '1000', '2017-10-17'),
(16, 16, 'ahmad', 'sindang barang loji 05/03', '100000', '2017-10-18'),
(17, 16, 'ahmad', 'sindang barang loji 05/03', '100000', '2017-10-18'),
(18, 16, 'ahmad', 'sindang barang loji 05/03', '100000', '2017-10-18'),
(19, 22, 'Godog Organik', 'Ds. Tugu Selatan Kecamatan Cisarua', '16.000', '2017-10-19'),
(20, 23, 'Jaya Asih', 'Wargajaya, Sukamakmur, Bogor,\r\n', '10.000', '2017-10-19'),
(21, 22, 'Godog Organik', 'Ds. Tugu Selatan Kecamatan Cisarua', '16.000', '2017-10-19'),
(22, 24, 'Wahana Hijau', 'Ds. Sukagalih Kecamatan Megamendung\r\n', '30.000', '2017-10-19'),
(23, 25, 'Pondok Meteng', 'Kp. Pondok Menteng Desa Cipeten Ciawi\r\n', '75.000', '2017-10-19'),
(24, 26, 'City Farm', 'Jl Bukit Cimanggu city raya no 3\r\n', '100', '2017-10-19'),
(25, 27, 'Nusa Jati', 'Desa Cibatok 1. Kecamatan Cibungbulang\r\n', '10.000', '2017-10-19'),
(26, 30, 'Usaha Tani ', 'Kp.Bojong Kidul Rt. 02/03 Kemang\r\n', '300.000', '2017-10-19'),
(27, 31, 'Mekar Asih', 'Ds. Tugu Selatan Kecamatan Cisarua\r\n', '100.000', '2017-10-19'),
(28, 24, 'Wahana Hijau', 'Ds. Sukagalih Kecamatan Megamendung\r\n', '30.000', '2017-10-19'),
(29, 32, 'Tani Jaya', 'Kp. Lame Rt 01/04 Kecamatan Kemang\r\n', '350.000', '2017-10-19'),
(30, 33, 'Silih Asih', 'KP. Pondok Menteng Desa Bojong Murni \r\n', '50.000', '2017-10-19'),
(31, 34, 'Sabisa Farm', 'Sindang barang loji Gedung seng RT 03/05', '40.000', '2017-10-19'),
(32, 30, 'Usaha Tani ', 'Kp.Bojong Kidul Rt. 02/03 Kemang\r\n', '300.000', '2017-10-19'),
(33, 35, 'Desa Karya', 'Leuwisadeng desa Sadengkolot \r\n', '10.000', '2017-10-19'),
(34, 70, 'Godog Organik', 'Ds. Tugu Selatan Kecamatan Cisarua', '160.000', '2017-10-19'),
(35, 70, 'Godog Organik', 'Ds. Tugu Selatan Kecamatan Cisarua', '160.000', '2017-10-19'),
(38, 71, 'Rizki Erdianto Saput', 'Cibedug', '300', '2018-07-18'),
(39, 71, 'saputra', 'JL raya tajur', '300', '2018-07-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lahan`
--

CREATE TABLE `tbl_lahan` (
  `id_lahan` int(10) NOT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `nama_pemilik` varchar(20) DEFAULT NULL,
  `alamat_lahan` text,
  `luas_lahan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_lahan`
--

INSERT INTO `tbl_lahan` (`id_lahan`, `id_user`, `nama_pemilik`, `alamat_lahan`, `luas_lahan`) VALUES
(38, '1', 'arfan', 'cimanggu', '11231'),
(39, '1', 'arfan', 'cimanggu', '11231'),
(40, '1', 'arfan', 'cimanggu', '11231'),
(41, '1', 'arfan', 'cimanggu', '11231'),
(42, '1', 'arfan', 'cimanggu', '11231'),
(43, '1', 'arfan', 'cimanggu', '11231'),
(44, '1', 'arfan', 'cimanggu', '11231'),
(45, '1', 'arfan', 'cimanggu', '11231'),
(46, '1', 'arfan', 'cimanggu', '11231'),
(47, '1', 'arfan', 'cimanggu', '11231'),
(48, '1', 'arfan', 'cimanggu', '11231'),
(49, '1', 'arfan', 'asda', '1231'),
(66, '16', 'ahmad', 'sindang barang loji 05/03', '100000'),
(67, '22', 'Godog Organik', 'Ds. Tugu Selatan Kecamatan Cisarua', '16.000'),
(68, '23', 'Jaya Asih', 'Wargajaya, Sukamakmur, Bogor,\r\n', '10.000'),
(69, '24', 'Wahana Hijau', 'Ds. Sukagalih Kecamatan Megamendung\r\n', '30.000'),
(70, '25', 'Pondok Meteng', 'Kp. Pondok Menteng Desa Cipeten Ciawi\r\n', '75.000'),
(71, '26', 'City Farm', 'Jl Bukit Cimanggu city raya no 3\r\n', '100'),
(72, '27', 'Nusa Jati', 'Desa Cibatok 1. Kecamatan Cibungbulang\r\n', '10.000'),
(73, '30', 'Usaha Tani ', 'Kp.Bojong Kidul Rt. 02/03 Kemang\r\n', '300.000'),
(74, '31', 'Mekar Asih', 'Ds. Tugu Selatan Kecamatan Cisarua\r\n', '100.000'),
(75, '32', 'Tani Jaya', 'Kp. Lame Rt 01/04 Kecamatan Kemang\r\n', '350.000'),
(76, '33', 'Silih Asih', 'KP. Pondok Menteng Desa Bojong Murni \r\n', '50.000'),
(77, '34', 'Sabisa Farm', 'Sindang barang loji Gedung seng RT 03/05', '40.000'),
(78, '35', 'Desa Karya', 'Leuwisadeng desa Sadengkolot \r\n', '10.000'),
(79, '70', 'Godog Organik', 'Ds. Tugu Selatan Kecamatan Cisarua', '160.000'),
(80, '71', 'Rizki Erdianto Saput', 'Cibedug', '300'),
(81, '71', 'saputra', 'JL raya tajur', '300');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_latih`
--

CREATE TABLE `tbl_latih` (
  `id_latih` int(10) NOT NULL,
  `id_tanaman` int(10) DEFAULT NULL,
  `waktu_tanam` int(3) DEFAULT NULL,
  `total_panen` int(3) DEFAULT NULL,
  `cara_tanam` int(3) DEFAULT NULL,
  `ketinggian` int(3) DEFAULT NULL,
  `luas_lahan` int(3) DEFAULT NULL,
  `harga` int(3) DEFAULT NULL,
  `kelas` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_latih`
--

INSERT INTO `tbl_latih` (`id_latih`, `id_tanaman`, `waktu_tanam`, `total_panen`, `cara_tanam`, `ketinggian`, `luas_lahan`, `harga`, `kelas`) VALUES
(1, 2, 3, 2, 1, 2, 4, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penilaian`
--

CREATE TABLE `tbl_penilaian` (
  `id_penilaian` int(30) NOT NULL,
  `id_kriteria` int(10) DEFAULT NULL,
  `bobot` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tanaman`
--

CREATE TABLE `tbl_tanaman` (
  `id_tanaman` int(10) NOT NULL,
  `nama_tanaman` varchar(30) DEFAULT NULL,
  `jenis_data` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tanaman`
--

INSERT INTO `tbl_tanaman` (`id_tanaman`, `nama_tanaman`, `jenis_data`) VALUES
(41, 'Bawang Merah', 1),
(42, 'Bawang Merah', 2),
(43, 'Cabai Merah', 1),
(44, 'Cabai Merah', 2),
(45, 'Cabai Rawit', 1),
(46, 'Cabai Rawit', 2),
(47, 'Tomat ', 1),
(48, 'Tomat', 2),
(49, 'Kentang', 1),
(50, 'Kentang', 2),
(51, 'Seledri', 1),
(52, 'Seledri', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `foto`, `username`, `password`, `nama`) VALUES
(23, NULL, 'Jaya Asih', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'jaya'),
(24, NULL, 'Wahana Hijau', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'wahana'),
(25, NULL, 'Pondok Menteng', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'pondok'),
(26, NULL, 'City Farm', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'city'),
(27, NULL, 'Nusa Jati', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'nusa'),
(30, NULL, 'Usaha Tani', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'usaha'),
(31, NULL, 'Mekar Asih', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'mekar'),
(32, NULL, 'Tani Jaya', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'tani'),
(33, NULL, 'Silih Asih', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'silih'),
(34, NULL, 'Sabisa Farm', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'sabisa'),
(35, NULL, 'Desa Karya', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'Desa Karya'),
(70, NULL, 'Godog Organik ', 'ea5e13e23a3cc53c9f52b7447498e1f0', 'Godog Organik'),
(71, NULL, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_aturan_bobot`
--
ALTER TABLE `tbl_aturan_bobot`
  ADD PRIMARY KEY (`id_aturan_bobot`);

--
-- Indexes for table `tbl_bobot`
--
ALTER TABLE `tbl_bobot`
  ADD PRIMARY KEY (`id_bobot`);

--
-- Indexes for table `tbl_bobot_keputusan`
--
ALTER TABLE `tbl_bobot_keputusan`
  ADD PRIMARY KEY (`id_bobot_keputusan`);

--
-- Indexes for table `tbl_bobot_kriteria`
--
ALTER TABLE `tbl_bobot_kriteria`
  ADD PRIMARY KEY (`id_bobot_kriteria`);

--
-- Indexes for table `tbl_bobot_tanaman`
--
ALTER TABLE `tbl_bobot_tanaman`
  ADD PRIMARY KEY (`id_bobot_tanaman`);

--
-- Indexes for table `tbl_info_tanaman`
--
ALTER TABLE `tbl_info_tanaman`
  ADD PRIMARY KEY (`id_infotanaman`);

--
-- Indexes for table `tbl_keputusan`
--
ALTER TABLE `tbl_keputusan`
  ADD PRIMARY KEY (`id_keputusan`);

--
-- Indexes for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tbl_lahan`
--
ALTER TABLE `tbl_lahan`
  ADD PRIMARY KEY (`id_lahan`);

--
-- Indexes for table `tbl_latih`
--
ALTER TABLE `tbl_latih`
  ADD PRIMARY KEY (`id_latih`);

--
-- Indexes for table `tbl_penilaian`
--
ALTER TABLE `tbl_penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `tbl_tanaman`
--
ALTER TABLE `tbl_tanaman`
  ADD PRIMARY KEY (`id_tanaman`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_aturan_bobot`
--
ALTER TABLE `tbl_aturan_bobot`
  MODIFY `id_aturan_bobot` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `tbl_bobot`
--
ALTER TABLE `tbl_bobot`
  MODIFY `id_bobot` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_bobot_keputusan`
--
ALTER TABLE `tbl_bobot_keputusan`
  MODIFY `id_bobot_keputusan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=596;
--
-- AUTO_INCREMENT for table `tbl_bobot_kriteria`
--
ALTER TABLE `tbl_bobot_kriteria`
  MODIFY `id_bobot_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT for table `tbl_bobot_tanaman`
--
ALTER TABLE `tbl_bobot_tanaman`
  MODIFY `id_bobot_tanaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
--
-- AUTO_INCREMENT for table `tbl_info_tanaman`
--
ALTER TABLE `tbl_info_tanaman`
  MODIFY `id_infotanaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_keputusan`
--
ALTER TABLE `tbl_keputusan`
  MODIFY `id_keputusan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  MODIFY `id_kriteria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tbl_lahan`
--
ALTER TABLE `tbl_lahan`
  MODIFY `id_lahan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `tbl_latih`
--
ALTER TABLE `tbl_latih`
  MODIFY `id_latih` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_tanaman`
--
ALTER TABLE `tbl_tanaman`
  MODIFY `id_tanaman` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
