-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Nov 2021 pada 04.50
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `email`, `nama`, `password`) VALUES
(3, 'admin@gmail.com', 'Admin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nip` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `jk` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `name`, `jk`) VALUES
('2021020001', 'Sujatmiko', 'L'),
('2021020002', 'Sulastri', 'P'),
('2021020003', 'Nadia', 'P'),
('2021020004', 'Hanggi', 'P'),
('2021020005', 'Budi', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama`) VALUES
(1, 'Informatika'),
(2, 'Desain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `alamat` text DEFAULT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nilai` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `gallery` text NOT NULL,
  `gallery2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jk`, `alamat`, `tmp_lahir`, `tgl_lahir`, `telepon`, `id_jurusan`, `nilai`, `foto`, `gallery`, `gallery2`) VALUES
('2021010001', 'Aditio Artayasa', 'L', 'Jalan Mawar', 'Mataram', '1996-02-14', '081238456288', 1, 80, 'penyimpanan/Screenshot_87.png', '', ''),
('2021010002', 'Rina Kumala', 'P', 'Jalan Seruni', 'Mataram', '1997-04-18', '081987456289', 2, 70, NULL, '', ''),
('2021010003', 'Gentha Anasta', 'L', 'jalan Matahari', 'Bali', '1996-08-14', '081238926265', 1, 80, NULL, '', ''),
('2021010004', 'Silvia Dewi', 'P', 'Jalan Awan', 'Bandung', '1998-02-22', '081265189256', 2, 90, NULL, '', ''),
('2021010005', 'Mega Nirmala', 'P', 'Jalan Bintang', 'Surabaya', '1998-02-14', '088906756289', 1, 80, NULL, '', ''),
('2021010006', 'Danny Arya', 'L', 'Jalan Mars', 'Bali', '1995-09-28', '081675241966', 2, 50, NULL, '', ''),
('2021010007', 'Galih Surya', 'L', 'Jalan Venus ', 'Bali', '1997-10-15', '081282172622', 1, 70, NULL, '', ''),
('2021010008', 'Sinta Dewi', 'P', 'Jalan Saturnus ', 'Bandung', '1995-03-11', '081267559178', 2, 70, NULL, '', ''),
('2021010009', 'Farhan', 'L', 'Jalan Halmahera', 'Bandung', '1996-08-12', '081200981567', 1, 90, NULL, '', ''),
('2021010010', 'Aditya Pramana Putra', 'L', 'Jalan Anggrek', 'Mataram', '1998-04-07', '081288971167', 2, 80, 'penyimpanan/hand-drawn-star-collection_23-2147750141.jpg', '', ''),
('2021010016', 'Putu Mega Nirmala Dharmapatni', 'P', 'Sakura I BTN Sweta Indah No 179', 'Malang', '2021-11-08', '081238456288', 0, NULL, 'penyimpanan/60c8542f70201.png', 'penyimpanan/kotak/logo bumigora.png;penyimpanan/kotak/hand-drawn-star-collection_23-2147750141.jpg;penyimpanan/kotak/colorful-to-do-list-template-with-illustratio-design-62e266840fa359168f78c3ecef8cbb20_screen.jpg;penyimpanan/kotak/cozy-boho-weekly-planner-list-withcandles-quartz-crystals-ornament-cute-template-agenda-planners-check-lists-stationary_44769-1505.jpg;', '[\"penyimpanan/kotak/logo bumigora.png\",\"penyimpanan/kotak/hand-drawn-star-collection_23-2147750141.jpg\",\"penyimpanan/kotak/colorful-to-do-list-template-with-illustratio-design-62e266840fa359168f78c3ecef8cbb20_screen.jpg\",\"penyimpanan/kotak/cozy-boho-weekly-planner-list-withcandles-quartz-crystals-ornament-cute-template-agenda-planners-check-lists-stationary_44769-1505.jpg\"]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp_siswa`
--

CREATE TABLE `spp_siswa` (
  `id_pembayaran` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `tgl_pembayaran` datetime NOT NULL,
  `bulan` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `spp_siswa`
--

INSERT INTO `spp_siswa` (`id_pembayaran`, `nis`, `tgl_pembayaran`, `bulan`, `nominal`) VALUES
(1, '2021010001', '2021-01-08 08:00:00', 1, 50000),
(2, '2021010001', '2021-02-08 08:00:00', 2, 50000),
(3, '2021010001', '2021-03-08 08:00:00', 3, 50000),
(4, '2021010001', '2021-04-08 08:00:00', 4, 50000),
(5, '2021010001', '2021-05-08 08:00:00', 5, 50000),
(6, '2021010001', '2021-06-08 08:00:00', 6, 50000),
(7, '2021010002', '2021-01-08 08:00:00', 1, 50000),
(8, '2021010002', '2021-02-08 08:00:00', 2, 50000),
(9, '2021010002', '2021-03-08 08:00:00', 3, 50000),
(10, '2021010002', '2021-04-08 08:00:00', 4, 50000),
(11, '2021010002', '2021-05-08 08:00:00', 5, 50000),
(12, '2021010002', '2021-06-08 08:00:00', 6, 50000),
(13, '2021010003', '2021-01-08 08:00:00', 1, 50000),
(14, '2021010003', '2021-02-08 08:00:00', 2, 50000),
(15, '2021010003', '2021-03-08 08:00:00', 3, 50000),
(16, '2021010003', '2021-04-08 08:00:00', 4, 50000),
(17, '2021010003', '2021-05-08 08:00:00', 5, 50000),
(18, '2021010003', '2021-06-08 08:00:00', 6, 50000),
(19, '2021010004', '2021-01-08 08:00:00', 1, 50000),
(20, '2021010004', '2021-02-08 08:00:00', 2, 50000),
(21, '2021010004', '2021-03-08 08:00:00', 3, 50000),
(22, '2021010004', '2021-04-08 08:00:00', 4, 50000),
(23, '2021010004', '2021-05-08 08:00:00', 5, 50000),
(24, '2021010004', '2021-06-08 08:00:00', 6, 50000),
(25, '2021010005', '2021-01-08 08:00:00', 1, 50000),
(26, '2021010005', '2021-02-08 08:00:00', 2, 50000),
(27, '2021010005', '2021-03-08 08:00:00', 3, 50000),
(28, '2021010005', '2021-04-08 08:00:00', 4, 50000),
(29, '2021010005', '2021-05-08 08:00:00', 5, 50000),
(30, '2021010005', '2021-06-08 08:00:00', 6, 50000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `spp_siswa`
--
ALTER TABLE `spp_siswa`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `spp_siswa`
--
ALTER TABLE `spp_siswa`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
