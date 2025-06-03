-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 04:34 AM
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
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alamat` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telepon` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `alamat`, `jenis_kelamin`, `email`, `telepon`) VALUES
(1, '2310010266', 'galih yuda', 'dimana ada', 'Pria', 'galuhmakanbatu@gmail.com', '027444166'),
(2, '2310010577', 'Jonwar', 'Rumah sakit jiwa', 'Pria', 'Jonewar@gmail.com', '0872673835');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id`, `kode`, `nama`, `sks`, `semester`) VALUES
(1, 'MK001', 'Algoritma dan Pemrograman', 3, 1),
(2, 'MK002', 'Matematika Dasar', 3, 1),
(3, 'MK003', 'Pengantar Teknologi Informasi', 2, 1),
(4, 'MK004', 'Bahasa Inggris Teknik', 2, 1),
(5, 'MK005', 'Pendidikan Pancasila', 2, 1),
(6, 'MK006', 'Struktur Data', 3, 2),
(7, 'MK007', 'Matematika Diskrit', 3, 2),
(8, 'MK008', 'Sistem Digital', 3, 2),
(9, 'MK009', 'Pemrograman Web Dasar', 2, 2),
(10, 'MK010', 'Pendidikan Kewarganegaraan', 2, 2),
(11, 'MK011', 'Basis Data', 3, 3),
(12, 'MK012', 'Aljabar Linear', 3, 3),
(13, 'MK013', 'Arsitektur Komputer', 3, 3),
(14, 'MK014', 'Pemrograman Berorientasi Objek', 3, 3),
(15, 'MK015', 'Statistika', 2, 3),
(16, 'MK016', 'Sistem Operasi', 3, 4),
(17, 'MK017', 'Jaringan Komputer', 3, 4),
(18, 'MK018', 'Pemrograman Mobile', 3, 4),
(19, 'MK019', 'Rekayasa Perangkat Lunak', 3, 4),
(20, 'MK020', 'Kewirausahaan', 2, 4),
(21, 'MK021', 'Kecerdasan Buatan', 3, 5),
(22, 'MK022', 'Data Mining', 3, 5),
(23, 'MK023', 'Keamanan Sistem', 3, 5),
(24, 'MK024', 'Cloud Computing', 3, 5),
(25, 'MK025', 'Metodologi Penelitian', 2, 5),
(26, 'MK026', 'Machine Learning', 3, 6),
(27, 'MK027', 'Big Data', 3, 6),
(28, 'MK028', 'Internet of Things', 3, 6),
(29, 'MK029', 'Blockchain', 3, 6),
(30, 'MK030', 'Etika Profesi', 2, 6),
(31, 'MK031', 'Computer Vision', 3, 7),
(32, 'MK032', 'Natural Language Processing', 3, 7),
(33, 'MK033', 'Augmented Reality', 3, 7),
(34, 'MK034', 'Manajemen Proyek TI', 3, 7),
(35, 'MK035', 'Magang Industri', 4, 7),
(36, 'MK036', 'Deep Learning', 3, 8),
(37, 'MK037', 'Sistem Cerdas', 3, 8),
(38, 'MK038', 'Manajemen Basis Data', 3, 8),
(39, 'MK039', 'Proyek Akhir', 6, 8),
(40, 'MK040', 'Seminar', 2, 8),
(41, 'MK041', 'Pemrograman Python', 3, 3),
(42, 'MK042', 'Pengembangan Aplikasi Enterprise', 3, 5),
(43, 'MK043', 'Desain Antarmuka Pengguna', 2, 4),
(44, 'MK044', 'Testing dan Implementasi Sistem', 3, 6),
(45, 'MK045', 'Komputasi Paralel', 3, 7),
(46, 'MK046', 'Sistem Terdistribusi', 3, 6),
(47, 'MK047', 'Administrasi Server', 3, 5),
(48, 'MK048', 'Pemrograman Game', 3, 5),
(49, 'MK049', 'Analisis Algoritma', 3, 4),
(50, 'MK050', 'Komputasi Kognitif', 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(2, 'admin', '$2y$10$kTEso5Vl/WfpDI8fLhrkqOxBNStZjRUPkiuUKmFStsxjzA8aA3Jiy'),
(3, 'galuh', '$2y$10$OyZeAG6wAjHrbO/shfbMaePIfTxFr52o/STBn2R.f/kPrdJyPxzGS'),
(5, 'admin', '$2y$10$QlqauBVxh6Vvm.lA3qY5p.ocJ2PCTcdhOdl7O0LCcwKoAesewkauy'),
(6, 'ayam', '$2y$10$vFYXJKDzy.aTxQ/Qkp38Ke52xzdqXLjP0F/24Dqmk/wk6gdtPd.2q');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
