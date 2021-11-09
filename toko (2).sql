-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Nov 2021 pada 04.54
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
-- Database: `toko`
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
(1, 'admin@gmail.com', 'Admin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(6) NOT NULL,
  `harga` int(10) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `harga`, `nama_barang`, `foto`) VALUES
('B00001', 30000, 'KAOS', NULL),
('B00002', 45000, 'BLOUSE', NULL),
('B00003', 55000, 'KEMEJA', NULL),
('B00004', 95000, 'JAKET', NULL),
('B00005', 65000, 'JILBAB', NULL),
('B00006', 35000, 'CELANA PENDEK', NULL),
('B00007', 75000, 'CELANA PANJANG', NULL),
('B00008', 15000, 'KAOS KAKI', NULL),
('B00009', 50000, 'SEPATU', NULL),
('B00010', 20000, 'SANDAL SELOP', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur`
--

CREATE TABLE `faktur` (
  `id_faktur` varchar(6) NOT NULL,
  `id_pelanggan` varchar(6) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faktur`
--

INSERT INTO `faktur` (`id_faktur`, `id_pelanggan`, `tanggal`) VALUES
('F00001', 'P00001', '2021-10-05'),
('F00002', 'P00003', '2021-10-03'),
('F00003', 'P00003', '2021-10-03'),
('F00004', 'P00004', '2021-10-02'),
('F00005', 'P00006', '2021-10-03'),
('F00006', 'P00002', '2021-10-05'),
('F00008', 'P00003', '2021-10-08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur_barang`
--

CREATE TABLE `faktur_barang` (
  `id_faktur` varchar(6) NOT NULL,
  `id_barang` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faktur_barang`
--

INSERT INTO `faktur_barang` (`id_faktur`, `id_barang`) VALUES
('F00001', 'B00001'),
('F00001', 'B00002'),
('F00001', 'B00003'),
('F00002', 'B00003'),
('F00002', 'B00004'),
('F00002', 'B00001'),
('F00002', 'B00001'),
('F00003', 'B00003'),
('F00003', 'B00004'),
('F00003', 'B00001'),
('F00004', 'B00006'),
('F00004', 'B00003'),
('F00004', 'B00007'),
('F00004', 'B00001'),
('F00005', 'B00009'),
('F00005', 'B00003'),
('F00005', 'B00001'),
('F00006', 'B00004'),
('F00006', 'B00001'),
('F00006', 'B00009'),
('F00008', 'B00004'),
('F00008', 'B00002'),
('F00008', 'B00001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(6) NOT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`) VALUES
('P00001', 'MEGA NIRMALA'),
('P00002', 'ADITIO ARTAYASA'),
('P00003', 'RAYNOLD'),
('P00004', 'GENTHA ANASTHA'),
('P00005', 'LILIK SULISTIA'),
('P00006', 'RANDU WIRA'),
('P00007', 'YOGI'),
('P00008', 'GALIH SURYA'),
('P00009', 'SHENTIN ABIGAIL'),
('P00010', 'RANTI');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `faktur`
--
ALTER TABLE `faktur`
  ADD PRIMARY KEY (`id_faktur`),
  ADD KEY `faktur_ibfk_1` (`id_pelanggan`);

--
-- Indeks untuk tabel `faktur_barang`
--
ALTER TABLE `faktur_barang`
  ADD KEY `faktur_barang_ibfk_1` (`id_faktur`),
  ADD KEY `faktur_barang_ibfk_2` (`id_barang`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `faktur`
--
ALTER TABLE `faktur`
  ADD CONSTRAINT `faktur_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `faktur_barang`
--
ALTER TABLE `faktur_barang`
  ADD CONSTRAINT `faktur_barang_ibfk_1` FOREIGN KEY (`id_faktur`) REFERENCES `faktur` (`id_faktur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `faktur_barang_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
