-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 04:56 AM
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
-- Database: `bplj`
--

-- --------------------------------------------------------

--
-- Table structure for table `audiens`
--

CREATE TABLE `audiens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audiens`
--

INSERT INTO `audiens` (`id`, `name`) VALUES
(1, 'Staff PUPR'),
(2, 'Staf BPLJ'),
(3, 'Semua Staff');

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` int(11) NOT NULL,
  `nama_layanan` varchar(255) DEFAULT NULL,
  `image_layanan` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `standar_acuan` text DEFAULT NULL,
  `biaya_tarif` text DEFAULT NULL,
  `produk` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `layanans`
--

INSERT INTO `layanans` (`id`, `nama_layanan`, `image_layanan`, `deskripsi`, `standar_acuan`, `biaya_tarif`, `produk`) VALUES
(1, 'Layanan 1', 'uploads\\1734930905576.png', '1', '1', '1', '1'),
(2, '2', 'uploads\\1734937498527.png', '2', '2', '2', '2'),
(3, '3', 'uploads\\1734937506483.png', '3', '3', '3', '3'),
(4, '4', 'uploads\\1734937515200.png', '4', '4', '4', '4'),
(5, '5', 'uploads\\1734937547352.png', '5', '5', '5', '5'),
(6, '6', 'uploads\\1734937557534.jpg', '6', '6', '6', '6'),
(7, '7', 'uploads\\1734971233679.jpg', '7', '7', '<div style=\"text-align: center;\">7</div>', '7'),
(8, '8', 'uploads\\1734971245830.jpg', '8', '8', '8', '8'),
(9, '9', 'uploads\\1734971284825.png', '9', '9', '9', '9'),
(10, '10', 'uploads\\1734971324667.png', '10', '10', '10', '10');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `audiens` varchar(255) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `keterangan` text DEFAULT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `judul`, `tanggal`, `tempat`, `audiens`, `start_time`, `end_time`, `keterangan`, `room_id`) VALUES
(1, 'Test 1', '2024-12-23', 'Ruangan 1', 'Staff PUPR', '12:15:00', '12:20:00', 'test 1', 9),
(14, 'test 1', '2024-12-24', 'Ruangan 1', 'Staff PUPR', '21:22:00', '23:20:00', 'm', 9),
(15, 'test 2', '2024-12-25', 'Ruangan 2', 'Staf BPLJ', '22:38:00', '21:39:00', 'test', 10),
(16, 'Rapat Perdana', '2025-01-06', 'Ruangan 1', 'Staff PUPR', '08:30:00', '09:30:00', 'Rapat perdana', 9),
(19, 'Rapat Pertama', '2025-01-07', 'Ruangan 1', 'Semua Staff', '18:00:00', '19:30:00', 'Test', 9),
(20, 'Rapat 2', '2025-01-07', 'Google Meet', 'Semua Staff', '21:00:00', '22:00:00', 'test', 11),
(21, 'Rapat Mingguan', '2025-01-09', 'Ruangan 2', 'Staff PUPR', '20:00:00', '22:00:00', 'test', 10),
(23, 'dsgS DGSD', '2025-01-08', 'Ruangan 1', 'Staff PUPR', '13:43:00', '13:47:00', 'gsgds', 9);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `location_type` enum('Physical','Virtual') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `capacity`, `location_type`) VALUES
(9, 'Ruangan 1', 50, 'Physical'),
(10, 'Ruangan 2', 50, 'Physical'),
(11, 'Google Meet', 0, 'Virtual'),
(12, 'Zoom Video Communications', 0, 'Virtual');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '$2y$10$/s4.oeraULbxvOOhOS0tR.h/rnQYDjzEYwl42tO.oAQsjaRmRUH4C', '2024-12-22 20:04:49', '2024-12-22 20:04:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audiens`
--
ALTER TABLE `audiens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
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
-- AUTO_INCREMENT for table `audiens`
--
ALTER TABLE `audiens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
