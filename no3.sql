-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2024 at 11:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `no3`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_mahasiswa`
--

CREATE TABLE `tabel_mahasiswa` (
  `NIM` int(6) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Jurusan` varchar(50) NOT NULL,
  `Umur` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_mahasiswa`
--

INSERT INTO `tabel_mahasiswa` (`NIM`, `Nama`, `Alamat`, `Jurusan`, `Umur`) VALUES
(123456, 'John', 'Jl. Raya No.5', 'Teknik Informatika', 21),
(234567, 'Alice', 'Jl. Gatot Subroto', 'Sistem Inoformasi', 23),
(345678, 'Bob', 'Jl. Sudirman No.5', 'Teknik Informatika', 20),
(456789, 'Cindy', 'Jl. Pahlawan No.2 ', 'Manajemen', 22),
(567890, 'David', 'Jl. Diponogoro No.3 ', 'Teknik Elektro', 25),
(678901, 'Emily', 'Jl. Cendrawasih No.4', 'Manajemen', 24),
(789012, 'Frank', 'Jl. Ahmad Yani No.6', 'Teknik Informatika', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_matakuliah`
--

CREATE TABLE `tabel_matakuliah` (
  `ID` int(1) NOT NULL,
  `Mata Kuliah` varchar(50) NOT NULL,
  `NIM` int(6) NOT NULL,
  `Nilai` int(2) NOT NULL,
  `Dosen Pengajar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_matakuliah`
--

INSERT INTO `tabel_matakuliah` (`ID`, `Mata Kuliah`, `NIM`, `Nilai`, `Dosen Pengajar`) VALUES
(1, 'Pemograman Web', 123456, 85, 'Pak Budi'),
(2, 'Basis Data', 234567, 70, 'Bu Ani'),
(3, 'Jaringan Komputer', 345678, 75, 'Pak Dodi'),
(4, 'Sistem Operasi', 123456, 90, 'Pak Budi'),
(5, 'Manajemen Proyek', 456789, 80, 'Ibu Desi'),
(6, 'Bahasa Inggris', 567890, 85, 'Ibu Eka'),
(7, 'Statistika', 678901, 75, 'Pak Farhan'),
(8, 'Algoritma', 789012, 65, 'Pak Galih'),
(9, 'Pemograman Java', 123456, 95, 'Pak Budi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_mahasiswa`
--
ALTER TABLE `tabel_mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `tabel_matakuliah`
--
ALTER TABLE `tabel_matakuliah`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_mahasiswa`
--
ALTER TABLE `tabel_mahasiswa`
  MODIFY `NIM` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=789013;

--
-- AUTO_INCREMENT for table `tabel_matakuliah`
--
ALTER TABLE `tabel_matakuliah`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
