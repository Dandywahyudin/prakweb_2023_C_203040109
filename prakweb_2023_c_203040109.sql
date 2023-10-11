-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2023 at 09:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prakweb_2023_c_203040109`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `kategori`, `gambar`) VALUES
(1, 'Atomic Habits', 'James Clear', 'Gramedia', 'Pengembangan Diri', 'AtomicHabits.png'),
(2, 'One Piece 97', 'Eiichiro Oda', 'Elex Media Komputindo', 'Komik', 'OnePiece.png'),
(3, 'Detektif Conan', 'Aoyama Gosho', 'Elex Media Komputindo', 'Komik', 'Detektifconan.jpg'),
(4, 'Boruto ', 'Masashi Kishimoto', 'Elex Media Komputindo', 'Komik', 'Boruto.jpg'),
(5, 'Literature for Teens', 'Hanifa Vidya', 'Elex Media Komputindo', 'Novel', 'lit.jpg'),
(6, 'Ini Bukan Tentang Motivasi', 'Ini Bukan Tentang Motivasi', 'Transmedia', 'Pengembangan Diri', 'inibukanmotivasi.jpg'),
(7, 'Menuju Industri 5.0', 'Halifa Haqqi & Hasna Wijayati', 'Anak Hebat Indonesia', 'Komputer', 'menujuindustri5.0.jpg'),
(8, 'Belajar Cepat Database NoSQL', 'Agit Amrullah, Kusnawi', 'Penerbit Andi', 'komputer', 'databasenosql.jpg'),
(9, 'Sleep Healing', 'Vishal Dasani', 'Kawan Pustaka', 'Kesehatan', 'sleephealing.jpg'),
(10, 'Dragon Ball Super', 'Akira Toriyama', 'Elex Media Komputindo', 'Komik', 'dragonball.jpg'),
(14, 'Boruto', 'Masashi ', 'Elex Media Komputindo', 'Komik', 'Boruto.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
