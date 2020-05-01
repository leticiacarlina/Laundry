-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2020 at 06:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_transaksi`
--

CREATE TABLE `tb_detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_paket` int(11) NOT NULL,
  `qty` double NOT NULL,
  `keterangan` text NOT NULL,
  `status_detail` enum('dikeranjang','ditransaksi') NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_transaksi`
--

INSERT INTO `tb_detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_paket`, `qty`, `keterangan`, `status_detail`, `id_user`) VALUES
(110, 61, 2, 3, '', 'ditransaksi', 1),
(111, 62, 2, 2, '', 'ditransaksi', 1),
(121, 66, 2, 1, 'sasd', 'ditransaksi', 1),
(122, 68, 3, 1, 'kaos', 'ditransaksi', 1),
(123, 69, 2, 1, 'kaos', 'ditransaksi', 1),
(124, 70, 1, 1, 'kemeja', 'ditransaksi', 1),
(125, 70, 5, 1, 'kemeja', 'ditransaksi', 1),
(126, 71, 7, 1, 'kaos', 'ditransaksi', 1),
(127, 72, 4, 1, '', 'ditransaksi', 1),
(128, 73, 3, 1, '', 'ditransaksi', 1),
(129, 73, 4, 1, '', 'ditransaksi', 1),
(130, 74, 2, 1, 'kemeja', 'ditransaksi', 3),
(131, 75, 3, 1, 'kaos', 'ditransaksi', 3),
(132, 75, 2, 1, 'kaos', 'ditransaksi', 3),
(133, 76, 3, 2, '', 'ditransaksi', 3),
(134, 76, 2, 2, '', 'ditransaksi', 3),
(135, 76, 4, 1, '', 'ditransaksi', 3),
(136, 77, 2, 1, '', 'ditransaksi', 4),
(137, 78, 6, 1, '', 'ditransaksi', 4),
(138, 79, 2, 1, '', 'ditransaksi', 4),
(139, 80, 3, 1, '', 'ditransaksi', 4),
(140, 81, 2, 1, '', 'ditransaksi', 4),
(141, 82, 2, 1, 'kaos', 'ditransaksi', 3),
(142, 82, 2, 1, 'kaos', 'ditransaksi', 3),
(143, 82, 3, 1, 'kaos', 'ditransaksi', 3),
(144, 82, 2, 1, 'kaos', 'ditransaksi', 3),
(145, 82, 4, 1, 'kaos', 'ditransaksi', 3),
(146, 82, 2, 1, 'kaos', 'ditransaksi', 3),
(147, 82, 5, 1, 'kaos', 'ditransaksi', 3),
(148, 82, 7, 1, 'kaos', 'ditransaksi', 3),
(149, 84, 6, 1, 'sasd', 'ditransaksi', 3),
(150, 85, 2, 1, 'sasd', 'ditransaksi', 3),
(151, 86, 2, 1, 'sasd', 'ditransaksi', 3),
(152, 87, 1, 1, 'sasd', 'ditransaksi', 3),
(153, 88, 3, 1, 'sasd', 'ditransaksi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_member`
--

CREATE TABLE `tb_member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(100) NOT NULL,
  `alamat_member` text NOT NULL,
  `jk_member` enum('L','P') NOT NULL,
  `tlp_member` varchar(15) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_member`
--

INSERT INTO `tb_member` (`id_member`, `nm_member`, `alamat_member`, `jk_member`, `tlp_member`, `id_user`) VALUES
(6, 'member4', 'bandung', 'L', '12', 2),
(9, 'fauzi', 'cisasat', 'L', '08123345', 1),
(10, 'fauzi', 'cisaat', 'L', '1234', 3),
(16, 'adffds', 'dfs', '', '2', 3),
(17, 'ikhsan', 'cisaat', '', '112', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_outlet`
--

CREATE TABLE `tb_outlet` (
  `id_outlet` int(11) NOT NULL,
  `nm_outlet` varchar(100) NOT NULL,
  `alamat_outlet` text NOT NULL,
  `tlp_outlet` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_outlet`
--

INSERT INTO `tb_outlet` (`id_outlet`, `nm_outlet`, `alamat_outlet`, `tlp_outlet`) VALUES
(1, 'outlet12', 'cisaat', '009'),
(2, 'outlet2', 'Sukabumi', '0266 2352222'),
(4, 'outlet3', 'sukabumi', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tb_paket`
--

CREATE TABLE `tb_paket` (
  `id_paket` int(11) NOT NULL,
  `id_outlet` int(11) NOT NULL,
  `jenis_paket` enum('standar','paketan') NOT NULL,
  `nm_paket` varchar(100) NOT NULL,
  `harga_paket` int(11) NOT NULL,
  `deskripsi_paket` text NOT NULL,
  `gambar_paket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_paket`
--

INSERT INTO `tb_paket` (`id_paket`, `id_outlet`, `jenis_paket`, `nm_paket`, `harga_paket`, `deskripsi_paket`, `gambar_paket`) VALUES
(1, 1, 'standar', 'Kemeja', 15000, 'Kemeja Lengan panjang, pendek dengan berbagai motif', 'kemeja3.jpg'),
(2, 1, 'paketan', 'A', 25000, 'Paket All Pakaian dengan berat 5 kg.', ''),
(3, 1, 'paketan', 'B', 50000, 'All pakaian dengan total 15kg', ''),
(4, 1, 'paketan', 'C', 75000, 'All selimut dengan berat 10kg', ''),
(5, 1, 'standar', 'Jaket', 25000, 'Jaket dengan Bahan Tebal Maupun Tipis', 'hoodie.jpg'),
(6, 1, 'standar', 'Selimut', 35000, 'Selimut Berlapis ataupun selimut Ipis', 'selimut.jpeg'),
(7, 1, 'standar', 'Sprei', 45000, 'Sprei + Sarung Bantal', 'sprei2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_outlet` int(11) NOT NULL,
  `kode_invoice` varchar(100) NOT NULL,
  `id_member` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `batas_waktu` date NOT NULL,
  `tgl_bayar` datetime DEFAULT NULL,
  `biaya_tambahan` int(11) DEFAULT NULL,
  `diskon` double DEFAULT NULL,
  `pajak` int(11) DEFAULT NULL,
  `status_transaksi` enum('baru','proses','selesai','diambil') NOT NULL,
  `status_pembayaran` enum('dibayar','dp','belum bayar') NOT NULL,
  `id_user` int(11) NOT NULL,
  `bayar_transaksi` int(11) DEFAULT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_outlet`, `kode_invoice`, `id_member`, `tgl_transaksi`, `batas_waktu`, `tgl_bayar`, `biaya_tambahan`, `diskon`, `pajak`, `status_transaksi`, `status_pembayaran`, `id_user`, `bayar_transaksi`, `total_harga`) VALUES
(61, 1, '5e61c8e483bbc', 2, '2020-03-06', '2020-03-08', '2020-03-06 00:00:00', 0, 0, 0, 'diambil', 'dibayar', 1, 80000, 75000),
(62, 1, '5e61d0c1a39a4', 3, '2020-03-09', '2020-03-10', '2020-03-06 00:00:00', 0, 0, 0, 'diambil', 'dibayar', 1, 50000, 50000),
(66, 1, '5e8c7f5c532b2', 1, '2020-04-07', '2020-04-21', '0000-00-00 00:00:00', 11, 11, 11, 'proses', 'belum bayar', 1, NULL, 25011),
(67, 1, '5e8c7f936f122', 1, '2020-04-07', '2020-04-30', '0000-00-00 00:00:00', 8, 1, 22, 'proses', 'belum bayar', 1, NULL, 8),
(68, 1, '5e8c7ff286dae', 9, '2020-04-07', '2020-04-15', '2020-04-07 03:28:41', 4, 2, 0, 'selesai', 'dibayar', 1, 50000, 49004),
(69, 1, '5e8ea1289cad3', 9, '2020-04-09', '2020-04-10', '2020-04-09 06:14:58', 7000, 1, 1, 'proses', 'dibayar', 1, 32000, 32000),
(70, 1, '5e8ea278c921e', 9, '2020-04-09', '2020-04-16', '2020-04-12 02:35:00', 90000, 1, 20, 'proses', 'dibayar', 1, 102000, 101900),
(71, 1, '5e8ea68d7bd14', 9, '2020-04-09', '2020-04-10', '0000-00-00 00:00:00', 15000, 10, 1, 'proses', 'belum bayar', 1, NULL, 55950),
(72, 1, '5e930ad34f951', 9, '2020-04-12', '2020-04-17', '0000-00-00 00:00:00', 90000, 20, 1, 'proses', 'belum bayar', 1, NULL, 150750),
(73, 1, '5e930b2485c90', 9, '2020-04-12', '2020-04-20', '0000-00-00 00:00:00', 90000, 20, 1, 'proses', 'belum bayar', 1, NULL, 191250),
(74, 1, '5e930c2d750e5', 9, '2020-04-12', '2020-04-22', '2020-04-12 02:41:01', 0, 0, 0, 'diambil', 'dibayar', 3, 25000, 25000),
(75, 1, '5e930eb0e1e7e', 9, '2020-04-12', '2020-04-13', '2020-04-12 02:51:13', 0, 20, 1, 'diambil', 'dibayar', 3, 61000, 60750),
(76, 1, '5e93a79fe5d0f', 10, '2020-04-13', '2020-04-14', '2020-04-13 01:44:37', 0, 20, 1, 'diambil', 'dibayar', 3, 200000, 182250),
(77, 1, '5e93b14ea90de', 11, '2020-04-13', '2020-04-14', '2020-04-13 02:24:53', 0, 0, 0, 'diambil', 'dibayar', 4, 25000, 25000),
(78, 1, '5e93b55e67c3c', 11, '2020-04-13', '2020-04-13', '2020-04-13 02:57:07', 0, 0, 0, 'selesai', 'dibayar', 4, 35000, 35000),
(79, 1, '5e93e9c88c653', 12, '2020-04-13', '2020-04-14', '2020-04-13 06:25:53', 0, 0, 0, 'diambil', 'dibayar', 4, 25000, 25000),
(80, 1, '5e93e9fb333f8', 11, '2020-04-13', '2020-04-13', '0000-00-00 00:00:00', 0, 10, 0, 'proses', 'belum bayar', 4, NULL, 45000),
(81, 1, '5e93ea33c4535', 12, '2020-04-13', '2020-04-13', '2020-04-13 06:27:41', 0, 10, 0, 'proses', 'dibayar', 4, 22500, 22500),
(82, 1, '5e9ff2deb74ef', 0, '2020-04-22', '2020-04-23', '0000-00-00 00:00:00', 0, 0, 0, 'proses', 'belum bayar', 3, NULL, 295000),
(83, 1, '5e9ff3f9e8518', 0, '2020-04-22', '2020-04-23', '0000-00-00 00:00:00', 0, 0, 0, 'baru', 'belum bayar', 3, NULL, 295000),
(84, 1, '5e9ff422ea335', 1, '2020-04-22', '2020-04-23', '0000-00-00 00:00:00', 0, 5, 0, 'proses', 'belum bayar', 3, NULL, 33250),
(85, 1, '5e9ff4c55d6ae', 1, '2020-04-22', '2020-04-23', '0000-00-00 00:00:00', 0, 2, 0, 'proses', 'belum bayar', 3, NULL, 24500),
(86, 1, '5e9ff5e920b37', 1, '2020-04-22', '2020-04-23', '0000-00-00 00:00:00', 0, 0, 9, 'proses', 'belum bayar', 3, NULL, 27250),
(87, 1, '5ea00c0405565', 9, '2020-04-22', '2020-04-23', '2020-04-22 11:24:16', 0, 0, 0, 'diambil', 'dibayar', 3, 15000, 15000),
(88, 1, '5ea00d21e78de', 17, '2020-04-22', '2020-04-23', '2020-04-22 11:24:34', 0, 0, 0, 'selesai', 'dibayar', 3, 50000, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nm_user` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `id_outlet` int(11) NOT NULL,
  `role` enum('admin','kasir','owner') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nm_user`, `username`, `password`, `id_outlet`, `role`) VALUES
(1, 'oewne', 'owner', '72122ce96bfec66e2396d2e25225d70a', 1, 'owner'),
(3, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'admin'),
(4, 'kasir', 'kasir', 'c7911af3adbd12a035b289556d96470a', 1, 'kasir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indexes for table `tb_member`
--
ALTER TABLE `tb_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `tb_outlet`
--
ALTER TABLE `tb_outlet`
  ADD PRIMARY KEY (`id_outlet`);

--
-- Indexes for table `tb_paket`
--
ALTER TABLE `tb_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD UNIQUE KEY `kode_invoice` (`kode_invoice`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `tb_member`
--
ALTER TABLE `tb_member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_outlet`
--
ALTER TABLE `tb_outlet`
  MODIFY `id_outlet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_paket`
--
ALTER TABLE `tb_paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
