-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2021 pada 03.01
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_sepatu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL,
  `ukuran` varchar(10) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `ket` text DEFAULT NULL,
  `stok_kel` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`, `ukuran`, `id_supplier`, `ket`, `stok_kel`) VALUES
(4, 'SPT001', 2, 'Futsal', 'Adidas', '150000', '165000', 'Pasang', '21', '9 January 2021, 11:29', NULL, '38', 1, NULL, NULL),
(5, 'SPT002', 2, 'Boots', 'AP Boots', '100000', '130000', 'Pasang', '21', '11 January 2021, 12:50', '22 January 2021, 14:07', '40', 2, NULL, NULL),
(9, 'SPT003', 1, 'Flat Shoes', 'Bata', '100000', '120000', 'Pasang', '9', '25 January 2021, 3:39', '15 February 2021, 6:42', '35', 2, 'Rusak', '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Perempuan', '1 Januari 2021, 10:23'),
(2, 'Laki laki', '1 Januari 2021, 10:28'),
(3, 'Anak Anak', '1 Januari 2021, 0:19'),
(4, 'Casual', '1 Januari 2021, 0:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL,
  `level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`, `level`) VALUES
(1, 'mraihanna18', '202cb962ac59075b964b07152d234b70', 1, 'admin sistem'),
(2, 'aldodwrz', '202cb962ac59075b964b07152d234b70', 2, 'kasir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Muhammad Raihan Nur Azmii', 'Jl. Antah Barantah', '0891221332', 'mraihanna.18@gmail.com', 'azmii.jpg', '3205052708010004'),
(2, 'Aldo Dwie Rizky', 'Kp. Inggris', '085128312', 'aldodwrz@gmail.com', 'aldo.jpg', '3206060303010003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'SPT001', 1, '4', '12000', '1 Januari 2021, 0:45', '01-2021'),
(3, 'SPT001', 1, '4', '12000', '1 Januari 2021, 0:45', '01-2021'),
(4, 'SPT001', 1, '4', '12000', '1 Januari 2021, 0:45', '01-2021'),
(5, 'SPT001', 1, '2', '6000', '1 Januari 2021, 0:49', '01-2021'),
(6, 'SPT001', 1, '2', '6000', '1 Januari 2021, 0:49', '01-2021'),
(7, 'SPT001', 1, '2', '6000', '1 Januari 2021, 1:15', '01-2021'),
(20, 'SPT001', 1, '0', '0', '10 January 2021, 5:49', '01-2021'),
(21, 'SPT001', 1, '1', '165000', '10 January 2021, 5:49', '01-2021'),
(22, 'SPT001', 1, '1', '165000', '10 January 2021, 5:53', '01-2021'),
(23, 'SPT002', 1, '10', '1200000', '11 January 2021, 13:04', '01-2021'),
(24, 'SPT002', 2, '1', '120000', '16 January 2021, 7:38', '01-2021'),
(25, 'SPT001', 2, '2', '330000', '16 January 2021, 7:40', '01-2021'),
(27, 'SPT002', 1, '1', '130000', '24 January 2021, 7:14', '01-2021'),
(28, 'SPT002', 2, '1', '130000', '24 January 2021, 14:08', '01-2021'),
(29, 'SPT002', 1, '2', '260000', '24 January 2021, 14:15', '01-2021'),
(30, 'SPT001', 1, '1', '165000', '24 January 2021, 14:47', '01-2021'),
(31, 'SPT001', 1, '1', '165000', '24 January 2021, 14:57', '01-2021'),
(32, 'SPT001', 1, '1', '165000', '24 January 2021, 23:56', '01-2021'),
(33, 'SPT001', 1, '1', '165000', '25 January 2021, 0:36', '01-2021'),
(34, 'SPT001', 1, '1', '165000', '25 January 2021, 0:36', '01-2021'),
(35, 'SPT001', 2, '1', '165000', '25 January 2021, 3:15', '01-2021'),
(36, 'SPT001', 2, '1', '165000', '25 January 2021, 5:15', '01-2021'),
(37, 'SPT001', 2, '2', '330000', '25 January 2021, 5:17', '01-2021'),
(38, 'SPT001', 1, '1', '165000', '25 January 2021, 5:18', '01-2021'),
(39, 'SPT001', 2, '1', '165000', '25 January 2021, 11:02', '01-2021'),
(40, 'SPT001', 1, '1', '165000', '25 January 2021, 11:11', '01-2021'),
(41, 'SPT001', 1, '1', '165000', '25 January 2021, 11:11', '01-2021'),
(42, 'SPT001', 1, '3', '495000', '25 January 2021, 11:14', '01-2021'),
(43, 'SPT001', 1, '1', '165000', '27 January 2021, 6:00', '01-2021'),
(44, 'SPT001', 1, '2', '330000', '27 January 2021, 6:08', '01-2021'),
(45, 'SPT003', 1, '2', '240000', '27 January 2021, 7:01', '01-2021'),
(46, 'SPT002', 2, '2', '260000', '27 January 2021, 7:05', '01-2021'),
(47, 'SPT001', 1, '1', '165000', '28 January 2021, 5:55', '01-2021'),
(48, 'SPT002', 1, '1', '130000', '28 January 2021, 5:55', '01-2021'),
(93, 'SPT001', 1, '1', '165000', '28 January 2021, 5:55', '0'),
(94, 'SPT002', 1, '1', '130000', '28 January 2021, 5:55', '0'),
(95, 'SPT003', 1, '1', '120000', '28 January 2021, 6:13', '01-2021'),
(96, 'SPT003', 1, '1', '120000', '28 January 2021, 6:13', '0'),
(98, 'SPT001', 1, '1', '0', '31 January 2021, 8:36', '0'),
(100, 'SPT001', 1, '1', '165000', '31 January 2021, 8:40', '0'),
(101, 'SPT001', 2, '1', '165000', '31 January 2021, 8:47', '0'),
(102, 'SPT003', 2, '1', '120000', '2 February 2021, 5:23', '0'),
(103, 'SPT003', 2, '2', '240000', '2 February 2021, 5:28', '02-2021'),
(104, 'SPT003', 2, '1', '120000', '2 February 2021, 5:33', '02-2021'),
(105, 'SPT003', 2, '1', '120000', '2 February 2021, 5:34', '02-2021'),
(106, 'SPT003', 2, '1', '120000', '2 February 2021, 5:40', '02-2021'),
(107, 'SPT002', 2, '1', '130000', '2 February 2021, 5:42', '02-2021'),
(108, 'SPT001', 2, '1', '165000', '2 February 2021, 5:44', '02-2021'),
(109, 'SPT001', 2, '1', '165000', '2 February 2021, 5:46', '0'),
(110, 'SPT001', 2, '1', '165000', '2 February 2021, 5:49', '02-2021'),
(111, 'SPT001', 2, '1', '165000', '2 February 2021, 5:58', '02-2021'),
(112, 'SPT001', 2, '1', '165000', '2 February 2021, 5:59', '02-2021'),
(113, 'SPT001', 2, '1', '165000', '2 February 2021, 6:02', '02-2021'),
(114, 'SPT001', 2, '1', '165000', '2 February 2021, 6:04', '02-2021'),
(115, 'SPT001', 1, '1', '165000', '2 February 2021, 6:05', '02-2021'),
(116, 'SPT001', 1, '1', '165000', '2 February 2021, 6:11', '02-2021'),
(117, 'SPT001', 2, '3', '495000', '2 February 2021, 12:41', '02-2021'),
(118, 'SPT003', 1, '1', '120000', '15 February 2021, 8:14', '02-2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota_pembelian`
--

CREATE TABLE `nota_pembelian` (
  `id_nota_pembelian` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nota_pembelian`
--

INSERT INTO `nota_pembelian` (`id_nota_pembelian`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(26, 'SPT001', 1, '1', '150000', '25 January 2021, 2:17', '01-2021'),
(27, 'SPT001', 1, '3', '450000', '25 January 2021, 2:26', '01-2021'),
(28, 'SPT002', 1, '5', '500000', '25 January 2021, 2:32', '01-2021'),
(67, 'SPT002', 1, '5', '500000', '25 January 2021, 2:32', '0'),
(68, 'SPT002', 1, '1', '100000', '25 January 2021, 2:37', '01-2021'),
(69, 'SPT001', 1, '1', '150000', '25 January 2021, 2:51', '01-2021'),
(70, 'SPT003', 1, '5', '500000', '25 January 2021, 4:44', '01-2021'),
(71, 'SPT003', 1, '5', '500000', '25 January 2021, 4:45', '01-2021'),
(72, 'SPT003', 1, '5', '500000', '25 January 2021, 4:47', '01-2021'),
(73, 'SPT003', 1, '5', '500000', '25 January 2021, 4:47', '2'),
(74, 'SPT003', 1, '2', '200000', '25 January 2021, 5:21', '01-2021'),
(75, 'SPT001', 1, '1', '150000', '27 January 2021, 5:34', '01-2021'),
(76, 'SPT001', 1, '1', '150000', '27 January 2021, 5:36', '01-2021'),
(77, 'SPT003', 1, '2', '200000', '27 January 2021, 5:39', '01-2021'),
(78, 'SPT001', 1, '1', '150000', '27 January 2021, 5:41', '01-2021'),
(79, 'SPT001', 1, '1', '150000', '27 January 2021, 5:42', '01-2021'),
(80, 'SPT001', 1, '1', '150000', '27 January 2021, 5:45', '01-2021'),
(81, 'SPT001', 1, '1', '150000', '27 January 2021, 5:46', '01-2021'),
(82, 'SPT001', 1, '1', '150000', '27 January 2021, 5:47', '01-2021'),
(83, 'SPT001', 1, '1', '150000', '27 January 2021, 5:54', '01-2021'),
(84, 'SPT003', 1, '1', '100000', '27 January 2021, 5:55', '01-2021'),
(85, 'SPT001', 1, '1', '150000', '27 January 2021, 5:56', '01-2021'),
(86, 'SPT001', 1, '1', '150000', '27 January 2021, 5:58', '01-2021'),
(87, 'SPT001', 1, '1', '150000', '27 January 2021, 6:00', '01-2021'),
(88, 'SPT001', 1, '1', '150000', '27 January 2021, 6:02', '01-2021'),
(89, 'SPT003', 1, '1', '100000', '27 January 2021, 6:03', '01-2021'),
(90, 'SPT001', 1, '1', '150000', '27 January 2021, 6:03', '01-2021'),
(91, 'SPT003', 1, '0', '0', '27 January 2021, 6:04', '2'),
(92, 'SPT003', 1, '1', '100000', '27 January 2021, 6:06', '01-2021'),
(93, 'SPT001', 1, '1', '150000', '27 January 2021, 6:10', '01-2021'),
(94, 'SPT001', 1, '1', '150000', '27 January 2021, 6:14', '01-2021'),
(95, 'SPT001', 1, '1', '150000', '27 January 2021, 6:15', '01-2021'),
(96, 'SPT001', 1, '1', '150000', '27 January 2021, 6:16', '01-2021'),
(97, 'SPT001', 1, '1', '150000', '27 January 2021, 6:29', '01-2021'),
(98, 'SPT003', 1, '1', '100000', '27 January 2021, 6:30', '01-2021'),
(99, 'SPT003', 1, '1', '100000', '27 January 2021, 6:31', '01-2021'),
(100, 'SPT003', 1, '1', '100000', '27 January 2021, 6:32', '01-2021'),
(101, 'SPT002', 1, '1', '100000', '27 January 2021, 6:33', '01-2021'),
(102, 'SPT002', 1, '1', '100000', '27 January 2021, 6:35', '01-2021'),
(103, 'SPT002', 1, '2', '200000', '27 January 2021, 6:35', '01-2021'),
(104, 'SPT003', 1, '2', '200000', '27 January 2021, 6:36', '01-2021'),
(105, 'SPT002', 1, '1', '100000', '27 January 2021, 6:37', '01-2021'),
(106, 'SPT002', 1, '1', '100000', '27 January 2021, 6:38', '01-2021'),
(107, 'SPT002', 1, '2', '200000', '27 January 2021, 7:03', '01-2021'),
(109, 'SPT001', 1, '1', '0', '31 January 2021, 8:41', '1'),
(110, 'SPT001', 1, '1', '165000', '31 January 2021, 8:42', '01-2021'),
(111, 'SPT001', 1, '1', '165000', '31 January 2021, 8:42', '01-2021'),
(112, 'SPT001', 1, '1', '165000', '31 January 2021, 8:43', '01-2021'),
(113, 'SPT001', 1, '1', '165000', '31 January 2021, 8:43', '01-2021'),
(114, 'SPT001', 1, '1', '150000', '31 January 2021, 8:48', '1'),
(115, 'SPT001', 1, '1', '150000', '2 February 2021, 6:14', '02-2021'),
(116, 'SPT001', 1, '1', '150000', '2 February 2021, 6:15', '02-2021'),
(117, 'SPT001', 1, '1', '150000', '2 February 2021, 6:18', '02-2021'),
(118, 'SPT001', 1, '1', '150000', '2 February 2021, 6:28', '1'),
(119, 'SPT003', 1, '1', '100000', '2 February 2021, 12:55', '02-2021'),
(120, 'SPT001', 1, '1', '150000', '2 February 2021, 12:57', '02-2021'),
(121, 'SPT002', 1, '1', '100000', '2 February 2021, 12:58', '02-2021'),
(122, 'SPT003', 1, '5', '500000', '15 February 2021, 5:28', '02-2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `id_supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `id_nota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `id_nota`) VALUES
(118, 'SPT003', 1, '1', '120000', '15 February 2021, 8:14', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sepatu`
--

CREATE TABLE `sepatu` (
  `Kode_Sepatu` int(11) NOT NULL,
  `Merk_Sepatu` varchar(30) NOT NULL,
  `Jenis_Sepatu` varchar(50) NOT NULL,
  `Ukuran_Sepatu` varchar(30) NOT NULL,
  `Harga_Sepatu` varchar(30) NOT NULL,
  `Stok_Sepatu` varchar(30) NOT NULL,
  `Kode_Supplier` int(11) NOT NULL,
  `Jumlah_Pesanan` varchar(30) NOT NULL,
  `Tanggal_Pesanan` date NOT NULL,
  `Opsi_Pengiriman` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sepatu`
--

INSERT INTO `sepatu` (`Kode_Sepatu`, `Merk_Sepatu`, `Jenis_Sepatu`, `Ukuran_Sepatu`, `Harga_Sepatu`, `Stok_Sepatu`, `Kode_Supplier`, `Jumlah_Pesanan`, `Tanggal_Pesanan`, `Opsi_Pengiriman`) VALUES
(111, 'Nike', 'Sports', '44', '500000', '10', 211, '20', '2020-08-23', 'Pos Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `no_hp`, `tgl_input`, `tgl_update`) VALUES
(1, 'PT Neki', 'Jalan Angin Ribut No 101', '08912342512', '20 January 2021, 11:23', '23 January 2021, 7:27'),
(2, 'PT Adidaya', 'Perum Angin Ribut Blok A-1', '0851256234', '23 January 2021, 7:03', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Toko Aang Jaya', 'Jl. Siamang Tunggal, rt/rw 02/09, Kecamatan Antah Berantah, Kabupaten Tersesat', '0892314212', 'Muhammad Raihan Nur Azmii');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `nota_pembelian`
--
ALTER TABLE `nota_pembelian`
  ADD PRIMARY KEY (`id_nota_pembelian`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT untuk tabel `nota_pembelian`
--
ALTER TABLE `nota_pembelian`
  MODIFY `id_nota_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
