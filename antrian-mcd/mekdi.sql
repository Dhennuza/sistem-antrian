-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 11:10 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mekdi`
--

-- --------------------------------------------------------

--
-- Table structure for table `antrian`
--

CREATE TABLE `antrian` (
  `id` int(20) NOT NULL,
  `waktu_datang` time NOT NULL,
  `selisih_kedatangan` int(20) NOT NULL,
  `waktu_awal_pelayanan` time NOT NULL,
  `selisih_pelayanan_kasir` int(20) NOT NULL,
  `waktu_selesai` time NOT NULL,
  `selisih_keluar_antrian` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `antrian`
--

INSERT INTO `antrian` (`id`, `waktu_datang`, `selisih_kedatangan`, `waktu_awal_pelayanan`, `selisih_pelayanan_kasir`, `waktu_selesai`, `selisih_keluar_antrian`) VALUES
(5, '12:12:00', 3, '12:13:00', 1, '12:14:00', 2),
(6, '12:13:00', 1, '12:14:00', 1, '12:15:00', 2),
(7, '12:14:00', 1, '12:15:00', 1, '12:16:00', 2),
(8, '12:15:00', 1, '12:16:00', 1, '12:17:00', 2),
(9, '12:16:00', 1, '12:17:00', 1, '12:18:00', 2),
(10, '12:17:00', 1, '12:18:00', 1, '12:19:00', 2),
(11, '12:18:00', 1, '12:19:00', 1, '12:20:00', 2),
(12, '12:19:00', 1, '12:20:00', 1, '12:21:00', 2),
(13, '12:25:00', 6, '12:30:00', 5, '12:34:00', 9),
(14, '00:00:00', 0, '00:00:00', 0, '00:00:00', 0),
(16, '09:43:00', 1, '09:44:00', 2, '09:46:00', 1),
(18, '17:21:00', 0, '17:22:00', 2, '17:23:00', 1),
(19, '13:22:00', 1, '13:24:00', 2, '13:25:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antrian`
--
ALTER TABLE `antrian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `antrian`
--
ALTER TABLE `antrian`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
