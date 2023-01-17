-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 03:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_eorest`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `id_acara` int(11) NOT NULL,
  `jenis_acara` varchar(100) NOT NULL,
  `kapasitas_meja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`id_acara`, `jenis_acara`, `kapasitas_meja`) VALUES
(14, 'Pernikahan Gedung Kecil', 100),
(15, 'Pernikahan Gedung Sedang', 150),
(16, 'Pernikahan Gedung Besar', 300);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(12) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `id_acara` int(12) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `nama_pemesan` char(50) NOT NULL,
  `nomor_hp` varchar(250) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_reservasi` date NOT NULL,
  `total_pembayaran` int(12) NOT NULL,
  `total_sudah_dibayar` int(12) NOT NULL,
  `batas_pembayaran_dp` datetime NOT NULL,
  `status_pembayaran` varchar(250) NOT NULL,
  `status_dapur` varchar(20) NOT NULL,
  `bukti_pembayaran` varchar(1024) DEFAULT NULL,
  `bukti_pembayaran2` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_menu`, `id_detail_menu`, `id_acara`, `alamat`, `nama_pemesan`, `nomor_hp`, `tanggal_pesan`, `tanggal_reservasi`, `total_pembayaran`, `total_sudah_dibayar`, `batas_pembayaran_dp`, `status_pembayaran`, `status_dapur`, `bukti_pembayaran`, `bukti_pembayaran2`) VALUES
(63, 0, 'INV20220919195644', 14, '', 'coba', '12345', '2022-09-19 19:56:44', '2022-09-28', 1500000, 1500000, '2022-09-20 19:56:44', 'Pesanan Selesai', 'batal', '1909202214565520200204_213703.jpg', '19092022152855image-removebg-preview.png'),
(64, 0, 'INV20220919203934', 14, '', 'Tugas Akhir', '12345', '2022-09-19 20:39:34', '2022-09-30', 450000, 100000, '2022-09-20 20:39:34', 'Sudah Lunas', 'batal', '190920221540011th.png', '190920221541071tahun.png'),
(69, 0, 'INV20220921214202', 14, '', 'Ofiq Lalala', '12345', '2022-09-21 21:42:02', '2022-10-01', 2500000, 750000, '2022-09-22 21:42:02', 'Sudah Lunas', 'selesai', '21092022164253IMG-20121116-04803.jpg', '21092022164406IMG-20121116-04813.jpg'),
(70, 0, 'INV20220927093032', 14, '', 'Tes 1', '12345', '2022-11-27 09:30:32', '2022-09-29', 2500000, 500000, '2022-09-28 09:30:32', 'Sudah Lunas', 'batal', '27092022043205WIN_20210504_10_17_19_Pro.jpg', '27092022043645Screenshot(1).png'),
(71, 0, 'INV20220929202259', 14, '', 'tes 2', '1234', '2022-09-29 20:22:59', '2022-10-02', 1500000, 1000000, '2022-09-30 20:22:59', 'Sudah Bayar DP', '', '29092022152319WhatsAppImage2022-07-10at10.05.58AM.jpeg', ''),
(75, 0, 'INV20221113153421', 14, 'Trunojoyo 88', 'Almaghfirah Diva', '083113131099', '2022-11-13 15:34:21', '2022-11-22', 1875000, 1875000, '2022-11-14 15:34:21', 'Pesanan Selesai', '', '13112022093950bayar.png', ''),
(76, 0, 'INV20221114200152', 14, 'Manyar Sabrangan 123 Kota Surabaya', 'Ofiq baru', '12345', '2022-11-14 20:01:52', '2022-11-23', 1500000, 1500000, '2022-11-15 20:01:52', 'Pesanan Selesai', '', 'Kosong', ''),
(77, 0, 'INV20221130115046', 14, 'Manyar Sabrangan 123 Kota Surabaya', 'aaaa', '1111', '2022-11-30 11:50:46', '2022-12-07', 2000000, 500000, '2022-12-03 00:00:00', 'Sudah Bayar DP', '', '30112022072419transfer1.jpg', ''),
(79, 0, 'INV20221130121123', 14, 'Jember', 'aaaaaaaa', '1234', '2022-11-30 12:11:23', '2023-03-30', 180000, 0, '2022-12-01 12:11:23', 'Belum Bayar DP', '', 'Kosong', ''),
(81, 0, 'INV20221130123441', 14, 'Manyar Sabrangan 123', 'pppp', '1234', '2022-11-30 12:34:41', '2022-12-10', 1500000, 1000000, '2022-12-01 12:34:41', 'Sudah Bayar DP', '', '30112022145813tf1.png', ''),
(82, 0, 'INV20221130211257', 16, 'Jl. Marawi', 'Dipo', '0831234567', '2022-11-30 21:12:57', '2022-12-31', 23000000, 8000000, '2022-12-01 21:12:57', 'Sudah Lunas', 'selesai', '30112022151422brimo20221110-065045.png', '30112022151534brimo20221110-065036.png'),
(83, 0, 'INV20221201060249', 14, 'Lalala Land', 'Coba lagi', '12345678', '2022-12-01 06:02:49', '2022-12-05', 150000, 50000, '2022-12-02 06:02:49', 'Sudah Lunas', 'selesai', '01122022000411tf4.png', '01122022000546tf3.png'),
(84, 0, 'INV20221201061602', 15, 'Manyar Sabrangan 123', 'Booking lagi', '12345', '2022-12-01 06:16:02', '2022-12-28', 1500000, 500000, '2022-12-02 06:16:02', 'Sudah Lunas', 'selesai', '01122022002111tf6.png', '01122022002203transfer1.jpg'),
(85, 0, 'INV20221201101024', 14, 'Surabaya', 'Ujian TA', '1234', '2022-12-01 10:10:24', '2022-12-07', 1500000, 1000000, '2022-12-02 10:10:24', 'Sudah Bayar DP', '', '01122022041123tf11.jpg', ''),
(86, 0, 'INV20221201110119', 14, 'Merjosari 200', 'Laras Ayu Suwandini', '0876637267821', '2022-12-01 11:01:19', '2022-12-16', 3500000, 3500000, '2022-12-02 11:01:19', 'Sudah Lunas', '', '01122022051939tf1.png', ''),
(87, 0, 'INV20221201113841', 14, 'Trunojoyo 88', 'Ofiq', '123445', '2022-12-01 11:38:41', '2022-12-21', 150000, 35000, '2022-12-02 11:38:41', 'Sudah Lunas', '', '01122022053904tf2.png', '01122022053944tf4.png'),
(88, 0, 'INV20221204211133', 14, 'Surabaya', 'Achmad Zainurrofiq', '087736346372', '2022-12-04 21:11:33', '2022-12-14', 1500000, 500000, '2022-12-05 21:11:33', 'Sudah Lunas', '', '04122022152233tf1.png', '04122022152349tf3.png'),
(91, 0, 'INV20221205083134', 14, 'Jember', 'Tes', '123', '2022-12-05 08:31:34', '2022-12-27', 150000, 0, '2022-12-06 08:31:34', 'Belum Bayar DP', '', 'Kosong', ''),
(97, 0, 'INV20221205132002', 14, 'Manyar Sabrangan 123', 'Achmad Zainurrofiq', '082244509080', '2022-12-05 13:20:02', '2022-12-29', 1500000, 0, '2022-12-06 13:20:02', 'Belum Bayar DP', '', 'Kosong', ''),
(98, 0, 'INV20221205', 14, 'Manyar Sabrangan 123', 'Achmad Zainurrofiq', '082244509080', '2022-12-05 17:04:03', '2022-12-29', 1500000, 0, '2022-12-07 17:04:03', 'Belum Bayar DP', '', 'Kosong', ''),
(99, 0, 'INV20221205+8', 14, 'Manyar Sabrangan 123', 'Achmad Zainurrofiq', '082244509080', '2022-12-05 17:04:36', '2022-12-29', 1500000, 0, '2022-12-07 17:04:36', 'Belum Bayar DP', '', 'Kosong', ''),
(100, 0, 'INV2022120545', 14, 'Manyar Sabrangan 123', 'Achmad Zainurrofiq', '082244509080', '2022-12-05 17:04:45', '2022-12-29', 1500000, 0, '2022-12-07 17:04:45', 'Belum Bayar DP', '', 'Kosong', ''),
(102, 0, 'INV2022121242', 14, 'malang lalala', 'Uniga Malang', '12345678', '2022-12-12 09:08:42', '2022-12-22', 80000, 30000, '2022-12-14 09:08:42', 'Sudah Lunas', '', '1212202203091820200204_213703.jpg', '1212202203095520200830_101035.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_menu`
--

CREATE TABLE `gambar_menu` (
  `id_gambar` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `gambar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gambar_menu`
--

INSERT INTO `gambar_menu` (`id_gambar`, `id_menu`, `gambar`) VALUES
(10, 7, '06102021091833Sips-KatieChrist.jpg'),
(12, 7, '06102021091907EsTehSerai-LemongrassIceTea.jpg'),
(14, 16, '06102021092328orange-coconutmilkshake.jpg'),
(16, 16, '06102021092756024b5b71-b655-4e9b-9f7e-fc37ed0eb720.jpg'),
(17, 16, '06102021092845TheBestStrawberryMilkshake-BakingMischief.jpg'),
(21, 13, '061020210934115d4481d7-66a4-4e4a-82f6-de49b246e92d.jpg'),
(24, 13, '06102021093658SateKambingYangEmpuk.jpg'),
(25, 15, '06102021093836SopBuntut_IndonesianOxtailSoup.jpg'),
(26, 11, '06102021093956ResepSotoLamonganAsliJawaTimurDenganSuwiranAyamDanKuahKuning.jpg'),
(27, 17, '2007202206332161050e49ba99b.jpg'),
(28, 17, '200720220634422351908541.jpg'),
(29, 17, '20072022063520about-main.jpg'),
(30, 17, '20072022063839about-inset.jpg'),
(31, 17, '20072022063844gal02.png'),
(32, 18, '2109202214163920200204_213954.jpg'),
(33, 19, '30112022235226image-removebg-preview(7).png'),
(34, 19, '30112022235241image-removebg-preview(4).png'),
(35, 19, '3011202223530320221024_134807-removebg-preview.png'),
(36, 19, '30112022235326gambar1.png'),
(38, 19, '30112022235453IMG-20200822-WA0026.jpg'),
(39, 19, '30112022235513IMG-20200822-WA0024.jpg'),
(40, 1, '01122022032825balung2.jpg'),
(41, 1, '01122022033647balung4.jpg'),
(42, 1, '01122022033731balung5.jpg'),
(43, 12, '01122022033822gbr2.png'),
(44, 12, '01122022034212nasgor.jpg'),
(45, 12, '01122022034222download.jpg'),
(46, 12, '01122022034632nasgor2.jpg'),
(47, 2, '01122022034922ayam.jpg'),
(48, 2, '01122022035153ayam4.jpg'),
(49, 2, '01122022035159ayam3.jpg'),
(50, 2, '01122022035206ayam2.jpg'),
(51, 20, '01122022035405gbr8(2).png'),
(52, 20, '01122022035657roti1.jpg'),
(53, 20, '01122022035703roti2.jpg'),
(54, 8, '01122022040002gbr3.png'),
(55, 8, '01122022040055jus1.jpg'),
(56, 8, '01122022040101jus.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `lupa_password`
--

CREATE TABLE `lupa_password` (
  `id_lupa_password` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `pertanyaankeamanan1` varchar(255) NOT NULL,
  `pertanyaankeamanan2` varchar(255) NOT NULL,
  `jawabankeamanan1` varchar(255) NOT NULL,
  `jawabankeamanan2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lupa_password`
--

INSERT INTO `lupa_password` (`id_lupa_password`, `id_pegawai`, `pertanyaankeamanan1`, `pertanyaankeamanan2`, `jawabankeamanan1`, `jawabankeamanan2`) VALUES
(1, 1, 'Berapa angka favorit anda?(Contoh: 99)', 'Siapakah nama hewan peliharaan anda?', '7', 'alfan'),
(2, 3, 'Apa hewan kesayangan anda?', 'Apa cita-cita anda semasa kecil?', 'Harimau Sumatra', 'Progamer'),
(3, 7, 'Apa hewan kesayangan anda?', 'Siapakah nama hewan peliharaan anda?', 'kucing', 'lepis'),
(4, 8, 'Siapa nama belakang ibu anda?', 'Siapakah nama cinta pertama anda?', 'Ni Made Muryatini', 'Lepis'),
(5, 9, 'Siapakah nama teman masa kecil anda?', 'Apa cita-cita anda semasa kecil?', 'nabil', 'pilot'),
(6, 10, 'Berapa angka favorit anda?(Contoh: 99)', 'Siapakah guru terfavorit anda?', '98', 'bucatur');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `detail_menu` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `stok` varchar(50) NOT NULL DEFAULT 'Tersedia',
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `detail_menu`, `kategori`, `stok`, `harga`) VALUES
(1, 'Tulang Dinosaurus', 'Trex, Brontosaurus, Mamoth,Raptor', 'Makanan', 'Tersedia', 20000),
(2, 'Ayam Ayaman', 'Ayam Jawa, Ayam Kalimantan, Ayam Sumatera', 'Makanan', 'Tersedia', 15000),
(7, 'Es The', 'Jasmine, Melati, Telang', 'Minuman', 'Tersedia', 8000),
(8, 'Aneka Jus', 'Mengkudu, Lemon, Jambu, Bengkoang', 'Minuman', 'Tersedia', 10000),
(11, 'Soto Lamongan ', 'Ayam, Jeroan, Kulit, Uritan, Campur', 'Makanan', 'Tersedia', 15000),
(12, 'Nasi Goreng', 'Jawa, Mawut, Seafood, Ikan Asin', 'Makanan', 'Tersedia', 25000),
(13, 'Sate Daging', 'Ayam asli, Kambing, Sapi', 'Makanan', 'Tersedia', 25000),
(15, 'Sop Buntut', 'Buntut Sapi, Buntut Campur, Buntut Lunak', 'Makanan', 'Tersedia', 35000),
(16, 'Susu Kocok', 'Sokelat, Stroberi, Fanila', 'Minuman', 'Tersedia', 15000),
(20, 'Roti Bakar', 'Bakar Rare, Medium, Welldone', 'Makanan', 'Tersedia', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `menu_dibooking`
--

CREATE TABLE `menu_dibooking` (
  `id_menu_dibooking` int(12) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `nama_makanan` varchar(250) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `kebutuhan` varchar(1024) NOT NULL,
  `biaya_kebutuhan` int(15) NOT NULL,
  `sub_total` int(12) NOT NULL,
  `status_order` varchar(255) NOT NULL DEFAULT 'success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_dibooking`
--

INSERT INTO `menu_dibooking` (`id_menu_dibooking`, `id_detail_menu`, `nama_makanan`, `jumlah`, `kebutuhan`, `biaya_kebutuhan`, `sub_total`, `status_order`) VALUES
(15, 'INV20211015132542', 'Bakso', 1, '', 0, 20000, 'success'),
(16, 'INV20211015132542', 'Nasi Goreng - variasi', 1, '', 0, 25000, 'success'),
(17, 'INV20211015133852', 'Bakso', 2, '', 0, 40000, 'success'),
(18, 'INV20211015133852', 'Es Teh', 2, '', 0, 16000, 'success'),
(19, 'INV20211016130044', 'Bakso', 2, '', 0, 40000, 'success'),
(20, 'INV20211016130044', 'Es Jeruk', 2, '', 0, 20000, 'success'),
(21, 'INV20211027131246', 'Nasi Goreng', 2, '', 0, 50000, 'success'),
(22, 'INV20211027131246', 'Soto Lamongan ', 2, '', 0, 30000, 'success'),
(23, 'INV20211027131246', 'Es Jeruk', 4, '', 0, 40000, 'success'),
(24, 'INV20211027134031', 'Es Jeruk', 2, '', 0, 20000, 'success'),
(25, 'INV20211027134031', 'Bakso', 2, '', 0, 40000, 'success'),
(26, 'INV20211029135257', 'Es Jeruk', 1, '', 0, 10000, 'success'),
(27, 'INV20211029135257', 'Nasi Goreng', 1, '', 0, 25000, 'success'),
(28, 'INV20211029135257', 'Soto Lamongan ', 1, '', 0, 15000, 'success'),
(29, 'INV20211029200131', 'Nasi Goreng', 1, '', 0, 25000, 'success'),
(30, 'INV20211029200131', 'Soto Lamongan ', 1, '', 0, 15000, 'success'),
(40, 'INV20211114143545', 'Soto Lamongan ', 2, '', 0, 30000, 'success'),
(41, 'INV20211114190627', 'Es Teh', 2, '', 0, 16000, 'success'),
(42, 'INV20211114190627', 'Bakso', 2, '', 0, 40000, 'success'),
(43, 'INV20211114143545', 'Milkshake', 1, '', 0, 15000, 'success'),
(44, 'INV20211114143545', 'Milkshake', 1, '', 0, 15000, 'success'),
(45, 'INV20220714081039', 'Bakso', 2, '', 0, 40000, 'success'),
(46, 'INV20220714133425', 'Nasi Goreng', 3, '', 0, 75000, 'success'),
(47, 'INV20220714135406', 'Nasi Goreng', 30, '', 0, 750000, 'success'),
(48, 'INV20220720091534', 'Sate Daging', 4, '', 0, 100000, 'success'),
(49, 'INV20220720091534', 'Nasi Goreng', 6, '', 0, 150000, 'success'),
(50, 'INV20220720091848', 'Bakso', 10, '', 0, 200000, 'success'),
(51, 'INV20220720091848', 'Nasi Goreng', 10, '', 0, 250000, 'success'),
(52, 'INV20220720092026', 'Bakso', 10, '', 0, 200000, 'success'),
(53, 'INV20220720092026', 'Soto Lamongan ', 15, '', 0, 225000, 'success'),
(54, 'INV20220720095637', 'Nasi Goreng', 100, '', 0, 2500000, 'success'),
(55, 'INV20220720095705', 'Sate Daging', 200, '', 0, 5000000, 'success'),
(56, 'INV20220720095705', 'Es Jeruk', 300, '', 0, 3000000, 'success'),
(57, 'INV20220720095705', 'Sop Buntut', 20, '', 0, 700000, 'success'),
(58, 'INV20220720100302', 'Nasi Goreng', 200, '', 0, 5000000, 'success'),
(59, 'INV20220720100302', 'Es Teh', 200, '', 0, 1600000, 'success'),
(60, 'INV20220720100634', 'Soto Lamongan ', 200, '', 0, 3000000, 'success'),
(61, 'INV20220720101019', 'Nasi Goreng', 23, '', 0, 575000, 'success'),
(62, 'INV20220720101019', 'Nasi Goreng', 33, '', 0, 825000, 'success'),
(63, 'INV20220720101019', 'Sop Buntut', 33, '', 0, 1155000, 'success'),
(64, 'INV20220720101211', 'Nasi Goreng', 200, '', 0, 5000000, 'success'),
(65, 'INV20220720101332', 'Nasi Goreng', 400, '', 0, 10000000, 'success'),
(66, 'INV20220720101415', 'Sate Daging', 600, '', 0, 15000000, 'success'),
(67, 'INV20220720101538', 'Nasi Goreng', 100, '', 0, 2500000, 'success'),
(68, 'INV20220720101714', 'Sate Daging', 100, '', 0, 2500000, 'success'),
(69, 'INV20220720101939', 'Sate Daging', 200000, '', 0, 2147483647, 'success'),
(70, 'INV20220720102205', 'Nasi Goreng', 300, '', 0, 7500000, 'success'),
(71, 'INV20220720102442', 'Nasi Goreng', 10, '', 0, 250000, 'success'),
(72, 'INV20220720102734', 'Sate Daging', 10, '', 0, 250000, 'success'),
(73, 'INV20220720103045', 'Soto Lamongan ', 200, '', 0, 3000000, 'success'),
(74, 'INV20220720103510', 'Sate Daging', 322, '', 0, 8050000, 'success'),
(75, 'INV20220720103510', 'Sate Daging', 431, '', 0, 10775000, 'success'),
(76, 'INV20220720103510', 'Nasi Goreng', 211, '', 0, 5275000, 'success'),
(77, 'INV20220720104132', 'Sate Daging', 322, '', 0, 8050000, 'success'),
(78, 'INV20220720104132', 'Sate Daging', 431, '', 0, 10775000, 'success'),
(79, 'INV20220720104132', 'Nasi Goreng', 211, '', 0, 5275000, 'success'),
(80, 'INV20220720104331', 'Nasi Goreng', 100, '', 0, 2500000, 'success'),
(81, 'INV20220720105232', 'Sate Daging', 200, '', 0, 5000000, 'success'),
(82, 'INV20220720110235', 'Soto Lamongan ', 100, '', 0, 1500000, 'success'),
(83, 'INV20220727101954', 'Mie Ayam', 100, '', 0, 1500000, 'success'),
(84, 'INV20220727101954', 'Es Teh', 200, '', 0, 1600000, 'success'),
(85, 'INV20220801145502', 'Es Teh', 100, '', 0, 800000, 'success'),
(86, 'INV20220801145502', 'Es Jeruk', 20, '', 0, 200000, 'success'),
(87, 'INV20220801145502', 'Sate Daging', 40, '', 0, 1000000, 'success'),
(88, 'INV20220801145715', 'Soto Lamongan ', 100, '', 0, 1500000, 'success'),
(89, 'INV20220801145715', 'Es Teh', 200, '', 0, 1600000, 'success'),
(90, 'INV20220906214601', 'Paket A', 100, '', 0, 4500000, 'success'),
(91, 'INV20220906220348', 'Paket A', 100, '', 0, 4500000, 'success'),
(92, 'INV20220906225455', 'Mie Ayam -  Topping klalalala', 10, '', 0, 150000, 'success'),
(93, 'INV20220918085956', 'Mie Ayam - Topping Ayam', 100, '', 0, 1500000, 'success'),
(94, 'INV20220918085956', 'Es Teh -  Lychee', 100, '', 0, 800000, 'success'),
(95, 'INV20220918180338', 'Olahan Ayam -  Rica-rica', 50, '', 0, 750000, 'success'),
(96, 'INV20220918180338', 'Bakso -  Mercon', 50, '', 0, 1000000, 'success'),
(97, 'INV20220918181155', 'Nasi Goreng -  Seafood', 10, '', 0, 250000, 'success'),
(98, 'INV20220918181155', 'Olahan Ayam -  Saus Kecap', 20, '', 0, 300000, 'success'),
(99, 'INV20220918182233', 'Soto Lamongan  -  Uritan', 10, '', 0, 150000, 'success'),
(100, 'INV20220918183057', 'Olahan Ayam -  Saus Mentega', 100, '', 0, 1500000, 'success'),
(101, 'INV20220918194715', 'Bakso -  Mercon', 100, '', 0, 2000000, 'success'),
(102, 'INV20220919185039', 'Es Teh - Jasmine', 100, '', 0, 800000, 'success'),
(103, 'INV20220919190707', 'Bakso -  Kasar', 100, '', 0, 2000000, 'success'),
(104, 'INV20220919190707', 'Soto Lamongan  -  Campur', 100, '', 0, 1500000, 'success'),
(105, 'INV20220919191528', 'Es Jeruk -  Lemon', 100, '', 0, 1000000, 'success'),
(106, 'INV20220919191528', 'Nasi Goreng - Jawa', 100, '', 0, 2500000, 'success'),
(107, 'INV20220919192019', 'Nasi Goreng -  Ikan Asin', 100, '', 0, 2500000, 'success'),
(108, 'INV20220919192513', 'Es Jeruk -  Lemon', 100, '', 0, 1000000, 'success'),
(109, 'INV20220919195644', 'Olahan Ayam -  Saus Mentega', 100, 'Jdvrjxdnbfhd', 0, 1500000, 'success'),
(110, 'INV20220919203934', 'Bakso -  Puyuh', 10, 'Piring 500 buah', 0, 200000, 'success'),
(111, 'INV20220919203934', 'Sate Daging -  Kambing', 10, 'Pisang', 0, 250000, 'success'),
(112, 'INV20220921132415', 'Soto Lamongan  - Ayam', 100, '', 0, 1500000, 'success'),
(113, 'INV20220921132415', 'Es Jeruk -  Jeruk Asli', 100, '', 0, 1000000, 'success'),
(114, 'INV20220921133954', 'Soto Lamongan  -  Uritan', 10, '', 0, 150000, 'success'),
(115, 'INV20220921211213', 'Nasi Goreng - Jawa', 100, '', 0, 2500000, 'success'),
(116, 'INV20220921211213', 'Sate Daging -  Kambing', 100, '', 0, 2500000, 'success'),
(117, 'INV20220921212558', 'Es Jeruk -  Lemon', 10, '', 0, 100000, 'success'),
(118, 'INV20220921214202', 'Nasi Goreng -  Ikan Asin', 100, 'Belikan ikan 20 kg di pasar', 0, 2500000, 'success'),
(119, 'INV20220927093032', 'Nasi Goreng - Jawa', 50, 'ayam 1kg', 0, 1250000, 'success'),
(120, 'INV20220927093032', 'Sate Daging - Ayam asli', 50, 'Belikan di pasar', 1500000, 1250000, 'success'),
(121, 'INV20220929202259', 'Soto Lamongan  -  Jeroan', 100, '', 0, 1500000, 'success'),
(122, 'INV20221003071552', 'Soto Lamongan  -  Campur', 10, '', 0, 150000, 'success'),
(123, 'INV20221003073259', 'Soto Lamongan  -  Campur', 10, '', 0, 150000, 'success'),
(124, 'INV20221003075514', 'Es Teh -  Lychee', 100, '', 0, 800000, 'success'),
(125, 'INV20221113153421', 'Olahan Ayam -  Saus Mentega', 100, '', 0, 1500000, 'success'),
(126, 'INV20221113153421', 'Soto Lamongan  -  Campur', 25, '', 0, 375000, 'success'),
(127, 'INV20221114200152', 'Olahan Ayam -  Rica-rica', 100, '', 0, 1500000, 'success'),
(128, 'INV20221130115046', 'Bakso -  Mercon', 100, '', 0, 2000000, 'success'),
(129, 'INV20221130120413', 'Es Jeruk -  Lemon', 100, '', 0, 1000000, 'success'),
(130, 'INV20221130121123', 'Olahan Ayam -  Saus Mentega', 12, '', 0, 180000, 'success'),
(131, 'INV20221130123240', 'Olahan Ayam -  Balado', 100, '', 0, 1500000, 'success'),
(132, 'INV20221130123441', 'Olahan Ayam - Saus Inggris', 100, '', 0, 1500000, 'success'),
(133, 'INV20221130211257', 'Tulang Dinosaurus -  Brontosaurus', 700, 'belikan tulang', 500000, 14000000, 'success'),
(134, 'INV20221130211257', 'Olahan Ayam -  Saus Kecap', 600, 'belikan ayam', 100000, 9000000, 'success'),
(135, 'INV20221201060249', 'Soto Lamongan  -  Uritan', 10, 'belikan ayam hidup', 750000, 150000, 'success'),
(136, 'INV20221201061602', 'Soto Lamongan  -  Jeroan', 100, 'belikan ayam cemani', 12000, 1500000, 'success'),
(137, 'INV20221201101024', 'Ayam Ayaman -  Ayam Kalimantan', 100, '', 0, 1500000, 'success'),
(138, 'INV20221201110119', 'Nasi Goreng -  Seafood', 100, '', 0, 2500000, 'success'),
(139, 'INV20221201110119', 'Aneka Jus -  Lemon', 100, '', 0, 1000000, 'success'),
(140, 'INV20221201113841', 'Ayam Ayaman -  Ayam Kalimantan', 10, 'beli ayam', 1000000, 150000, 'success'),
(141, 'INV20221204211133', 'Ayam Ayaman - Ayam Jawa', 100, '', 0, 1500000, 'success'),
(142, 'INV20221204213734', 'Tulang Dinosaurus -  Brontosaurus', 10, '', 0, 200000, 'success'),
(143, 'INV20221204221001', 'Ayam Ayaman - Ayam Jawa', 10, '', 0, 150000, 'success'),
(144, 'INV20221205083134', 'Ayam Ayaman -  Ayam Kalimantan', 10, '', 0, 150000, 'success'),
(145, 'INV20221205131329', 'Aneka Jus -  Lemon', 10, '', 0, 100000, 'success'),
(146, 'INV20221205131515', 'Aneka Jus -  Lemon', 10, '', 0, 100000, 'success'),
(147, 'INV20221205131607', 'Aneka Jus -  Lemon', 10, '', 0, 100000, 'success'),
(148, 'INV20221205131625', 'Aneka Jus -  Lemon', 10, '', 0, 100000, 'success'),
(149, 'INV20221205131709', 'Aneka Jus -  Lemon', 10, '', 0, 100000, 'success'),
(150, 'INV20221205132002', 'Soto Lamongan  -  Kulit', 100, '', 0, 1500000, 'success'),
(151, 'INV20221205', 'Soto Lamongan  -  Kulit', 100, '', 0, 1500000, 'success'),
(152, 'INV20221205+8', 'Soto Lamongan  -  Kulit', 100, '', 0, 1500000, 'success'),
(153, 'INV2022120545', 'Soto Lamongan  -  Kulit', 100, '', 0, 1500000, 'success'),
(154, 'INV2022120558', 'Soto Lamongan  -  Uritan', 10, '', 0, 150000, 'success'),
(155, 'INV2022121242', 'Es The -  Melati', 10, '', 0, 80000, 'success');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id_metode` int(12) NOT NULL,
  `nama_merchant` varchar(250) NOT NULL,
  `atas_nama` varchar(250) NOT NULL,
  `kode_pembayaran` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id_metode`, `nama_merchant`, `atas_nama`, `kode_pembayaran`) VALUES
(1, 'Bank Mandiri', 'CV. Arryna Catering', '142009373618'),
(2, 'Bank BCA', 'CV. Arryna Catering', '3372792048'),
(4, 'LinkAja', 'Sony Adityawan', '082245400440'),
(5, 'Bank BNI', 'CV. Arryna Catering', '119433328742'),
(7, 'Ovo', 'Sony Adityawan', '082245400440');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `jabatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `email`, `alamat`, `password`, `telepon`, `jenis_kelamin`, `jabatan`) VALUES
(3, 'Achmad Zainurrofiq', 'admin@gmail.com', 'Jl. Anggrek 51 Malang', '81dc9bdb52d04dc20036dbd8313ed055', '0851248238', 'Pria', 'admin'),
(8, 'bendahara', 'bendahara@gmail.com', 'Merjosari 200', '25d55ad283aa400af464c76d713c07ad', '082245400440', 'Laki-laki', 'Keuangan'),
(9, 'dapur', 'dapur@gmail.com', 'Malang 200', '25d55ad283aa400af464c76d713c07ad', '12345678', 'Perempuan', 'Dapur'),
(10, 'umum', 'umum@gmail.com', 'Malang 120', '25d55ad283aa400af464c76d713c07ad', '123456788', 'Laki-laki', 'Umum'),
(12, 'zz', 'aaaa', 'Merjosari 200', '827ccb0eea8a706c4c34a16891f84e7b', '082245400440', 'Laki-laki', 'Dapur');

-- --------------------------------------------------------

--
-- Table structure for table `profil_usaha`
--

CREATE TABLE `profil_usaha` (
  `id` int(12) NOT NULL,
  `nama_usaha` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `nomor_telepon` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `facebook` varchar(250) NOT NULL,
  `maps_link` text NOT NULL,
  `foto_usaha_1` text NOT NULL,
  `foto_usaha_2` text NOT NULL,
  `foto_usaha_3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_usaha`
--

INSERT INTO `profil_usaha` (`id`, `nama_usaha`, `deskripsi`, `alamat`, `nomor_telepon`, `email`, `instagram`, `facebook`, `maps_link`, `foto_usaha_1`, `foto_usaha_2`, `foto_usaha_3`) VALUES
(1, 'Arryna Catering', 'Arryna Catering merupakan salah satu penyedia Katering yang ada di Kota Malang. Berdiri semenjak tahun 90an, Arryna Catering sudah melayani berbagai macam acara seperti Pernikahan, Wisuda, Rapat, dan acara lainnya. Ditangani oleh tenaga yang berpengalaman, kami siap menyempurnakan apapun acara Anda.', 'Jl. Musi Nomor 28, Bunulrejo Kota Malang', '0341470179', 'arrynacatering@gmail.com', 'arrynacatering28/', 'search/top/?q=Arryna Catering', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d987.8414516134862!2d112.6377479!3d-7.9610959!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd62834b9c9b2b5%3A0x9fe3fc983e8b3d47!2sArryna%20Catering!5e0!3m2!1sid!2sid!4v1658281185882!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', 'foto.jpg\r\n\r\n', 'katering.jpg', '2351908541.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `saran_kritik`
--

CREATE TABLE `saran_kritik` (
  `id_saran` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saran_kritik`
--

INSERT INTO `saran_kritik` (`id_saran`, `nama_pelanggan`, `email`, `tanggal`, `saran`) VALUES
(15, 'Nay', 'znyh@gmail.com', '2021-09-20', 'Rumah makan atau restoran adalah istilah umum untuk menyebut usaha gastronomi yang menyajikan hidangan kepada masyarakat dan menyediakan tempat untuk menikmati hidangan tersebut serta menetapkan tarif tertentu untuk makanan dan pelayanannya. Meski pada umumnya rumah makan menyajikan makanan di tempat, tetapi ada juga beberapa yang menyediakan layanan take-out dining dan delivery service sebagai salah satu bentuk pelayanan kepada konsumennya. Rumah makan biasanya memiliki spesialisasi dalam jenis makanan yang dihidangkannya. Sebagai contoh yaitu rumah makan chinese food, rumah makan Padang, rumah makan cepat saji (fast food restaurant) dan sebagainya.'),
(16, 'Yuni Kurnia Taramita', 'yuni186@gmail.com', '2021-10-01', 'Restoran ini tempatnya nyaman dan bersih. Pelayanannya pun sangat baik dan ramah. Dan tentunya menu yang ditawarkan juga enak. '),
(17, 'Ardan', 'ardananjungkusuma@gmail.com', '2021-10-04', 'Tolong kebersihan ditingkatkan'),
(24, 'Bahan Makanan', 'azainurrofiq@gmail.com', '2022-07-27', 'Panci\r\nWajan\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `saw_hasil`
--

CREATE TABLE `saw_hasil` (
  `id` int(11) NOT NULL,
  `tanggal_penghitungan` date NOT NULL,
  `pegawai_terpilih` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw_hasil`
--

INSERT INTO `saw_hasil` (`id`, `tanggal_penghitungan`, `pegawai_terpilih`) VALUES
(4, '2021-10-23', 'Riza Zulfahnur'),
(7, '2021-10-24', 'Diego'),
(8, '2021-11-14', 'Ardan Anjung'),
(9, '2022-07-20', 'Riza Zulfahnur'),
(10, '2022-12-12', 'Dina Lisuardi'),
(11, '2022-12-12', 'Ofiq');

-- --------------------------------------------------------

--
-- Table structure for table `saw_kriteria`
--

CREATE TABLE `saw_kriteria` (
  `id` int(11) NOT NULL,
  `nama_kriteria` varchar(256) NOT NULL,
  `penjelasan_kriteria` text NOT NULL,
  `bobot_kriteria` varchar(10) NOT NULL,
  `kategori_bobot` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw_kriteria`
--

INSERT INTO `saw_kriteria` (`id`, `nama_kriteria`, `penjelasan_kriteria`, `bobot_kriteria`, `kategori_bobot`) VALUES
(1, 'Disiplin', 'Menilai ketaatan hadir saat kerja. Range Nilai 10-90. Semakin banyak nilai maka semakin disiplin pegawai tsb.', '0.25', 'Benefit'),
(2, 'Kerja Sama', 'Menilai tingkat kemampuan bekerjasama dengan atasan atau rekan kerja dalam melaksanakan tugas. Range Nilai 10-90.', '0.15', 'Benefit'),
(4, 'Komplain Pengunjung', 'Menilai tingkat komplain dari pengunjung untuk pegawai Range 10-50', '0.2', 'Cost'),
(5, 'Etika Kerja', 'Menilai hubungan baik antar pegawai, customer atau pun atasan. Range 10-50.', '0.25', 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `saw_pegawai`
--

CREATE TABLE `saw_pegawai` (
  `id` int(11) NOT NULL,
  `nama_pegawai` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw_pegawai`
--

INSERT INTO `saw_pegawai` (`id`, `nama_pegawai`) VALUES
(8, 'Ofiq'),
(9, 'Diva'),
(10, 'Almaza'),
(11, 'Ratna'),
(12, 'Ibas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`id_acara`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD PRIMARY KEY (`id_lupa_password`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  ADD PRIMARY KEY (`id_menu_dibooking`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `saw_hasil`
--
ALTER TABLE `saw_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saw_kriteria`
--
ALTER TABLE `saw_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saw_pegawai`
--
ALTER TABLE `saw_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `id_acara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `lupa_password`
--
ALTER TABLE `lupa_password`
  MODIFY `id_lupa_password` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  MODIFY `id_menu_dibooking` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `id_metode` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `saw_hasil`
--
ALTER TABLE `saw_hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `saw_kriteria`
--
ALTER TABLE `saw_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `saw_pegawai`
--
ALTER TABLE `saw_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
