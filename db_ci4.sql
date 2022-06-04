-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 04, 2022 at 09:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'cartoon', '2022-06-04 20:12:48', '2022-06-04 20:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `content`, `slug`, `sampul`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'oscar oasis', 'cartoon', 'oscar-oasis', '1654365920_c74ab2958af88a20edb8.jpeg', '1', '2022-06-04 13:05:20', '2022-06-04 13:05:20'),
(2, 'jeep xj cherokee', 'otomotif', 'jeep-xj-cherokee', '1654365944_167695b2a8aa960152e4.jpg', '2', '2022-06-04 13:05:44', '2022-06-04 13:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masasshi kishimoto', 'Gramedia', 'naruto1.jpg', NULL, '2022-06-02 23:21:47'),
(59, 'Spiderman Home Coming', 'spiderman-home-coming', 'dns', 'dnsannt', '1654248246_bdaa4d459ae9fa3857b0.jpeg', '2022-06-03 04:24:06', '2022-06-03 04:24:06'),
(60, 'kosong', 'kosong', '', '', 'default.png', '2022-06-03 04:24:13', '2022-06-03 04:24:13'),
(62, 'Divian Ozaza Sari', 'divian-ozaza-sari', 'Divian cantik', 'Di sini aja', '1654348148_9866b47fd83a992ffb11.jpg', '2022-06-04 08:09:08', '2022-06-04 08:09:31'),
(63, 'a', 'a', '', '', 'default.png', '2022-06-04 12:32:54', '2022-06-04 12:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-06-03-095012', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1654251177, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Cawuk Gunawan', 'Kpg. Kalimantan No. 986, Bogor 94796, Sulteng', '2010-06-29 16:42:14', '2022-06-03 10:53:44'),
(2, 'Clara Wani Yulianti S.Farm', 'Dk. Bacang No. 379, Bandung 94219, DIY', '1974-03-01 11:52:27', '2022-06-03 10:53:44'),
(3, 'Jayeng Maryadi S.Ked', 'Gg. Muwardi No. 885, Tomohon 50963, Papua', '1998-05-20 17:01:46', '2022-06-03 10:53:44'),
(4, 'Prakosa Tugiman Prayoga M.TI.', 'Kpg. Kebonjati No. 307, Bandar Lampung 78234, Kaltara', '2013-10-08 12:51:33', '2022-06-03 10:53:44'),
(5, 'Kadir Cengkir Hidayat S.E.I', 'Dk. Kebangkitan Nasional No. 181, Kediri 76505, Aceh', '2004-05-05 10:17:43', '2022-06-03 10:53:44'),
(6, 'Eka Handayani', 'Gg. Bara No. 751, Pariaman 28354, Maluku', '2000-03-09 17:22:59', '2022-06-03 10:53:44'),
(7, 'Najib Setiawan', 'Ds. Panjaitan No. 998, Pekanbaru 12159, Kepri', '2006-07-07 07:11:38', '2022-06-03 10:53:44'),
(8, 'Tina Maryati', 'Jr. Bara No. 143, Medan 96560, Lampung', '1999-12-25 06:37:34', '2022-06-03 10:53:44'),
(9, 'Raden Pangeran Jailani S.Gz', 'Ds. Abang No. 879, Bukittinggi 67784, NTB', '1999-05-19 18:17:39', '2022-06-03 10:53:44'),
(10, 'Nugraha Atmaja Setiawan S.Pd', 'Kpg. Veteran No. 887, Denpasar 58498, Lampung', '1971-08-10 14:46:13', '2022-06-03 10:53:44'),
(11, 'Yosef Warsa Winarno', 'Ki. Cikapayang No. 541, Bitung 38763, Kalbar', '2009-01-12 15:20:07', '2022-06-03 10:53:44'),
(12, 'Zelda Nadia Hariyah', 'Ds. Ters. Jakarta No. 932, Batu 96925, Papua', '2010-01-14 19:55:47', '2022-06-03 10:53:44'),
(13, 'Cawisono Cemplunk Uwais M.Pd', 'Ki. Thamrin No. 910, Prabumulih 35317, Sulut', '1984-11-09 13:21:17', '2022-06-03 10:53:44'),
(14, 'Ana Maya Rahayu', 'Ki. Dr. Junjunan No. 50, Pariaman 27424, Jambi', '1991-02-27 17:39:58', '2022-06-03 10:53:44'),
(15, 'Dagel Jabal Pratama S.T.', 'Dk. Bambon No. 226, Banda Aceh 78550, Sultra', '1997-03-29 06:25:50', '2022-06-03 10:53:44'),
(16, 'Rosman Parman Pangestu M.Kom.', 'Ki. Gambang No. 151, Bitung 87210, Babel', '2004-11-12 22:24:59', '2022-06-03 10:53:44'),
(17, 'Balidin Rajasa', 'Ki. Madiun No. 634, Magelang 47386, NTB', '2016-11-29 09:37:53', '2022-06-03 10:53:44'),
(18, 'Talia Wijayanti', 'Psr. Bagas Pati No. 461, Semarang 10607, Malut', '1972-09-22 04:14:33', '2022-06-03 10:53:44'),
(19, 'Shania Andriani S.Psi', 'Ds. Ronggowarsito No. 355, Sungai Penuh 75289, Aceh', '1989-02-11 17:35:45', '2022-06-03 10:53:44'),
(20, 'Mariadi Simbolon', 'Jr. Ciumbuleuit No. 203, Solok 99837, Aceh', '1993-08-31 00:38:59', '2022-06-03 10:53:44'),
(21, 'Karja Lurhur Maheswara', 'Psr. Rajiman No. 10, Palopo 33215, Malut', '2006-04-11 16:10:53', '2022-06-03 10:53:44'),
(22, 'Martani Chandra Adriansyah M.Farm', 'Kpg. Pasirkoja No. 748, Cilegon 24091, Sumbar', '1976-09-30 07:31:49', '2022-06-03 10:53:44'),
(23, 'Nadia Almira Pratiwi S.Psi', 'Psr. Lembong No. 999, Probolinggo 89951, Kaltara', '1996-12-29 12:52:02', '2022-06-03 10:53:44'),
(24, 'Zulfa Laksita S.Gz', 'Dk. K.H. Maskur No. 783, Parepare 44782, Jatim', '1996-11-06 09:33:58', '2022-06-03 10:53:44'),
(25, 'Bagas Saputra', 'Gg. Perintis Kemerdekaan No. 633, Gorontalo 65892, Maluku', '2005-12-26 12:18:23', '2022-06-03 10:53:44'),
(26, 'Martani Prabowo', 'Psr. Bata Putih No. 592, Pontianak 59399, Jambi', '2015-08-30 13:43:52', '2022-06-03 10:53:44'),
(27, 'Wawan Umay Putra S.E.', 'Jr. Nangka No. 655, Parepare 10936, Lampung', '1975-05-07 11:26:11', '2022-06-03 10:53:44'),
(28, 'Aurora Mulyani', 'Gg. Sugiono No. 308, Yogyakarta 97789, Jambi', '2012-05-07 23:35:28', '2022-06-03 10:53:44'),
(29, 'Putri Novitasari', 'Dk. Sampangan No. 671, Metro 18566, Malut', '2009-06-03 00:34:44', '2022-06-03 10:53:44'),
(30, 'Nabila Zulaika M.Kom.', 'Jr. Thamrin No. 732, Administrasi Jakarta Utara 11279, DKI', '2014-10-16 15:38:02', '2022-06-03 10:53:44'),
(31, 'Kezia Agustina', 'Jln. Jakarta No. 639, Bandar Lampung 53234, Papua', '2013-07-22 00:50:20', '2022-06-03 10:53:44'),
(32, 'Oni Humaira Yuniar', 'Dk. Kalimantan No. 54, Bandar Lampung 90906, Bali', '2005-07-12 19:42:06', '2022-06-03 10:53:44'),
(33, 'Vivi Padmasari S.Farm', 'Gg. Jend. Sudirman No. 428, Bau-Bau 91728, DKI', '1982-08-23 01:29:02', '2022-06-03 10:53:44'),
(34, 'Balamantri Galuh Mansur M.Ak', 'Ki. Rajawali Timur No. 167, Singkawang 97004, Sultra', '1981-07-06 22:57:52', '2022-06-03 10:53:44'),
(35, 'Widya Yuni Mardhiyah', 'Kpg. Gambang No. 565, Solok 50814, Pabar', '2017-07-27 16:46:42', '2022-06-03 10:53:44'),
(36, 'Ilyas Jais Halim S.Sos', 'Jr. Gotong Royong No. 225, Parepare 44143, Sulut', '1971-05-18 06:25:27', '2022-06-03 10:53:44'),
(37, 'Daniswara Laksana Nababan S.Sos', 'Dk. Veteran No. 532, Pasuruan 15265, Kalbar', '1991-03-16 11:29:45', '2022-06-03 10:53:44'),
(38, 'Prabu Wibowo', 'Ds. Jayawijaya No. 338, Solok 56994, Sulut', '1989-10-15 19:46:24', '2022-06-03 10:53:44'),
(39, 'Cakrabirawa Pardi Saragih S.Kom', 'Kpg. Dipenogoro No. 590, Batu 42759, Kaltim', '2006-01-17 13:55:18', '2022-06-03 10:53:44'),
(40, 'Uli Ratna Usada M.Farm', 'Ds. Achmad No. 775, Bitung 99142, Babel', '2007-04-07 11:38:27', '2022-06-03 10:53:44'),
(41, 'Dimas Nababan S.I.Kom', 'Ds. Kartini No. 292, Sungai Penuh 28745, Sulbar', '1982-05-24 01:30:31', '2022-06-03 10:53:44'),
(42, 'Jarwadi Taufik Firgantoro S.Pd', 'Ds. Banal No. 878, Ternate 35290, Jateng', '2005-07-10 11:17:52', '2022-06-03 10:53:44'),
(43, 'Bagiya Zulkarnain M.M.', 'Kpg. Karel S. Tubun No. 907, Pekalongan 67298, NTB', '2005-01-21 19:58:59', '2022-06-03 10:53:44'),
(44, 'Mila Namaga', 'Kpg. Padma No. 586, Pekanbaru 78248, Kaltara', '2011-03-16 00:04:36', '2022-06-03 10:53:44'),
(45, 'Asmianto Prasasta', 'Jr. Adisumarmo No. 885, Subulussalam 21672, Babel', '2004-04-30 23:44:10', '2022-06-03 10:53:44'),
(46, 'Cakrawala Najmudin', 'Psr. Otto No. 8, Ternate 93620, Sulbar', '2007-04-19 20:24:16', '2022-06-03 10:53:44'),
(47, 'Ulya Gilda Safitri S.Pt', 'Kpg. Sunaryo No. 107, Makassar 49645, Bali', '2004-02-12 16:32:08', '2022-06-03 10:53:44'),
(48, 'Wirda Padmasari', 'Dk. HOS. Cjokroaminoto (Pasirkaliki) No. 112, Sorong 59662, Papua', '1984-01-17 21:41:20', '2022-06-03 10:53:44'),
(49, 'Legawa Edi Pangestu S.Kom', 'Gg. Badak No. 701, Sibolga 81475, Maluku', '1973-02-05 22:12:20', '2022-06-03 10:53:44'),
(50, 'Kasiyah Laksmiwati M.M.', 'Dk. Sumpah Pemuda No. 94, Manado 19338, Kaltara', '2009-07-28 15:53:59', '2022-06-03 10:53:44'),
(51, 'Bahuraksa Nashiruddin', 'Jln. Nangka No. 773, Sorong 37722, Sulbar', '1986-08-28 00:41:36', '2022-06-03 10:53:44'),
(52, 'Yessi Widya Rahayu', 'Kpg. Suryo No. 22, Tanjungbalai 47128, Lampung', '2008-08-04 15:14:16', '2022-06-03 10:53:44'),
(53, 'Harsana Latupono', 'Kpg. Babakan No. 142, Bima 96244, Maluku', '1994-04-12 12:02:05', '2022-06-03 10:53:44'),
(54, 'Harjaya Siregar', 'Ki. Sutarto No. 105, Sabang 91935, Kalbar', '1989-04-02 04:05:54', '2022-06-03 10:53:44'),
(55, 'Kenes Ajiono Maulana M.Pd', 'Psr. Radio No. 892, Serang 85020, Sumbar', '1997-04-24 13:18:21', '2022-06-03 10:53:44'),
(56, 'Nardi Siregar', 'Ds. Baranang Siang No. 404, Subulussalam 70083, Kalsel', '1978-04-01 22:49:15', '2022-06-03 10:53:44'),
(57, 'Karsana Prasetya S.Gz', 'Psr. Bara Tambar No. 177, Tangerang Selatan 50166, Malut', '2001-07-17 14:19:02', '2022-06-03 10:53:44'),
(58, 'Prabawa Abyasa Tampubolon S.T.', 'Gg. Kyai Mojo No. 28, Tomohon 62070, Gorontalo', '2021-03-28 03:42:52', '2022-06-03 10:53:44'),
(59, 'Violet Tira Uyainah', 'Ki. Baranangsiang No. 483, Mataram 35841, Jabar', '2019-12-22 20:03:22', '2022-06-03 10:53:44'),
(60, 'Fitriani Halimah', 'Psr. Cut Nyak Dien No. 551, Surabaya 73658, Kaltara', '1973-09-08 07:08:05', '2022-06-03 10:53:44'),
(61, 'Intan Melani', 'Kpg. Raya Setiabudhi No. 31, Padangpanjang 46938, Sulsel', '2002-11-19 20:31:29', '2022-06-03 10:53:44'),
(62, 'Luthfi Sitompul', 'Kpg. Lumban Tobing No. 508, Binjai 59696, Bali', '1994-10-02 16:01:12', '2022-06-03 10:53:44'),
(63, 'Olivia Novi Winarsih S.T.', 'Dk. Bakit  No. 554, Balikpapan 14062, Gorontalo', '2014-05-19 13:49:05', '2022-06-03 10:53:44'),
(64, 'Ian Dariati Tarihoran', 'Jln. Acordion No. 416, Bima 96243, Bali', '1996-12-19 13:49:31', '2022-06-03 10:53:44'),
(65, 'Pia Kusmawati', 'Psr. Basket No. 256, Palopo 32014, DKI', '1977-05-07 16:14:18', '2022-06-03 10:53:44'),
(66, 'Laras Laksmiwati M.M.', 'Ds. Basuki Rahmat  No. 86, Tidore Kepulauan 99600, Kepri', '1984-07-04 02:09:12', '2022-06-03 10:53:44'),
(67, 'Prayoga Saragih', 'Kpg. Bakhita No. 690, Padang 16127, Riau', '1994-03-14 10:25:28', '2022-06-03 10:53:44'),
(68, 'Sadina Wani Wulandari M.Farm', 'Psr. Bacang No. 185, Palembang 35672, Riau', '2019-10-23 12:10:05', '2022-06-03 10:53:44'),
(69, 'Kadir Kusumo', 'Ds. Baik No. 285, Banjarbaru 63569, Bengkulu', '1970-01-27 10:54:05', '2022-06-03 10:53:44'),
(70, 'Darman Ramadan', 'Psr. Salak No. 785, Magelang 68821, NTB', '1993-04-21 17:49:22', '2022-06-03 10:53:44'),
(71, 'Ismail Jamal Hidayanto', 'Psr. Ki Hajar Dewantara No. 138, Cimahi 69603, Sulbar', '1987-02-28 03:14:14', '2022-06-03 10:53:44'),
(72, 'Sari Nasyiah', 'Jln. Gading No. 961, Sorong 37228, Sulteng', '1980-01-28 13:10:52', '2022-06-03 10:53:44'),
(73, 'Maria Citra Lestari M.Kom.', 'Kpg. Otto No. 841, Binjai 63294, Gorontalo', '2012-10-09 01:09:13', '2022-06-03 10:53:44'),
(74, 'Caraka Tamba', 'Jr. Abdul Muis No. 954, Ternate 15047, DKI', '1982-01-06 05:39:09', '2022-06-03 10:53:44'),
(75, 'Pia Hassanah', 'Jln. Dahlia No. 186, Sibolga 77137, Kepri', '1997-10-19 21:14:13', '2022-06-03 10:53:44'),
(76, 'Maria Kuswandari M.Ak', 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 806, Banjarmasin 75194, Sulbar', '1971-09-24 03:23:34', '2022-06-03 10:53:44'),
(77, 'Dina Rahayu S.H.', 'Gg. Hang No. 377, Medan 45446, Sumsel', '1973-11-02 03:21:23', '2022-06-03 10:53:44'),
(78, 'Rahmi Endah Nuraini S.Farm', 'Dk. Abdullah No. 226, Solok 15937, Kalteng', '1994-07-19 20:26:00', '2022-06-03 10:53:44'),
(79, 'Niyaga Iswahyudi', 'Ds. Baha No. 729, Sabang 18802, Sulteng', '2019-11-13 15:25:40', '2022-06-03 10:53:44'),
(80, 'Sabrina Ika Wulandari S.Pt', 'Jr. Teuku Umar No. 594, Palu 71870, Bali', '2010-06-29 04:29:13', '2022-06-03 10:53:44'),
(81, 'Cahyadi Saputra', 'Jr. Sumpah Pemuda No. 814, Balikpapan 25200, Maluku', '1988-08-27 00:36:46', '2022-06-03 10:53:44'),
(82, 'Lutfan Ardianto', 'Gg. Tentara Pelajar No. 425, Singkawang 94710, Sulteng', '1973-01-12 14:43:26', '2022-06-03 10:53:44'),
(83, 'Ira Natalia Astuti S.E.', 'Gg. Ters. Kiaracondong No. 876, Metro 28535, Malut', '1993-02-26 13:38:54', '2022-06-03 10:53:44'),
(84, 'Ganjaran Rafid Permadi', 'Psr. Jamika No. 372, Mataram 97047, Bengkulu', '2011-04-25 12:46:22', '2022-06-03 10:53:44'),
(85, 'Ratih Zulaikha Handayani M.Farm', 'Kpg. W.R. Supratman No. 529, Kediri 82876, Sulbar', '2018-07-16 15:02:57', '2022-06-03 10:53:44'),
(86, 'Hardana Uwais', 'Ds. Wahid No. 675, Pekalongan 88180, Maluku', '2011-12-17 18:29:55', '2022-06-03 10:53:44'),
(87, 'Gilda Pratiwi', 'Gg. Qrisdoren No. 626, Bandar Lampung 39540, Sulut', '2015-06-25 17:35:45', '2022-06-03 10:53:44'),
(88, 'Clara Sari Astuti S.Pt', 'Kpg. Baabur Royan No. 394, Pontianak 17001, Banten', '2013-01-16 22:05:32', '2022-06-03 10:53:44'),
(89, 'Kariman Sidiq Nainggolan S.Psi', 'Psr. Sutarto No. 278, Bontang 77885, Pabar', '1970-02-16 03:04:02', '2022-06-03 10:53:44'),
(90, 'Bakijan Budiyanto M.Kom.', 'Psr. Elang No. 483, Dumai 44173, Kalteng', '1989-06-30 17:19:10', '2022-06-03 10:53:44'),
(91, 'Febi Susanti', 'Ds. Yap Tjwan Bing No. 153, Tanjung Pinang 94851, Pabar', '1992-05-27 10:01:24', '2022-06-03 10:53:44'),
(92, 'Jindra Suryono', 'Psr. Basuki Rahmat  No. 625, Probolinggo 25026, Riau', '1989-03-09 18:20:47', '2022-06-03 10:53:44'),
(93, 'Violet Fathonah Riyanti S.E.I', 'Ds. Sampangan No. 480, Dumai 77202, Jabar', '1971-02-10 04:48:14', '2022-06-03 10:53:44'),
(94, 'Paris Laila Zulaika S.E.', 'Dk. Gambang No. 133, Gorontalo 21900, Jateng', '2007-09-03 22:52:38', '2022-06-03 10:53:44'),
(95, 'Wulan Andriani', 'Kpg. Gajah No. 944, Metro 21475, DIY', '2009-01-28 08:14:29', '2022-06-03 10:53:44'),
(96, 'Endah Utami', 'Ki. Jend. Sudirman No. 704, Denpasar 97825, Banten', '2005-11-08 19:55:07', '2022-06-03 10:53:44'),
(97, 'Dewi Halimah S.Psi', 'Kpg. Setiabudhi No. 80, Bima 82331, Kaltara', '1976-04-15 00:43:08', '2022-06-03 10:53:44'),
(98, 'Wage Dabukke', 'Jln. Sukajadi No. 479, Sukabumi 88867, Sumbar', '2019-04-10 15:51:57', '2022-06-03 10:53:44'),
(99, 'Lintang Nasyiah', 'Jln. Peta No. 714, Langsa 32133, Kaltim', '2016-01-05 02:59:28', '2022-06-03 10:53:44'),
(100, 'Ira Uchita Hariyah', 'Jr. Baladewa No. 695, Bima 25153, Banten', '2007-10-29 17:40:30', '2022-06-03 10:53:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
