-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2025 at 04:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menu_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `apotek`
--

CREATE TABLE `apotek` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `jam_buka` time DEFAULT NULL,
  `jam_tutup` time DEFAULT NULL,
  `koordinat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apotek`
--

INSERT INTO `apotek` (`id`, `nama`, `alamat`, `no_hp`, `jam_buka`, `jam_tutup`, `koordinat`) VALUES
(1, 'Apotek Nusantara', 'Jl. Moh.Hatta No.18', '(0451) 425278', '09:00:00', '23:00:00', '-0.896690,119.873537'),
(2, 'Apotek Idham Farma', 'Jl. Palola', '-', '08:00:00', '22:00:00', '-0.897952,119.847558'),
(3, 'Apotek Medica Farma', 'Jl. Kedondong No.06', '-', '08:00:00', '22:00:00', '-0.896227,119.847150'),
(4, 'Apotek Bunda Farma', 'Jl. Wr Supratman No.48', '-', '08:00:00', '21:00:00', '-0.898627,119.851641'),
(5, 'Apotek Linda Farma', 'Jl. Wr Supratman No.54', '-', '08:00:00', '22:30:00', '-0.900573,119.851627'),
(6, 'Apotek Palu Sehat', 'Jl Tanjung Manimbaya No.177', '0811459020', '08:00:00', '22:00:00', '-0.908297,119.886679'),
(7, 'Apotek Sehat Abadi Farma', 'Jl. Tanjung Pangimpuan No.07', '-', '08:00:00', '22:30:00', '-0.907158,119.876914'),
(8, 'Apotek Al - Fatih', 'Jl. Gatot Subroto No.65', '-', '08:00:00', '22:00:00', '-0.889063,119.875189'),
(9, 'Apotek Inna Farma', 'Jl. Emmi Saelan No.25', '-', '08:00:00', '22:00:00', '-0.911200,119.876247'),
(10, 'Apotek Davin', 'Jl. Emmi Saelan No.57', '082259592645', '09:00:00', '23:00:00', '-0.915233,119.876510'),
(11, 'Apotek Pelita Mas', 'Jl. Emmi Saelan No.00', '-', '08:00:00', '22:00:00', '-0.916252,119.876555'),
(12, 'Apotek Elfata', 'Jl. Towua No.76', '082290092299', '09:30:00', '19:00:00', '-0.923942,119.879639'),
(13, 'Apotek Betsaida', 'Jl. Towua No.79', '-', '07:30:00', '22:30:00', '-0.926000,119.880946'),
(14, 'Apotek Kasih Farma', 'Jl. Towua No.140', '081298115957', '07:00:00', '22:00:00', '-0.928778,119.884475'),
(15, 'Apotek Sehat Berkah', 'Jl. Towua No.141', '081342529812', '09:00:00', '23:00:00', '-0.930555,119.885195'),
(16, 'Apotek Mitra Abadi', 'Jl. Emmi Saelan No.28', '082393040930', '08:00:00', '22:00:00', '-0.885546,119.875582'),
(17, 'Apotek Farmindah 7', 'Jl. RE Martadinata', '082393456767', '08:00:00', '23:00:00', '-0.840742,119.883152'),
(18, 'Apotek Utama Farma', 'Jl. RE Martadinata No.161', '085240859444', '07:00:00', '21:30:00', '-0.836639,119.883369'),
(19, 'Apotek Kasih Farma 2', 'Jl. RE Martadinata', '082363966863', '07:30:00', '22:30:00', '-0.837193,119.883513'),
(20, 'Apotek Zam', 'Jl. Contoh 20', '0811111130', '08:00:00', '22:00:00', '-0.880668,119.877012'),
(21, 'Apotek Berkah Jaya Palu', 'Jl. Tombolotutu ', '085185117778', '06:30:00', '22:30:00', '-0.883206,119.878706'),
(22, 'Apotek PCC (Palu Central Care)', 'Jl. Towua', '0811111132', '08:00:00', '22:00:00', '-0.921264,119.878431'),
(23, 'Apotek Farmindah 8', 'Jl. Contoh 23', '0811111133', '08:00:00', '22:00:00', '-0.930514,119.884969'),
(24, 'Apotek Farsya Farma', 'Jl. Contoh 24', '0811111134', '08:00:00', '22:00:00', '-0.934658,119.888161'),
(25, 'Apotek Tira Medical Pratama', 'Jl. Contoh 25', '0811111135', '08:00:00', '22:00:00', '-0.935442,119.889976'),
(26, 'Apotek Jennica Farma', 'Jl. Contoh 26', '0811111136', '08:00:00', '22:00:00', NULL),
(27, 'Apotek Zoya', 'Jl. Contoh 27', '0811111137', '08:00:00', '22:00:00', '-0.840516,119.883469'),
(28, 'Apotek Cemerlang', 'Jl. Contoh 28', '0811111138', '08:00:00', '22:00:00', '-0.901194,119.873720'),
(29, 'Apotek Pelita', 'Jl. Contoh 29', '0811111139', '08:00:00', '22:00:00', '-0.901252,119.874057'),
(30, 'Apotek Surya', 'Jl. Contoh 30', '0811111140', '08:00:00', '22:00:00', '-0.901198,119.873626');

-- --------------------------------------------------------

--
-- Table structure for table `apotek_data`
--

CREATE TABLE `apotek_data` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `link_maps` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apotek_data`
--

INSERT INTO `apotek_data` (`id`, `nama`, `alamat`, `foto`, `link_maps`) VALUES
(1, 'Apotek Al-Fatih', 'Jl. Sam Ratulangi No. 12', 'img/apotek1.jpg', 'https://maps.google.com/?q=Apotek+Al-Fatih'),
(2, 'Apotek Berkah Jaya', 'Jl. Diponegoro No. 45', 'img/apotek2.jpg', 'https://maps.google.com/?q=Apotek+Berkah+Jaya'),
(3, 'Apotek Bunda Farma', 'Jl. Imam Bonjol No. 8', 'img/apotek3.jpg', 'https://maps.google.com/?q=Apotek+Bunda+Farma'),
(4, 'Apotek Farsya Farma', 'Jl. Srandakan No. 10', 'img/apotek4.jpg', 'https://maps.google.com/?q=Apotek+Farsya+Farma'),
(5, 'Apotek Bethsaida', 'Jl. Cendana No. 15', 'img/apotek5.jpg', 'https://maps.google.com/?q=Apotek+Bethsaida'),
(6, 'Apotek Davin', 'Jl. Merdeka No. 5', 'img/apotek6.jpg', 'https://maps.google.com/?q=Apotek+Davin'),
(7, 'Apotek Cemerlang', 'Jl. Sudirman No. 11', 'img/apotek7.jpg', 'https://maps.google.com/?q=Apotek+Cemerlang'),
(8, 'Apotek Ekklesia', 'Jl. Rajawali No. 21', 'img/apotek8.jpg', 'https://maps.google.com/?q=Apotek+Ekklesia'),
(9, 'Apotek Farmindah 7', 'Jl. Sisingamangaraja No. 19', 'img/apotek9.jpg', 'https://maps.google.com/?q=Apotek+Farmindah+7'),
(10, 'Apotek Farmindah 8', 'Jl. Mandiri No. 18', 'img/apotek10.jpg', 'https://maps.google.com/?q=Apotek+Farmindah+8'),
(11, 'Apotek Kimia Sehat', 'Jl. Veteran No. 20', 'img/apotek11.jpg', 'https://maps.google.com/?q=Apotek+Kimia+Sehat'),
(12, 'Apotek Mitra Farma', 'Jl. Gatot Subroto No. 14', 'img/apotek12.jpg', 'https://maps.google.com/?q=Apotek+Mitra+Farma'),
(13, 'Apotek Global Medika', 'Jl. Mutiara No. 3', 'img/apotek13.jpg', 'https://maps.google.com/?q=Apotek+Global+Medika'),
(14, 'Apotek Nusantara', 'Jl. Hasanuddin No. 7', 'img/apotek14.jpg', 'https://maps.google.com/?q=Apotek+Nusantara'),
(15, 'Apotek Prima', 'Jl. Anggrek No. 23', 'img/apotek15.jpg', 'https://maps.google.com/?q=Apotek+Prima'),
(16, 'Apotek Sentosa', 'Jl. Pahlawan No. 17', 'img/apotek16.jpg', 'https://maps.google.com/?q=Apotek+Sentosa'),
(17, 'Apotek Harmoni', 'Jl. Mawar No. 9', 'img/apotek17.jpg', 'https://maps.google.com/?q=Apotek+Harmoni'),
(18, 'Apotek Amanah', 'Jl. Ahmad Yani No. 17', 'img/apotek18.jpg', 'https://maps.google.com/?q=Apotek+Amanah'),
(19, 'Apotek Gloria', 'Jl. Cemara No. 8', 'img/apotek19.jpg', 'https://maps.google.com/?q=Apotek+Gloria'),
(20, 'Apotek Pusaka', 'Jl. Hasanuddin No. 25', 'img/apotek20.jpg', 'https://maps.google.com/?q=Apotek+Pusaka'),
(21, 'Apotek Indah Farma', 'Jl. Hayam Wuruk No. 12', 'img/apotek21.jpg', 'https://maps.google.com/?q=Apotek+Indah+Farma'),
(22, 'Apotek Sahabat', 'Jl. Enggano No. 15', 'img/apotek22.jpg', 'https://maps.google.com/?q=Apotek+Sahabat'),
(23, 'Apotek Sehat Farma', 'Jl. Cendrawasih No. 4', 'img/apotek23.jpg', 'https://maps.google.com/?q=Apotek+Sehat+Farma'),
(24, 'Apotek Mandiri', 'Jl. Melati No. 9', 'img/apotek24.jpg', 'https://maps.google.com/?q=Apotek+Mandiri'),
(25, 'Apotek Keluarga', 'Jl. Angsana No. 28', 'img/apotek25.jpg', 'https://maps.google.com/?q=Apotek+Keluarga'),
(26, 'Apotek Rahayu', 'Jl. HOS Cokroaminoto No. 11', 'img/apotek26.jpg', 'https://maps.google.com/?q=Apotek+Rahayu'),
(27, 'Apotek Sejahtera', 'Jl. Merpati No. 7', 'img/apotek27.jpg', 'https://maps.google.com/?q=Apotek+Sejahtera'),
(28, 'Apotek Gracia', 'Jl. Flamboyan No. 5', 'img/apotek28.jpg', 'https://maps.google.com/?q=Apotek+Gracia'),
(29, 'Apotek Lestari', 'Jl. Nangka No. 16', 'img/apotek29.jpg', 'https://maps.google.com/?q=Apotek+Lestari'),
(30, 'Apotek Pelita', 'Jl. Cemara No. 19', 'img/apotek30.jpg', 'https://maps.google.com/?q=Apotek+Pelita');

-- --------------------------------------------------------

--
-- Table structure for table `log_apotek`
--

CREATE TABLE `log_apotek` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `apotek` varchar(255) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lng` varchar(50) DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pencarian`
--

CREATE TABLE `pencarian` (
  `id` int(11) NOT NULL,
  `nama_apotek` varchar(100) DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pencarian`
--

INSERT INTO `pencarian` (`id`, `nama_apotek`, `waktu`) VALUES
(26, 'apotek betsaida', '2025-10-17 12:46:01'),
(27, 'apotek betsaida', '2025-10-17 12:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `pencarian_data`
--

CREATE TABLE `pencarian_data` (
  `id` int(11) NOT NULL,
  `kata_kunci` varchar(100) DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pencarian_data`
--

INSERT INTO `pencarian_data` (`id`, `kata_kunci`, `waktu`) VALUES
(35, 'Apotek Berkah Jaya', '2025-10-17 12:29:55'),
(36, 'apotek', '2025-10-17 12:45:26'),
(37, 'Apotek Zam', '2025-10-17 15:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pencarian`
--

CREATE TABLE `riwayat_pencarian` (
  `id` int(11) NOT NULL,
  `nama_apotek` varchar(100) DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'healzen', 'imanuelchandra456@gmail.com', '12345'),
(2, 'william', 'wiliamsteve349@gmail.com', '6789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apotek`
--
ALTER TABLE `apotek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apotek_data`
--
ALTER TABLE `apotek_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_apotek`
--
ALTER TABLE `log_apotek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pencarian`
--
ALTER TABLE `pencarian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pencarian_data`
--
ALTER TABLE `pencarian_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_pencarian`
--
ALTER TABLE `riwayat_pencarian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apotek`
--
ALTER TABLE `apotek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `apotek_data`
--
ALTER TABLE `apotek_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `log_apotek`
--
ALTER TABLE `log_apotek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pencarian`
--
ALTER TABLE `pencarian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pencarian_data`
--
ALTER TABLE `pencarian_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `riwayat_pencarian`
--
ALTER TABLE `riwayat_pencarian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
