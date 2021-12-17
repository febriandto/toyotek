-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2021 pada 16.57
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warehouse2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_barang`
--

CREATE TABLE `m_barang` (
  `id_barang` int(11) NOT NULL,
  `parent_barang` int(11) DEFAULT NULL,
  `id_outlet` varchar(50) DEFAULT '1',
  `barcode` varchar(50) DEFAULT NULL,
  `barcode_asli` varchar(50) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `id_jenis_barang` int(11) NOT NULL,
  `id_merk` int(11) NOT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `jenis_barang` varchar(50) DEFAULT 'ADA LIMBAH',
  `satuan` varchar(50) NOT NULL,
  `warna` varchar(59) NOT NULL,
  `gambar` varchar(59) NOT NULL,
  `size` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL DEFAULT 0,
  `harga_jual` int(11) NOT NULL DEFAULT 0,
  `last_stock` int(11) NOT NULL DEFAULT 0,
  `min_stock` int(11) NOT NULL DEFAULT 0,
  `max_stock` int(11) NOT NULL DEFAULT 0,
  `is_limbah` enum('N','Y') DEFAULT 'N',
  `is_delete` enum('N','Y') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_barang`
--

INSERT INTO `m_barang` (`id_barang`, `parent_barang`, `id_outlet`, `barcode`, `barcode_asli`, `nama_barang`, `id_category`, `id_jenis_barang`, `id_merk`, `merk`, `jenis_barang`, `satuan`, `warna`, `gambar`, `size`, `harga_beli`, `harga_jual`, `last_stock`, `min_stock`, `max_stock`, `is_limbah`, `is_delete`) VALUES
(1, NULL, '1', NULL, NULL, 'Valve', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '2,5\"', 0, 0, 30, 10, 1000, NULL, 'N'),
(2, NULL, '1', NULL, NULL, 'Lockable Lurus', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '2,5\"', 0, 0, 18, 10, 1000, NULL, 'N'),
(3, NULL, '1', NULL, NULL, 'Meteran', 1, 0, 0, 'Itron', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '1/2\"', 0, 0, 19, 5, 5000, NULL, 'N'),
(4, NULL, '4', NULL, NULL, 'Valve Panjang', 1, 0, 0, '-', NULL, 'Pcs', '', '', '2,5\"', 0, 0, 6, 5, 1000, NULL, 'N'),
(5, NULL, '5', NULL, NULL, 'Lockable L', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '-', 0, 0, 11, 10, 1000, NULL, 'N'),
(1163, NULL, '1', NULL, NULL, 'Klem 2\"', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '2\"', 0, 0, 40, 0, 0, NULL, 'N'),
(1164, NULL, '1', NULL, NULL, 'Klem 4\"', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '4\"', 0, 0, 5, 0, 0, NULL, 'N'),
(1165, NULL, '1', NULL, NULL, 'Klem 6\"', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '6\"', 0, 0, 3, 0, 0, NULL, 'N'),
(1166, NULL, '1', NULL, NULL, 'Gibolt 2\"', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '2\"', 0, 0, 15, 0, 0, NULL, 'N'),
(1167, NULL, '1', NULL, NULL, 'Gibolt 4\"', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '4\"', 0, 0, 7, 0, 0, NULL, 'N'),
(1168, NULL, '1', NULL, NULL, 'Gibolt 6\"', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '6\"', 0, 0, 0, 0, 0, NULL, 'N'),
(1169, NULL, '1', NULL, NULL, 'Ferule Cutter', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '-', 0, 0, 142, 0, 0, NULL, 'N'),
(1170, NULL, '1', NULL, NULL, 'Adaptor Sambung (L)', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '.', 0, 0, 40, 0, 0, NULL, 'N'),
(1171, NULL, '1', NULL, NULL, 'Adaptor Sambung Lurus', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '.', 0, 0, 10, 0, 0, NULL, 'N'),
(1172, NULL, '1', NULL, NULL, 'Cangkul', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '.', 0, 0, 1, 0, 0, NULL, 'N'),
(1173, NULL, '1', NULL, NULL, 'Kunci Pas T', 1, 0, 0, NULL, 'TIDAK ADA LIMBAH', 'Pcs', '', '', '.', 0, 0, 1, 0, 0, NULL, 'N'),
(1174, NULL, '1', NULL, NULL, 'Kunci Pas 13 mm', 1, 0, 0, '.', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '13 mm', 0, 0, 1, 0, 0, NULL, 'N'),
(1175, NULL, '1', NULL, NULL, 'Kunci Pas 12 mm', 1, 0, 0, NULL, 'TIDAK ADA LIMBAH', 'Pcs', '', '', '12 mm', 0, 0, 1, 0, 0, NULL, 'N'),
(1176, NULL, '1', NULL, NULL, 'Kunci Pas 14 mm', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '14 mm', 0, 0, 2, 0, 0, NULL, 'N'),
(1177, NULL, '1', NULL, NULL, 'Kunci Pas 32 mm', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '32 mm', 0, 0, 1, 0, 0, NULL, 'N'),
(1178, NULL, '1', NULL, NULL, 'Kunci Pas 30 mm', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '30 mm', 0, 0, 1, 0, 0, NULL, 'N'),
(1179, NULL, '1', NULL, NULL, 'Kuci Pipa', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Pcs', '', '', '.', 0, 0, 1, 0, 0, NULL, 'N'),
(1180, NULL, '1', NULL, NULL, 'Pipa PE', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Meter', '', '', '.', 0, 0, 0, 0, 0, NULL, 'N'),
(1181, NULL, '1', NULL, NULL, 'Pipa Besi', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Meter', '', '', '.', 0, 0, 6, 0, 0, NULL, 'N'),
(1182, NULL, '1', NULL, NULL, 'Kapak', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1183, NULL, '1', NULL, NULL, 'Linggis', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1184, NULL, '1', NULL, NULL, 'Palu', 1, 0, 0, NULL, 'TIDAK ADA LIMBAH', '-', '', '', '.', 0, 0, 1, 0, 0, NULL, 'N'),
(1185, NULL, '1', NULL, NULL, 'Mur Meteran', 1, 0, 0, NULL, 'TIDAK ADA LIMBAH', '.', '', '', '.', 0, 0, 76, 0, 0, NULL, 'N'),
(1187, NULL, '1', NULL, NULL, 'PAC', 2, 0, 0, '-', 'ADA LIMBAH', 'Karung', '', '', '25 Kg', 0, 0, 48, 30, 1000, NULL, 'N'),
(1188, NULL, '1', NULL, NULL, 'Kaporit', 2, 0, 0, '-', 'ADA LIMBAH', 'Drum', '', '', '.', 0, 0, 183, 5, 0, NULL, 'N'),
(1189, NULL, '1', NULL, NULL, 'Mesin Steam', 2, 0, 0, 'Lakoni', 'TIDAK ADA LIMBAH', '-', '', '', '.', 0, 0, 1, 0, 0, NULL, 'N'),
(1190, NULL, '1', NULL, NULL, 'Mesin Las', 2, 0, 0, 'Fitech', 'TIDAK ADA LIMBAH', '-', '', '', '.', 0, 0, 1, 0, 0, NULL, 'N'),
(1191, NULL, '1', NULL, NULL, 'Gerinda', 2, 0, 0, 'Maktech', 'TIDAK ADA LIMBAH', '-', '', '', '.', 0, 0, 1, 0, 0, NULL, 'N'),
(1192, NULL, '1', NULL, NULL, 'Mesin Las ( Rusak )', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '.', 0, 0, 2, 0, 0, NULL, 'N'),
(1193, NULL, '1', NULL, NULL, 'Palu', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '.', 0, 0, 1, 0, 0, NULL, 'N'),
(1194, NULL, '1', NULL, NULL, 'Kunci Pipa', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1195, NULL, '1', NULL, NULL, 'Tang gegep', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1196, NULL, '1', NULL, NULL, 'Gunting Baja Ringan', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '.', 0, 0, 1, 0, 0, NULL, 'N'),
(1197, NULL, '1', NULL, NULL, 'Obeng Min Plus', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1198, NULL, '1', NULL, NULL, 'Penggaris Siku', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1199, NULL, '1', NULL, NULL, 'Kunci Y / Ring', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1200, NULL, '1', NULL, NULL, 'Kunci T', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1201, NULL, '1', NULL, NULL, 'Kunci Pas 19 mm', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1202, NULL, '1', NULL, NULL, 'Kunci Pas 24 mm', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1203, NULL, '1', NULL, NULL, 'Kunci Pas 26 mm', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1204, NULL, '1', NULL, NULL, 'Kunci L', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1205, NULL, '1', NULL, NULL, 'Mata Bor 32 mm', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1206, NULL, '1', NULL, NULL, 'Mata Bor 18 mm', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1207, NULL, '1', NULL, NULL, 'Rumah / Kepala Bor', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1208, NULL, '1', NULL, NULL, 'Golok', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1209, NULL, '1', NULL, NULL, 'Gergaji', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1210, NULL, '1', NULL, NULL, 'Gear Puller', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1211, NULL, '1', NULL, NULL, 'TV', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1212, NULL, '1', NULL, NULL, 'Pompa Air', 2, 0, 0, 'APP-KENJI', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1213, NULL, '1', NULL, NULL, 'Bor Magnetic', 2, 0, 0, 'Nankai', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1214, NULL, '1', NULL, NULL, 'Mesin Potong Rumput', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1215, NULL, '1', NULL, NULL, 'Kunci Inggris 375', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '375', 0, 0, 1, 0, 0, NULL, 'N'),
(1216, NULL, '1', NULL, NULL, '3-Phase Induction Motor', 2, 0, 0, 'LM', 'TIDAK ADA LIMBAH', '-', '', '', '3-Phase', 0, 0, 1, 0, 0, NULL, 'N'),
(1217, NULL, '1', NULL, NULL, '3-Phase Induction Motor', 2, 0, 0, 'Teco', 'TIDAK ADA LIMBAH', '-', '', '', '3-Phase', 0, 0, 1, 0, 0, NULL, 'N'),
(1218, NULL, '1', NULL, NULL, '3-Phase Induction Motor', 2, 0, 0, 'World Energi', 'TIDAK ADA LIMBAH', '-', '', '', '3-Phase', 0, 0, 1, 0, 0, NULL, 'N'),
(1219, NULL, '1', NULL, NULL, '3-Phase Induction Motor', 2, 0, 0, 'World Energi', 'TIDAK ADA LIMBAH', '-', '', '', '3-Phase', 0, 0, 1, 0, 0, NULL, 'Y'),
(1220, NULL, '1', NULL, NULL, 'Gibolt 3\"', 1, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '3\"', 0, 0, 13, 0, 0, NULL, 'N'),
(1221, NULL, '1', NULL, NULL, 'Gibolt 12\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '12\"', 0, 0, 2, 0, 0, NULL, 'N'),
(1222, NULL, '1', NULL, NULL, 'Klem 12\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '12\"', 0, 0, 10, 0, 0, NULL, 'N'),
(1223, NULL, '1', NULL, NULL, 'Ebara Pump', 2, 0, 0, 'Ebara', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1224, NULL, '1', NULL, NULL, 'Gibolt 8\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '8\"', 0, 0, 1, 0, 0, NULL, 'N'),
(1225, NULL, '1', NULL, NULL, 'Tabung Gas', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 3, 0, 0, NULL, 'N'),
(1226, NULL, '1', NULL, NULL, 'Gas elpiji', 2, 0, 0, 'Pertamina', 'TIDAK ADA LIMBAH', '-', '', '', '12Kg', 0, 0, 1, 0, 0, NULL, 'N'),
(1227, NULL, '1', NULL, NULL, '1 Set Regulator Gas', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1228, NULL, '1', NULL, NULL, 'Safety Belt', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1229, NULL, '1', NULL, NULL, 'Elbow 3\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 3, 0, 0, NULL, 'N'),
(1230, NULL, '1', NULL, NULL, 'Apar', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1231, NULL, '1', NULL, NULL, 'Pahat', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1232, NULL, '1', NULL, NULL, 'Ripet', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1233, NULL, '1', NULL, NULL, 'Elbow 6\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1234, NULL, '1', NULL, NULL, 'Pipa 2\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Batang', '', '', '2\"', 0, 0, 126, 0, 0, NULL, 'N'),
(1235, NULL, '1', NULL, NULL, 'Pipa 12\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Batang', '', '', '12\"', 0, 0, 1, 0, 0, NULL, 'N'),
(1236, NULL, '1', NULL, NULL, 'Pipa 6\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Batang', '', '', '-', 0, 0, 1, 0, 0, NULL, 'N'),
(1237, NULL, '1', NULL, NULL, 'Pipa 4\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Batang', '', '', '-', 0, 0, 6, 0, 0, NULL, 'N'),
(1238, NULL, '1', NULL, NULL, 'Pipa 3\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', 'Batang', '', '', '3\"', 0, 0, 1, 0, 0, NULL, 'N'),
(1239, NULL, '1', NULL, NULL, 'Flexible Tozen 3\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '3\"', 0, 0, 1, 0, 0, NULL, 'N'),
(1240, NULL, '1', NULL, NULL, 'Flexible Tozen 4\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '4\"', 0, 0, 1, 0, 0, NULL, 'N'),
(1241, NULL, '1', NULL, NULL, 'Karet 2\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '2\"', 0, 0, 80, 0, 0, NULL, 'N'),
(1242, NULL, '1', NULL, NULL, 'Karet 12\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '12\"', 0, 0, 2, 0, 0, NULL, 'N'),
(1243, NULL, '1', NULL, NULL, 'Karet 4\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '4\"', 0, 0, 1, 0, 0, NULL, 'N'),
(1244, NULL, '1', NULL, NULL, 'Karet 6\"', 2, 0, 0, '-', 'TIDAK ADA LIMBAH', '-', '', '', '6\"', 0, 0, 1, 0, 0, NULL, 'N'),
(1246, NULL, '1', NULL, NULL, 'Klem 3\"', 2, 0, 0, '-', NULL, 'Pcs', '', '', '3\"', 0, 0, 4, 5, 1000, NULL, 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_barang_pengeluaran`
--

CREATE TABLE `m_barang_pengeluaran` (
  `id_barang_pengeluaran` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `input_by` varchar(255) DEFAULT NULL,
  `input_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_barang_pengeluaran`
--

INSERT INTO `m_barang_pengeluaran` (`id_barang_pengeluaran`, `id_barang`, `qty`, `input_by`, `input_date`) VALUES
(13, 1159, 1, NULL, '2021-12-06 04:13:02'),
(14, 5, 1, NULL, '2021-12-10 01:28:58'),
(15, 3, 1, NULL, '2021-12-10 01:29:17'),
(16, 2, 1, NULL, '2021-12-10 01:29:36'),
(17, 1, 2, NULL, '2021-12-10 01:30:04'),
(18, 1163, 1, NULL, '2021-12-10 01:46:54'),
(19, 1169, 1, NULL, '2021-12-10 01:47:10'),
(21, 5, 1, NULL, '2021-12-11 01:27:40'),
(23, 2, 1, NULL, '2021-12-14 01:18:02'),
(24, 1, 1, NULL, '2021-12-14 01:18:21'),
(25, 1, 2, NULL, '2021-12-14 02:37:27'),
(26, 2, 2, NULL, '2021-12-14 02:37:42'),
(27, 3, 2, NULL, '2021-12-14 02:37:58'),
(28, 1163, 2, NULL, '2021-12-14 02:38:33'),
(29, 1169, 2, NULL, '2021-12-14 02:42:47'),
(30, 2, 1, NULL, '2021-12-14 09:15:56'),
(31, 2, 1, NULL, '2021-12-16 06:55:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_category`
--

CREATE TABLE `m_category` (
  `id_category` int(11) NOT NULL,
  `nama_category` varchar(50) NOT NULL,
  `is_delete` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_category`
--

INSERT INTO `m_category` (`id_category`, `nama_category`, `is_delete`) VALUES
(1, 'Gudang Kantor', 'N'),
(2, 'WTP', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_jenis_barang`
--

CREATE TABLE `m_jenis_barang` (
  `id_jenis_barang` int(11) NOT NULL,
  `nama_jenis_barang` varchar(50) NOT NULL,
  `is_delete` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_jenis_pengeluaran`
--

CREATE TABLE `m_jenis_pengeluaran` (
  `id_jenis_pengeluaran` int(11) NOT NULL,
  `nama_jenis_pengeluaran` varchar(100) NOT NULL,
  `keterangan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_karyawan`
--

CREATE TABLE `m_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` varchar(15) DEFAULT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `status_kawin` varchar(15) DEFAULT NULL,
  `pendidikan` varchar(50) DEFAULT NULL,
  `nomor_ktp` varchar(30) DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `is_delete` enum('N','Y') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_karyawan`
--

INSERT INTO `m_karyawan` (`id_karyawan`, `username`, `password`, `level`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `status_kawin`, `pendidikan`, `nomor_ktp`, `nomor_telepon`, `email`, `alamat`, `status`, `created_by`, `created_date`, `is_delete`) VALUES
(1, 'admin', '$2y$10$BxrhNUZ0QSQAtPnmxti0D.b.hzp3m5zxL4qLd83QW8QZY7IQzrg/q', 'Administrator', 'Admin', NULL, NULL, NULL, NULL, NULL, '-', '-', 'Tigaraksa', 'Enable', NULL, NULL, 'N'),
(2, 'kasir', '$2y$10$xO9LrEL6cYNGoDAnthrMUOV0qFprWfPg45wGhcNgP1xmjDsJ0X0ri', 'Kasir', 'Tole', NULL, NULL, NULL, NULL, NULL, '087879000045', 'tole@gmail.com', 'Mustika', 'Enable', NULL, NULL, 'N'),
(3, 'server', '$2y$10$pve.3/1PG.V949/R6IKdt.Wy9Dbw5WYp2n429s0/JNzYCvg4bb1VS', 'Kasir', 'server', NULL, NULL, NULL, NULL, NULL, '0', 'server@server.com', 'Mustika Tigaraksa', 'Enable', NULL, NULL, 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_menu`
--

CREATE TABLE `m_menu` (
  `id_menu` int(11) NOT NULL,
  `parent_id_1` int(11) DEFAULT NULL,
  `parent_id_2` int(11) DEFAULT NULL,
  `parent_id_3` int(11) DEFAULT NULL,
  `menu_position` int(11) DEFAULT NULL,
  `nama_menu` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_menu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `is_delete` enum('N','Y') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_menu`
--

INSERT INTO `m_menu` (`id_menu`, `parent_id_1`, `parent_id_2`, `parent_id_3`, `menu_position`, `nama_menu`, `link_menu`, `icon_menu`, `menu_type`, `input_by`, `input_date`, `update_by`, `update_date`, `delete_by`, `delete_date`, `is_delete`) VALUES
(1, NULL, NULL, NULL, NULL, 'Menu Manager', 'menu.index', 'file', 'NORMAL', NULL, NULL, NULL, NULL, NULL, NULL, 'Y'),
(14, NULL, NULL, NULL, 12, 'Laporan', 'laporan.index', 'pie-chart', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(15, 14, NULL, NULL, 20, 'Transaksi', 'laporan.transaksi', 'basket', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(18, NULL, NULL, NULL, 29, 'Master Data', 'produk.index', 'equalizer', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(19, 18, NULL, NULL, 30, 'Barang', 'barang.index', 'grid', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(20, 18, NULL, NULL, 15, 'Supplier', 'supplier.index', 'cloud-upload', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'Y'),
(21, 18, NULL, NULL, 16, 'Satuan', 'satuan.index', 'paper-clip', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'Y'),
(25, 44, NULL, NULL, 5, 'Penerimaan Barang', 'penerimaan_barang.index', 'shuffle', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(26, 44, NULL, NULL, 8, 'Retur Barang', 'retur.index', 'action-redo', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(27, 44, NULL, NULL, 11, 'Stock Opname', 'stock_opname.index', 'loop', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(28, NULL, NULL, NULL, 23, 'Akunting', 'akunting.index', 'calculator', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(29, 28, NULL, NULL, 27, 'Laba / Rugi', 'laba_rugi.index', 'chart', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(30, NULL, NULL, NULL, 35, 'Profile', 'user.profile', 'user', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(43, 14, NULL, NULL, 19, 'Achievement Summary', 'laporan.achievement', 'graph', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(44, NULL, NULL, NULL, 3, 'Stok Manajemen', 'stok.index', 'notebook', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(45, 44, NULL, NULL, 6, 'Pengeluaran Barang', 'pengeluaran_barang.index', 'share-alt', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(46, 28, NULL, NULL, 25, 'Data Pengeluaran', 'pengeluaran.index', 'note', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(47, 14, NULL, NULL, 13, 'Stok Barang', 'laporan.stok', 'list', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(48, 52, NULL, NULL, 1, 'POS', 'transaksi.index', 'handbag', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(49, 52, NULL, NULL, 2, 'Pesanan', 'pesanan.index', 'bag', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(50, 18, NULL, NULL, 33, 'Kategori Barang', 'category.index', 'tag', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(51, 44, NULL, NULL, 4, 'Purchase Order', 'po.index', 'handbag', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(52, NULL, NULL, NULL, 0, 'Transaksi', '#', 'handbag', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(53, 14, NULL, NULL, 22, 'Item Sales', 'laporan.item_sales', 'basket-loaded', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(54, 44, NULL, NULL, 9, 'Barang Masuk', 'barang_masuk.index', 'arrow-down-circle', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(55, 18, NULL, NULL, 31, 'Jenis Barang', 'jenis_barang.index', 'book-open', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(56, 18, NULL, NULL, 32, 'Merek', 'merk.index', 'flag', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(57, 28, NULL, NULL, 24, 'Data Asset', 'asset.index', 'drawer', 'MASTER', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(58, 28, NULL, NULL, 26, 'Piutang', 'piutang.index', 'credit-card', 'MASTER', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(59, 18, NULL, NULL, 34, 'Data Customer', 'customer.index', 'user-follow', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(60, 28, NULL, NULL, 28, 'Neraca', 'neraca.index', 'pie-chart', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(61, 14, NULL, NULL, 21, 'Sales Harian', 'laporan.sales_harian', 'calendar', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(62, 14, NULL, NULL, 12, 'Stock Limbah', 'laporan.stok_limbah', 'notebook', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'Y'),
(63, 44, NULL, NULL, 10, 'Limbah Masuk', 'limbah_masuk.index', 'arrow-down-circle', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(64, 14, NULL, NULL, 14, 'Stok Limbah', 'laporan.stok_limbah', 'trash', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(65, 44, NULL, NULL, 7, 'Pengeluaran Limbah', 'pengeluaran_limbah.index', 'trash', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(66, 14, NULL, NULL, 17, 'Pengeluaran Barang', 'laporan.pengeluaran_barang', 'notebook', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(67, 14, NULL, NULL, 18, 'Pengeluaran Limbah', 'laporan.pengeluaran_limbah', 'notebook', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(68, 14, NULL, NULL, 15, 'Barang Masuk', 'laporan.penerimaan_barang', 'notebook', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N'),
(69, 14, NULL, NULL, 16, 'Limbah Masuk', 'laporan.limbah_masuk', 'notebook', 'TRANSACTIONAL', NULL, NULL, NULL, NULL, NULL, NULL, 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_merk`
--

CREATE TABLE `m_merk` (
  `id_merk` int(11) NOT NULL,
  `nama_merk` varchar(50) NOT NULL,
  `is_delete` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_merk`
--

INSERT INTO `m_merk` (`id_merk`, `nama_merk`, `is_delete`) VALUES
(1, 'No Merk', 'Y'),
(2, 'MC Donalds', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_options`
--

CREATE TABLE `m_options` (
  `id_option` int(11) NOT NULL,
  `option_name` varchar(500) NOT NULL,
  `option_value` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_options`
--

INSERT INTO `m_options` (`id_option`, `option_name`, `option_value`) VALUES
(1, 'site_name', 'Vizita | Visitor Management'),
(2, 'website_description', 'Test'),
(3, 'company_address', 'Jl. Jababeka IV Blok B No. 12 Jababeka Industrial Estate Cikarang - Bekasi'),
(4, 'about_ictel', 'ICTel telah memiliki jaringan kabel serat optik yang mengcover seluruh wilayah Jababeka. Jaringan kabel serat optik mampu membawa berbagai informasi dengan kecepatan tinggi dan stabil.'),
(5, 'telp', '0813-8383-3008'),
(6, 'email', 'hello@aymisyu.com'),
(7, 'call_center', '+6281-1805-6321'),
(8, 'cust_service', '+62 811-8056-321'),
(9, 'facebook', ''),
(10, 'twitter', ''),
(11, 'instagram', ''),
(12, 'youtube', ''),
(13, 'contact_email', 'theprojectseven@gmail.com'),
(16, 'tagline', 'Kami bekerjasama dengan provider-provider terbaik di Indonesia'),
(17, 'popup_enabled', ''),
(18, 'popup_link', '#'),
(19, 'popup_image', 'media_20190331230715.jpg'),
(20, 'address', 'Test Address'),
(21, 'about_footer', 'Donec vitae purus nunc. Morbi faucibus erat sit amet congue mattis. Nullam frin-gilla faucibus urna, id dapibus erat iaculis ut. Integer ac sem.'),
(22, 'company_name', 'Aimisyu'),
(23, 'box_1', 'Test 1'),
(24, 'box_2', 'Test 2'),
(25, 'box_3', 'Test 3'),
(26, 'url', 'http://localhost/ictel'),
(27, 'youtube_channel', 'UCT9zcQNlyht7fRlcjmflRSA'),
(28, 'youtube_embed', 'a40XLhSUREo'),
(29, 'aymisyu_story', 'Proin quis urna a risus pharetra condimentum. Duis ut dolor quis mi euismod semper a in ante. Nam at velit porta, congue quam non, pulvinar augue.\r\n\r\nQuisque pharetra est non libero gravida, ut egestas sapien sollicitudin. Quisque rhoncus feugiat urna. Maecenas ut vehicula orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'),
(30, 'featured_product', 'active'),
(31, 'background_image', 'media_20190716222148.png'),
(32, 'logo', 'media_20190401104448.png'),
(33, 'home_text', 'VISITOR MANAGEMENT SYSTEM'),
(34, 'term_conditions', '<p>1. The visitor must remove the footwear except in the waiting room.</p>\r\n<p>2. Visitors must dress neatly and politely</p>\r\n<p>3. Visitors must use identification during their stay at JMO</p>\r\n<p>4. Visitors are prohibited from smoking, carrying sharp weapons, pets and anything that disturbs comfort</p>\r\n<p>5. Visitors are prohibited from using the room for political activities, activities that are provocative, radical activities, activities related to racism, activities that trigger national divisions and other activities that threaten security and comfort.</p>\r\n<p>6. Visitor visiting hours: 08:00 - 17:00</p>\r\n<p>7. Visitor knows and agrees to all data input on the Vizita application.</p>\r\n<p><strong><em>(Bahasa)</em></strong></p>\r\n<p>1. Visitor harus melepaskan alas kaki kecuali di ruang tunggu.</p>\r\n<p><br />2. Visitor wajib berpakaian rapih dan sopan</p>\r\n<p><br />3. Visitor wajib menggunakan tanda pengenal selama di JMO</p>\r\n<p><br />4. Visitor dilarang merokok, membawa senjata tajam, hewan peliharaan dan segala sesuatu yang mengganggu kenyamanan</p>\r\n<p><br />5. Visitor dilarang menggunakan ruangan untuk kegiatan politik, kegiatan yang bersifat provokatif, kegiatan radikal, kegiatan berbau rasisme, kegiatan yang memicu perpecahan bangsa dan kegiatan lain yang mengancam keamanan dan kenyamanan.</p>\r\n<p><br />6. Jam kunjung Visitor : 08:00 - 17:00</p>\r\n<p><br />7. Visitor mengetahui dan setuju terhadap segala data yang di input pada aplikasi Vizita.</p>'),
(35, 'help_content', '<p><strong>Vizita FAQ :</strong></p>\r\n<p><strong>1. What is Vizita?</strong></p>\r\n<p>Vizita is a new way to record information about who is visiting, substitute for incoming books at the reception desk. This consists of a cellphone, tablet and kioskey that visitors or recipients use to enter their information. then send an email to let you know that visitors and receptionists have a schedule for the meeting</p>\r\n<p>&nbsp;</p>\r\n<p><strong>2. As a receptionist, how do you know that someone is looking for me?</strong></p>\r\n<p>You will get an email and notification on your cellphone containing a notification that a visitor is coming.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3. Where is my information stored?</strong></p>\r\n<p>The physical server is on the Cloud Server. Vizita is very concerned about data privacy and complies with all the necessary regulations.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>4. If the system doesn\'t work, what do you do?</strong></p>\r\n<p>For customer service and technical support, please contact:&nbsp;<strong>085732786462</strong>. Support is also available at email: vizita@jababekainfra.com</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5. Where can I find more information about Vizita?</strong></p>\r\n<p>You can email to vizita@jababekainfra.com, or call us at&nbsp;<strong>085732786462</strong>, we will be happy to answer all your questions</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Vizita FAQ (Bahasa):</strong></p>\r\n<p><strong>1. Apa itu Vizita?</strong></p>\r\n<p>Vizita adalah cara baru untuk merekam informasi tentang siapa yang mengunjungi, pengganti buku masuk yang ada di meja resepsionis. Ini terdiri dari HP, Tablet dan Kioskey yang di&nbsp;gunakan pengunjung atau penerima tamu untuk memasukkan informasi mereka. kemudian mengirim email untuk memberi tahu bahwa pengunjung dan penerima tamu memiliki jadwal untuk pertemuan</p>\r\n<p>&nbsp;</p>\r\n<p><strong>2. Sebagai penerima tamu, bagaimana tau bahwa ada seseorang yang mencari saya?</strong></p>\r\n<p>Kamu akan mendapatkan email dan notifikasi di HP yang berisi pemberitahuan bahwa ada pengunjung datang.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3. Dimana informasi saya di simpan?</strong></p>\r\n<p>Secara server fisik berada di Cloud Server. Vizita sangat memperhatikan privasi data dan mematuhi semua peraturan yang diperlukan.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>4. Jika system tidak bekerja, apa yang dilakukan?</strong></p>\r\n<p>Untuk customer service dan tehnikal support, tolong hubungi : <strong>085732786462</strong>. Support juga tersedia di email : vizita@jababekainfra.com</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5. Dimana saya bisa mencari informasi lebih banyak tentang Vizita?</strong></p>\r\n<p>Kamu bisa email ke vizita@jababekainfra.com, atau telfon kami di <strong>085732786462</strong>, kami akan senang menjawab semua pertanyaan kamu</p>\r\n<p>&nbsp;</p>'),
(36, 'background', 'bg_20191017143522.jpg'),
(37, 'CRON Last Run', '2020-03-23 11:29:01'),
(38, 'printer_count', '-298'),
(39, 'faq_content', '<p><strong>Vizita FAQ :</strong></p>\r\n<p><strong>1. What is Vizita?</strong></p>\r\n<p>Vizita is a new way to record information about who is visiting, substitute for incoming books at the reception desk. This consists of a cellphone, tablet and kioskey that visitors or recipients use to enter their information. then send an email to let you know that visitors and receptionists have a schedule for the meeting</p>\r\n<p>&nbsp;</p>\r\n<p><strong>2. As a receptionist, how do you know that someone is looking for me?</strong></p>\r\n<p>You will get an email and notification on your cellphone containing a notification that a visitor is coming.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3. Where is my information stored?</strong></p>\r\n<p>The physical server is on the Cloud Server. Vizita is very concerned about data privacy and complies with all the necessary regulations.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>4. If the system doesn\'t work, what do you do?</strong></p>\r\n<p>For customer service and technical support, please contact:&nbsp;<strong>085732786462</strong>. Support is also available at email: vizita@jababekainfra.com</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5. Where can I find more information about Vizita?</strong></p>\r\n<p>You can email to vizita@jababekainfra.com, or call us at&nbsp;<strong>085732786462</strong>, we will be happy to answer all your questions</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Vizita FAQ (Bahasa):</strong></p>\r\n<p><strong>1. Apa itu Vizita?</strong></p>\r\n<p>Vizita adalah cara baru untuk merekam informasi tentang siapa yang mengunjungi, pengganti buku masuk yang ada di meja resepsionis. Ini terdiri dari HP, Tablet dan Kioskey yang di&nbsp;gunakan pengunjung atau penerima tamu untuk memasukkan informasi mereka. kemudian mengirim email untuk memberi tahu bahwa pengunjung dan penerima tamu memiliki jadwal untuk pertemuan</p>\r\n<p>&nbsp;</p>\r\n<p><strong>2. Sebagai penerima tamu, bagaimana tau bahwa ada seseorang yang mencari saya?</strong></p>\r\n<p>Kamu akan mendapatkan email dan notifikasi di HP yang berisi pemberitahuan bahwa ada pengunjung datang.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3. Dimana informasi saya di simpan?</strong></p>\r\n<p>Secara server fisik berada di Cloud Server. Vizita sangat memperhatikan privasi data dan mematuhi semua peraturan yang diperlukan.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>4. Jika system tidak bekerja, apa yang dilakukan?</strong></p>\r\n<p>Untuk customer service dan tehnikal support, tolong hubungi :&nbsp;<strong>085732786462</strong>. Support juga tersedia di email : vizita@jababekainfra.com</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5. Dimana saya bisa mencari informasi lebih banyak tentang Vizita?</strong></p>\r\n<p>Kamu bisa email ke vizita@jababekainfra.com, atau telfon kami di&nbsp;<strong>085732786462</strong>, kami akan senang menjawab semua pertanyaan kamu</p>\r\n<p>&nbsp;</p>'),
(40, 'term_conditions_id', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">1. Visitor harus melepaskan alas kaki kecuali di ruang tunggu.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><br style=\"box-sizing: border-box;\" />2. Visitor wajib berpakaian rapih dan sopan</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><br style=\"box-sizing: border-box;\" />3. Visitor wajib menggunakan tanda pengenal selama di JMO</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><br style=\"box-sizing: border-box;\" />4. Visitor dilarang merokok, membawa senjata tajam, hewan peliharaan dan segala sesuatu yang mengganggu kenyamanan</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><br style=\"box-sizing: border-box;\" />5. Visitor dilarang menggunakan ruangan untuk kegiatan politik, kegiatan yang bersifat provokatif, kegiatan radikal, kegiatan berbau rasisme, kegiatan yang memicu perpecahan bangsa dan kegiatan lain yang mengancam keamanan dan kenyamanan.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><br style=\"box-sizing: border-box;\" />6. Jam kunjung Visitor : 08:00 - 17:00</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><br style=\"box-sizing: border-box;\" />7. Visitor mengetahui dan setuju terhadap segala data yang di input pada aplikasi Vizita.</p>'),
(41, 'faq_content_id', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Vizita FAQ (Bahasa):</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">1. Apa itu Vizita?</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">Vizita adalah cara baru untuk merekam informasi tentang siapa yang mengunjungi, pengganti buku masuk yang ada di meja resepsionis. Ini terdiri dari HP, Tablet dan Kioskey yang di&nbsp;gunakan pengunjung atau penerima tamu untuk memasukkan informasi mereka. kemudian mengirim email untuk memberi tahu bahwa pengunjung dan penerima tamu memiliki jadwal untuk pertemuan</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">2. Sebagai penerima tamu, bagaimana tau bahwa ada seseorang yang mencari saya?</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">Kamu akan mendapatkan email dan notifikasi di HP yang berisi pemberitahuan bahwa ada pengunjung datang.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">3. Dimana informasi saya di simpan?</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">Secara server fisik berada di Cloud Server. Vizita sangat memperhatikan privasi data dan mematuhi semua peraturan yang diperlukan.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">4. Jika system tidak bekerja, apa yang dilakukan?</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">Untuk customer service dan tehnikal support, tolong hubungi :&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">085732786462</span>. Support juga tersedia di email : vizita@jababekainfra.com</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">5. Dimana saya bisa mencari informasi lebih banyak tentang Vizita?</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">Kamu bisa email ke vizita@jababekainfra.com, atau telfon kami di&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">085732786462</span>, kami akan senang menjawab semua pertanyaan kamu</p>'),
(42, 'term_conditions_en', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">1. The visitor must remove the footwear except in the waiting room.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">2. Visitors must dress neatly and politely</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">3. Visitors must use identification during their stay at JMO</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">4. Visitors are prohibited from smoking, carrying sharp weapons, pets and anything that disturbs comfort</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">5. Visitors are prohibited from using the room for political activities, activities that are provocative, radical activities, activities related to racism, activities that trigger national divisions and other activities that threaten security and comfort.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">6. Visitor visiting hours: 08:00 - 17:00</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">7. Visitor knows and agrees to all data input on the Vizita application.</p>'),
(43, 'faq_content_en', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Vizita FAQ :</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">1. What is Vizita?</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">Vizita is a new way to record information about who is visiting, substitute for incoming books at the reception desk. This consists of a cellphone, tablet and kioskey that visitors or recipients use to enter their information. then send an email to let you know that visitors and receptionists have a schedule for the meeting</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">2. As a receptionist, how do you know that someone is looking for me?</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">You will get an email and notification on your cellphone containing a notification that a visitor is coming.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">3. Where is my information stored?</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">The physical server is on the Cloud Server. Vizita is very concerned about data privacy and complies with all the necessary regulations.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">4. If the system doesn\'t work, what do you do?</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">For customer service and technical support, please contact:&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">085732786462</span>. Support is also available at email: vizita@jababekainfra.com</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">5. Where can I find more information about Vizita?</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Quicksand, \'Open Sans\', Arial; color: #212529; font-size: 16px; background-color: #ffffff;\">You can email to vizita@jababekainfra.com, or call us at&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">085732786462</span>, we will be happy to answer all your questions</p>'),
(44, 'target_harian', '1500000'),
(45, 'target_bulanan', '500000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_role`
--

CREATE TABLE `m_role` (
  `id_role` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_role`
--

INSERT INTO `m_role` (`id_role`, `role_name`, `level`) VALUES
(1, 'Administrator', 'Administrator'),
(3, 'Kasir', 'Kasir'),
(4, 'Server', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_role_link`
--

CREATE TABLE `m_role_link` (
  `id_role_link` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `can_access` int(11) NOT NULL DEFAULT 0,
  `can_create` int(11) NOT NULL DEFAULT 0,
  `can_modify` int(11) NOT NULL DEFAULT 0,
  `can_delete` int(11) NOT NULL DEFAULT 0,
  `see_restricted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_role_link`
--

INSERT INTO `m_role_link` (`id_role_link`, `id_role`, `id_menu`, `can_access`, `can_create`, `can_modify`, `can_delete`, `see_restricted`) VALUES
(790, 2, 14, 1, 0, 1, 0, 1),
(791, 2, 15, 1, 1, 1, 0, 1),
(794, 2, 18, 1, 0, 1, 0, 1),
(795, 2, 19, 0, 0, 0, 0, 0),
(796, 2, 20, 0, 0, 0, 0, 0),
(797, 2, 21, 0, 0, 0, 0, 0),
(801, 2, 25, 0, 0, 0, 0, 0),
(802, 2, 26, 0, 0, 0, 0, 0),
(803, 2, 27, 0, 0, 0, 0, 0),
(804, 2, 28, 0, 0, 0, 0, 0),
(805, 2, 29, 0, 0, 0, 0, 0),
(806, 2, 30, 1, 0, 1, 0, 1),
(818, 2, 43, 0, 0, 0, 0, 0),
(1155, 3, 14, 1, 0, 0, 0, 0),
(1156, 3, 15, 0, 0, 0, 0, 0),
(1157, 3, 18, 1, 0, 0, 0, 0),
(1158, 3, 19, 1, 1, 0, 0, 0),
(1159, 3, 25, 1, 1, 1, 1, 1),
(1160, 3, 26, 1, 1, 1, 1, 1),
(1161, 3, 27, 1, 1, 1, 1, 1),
(1162, 3, 28, 0, 0, 0, 0, 0),
(1163, 3, 29, 0, 0, 0, 0, 0),
(1164, 3, 30, 1, 0, 1, 0, 1),
(1165, 3, 43, 0, 0, 0, 0, 0),
(1166, 3, 44, 1, 0, 1, 1, 1),
(1167, 3, 45, 1, 1, 1, 1, 1),
(1168, 3, 46, 0, 0, 0, 0, 0),
(1169, 3, 47, 1, 1, 1, 1, 1),
(1170, 3, 48, 0, 0, 0, 0, 0),
(1171, 3, 49, 0, 0, 0, 0, 0),
(1172, 3, 50, 0, 0, 0, 0, 0),
(1173, 3, 51, 1, 1, 1, 1, 1),
(1174, 3, 52, 0, 0, 0, 0, 0),
(1175, 3, 53, 0, 0, 0, 0, 0),
(1176, 3, 54, 1, 1, 1, 1, 1),
(1177, 3, 55, 0, 0, 0, 0, 0),
(1178, 3, 56, 0, 0, 0, 0, 0),
(1179, 3, 57, 0, 0, 0, 0, 0),
(1180, 3, 58, 0, 0, 0, 0, 0),
(1181, 3, 59, 0, 0, 0, 0, 0),
(1182, 3, 60, 0, 0, 0, 0, 0),
(1183, 3, 61, 0, 0, 0, 0, 0),
(1184, 3, 62, 1, 1, 1, 1, 1),
(1185, 3, 63, 1, 1, 1, 1, 1),
(1414, 1, 14, 1, 0, 1, 1, 1),
(1415, 1, 15, 0, 0, 0, 0, 0),
(1416, 1, 18, 1, 0, 1, 1, 1),
(1417, 1, 19, 1, 1, 1, 1, 1),
(1418, 1, 25, 1, 1, 1, 1, 1),
(1419, 1, 26, 1, 1, 1, 1, 1),
(1420, 1, 27, 1, 1, 1, 1, 1),
(1421, 1, 28, 0, 0, 0, 0, 0),
(1422, 1, 29, 1, 1, 1, 1, 1),
(1423, 1, 30, 1, 0, 1, 1, 1),
(1424, 1, 43, 0, 0, 0, 0, 0),
(1425, 1, 44, 1, 0, 1, 1, 1),
(1426, 1, 45, 1, 1, 1, 1, 1),
(1427, 1, 46, 1, 1, 1, 1, 1),
(1428, 1, 47, 1, 1, 1, 1, 1),
(1429, 1, 48, 0, 0, 0, 0, 0),
(1430, 1, 49, 0, 0, 0, 0, 0),
(1431, 1, 50, 1, 1, 1, 1, 1),
(1432, 1, 51, 1, 1, 1, 1, 1),
(1433, 1, 52, 0, 0, 0, 0, 0),
(1434, 1, 53, 0, 0, 0, 0, 0),
(1435, 1, 54, 1, 1, 1, 1, 1),
(1436, 1, 55, 0, 0, 0, 0, 0),
(1437, 1, 56, 1, 1, 1, 1, 1),
(1438, 1, 57, 1, 1, 1, 1, 1),
(1439, 1, 58, 1, 1, 1, 1, 1),
(1440, 1, 59, 1, 1, 1, 1, 1),
(1441, 1, 60, 0, 0, 0, 0, 0),
(1442, 1, 61, 0, 0, 0, 0, 0),
(1443, 1, 63, 0, 0, 0, 0, 0),
(1444, 1, 64, 1, 1, 1, 1, 1),
(1445, 1, 65, 1, 1, 1, 1, 1),
(1446, 1, 66, 1, 1, 1, 1, 1),
(1447, 1, 67, 1, 1, 1, 1, 1),
(1448, 1, 68, 1, 1, 1, 1, 1),
(1449, 1, 69, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_barang_masuk`
--

CREATE TABLE `t_barang_masuk` (
  `id_barang_masuk` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `is_lock` varchar(1) NOT NULL DEFAULT 'N',
  `input_by` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_barang_masuk_item`
--

CREATE TABLE `t_barang_masuk_item` (
  `id_barang_masuk_item` int(11) NOT NULL,
  `id_barang_masuk` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_document_history`
--

CREATE TABLE `t_document_history` (
  `id_document_history` int(11) NOT NULL,
  `id_karyawan` int(11) DEFAULT NULL,
  `id_content` int(11) DEFAULT NULL,
  `type_content` varchar(30) DEFAULT NULL,
  `action` varchar(15) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_document_history`
--

INSERT INTO `t_document_history` (`id_document_history`, `id_karyawan`, `id_content`, `type_content`, `action`, `description`, `details`, `date`) VALUES
(1, 1, 1, 'm_jenis_barang', 'update', 'Updated a JenisBarang', '{\"nama_jenis_barang\":\"Soccer 2\"}', '2020-07-16 11:38:17'),
(2, 1, 32, 'm_merk', 'create', 'Created a Merk', '{\"id_merk\":32,\"nama_merk\":\"Test\"}', '2020-07-16 11:39:53'),
(3, 1, 1, 't_stock_opname', 'create', 'Created a StockOpname', '{\"keterangan\":\"test\",\"tanggal\":\"2020-07-16\",\"input_by\":\"Galetto\",\"id_stock_opname\":1}', '2020-07-16 15:49:58'),
(4, 1, 1, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"903\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1}', '2020-07-16 15:49:59'),
(5, 1, 2, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"916\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":2}', '2020-07-16 15:49:59'),
(6, 1, 3, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"900\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":3}', '2020-07-16 15:49:59'),
(7, 1, 4, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"914\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":4}', '2020-07-16 15:49:59'),
(8, 1, 5, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"913\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":5}', '2020-07-16 15:49:59'),
(9, 1, 6, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"912\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":6}', '2020-07-16 15:49:59'),
(10, 1, 7, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"911\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":7}', '2020-07-16 15:49:59'),
(11, 1, 8, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"910\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":8}', '2020-07-16 15:49:59'),
(12, 1, 9, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"904\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":9}', '2020-07-16 15:49:59'),
(13, 1, 10, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"899\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":10}', '2020-07-16 15:49:59'),
(14, 1, 11, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"898\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":11}', '2020-07-16 15:49:59'),
(15, 1, 12, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"897\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":12}', '2020-07-16 15:49:59'),
(16, 1, 13, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"908\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":13}', '2020-07-16 15:49:59'),
(17, 1, 14, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"907\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":14}', '2020-07-16 15:49:59'),
(18, 1, 15, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"906\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":15}', '2020-07-16 15:49:59'),
(19, 1, 16, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"902\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":16}', '2020-07-16 15:49:59'),
(20, 1, 17, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"905\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":17}', '2020-07-16 15:49:59'),
(21, 1, 18, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"918\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":18}', '2020-07-16 15:49:59'),
(22, 1, 19, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"919\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":19}', '2020-07-16 15:49:59'),
(23, 1, 20, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"920\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":20}', '2020-07-16 15:50:00'),
(24, 1, 21, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"923\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":21}', '2020-07-16 15:50:00'),
(25, 1, 22, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"909\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":22}', '2020-07-16 15:50:00'),
(26, 1, 23, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"924\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":23}', '2020-07-16 15:50:00'),
(27, 1, 24, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"925\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":24}', '2020-07-16 15:50:00'),
(28, 1, 25, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"926\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":25}', '2020-07-16 15:50:00'),
(29, 1, 26, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"917\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":26}', '2020-07-16 15:50:00'),
(30, 1, 27, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"921\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":27}', '2020-07-16 15:50:00'),
(31, 1, 28, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"901\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":28}', '2020-07-16 15:50:00'),
(32, 1, 29, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"915\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":29}', '2020-07-16 15:50:00'),
(33, 1, 30, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"976\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":1,\"id_stock_opname_item\":30}', '2020-07-16 15:50:00'),
(34, 1, 31, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"973\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":1,\"id_stock_opname_item\":31}', '2020-07-16 15:50:00'),
(35, 1, 32, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"975\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":1,\"id_stock_opname_item\":32}', '2020-07-16 15:50:00'),
(36, 1, 33, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"974\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":1,\"id_stock_opname_item\":33}', '2020-07-16 15:50:00'),
(37, 1, 34, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"977\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":1,\"id_stock_opname_item\":34}', '2020-07-16 15:50:00'),
(38, 1, 35, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"968\",\"qty_before\":\"7\",\"qty_after\":\"0\",\"qty_miss\":-7,\"id_stock_opname\":1,\"id_stock_opname_item\":35}', '2020-07-16 15:50:00'),
(39, 1, 36, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"967\",\"qty_before\":\"11\",\"qty_after\":\"0\",\"qty_miss\":-11,\"id_stock_opname\":1,\"id_stock_opname_item\":36}', '2020-07-16 15:50:01'),
(40, 1, 37, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"969\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":1,\"id_stock_opname_item\":37}', '2020-07-16 15:50:01'),
(41, 1, 38, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"240\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":38}', '2020-07-16 15:50:01'),
(42, 1, 39, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"238\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":39}', '2020-07-16 15:50:01'),
(43, 1, 40, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"237\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":40}', '2020-07-16 15:50:01'),
(44, 1, 41, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"236\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":41}', '2020-07-16 15:50:01'),
(45, 1, 42, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"239\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":42}', '2020-07-16 15:50:01'),
(46, 1, 43, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"306\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":43}', '2020-07-16 15:50:02'),
(47, 1, 44, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"305\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":44}', '2020-07-16 15:50:02'),
(48, 1, 45, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"307\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":45}', '2020-07-16 15:50:02'),
(49, 1, 46, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"309\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":46}', '2020-07-16 15:50:02'),
(50, 1, 47, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"308\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":47}', '2020-07-16 15:50:02'),
(51, 1, 48, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1102\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":48}', '2020-07-16 15:50:02'),
(52, 1, 49, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"959\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":1,\"id_stock_opname_item\":49}', '2020-07-16 15:50:02'),
(53, 1, 50, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1087\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":50}', '2020-07-16 15:50:02'),
(54, 1, 51, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1103\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":51}', '2020-07-16 15:50:03'),
(55, 1, 2, 't_stock_opname', 'create', 'Created a StockOpname', '{\"keterangan\":\"test\",\"tanggal\":\"2020-07-16\",\"input_by\":\"Galetto\",\"id_stock_opname\":2}', '2020-07-16 15:50:03'),
(56, 1, 52, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1124\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":52}', '2020-07-16 15:50:03'),
(57, 1, 53, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"903\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":53}', '2020-07-16 15:50:03'),
(58, 1, 54, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"952\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":54}', '2020-07-16 15:50:03'),
(59, 1, 55, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"953\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":55}', '2020-07-16 15:50:04'),
(60, 1, 56, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"916\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":56}', '2020-07-16 15:50:04'),
(61, 1, 3, 't_stock_opname', 'create', 'Created a StockOpname', '{\"keterangan\":\"test\",\"tanggal\":\"2020-07-16\",\"input_by\":\"Galetto\",\"id_stock_opname\":3}', '2020-07-16 15:50:04'),
(62, 1, 57, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"786\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":57}', '2020-07-16 15:50:05'),
(63, 1, 58, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"900\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":58}', '2020-07-16 15:50:05'),
(64, 1, 59, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"785\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":59}', '2020-07-16 15:50:06'),
(65, 1, 60, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"914\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":60}', '2020-07-16 15:50:06'),
(66, 1, 62, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"913\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":62}', '2020-07-16 15:50:06'),
(67, 1, 61, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"788\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":61}', '2020-07-16 15:50:06'),
(68, 1, 63, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"903\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":63}', '2020-07-16 15:50:06'),
(69, 1, 65, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1049\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":1,\"id_stock_opname_item\":65}', '2020-07-16 15:50:06'),
(70, 1, 64, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"912\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":64}', '2020-07-16 15:50:06'),
(71, 1, 66, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"916\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":66}', '2020-07-16 15:50:06'),
(72, 1, 67, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"911\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":67}', '2020-07-16 15:50:06'),
(73, 1, 68, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"900\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":68}', '2020-07-16 15:50:06'),
(74, 1, 69, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1051\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":1,\"id_stock_opname_item\":69}', '2020-07-16 15:50:06'),
(75, 1, 70, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"910\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":70}', '2020-07-16 15:50:07'),
(76, 1, 71, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1052\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":1,\"id_stock_opname_item\":71}', '2020-07-16 15:50:07'),
(77, 1, 72, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"914\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":72}', '2020-07-16 15:50:07'),
(78, 1, 73, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"904\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":73}', '2020-07-16 15:50:07'),
(79, 1, 74, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1053\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":1,\"id_stock_opname_item\":74}', '2020-07-16 15:50:07'),
(80, 1, 75, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"913\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":75}', '2020-07-16 15:50:07'),
(81, 1, 76, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"899\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":76}', '2020-07-16 15:50:07'),
(82, 1, 77, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1054\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":1,\"id_stock_opname_item\":77}', '2020-07-16 15:50:07'),
(83, 1, 78, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"912\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":78}', '2020-07-16 15:50:07'),
(84, 1, 79, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"898\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":79}', '2020-07-16 15:50:07'),
(85, 1, 80, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"911\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":80}', '2020-07-16 15:50:07'),
(86, 1, 81, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1050\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":1,\"id_stock_opname_item\":81}', '2020-07-16 15:50:07'),
(87, 1, 82, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"897\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":82}', '2020-07-16 15:50:07'),
(88, 1, 83, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"910\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":83}', '2020-07-16 15:50:07'),
(89, 1, 84, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1055\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":1,\"id_stock_opname_item\":84}', '2020-07-16 15:50:07'),
(90, 1, 85, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"908\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":85}', '2020-07-16 15:50:07'),
(91, 1, 4, 't_stock_opname', 'create', 'Created a StockOpname', '{\"keterangan\":\"test\",\"tanggal\":\"2020-07-16\",\"input_by\":\"Galetto\",\"id_stock_opname\":4}', '2020-07-16 15:50:07'),
(92, 1, 87, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"904\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":87}', '2020-07-16 15:50:07'),
(93, 1, 86, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"352\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":86}', '2020-07-16 15:50:07'),
(94, 1, 88, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"907\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":88}', '2020-07-16 15:50:07'),
(95, 1, 89, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"903\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":89}', '2020-07-16 15:50:07'),
(96, 1, 91, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"899\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":91}', '2020-07-16 15:50:07'),
(97, 1, 90, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"353\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":90}', '2020-07-16 15:50:07'),
(98, 1, 93, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"916\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":93}', '2020-07-16 15:50:07'),
(99, 1, 92, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"906\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":92}', '2020-07-16 15:50:07'),
(100, 1, 94, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"898\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":94}', '2020-07-16 15:50:07'),
(101, 1, 95, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"351\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":95}', '2020-07-16 15:50:07'),
(102, 1, 96, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"900\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":96}', '2020-07-16 15:50:07'),
(103, 1, 97, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"902\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":97}', '2020-07-16 15:50:07'),
(104, 1, 98, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"897\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":98}', '2020-07-16 15:50:07'),
(105, 1, 99, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"356\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":99}', '2020-07-16 15:50:07'),
(106, 1, 100, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"914\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":100}', '2020-07-16 15:50:08'),
(107, 1, 101, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"905\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":101}', '2020-07-16 15:50:08'),
(108, 1, 103, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"354\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":103}', '2020-07-16 15:50:08'),
(109, 1, 102, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"908\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":102}', '2020-07-16 15:50:08'),
(110, 1, 104, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"918\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":104}', '2020-07-16 15:50:08'),
(111, 1, 105, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"913\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":105}', '2020-07-16 15:50:08'),
(112, 1, 106, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"357\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":106}', '2020-07-16 15:50:08'),
(113, 1, 107, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"907\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":107}', '2020-07-16 15:50:08'),
(114, 1, 108, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"919\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":108}', '2020-07-16 15:50:08'),
(115, 1, 109, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"912\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":109}', '2020-07-16 15:50:08'),
(116, 1, 110, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"358\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":110}', '2020-07-16 15:50:08'),
(117, 1, 111, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"906\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":111}', '2020-07-16 15:50:08'),
(118, 1, 113, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"920\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":113}', '2020-07-16 15:50:08'),
(119, 1, 112, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"911\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":112}', '2020-07-16 15:50:08'),
(120, 1, 114, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"359\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":114}', '2020-07-16 15:50:08'),
(121, 1, 115, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"902\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":115}', '2020-07-16 15:50:08'),
(122, 1, 117, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"910\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":117}', '2020-07-16 15:50:08'),
(123, 1, 116, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"923\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":116}', '2020-07-16 15:50:08'),
(124, 1, 119, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"348\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":119}', '2020-07-16 15:50:08'),
(125, 1, 118, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"905\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":118}', '2020-07-16 15:50:08'),
(126, 1, 120, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"904\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":120}', '2020-07-16 15:50:08'),
(127, 1, 122, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"349\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":122}', '2020-07-16 15:50:08'),
(128, 1, 121, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"909\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":121}', '2020-07-16 15:50:08'),
(129, 1, 123, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"918\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":123}', '2020-07-16 15:50:08'),
(130, 1, 125, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"899\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":125}', '2020-07-16 15:50:08'),
(131, 1, 124, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"924\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":124}', '2020-07-16 15:50:08'),
(132, 1, 126, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"355\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":126}', '2020-07-16 15:50:08'),
(133, 1, 127, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"919\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":127}', '2020-07-16 15:50:08'),
(134, 1, 129, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"925\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":129}', '2020-07-16 15:50:08'),
(135, 1, 128, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"898\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":128}', '2020-07-16 15:50:08'),
(136, 1, 130, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"350\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":130}', '2020-07-16 15:50:08'),
(137, 1, 131, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"920\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":131}', '2020-07-16 15:50:08'),
(138, 1, 132, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"926\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":132}', '2020-07-16 15:50:08'),
(139, 1, 133, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"897\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":133}', '2020-07-16 15:50:08'),
(140, 1, 134, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"383\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":134}', '2020-07-16 15:50:08'),
(141, 1, 135, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"923\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":135}', '2020-07-16 15:50:08'),
(142, 1, 136, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"917\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":136}', '2020-07-16 15:50:09'),
(143, 1, 137, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"908\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":137}', '2020-07-16 15:50:09'),
(144, 1, 138, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"400\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":138}', '2020-07-16 15:50:09'),
(145, 1, 139, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"909\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":139}', '2020-07-16 15:50:09'),
(146, 1, 141, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"907\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":141}', '2020-07-16 15:50:09'),
(147, 1, 140, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"921\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":140}', '2020-07-16 15:50:09'),
(148, 1, 142, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"399\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":142}', '2020-07-16 15:50:09'),
(149, 1, 143, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"924\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":143}', '2020-07-16 15:50:09'),
(150, 1, 145, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"906\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":145}', '2020-07-16 15:50:09'),
(151, 1, 144, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"901\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":144}', '2020-07-16 15:50:09'),
(152, 1, 146, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"398\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":146}', '2020-07-16 15:50:09'),
(153, 1, 147, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"925\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":147}', '2020-07-16 15:50:09'),
(154, 1, 149, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"902\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":149}', '2020-07-16 15:50:09'),
(155, 1, 148, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"915\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":148}', '2020-07-16 15:50:09'),
(156, 1, 150, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"403\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":150}', '2020-07-16 15:50:09'),
(157, 1, 151, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"926\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":151}', '2020-07-16 15:50:09'),
(158, 1, 152, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"976\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":2,\"id_stock_opname_item\":152}', '2020-07-16 15:50:09'),
(159, 1, 153, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"905\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":153}', '2020-07-16 15:50:09'),
(160, 1, 154, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"347\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":154}', '2020-07-16 15:50:09'),
(161, 1, 155, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"917\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":155}', '2020-07-16 15:50:09'),
(162, 1, 156, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"973\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":2,\"id_stock_opname_item\":156}', '2020-07-16 15:50:09'),
(163, 1, 157, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"918\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":157}', '2020-07-16 15:50:09'),
(164, 1, 158, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"402\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":158}', '2020-07-16 15:50:09'),
(165, 1, 159, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"921\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":159}', '2020-07-16 15:50:10'),
(166, 1, 160, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"919\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":160}', '2020-07-16 15:50:10'),
(167, 1, 161, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"975\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":2,\"id_stock_opname_item\":161}', '2020-07-16 15:50:10'),
(168, 1, 162, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"385\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":162}', '2020-07-16 15:50:10'),
(169, 1, 163, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"901\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":163}', '2020-07-16 15:50:10'),
(170, 1, 164, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"920\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":164}', '2020-07-16 15:50:10'),
(171, 1, 165, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"974\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":2,\"id_stock_opname_item\":165}', '2020-07-16 15:50:10'),
(172, 1, 166, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"384\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":166}', '2020-07-16 15:50:10'),
(173, 1, 167, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"915\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":167}', '2020-07-16 15:50:10'),
(174, 1, 169, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"923\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":169}', '2020-07-16 15:50:10'),
(175, 1, 170, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"382\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":170}', '2020-07-16 15:50:10'),
(176, 1, 168, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"977\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":2,\"id_stock_opname_item\":168}', '2020-07-16 15:50:10'),
(177, 1, 171, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"976\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":3,\"id_stock_opname_item\":171}', '2020-07-16 15:50:10'),
(178, 1, 173, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"968\",\"qty_before\":\"7\",\"qty_after\":\"0\",\"qty_miss\":-7,\"id_stock_opname\":2,\"id_stock_opname_item\":173}', '2020-07-16 15:50:10'),
(179, 1, 172, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"381\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":172}', '2020-07-16 15:50:10'),
(180, 1, 174, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"909\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":174}', '2020-07-16 15:50:10'),
(181, 1, 175, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"973\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":3,\"id_stock_opname_item\":175}', '2020-07-16 15:50:10'),
(182, 1, 178, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"967\",\"qty_before\":\"11\",\"qty_after\":\"0\",\"qty_miss\":-11,\"id_stock_opname\":2,\"id_stock_opname_item\":178}', '2020-07-16 15:50:10'),
(183, 1, 176, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"924\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":176}', '2020-07-16 15:50:10'),
(184, 1, 177, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"380\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":177}', '2020-07-16 15:50:10'),
(185, 1, 179, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"975\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":3,\"id_stock_opname_item\":179}', '2020-07-16 15:50:10'),
(186, 1, 180, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"969\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":2,\"id_stock_opname_item\":180}', '2020-07-16 15:50:10'),
(187, 1, 181, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"925\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":181}', '2020-07-16 15:50:10'),
(188, 1, 182, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"379\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":182}', '2020-07-16 15:50:10'),
(189, 1, 183, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"974\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":3,\"id_stock_opname_item\":183}', '2020-07-16 15:50:10'),
(190, 1, 184, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"240\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":184}', '2020-07-16 15:50:10'),
(191, 1, 185, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"401\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":185}', '2020-07-16 15:50:10'),
(192, 1, 186, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"926\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":186}', '2020-07-16 15:50:10'),
(193, 1, 187, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"977\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":3,\"id_stock_opname_item\":187}', '2020-07-16 15:50:10'),
(194, 1, 188, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"238\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":188}', '2020-07-16 15:50:11'),
(195, 1, 189, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"917\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":189}', '2020-07-16 15:50:11'),
(196, 1, 190, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"945\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":190}', '2020-07-16 15:50:11'),
(197, 1, 191, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"968\",\"qty_before\":\"7\",\"qty_after\":\"0\",\"qty_miss\":-7,\"id_stock_opname\":3,\"id_stock_opname_item\":191}', '2020-07-16 15:50:11'),
(198, 1, 192, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"237\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":192}', '2020-07-16 15:50:11'),
(199, 1, 194, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"967\",\"qty_before\":\"11\",\"qty_after\":\"0\",\"qty_miss\":-11,\"id_stock_opname\":3,\"id_stock_opname_item\":194}', '2020-07-16 15:50:11'),
(200, 1, 195, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"946\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":195}', '2020-07-16 15:50:11'),
(201, 1, 193, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"921\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":193}', '2020-07-16 15:50:11'),
(202, 1, 196, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"236\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":196}', '2020-07-16 15:50:11'),
(203, 1, 199, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"969\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":3,\"id_stock_opname_item\":199}', '2020-07-16 15:50:11'),
(204, 1, 197, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"901\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":197}', '2020-07-16 15:50:11'),
(205, 1, 198, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"948\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":198}', '2020-07-16 15:50:11'),
(206, 1, 200, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"239\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":200}', '2020-07-16 15:50:12'),
(207, 1, 203, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"240\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":203}', '2020-07-16 15:50:12'),
(208, 1, 201, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"915\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":201}', '2020-07-16 15:50:12'),
(209, 1, 202, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"944\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":202}', '2020-07-16 15:50:12'),
(210, 1, 204, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"306\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":204}', '2020-07-16 15:50:12'),
(211, 1, 205, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"238\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":205}', '2020-07-16 15:50:12'),
(212, 1, 207, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"976\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":4,\"id_stock_opname_item\":207}', '2020-07-16 15:50:12'),
(213, 1, 206, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"947\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":206}', '2020-07-16 15:50:12'),
(214, 1, 209, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"237\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":209}', '2020-07-16 15:50:12'),
(215, 1, 208, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"305\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":208}', '2020-07-16 15:50:12'),
(216, 1, 211, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"943\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":211}', '2020-07-16 15:50:12');
INSERT INTO `t_document_history` (`id_document_history`, `id_karyawan`, `id_content`, `type_content`, `action`, `description`, `details`, `date`) VALUES
(217, 1, 210, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"973\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":4,\"id_stock_opname_item\":210}', '2020-07-16 15:50:12'),
(218, 1, 212, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"236\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":212}', '2020-07-16 15:50:12'),
(219, 1, 213, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"307\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":213}', '2020-07-16 15:50:12'),
(220, 1, 215, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"249\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":215}', '2020-07-16 15:50:12'),
(221, 1, 214, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"975\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":4,\"id_stock_opname_item\":214}', '2020-07-16 15:50:12'),
(222, 1, 217, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"309\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":217}', '2020-07-16 15:50:13'),
(223, 1, 216, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"239\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":216}', '2020-07-16 15:50:13'),
(224, 1, 218, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"974\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":4,\"id_stock_opname_item\":218}', '2020-07-16 15:50:13'),
(225, 1, 219, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"247\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":219}', '2020-07-16 15:50:13'),
(226, 1, 220, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"308\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":220}', '2020-07-16 15:50:13'),
(227, 1, 221, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"306\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":221}', '2020-07-16 15:50:13'),
(228, 1, 223, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"248\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":223}', '2020-07-16 15:50:13'),
(229, 1, 222, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"977\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":4,\"id_stock_opname_item\":222}', '2020-07-16 15:50:13'),
(230, 1, 224, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1102\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":224}', '2020-07-16 15:50:13'),
(231, 1, 225, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"305\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":225}', '2020-07-16 15:50:13'),
(232, 1, 226, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"246\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":226}', '2020-07-16 15:50:13'),
(233, 1, 227, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"968\",\"qty_before\":\"7\",\"qty_after\":\"0\",\"qty_miss\":-7,\"id_stock_opname\":4,\"id_stock_opname_item\":227}', '2020-07-16 15:50:13'),
(234, 1, 228, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"959\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":2,\"id_stock_opname_item\":228}', '2020-07-16 15:50:13'),
(235, 1, 229, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"307\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":229}', '2020-07-16 15:50:13'),
(236, 1, 230, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"245\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":230}', '2020-07-16 15:50:13'),
(237, 1, 231, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"967\",\"qty_before\":\"11\",\"qty_after\":\"0\",\"qty_miss\":-11,\"id_stock_opname\":4,\"id_stock_opname_item\":231}', '2020-07-16 15:50:13'),
(238, 1, 232, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1087\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":232}', '2020-07-16 15:50:13'),
(239, 1, 233, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"309\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":233}', '2020-07-16 15:50:14'),
(240, 1, 234, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"298\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":234}', '2020-07-16 15:50:14'),
(241, 1, 235, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"969\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":4,\"id_stock_opname_item\":235}', '2020-07-16 15:50:14'),
(242, 1, 236, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1103\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":236}', '2020-07-16 15:50:14'),
(243, 1, 237, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"308\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":237}', '2020-07-16 15:50:14'),
(244, 1, 238, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"300\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":238}', '2020-07-16 15:50:14'),
(245, 1, 239, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"240\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":239}', '2020-07-16 15:50:14'),
(246, 1, 240, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1124\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":240}', '2020-07-16 15:50:14'),
(247, 1, 241, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1102\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":241}', '2020-07-16 15:50:14'),
(248, 1, 242, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"299\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":242}', '2020-07-16 15:50:14'),
(249, 1, 243, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"238\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":243}', '2020-07-16 15:50:14'),
(250, 1, 244, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"952\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":244}', '2020-07-16 15:50:14'),
(251, 1, 245, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"959\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":3,\"id_stock_opname_item\":245}', '2020-07-16 15:50:14'),
(252, 1, 246, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"297\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":246}', '2020-07-16 15:50:14'),
(253, 1, 247, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"237\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":247}', '2020-07-16 15:50:14'),
(254, 1, 248, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"953\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":248}', '2020-07-16 15:50:14'),
(255, 1, 249, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1087\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":249}', '2020-07-16 15:50:14'),
(256, 1, 250, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"296\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":250}', '2020-07-16 15:50:14'),
(257, 1, 252, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"786\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":252}', '2020-07-16 15:50:14'),
(258, 1, 251, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"236\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":251}', '2020-07-16 15:50:14'),
(259, 1, 253, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1103\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":253}', '2020-07-16 15:50:14'),
(260, 1, 254, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"599\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":254}', '2020-07-16 15:50:14'),
(261, 1, 256, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"785\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":256}', '2020-07-16 15:50:14'),
(262, 1, 255, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"239\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":255}', '2020-07-16 15:50:14'),
(263, 1, 257, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1124\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":257}', '2020-07-16 15:50:14'),
(264, 1, 258, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"568\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":258}', '2020-07-16 15:50:14'),
(265, 1, 259, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"788\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":259}', '2020-07-16 15:50:14'),
(266, 1, 260, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"306\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":260}', '2020-07-16 15:50:14'),
(267, 1, 261, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"952\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":261}', '2020-07-16 15:50:14'),
(268, 1, 262, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"569\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":262}', '2020-07-16 15:50:14'),
(269, 1, 264, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"305\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":264}', '2020-07-16 15:50:14'),
(270, 1, 263, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1049\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":2,\"id_stock_opname_item\":263}', '2020-07-16 15:50:14'),
(271, 1, 265, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"570\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":265}', '2020-07-16 15:50:14'),
(272, 1, 266, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"953\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":266}', '2020-07-16 15:50:14'),
(273, 1, 267, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"307\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":267}', '2020-07-16 15:50:14'),
(274, 1, 268, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1051\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":2,\"id_stock_opname_item\":268}', '2020-07-16 15:50:15'),
(275, 1, 270, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"786\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":270}', '2020-07-16 15:50:15'),
(276, 1, 269, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"571\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":269}', '2020-07-16 15:50:15'),
(277, 1, 271, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"309\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":271}', '2020-07-16 15:50:15'),
(278, 1, 272, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1052\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":2,\"id_stock_opname_item\":272}', '2020-07-16 15:50:15'),
(279, 1, 273, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"603\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":273}', '2020-07-16 15:50:15'),
(280, 1, 274, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"785\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":274}', '2020-07-16 15:50:15'),
(281, 1, 275, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"308\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":275}', '2020-07-16 15:50:15'),
(282, 1, 276, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1053\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":2,\"id_stock_opname_item\":276}', '2020-07-16 15:50:15'),
(283, 1, 277, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"597\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":277}', '2020-07-16 15:50:15'),
(284, 1, 278, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"788\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":278}', '2020-07-16 15:50:15'),
(285, 1, 279, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1054\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":2,\"id_stock_opname_item\":279}', '2020-07-16 15:50:15'),
(286, 1, 280, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1102\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":280}', '2020-07-16 15:50:15'),
(287, 1, 281, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1049\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":3,\"id_stock_opname_item\":281}', '2020-07-16 15:50:15'),
(288, 1, 282, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"598\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":282}', '2020-07-16 15:50:15'),
(289, 1, 283, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1050\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":2,\"id_stock_opname_item\":283}', '2020-07-16 15:50:15'),
(290, 1, 284, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"959\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":4,\"id_stock_opname_item\":284}', '2020-07-16 15:50:15'),
(291, 1, 285, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1051\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":3,\"id_stock_opname_item\":285}', '2020-07-16 15:50:15'),
(292, 1, 286, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"602\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":286}', '2020-07-16 15:50:15'),
(293, 1, 287, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1055\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":2,\"id_stock_opname_item\":287}', '2020-07-16 15:50:15'),
(294, 1, 288, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1087\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":288}', '2020-07-16 15:50:15'),
(295, 1, 289, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1052\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":3,\"id_stock_opname_item\":289}', '2020-07-16 15:50:15'),
(296, 1, 290, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"601\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":290}', '2020-07-16 15:50:15'),
(297, 1, 292, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"352\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":292}', '2020-07-16 15:50:15'),
(298, 1, 291, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1103\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":291}', '2020-07-16 15:50:15'),
(299, 1, 293, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1053\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":3,\"id_stock_opname_item\":293}', '2020-07-16 15:50:15'),
(300, 1, 294, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"604\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":294}', '2020-07-16 15:50:15'),
(301, 1, 295, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"353\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":295}', '2020-07-16 15:50:15'),
(302, 1, 296, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1124\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":296}', '2020-07-16 15:50:15'),
(303, 1, 297, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1054\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":3,\"id_stock_opname_item\":297}', '2020-07-16 15:50:15'),
(304, 1, 299, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"351\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":299}', '2020-07-16 15:50:15'),
(305, 1, 298, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"600\",\"qty_before\":\"43\",\"qty_after\":\"0\",\"qty_miss\":-43,\"id_stock_opname\":1,\"id_stock_opname_item\":298}', '2020-07-16 15:50:15'),
(306, 1, 300, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"952\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":300}', '2020-07-16 15:50:15'),
(307, 1, 303, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1050\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":3,\"id_stock_opname_item\":303}', '2020-07-16 15:50:15'),
(308, 1, 301, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"572\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":301}', '2020-07-16 15:50:15'),
(309, 1, 302, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"356\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":302}', '2020-07-16 15:50:15'),
(310, 1, 304, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"953\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":304}', '2020-07-16 15:50:15'),
(311, 1, 305, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"858\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":305}', '2020-07-16 15:50:15'),
(312, 1, 306, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"354\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":306}', '2020-07-16 15:50:15'),
(313, 1, 307, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1055\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":3,\"id_stock_opname_item\":307}', '2020-07-16 15:50:15'),
(314, 1, 308, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"786\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":308}', '2020-07-16 15:50:15'),
(315, 1, 309, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"859\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":309}', '2020-07-16 15:50:15'),
(316, 1, 310, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"357\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":310}', '2020-07-16 15:50:15'),
(317, 1, 311, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"352\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":311}', '2020-07-16 15:50:15'),
(318, 1, 312, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"785\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":312}', '2020-07-16 15:50:16'),
(319, 1, 313, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"860\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":313}', '2020-07-16 15:50:16'),
(320, 1, 315, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"353\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":315}', '2020-07-16 15:50:16'),
(321, 1, 314, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"358\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":314}', '2020-07-16 15:50:16'),
(322, 1, 316, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"788\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":316}', '2020-07-16 15:50:16'),
(323, 1, 318, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"359\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":318}', '2020-07-16 15:50:16'),
(324, 1, 317, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"852\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":1,\"id_stock_opname_item\":317}', '2020-07-16 15:50:16'),
(325, 1, 319, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"351\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":319}', '2020-07-16 15:50:16'),
(326, 1, 320, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1049\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":4,\"id_stock_opname_item\":320}', '2020-07-16 15:50:16'),
(327, 1, 321, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"861\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":321}', '2020-07-16 15:50:16'),
(328, 1, 322, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"348\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":322}', '2020-07-16 15:50:16'),
(329, 1, 323, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"356\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":323}', '2020-07-16 15:50:16'),
(330, 1, 324, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1051\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":4,\"id_stock_opname_item\":324}', '2020-07-16 15:50:16'),
(331, 1, 325, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"851\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":325}', '2020-07-16 15:50:16'),
(332, 1, 326, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"349\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":326}', '2020-07-16 15:50:16'),
(333, 1, 327, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"354\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":327}', '2020-07-16 15:50:16'),
(334, 1, 328, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1052\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":4,\"id_stock_opname_item\":328}', '2020-07-16 15:50:16'),
(335, 1, 329, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"850\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":329}', '2020-07-16 15:50:17'),
(336, 1, 330, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"355\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":330}', '2020-07-16 15:50:17'),
(337, 1, 331, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"357\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":331}', '2020-07-16 15:50:17'),
(338, 1, 332, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1053\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":4,\"id_stock_opname_item\":332}', '2020-07-16 15:50:17'),
(339, 1, 333, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"849\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":333}', '2020-07-16 15:50:17'),
(340, 1, 334, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"358\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":334}', '2020-07-16 15:50:18'),
(341, 1, 336, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1054\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":4,\"id_stock_opname_item\":336}', '2020-07-16 15:50:18'),
(342, 1, 335, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"350\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":335}', '2020-07-16 15:50:18'),
(343, 1, 337, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"848\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":337}', '2020-07-16 15:50:18'),
(344, 1, 338, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"847\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":338}', '2020-07-16 15:50:18'),
(345, 1, 339, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"359\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":339}', '2020-07-16 15:50:18'),
(346, 1, 341, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"383\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":341}', '2020-07-16 15:50:18'),
(347, 1, 340, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1050\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":4,\"id_stock_opname_item\":340}', '2020-07-16 15:50:18'),
(348, 1, 342, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"784\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":342}', '2020-07-16 15:50:18'),
(349, 1, 343, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"400\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":343}', '2020-07-16 15:50:18'),
(350, 1, 344, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"348\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":344}', '2020-07-16 15:50:18'),
(351, 1, 345, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1055\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":4,\"id_stock_opname_item\":345}', '2020-07-16 15:50:18'),
(352, 1, 346, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"846\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":346}', '2020-07-16 15:50:18'),
(353, 1, 347, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"399\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":347}', '2020-07-16 15:50:18'),
(354, 1, 348, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"349\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":348}', '2020-07-16 15:50:18'),
(355, 1, 349, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"352\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":349}', '2020-07-16 15:50:18'),
(356, 1, 350, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"782\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":350}', '2020-07-16 15:50:18'),
(357, 1, 351, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"398\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":351}', '2020-07-16 15:50:18'),
(358, 1, 352, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"355\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":352}', '2020-07-16 15:50:18'),
(359, 1, 353, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"353\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":353}', '2020-07-16 15:50:18'),
(360, 1, 354, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"403\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":354}', '2020-07-16 15:50:18'),
(361, 1, 355, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"781\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":355}', '2020-07-16 15:50:18'),
(362, 1, 356, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"350\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":356}', '2020-07-16 15:50:18'),
(363, 1, 357, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"351\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":357}', '2020-07-16 15:50:18'),
(364, 1, 358, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"780\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":358}', '2020-07-16 15:50:18'),
(365, 1, 359, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"347\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":359}', '2020-07-16 15:50:18'),
(366, 1, 360, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"383\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":360}', '2020-07-16 15:50:18'),
(367, 1, 361, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"356\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":361}', '2020-07-16 15:50:18'),
(368, 1, 363, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"402\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":363}', '2020-07-16 15:50:18'),
(369, 1, 362, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"783\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":362}', '2020-07-16 15:50:18'),
(370, 1, 364, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"400\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":364}', '2020-07-16 15:50:18'),
(371, 1, 365, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"354\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":365}', '2020-07-16 15:50:18'),
(372, 1, 366, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"857\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":366}', '2020-07-16 15:50:18'),
(373, 1, 367, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"385\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":367}', '2020-07-16 15:50:18'),
(374, 1, 368, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"399\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":368}', '2020-07-16 15:50:18'),
(375, 1, 369, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"357\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":369}', '2020-07-16 15:50:18'),
(376, 1, 371, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"384\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":371}', '2020-07-16 15:50:18'),
(377, 1, 372, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"398\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":372}', '2020-07-16 15:50:18'),
(378, 1, 370, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"966\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":1,\"id_stock_opname_item\":370}', '2020-07-16 15:50:18'),
(379, 1, 373, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"358\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":373}', '2020-07-16 15:50:18'),
(380, 1, 374, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"403\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":374}', '2020-07-16 15:50:19'),
(381, 1, 375, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"949\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":375}', '2020-07-16 15:50:19'),
(382, 1, 376, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"382\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":376}', '2020-07-16 15:50:19'),
(383, 1, 377, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"359\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":377}', '2020-07-16 15:50:19'),
(384, 1, 378, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"347\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":378}', '2020-07-16 15:50:19'),
(385, 1, 380, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"381\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":380}', '2020-07-16 15:50:19'),
(386, 1, 379, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"950\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":379}', '2020-07-16 15:50:19'),
(387, 1, 381, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"348\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":381}', '2020-07-16 15:50:19'),
(388, 1, 382, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"402\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":382}', '2020-07-16 15:50:19'),
(389, 1, 384, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"951\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":384}', '2020-07-16 15:50:19'),
(390, 1, 383, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"380\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":383}', '2020-07-16 15:50:19'),
(391, 1, 385, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"349\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":385}', '2020-07-16 15:50:21'),
(392, 1, 387, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"886\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":387}', '2020-07-16 15:50:21'),
(393, 1, 386, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"385\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":386}', '2020-07-16 15:50:21'),
(394, 1, 388, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"379\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":388}', '2020-07-16 15:50:21'),
(395, 1, 389, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"355\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":389}', '2020-07-16 15:50:22'),
(396, 1, 390, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"885\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":390}', '2020-07-16 15:50:22'),
(397, 1, 391, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"384\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":391}', '2020-07-16 15:50:22'),
(398, 1, 392, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"401\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":392}', '2020-07-16 15:50:22'),
(399, 1, 393, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"350\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":393}', '2020-07-16 15:50:22'),
(400, 1, 395, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"382\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":395}', '2020-07-16 15:50:22'),
(401, 1, 394, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"884\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":394}', '2020-07-16 15:50:22'),
(402, 1, 396, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"945\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":396}', '2020-07-16 15:50:22'),
(403, 1, 397, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"383\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":397}', '2020-07-16 15:50:22'),
(404, 1, 398, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"878\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":398}', '2020-07-16 15:50:22'),
(405, 1, 399, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"381\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":399}', '2020-07-16 15:50:22'),
(406, 1, 400, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"946\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":400}', '2020-07-16 15:50:22'),
(407, 1, 402, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"877\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":402}', '2020-07-16 15:50:22'),
(408, 1, 401, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"400\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":401}', '2020-07-16 15:50:22'),
(409, 1, 404, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"948\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":404}', '2020-07-16 15:50:22'),
(410, 1, 403, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"380\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":403}', '2020-07-16 15:50:22'),
(411, 1, 405, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"883\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":405}', '2020-07-16 15:50:22'),
(412, 1, 406, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"399\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":406}', '2020-07-16 15:50:22'),
(413, 1, 407, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"944\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":407}', '2020-07-16 15:50:22'),
(414, 1, 408, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"379\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":408}', '2020-07-16 15:50:22'),
(415, 1, 409, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"880\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":409}', '2020-07-16 15:50:22'),
(416, 1, 410, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"947\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":410}', '2020-07-16 15:50:22'),
(417, 1, 411, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"398\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":411}', '2020-07-16 15:50:22'),
(418, 1, 412, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"401\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":412}', '2020-07-16 15:50:22'),
(419, 1, 413, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"881\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":413}', '2020-07-16 15:50:22'),
(420, 1, 415, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"943\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":415}', '2020-07-16 15:50:22'),
(421, 1, 414, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"403\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":414}', '2020-07-16 15:50:22'),
(422, 1, 416, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"945\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":416}', '2020-07-16 15:50:22'),
(423, 1, 417, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"882\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":417}', '2020-07-16 15:50:22'),
(424, 1, 418, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"249\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":418}', '2020-07-16 15:50:22'),
(425, 1, 419, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"347\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":419}', '2020-07-16 15:50:22'),
(426, 1, 420, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"946\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":420}', '2020-07-16 15:50:22'),
(427, 1, 421, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"346\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":421}', '2020-07-16 15:50:22'),
(428, 1, 423, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"247\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":423}', '2020-07-16 15:50:22'),
(429, 1, 422, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"402\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":422}', '2020-07-16 15:50:22');
INSERT INTO `t_document_history` (`id_document_history`, `id_karyawan`, `id_content`, `type_content`, `action`, `description`, `details`, `date`) VALUES
(430, 1, 424, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"948\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":424}', '2020-07-16 15:50:22'),
(431, 1, 425, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"345\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":425}', '2020-07-16 15:50:22'),
(432, 1, 426, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"385\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":426}', '2020-07-16 15:50:22'),
(433, 1, 427, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"248\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":427}', '2020-07-16 15:50:22'),
(434, 1, 428, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"944\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":428}', '2020-07-16 15:50:22'),
(435, 1, 429, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"344\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":429}', '2020-07-16 15:50:22'),
(436, 1, 430, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"384\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":430}', '2020-07-16 15:50:22'),
(437, 1, 431, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"246\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":431}', '2020-07-16 15:50:22'),
(438, 1, 432, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"947\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":432}', '2020-07-16 15:50:22'),
(439, 1, 433, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"343\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":433}', '2020-07-16 15:50:22'),
(440, 1, 434, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"382\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":434}', '2020-07-16 15:50:22'),
(441, 1, 435, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"245\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":435}', '2020-07-16 15:50:22'),
(442, 1, 436, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"943\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":436}', '2020-07-16 15:50:22'),
(443, 1, 437, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"342\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":437}', '2020-07-16 15:50:22'),
(444, 1, 438, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"298\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":438}', '2020-07-16 15:50:22'),
(445, 1, 439, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"381\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":439}', '2020-07-16 15:50:22'),
(446, 1, 440, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"249\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":440}', '2020-07-16 15:50:22'),
(447, 1, 441, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"341\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":441}', '2020-07-16 15:50:22'),
(448, 1, 442, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"300\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":442}', '2020-07-16 15:50:22'),
(449, 1, 443, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"380\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":443}', '2020-07-16 15:50:22'),
(450, 1, 444, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"247\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":444}', '2020-07-16 15:50:22'),
(451, 1, 445, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"340\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":445}', '2020-07-16 15:50:22'),
(452, 1, 446, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"299\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":446}', '2020-07-16 15:50:22'),
(453, 1, 448, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"248\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":448}', '2020-07-16 15:50:22'),
(454, 1, 447, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"379\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":447}', '2020-07-16 15:50:22'),
(455, 1, 449, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"339\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":449}', '2020-07-16 15:50:23'),
(456, 1, 450, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"297\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":450}', '2020-07-16 15:50:23'),
(457, 1, 451, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"401\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":451}', '2020-07-16 15:50:23'),
(458, 1, 452, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"246\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":452}', '2020-07-16 15:50:23'),
(459, 1, 453, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"338\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":453}', '2020-07-16 15:50:23'),
(460, 1, 454, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"296\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":454}', '2020-07-16 15:50:23'),
(461, 1, 456, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"245\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":456}', '2020-07-16 15:50:23'),
(462, 1, 455, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"945\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":455}', '2020-07-16 15:50:23'),
(463, 1, 457, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1081\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":1,\"id_stock_opname_item\":457}', '2020-07-16 15:50:23'),
(464, 1, 458, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"599\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":458}', '2020-07-16 15:50:23'),
(465, 1, 459, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"946\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":459}', '2020-07-16 15:50:23'),
(466, 1, 460, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"298\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":460}', '2020-07-16 15:50:23'),
(467, 1, 461, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1082\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":1,\"id_stock_opname_item\":461}', '2020-07-16 15:50:23'),
(468, 1, 462, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"568\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":462}', '2020-07-16 15:50:23'),
(469, 1, 463, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"300\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":463}', '2020-07-16 15:50:23'),
(470, 1, 464, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"948\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":464}', '2020-07-16 15:50:23'),
(471, 1, 465, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"650\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":465}', '2020-07-16 15:50:23'),
(472, 1, 466, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"569\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":466}', '2020-07-16 15:50:23'),
(473, 1, 467, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"944\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":467}', '2020-07-16 15:50:23'),
(474, 1, 468, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"299\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":468}', '2020-07-16 15:50:23'),
(475, 1, 469, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"651\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":469}', '2020-07-16 15:50:23'),
(476, 1, 470, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"570\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":470}', '2020-07-16 15:50:23'),
(477, 1, 472, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"947\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":472}', '2020-07-16 15:50:23'),
(478, 1, 471, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"297\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":471}', '2020-07-16 15:50:23'),
(479, 1, 473, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"652\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":473}', '2020-07-16 15:50:23'),
(480, 1, 474, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"571\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":474}', '2020-07-16 15:50:23'),
(481, 1, 476, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"943\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":476}', '2020-07-16 15:50:23'),
(482, 1, 475, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"296\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":475}', '2020-07-16 15:50:23'),
(483, 1, 477, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"603\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":477}', '2020-07-16 15:50:23'),
(484, 1, 478, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"653\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":478}', '2020-07-16 15:50:23'),
(485, 1, 479, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"249\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":479}', '2020-07-16 15:50:23'),
(486, 1, 480, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"599\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":480}', '2020-07-16 15:50:23'),
(487, 1, 481, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"597\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":481}', '2020-07-16 15:50:23'),
(488, 1, 483, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"654\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":483}', '2020-07-16 15:50:23'),
(489, 1, 482, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"247\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":482}', '2020-07-16 15:50:23'),
(490, 1, 484, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"568\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":484}', '2020-07-16 15:50:23'),
(491, 1, 485, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"598\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":485}', '2020-07-16 15:50:23'),
(492, 1, 487, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"649\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":487}', '2020-07-16 15:50:23'),
(493, 1, 486, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"248\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":486}', '2020-07-16 15:50:23'),
(494, 1, 488, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"569\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":488}', '2020-07-16 15:50:23'),
(495, 1, 489, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"602\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":489}', '2020-07-16 15:50:23'),
(496, 1, 490, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"246\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":490}', '2020-07-16 15:50:23'),
(497, 1, 491, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"648\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":491}', '2020-07-16 15:50:23'),
(498, 1, 492, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"570\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":492}', '2020-07-16 15:50:23'),
(499, 1, 493, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"601\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":493}', '2020-07-16 15:50:23'),
(500, 1, 494, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"245\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":494}', '2020-07-16 15:50:23'),
(501, 1, 495, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"647\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":495}', '2020-07-16 15:50:23'),
(502, 1, 496, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"571\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":496}', '2020-07-16 15:50:23'),
(503, 1, 497, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"604\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":497}', '2020-07-16 15:50:23'),
(504, 1, 498, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"298\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":498}', '2020-07-16 15:50:24'),
(505, 1, 499, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"646\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":499}', '2020-07-16 15:50:24'),
(506, 1, 500, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"603\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":500}', '2020-07-16 15:50:24'),
(507, 1, 501, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"600\",\"qty_before\":\"43\",\"qty_after\":\"0\",\"qty_miss\":-43,\"id_stock_opname\":2,\"id_stock_opname_item\":501}', '2020-07-16 15:50:24'),
(508, 1, 502, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"300\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":502}', '2020-07-16 15:50:24'),
(509, 1, 503, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"645\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":503}', '2020-07-16 15:50:24'),
(510, 1, 504, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"597\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":504}', '2020-07-16 15:50:24'),
(511, 1, 506, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"299\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":506}', '2020-07-16 15:50:24'),
(512, 1, 505, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"572\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":505}', '2020-07-16 15:50:24'),
(513, 1, 507, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"988\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":507}', '2020-07-16 15:50:24'),
(514, 1, 508, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"598\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":508}', '2020-07-16 15:50:24'),
(515, 1, 510, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"858\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":510}', '2020-07-16 15:50:24'),
(516, 1, 509, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"297\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":509}', '2020-07-16 15:50:24'),
(517, 1, 511, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"989\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":511}', '2020-07-16 15:50:24'),
(518, 1, 512, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"602\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":512}', '2020-07-16 15:50:24'),
(519, 1, 514, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"859\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":514}', '2020-07-16 15:50:25'),
(520, 1, 513, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"296\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":513}', '2020-07-16 15:50:25'),
(521, 1, 515, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"990\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":515}', '2020-07-16 15:50:25'),
(522, 1, 516, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"601\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":516}', '2020-07-16 15:50:25'),
(523, 1, 517, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"860\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":517}', '2020-07-16 15:50:25'),
(524, 1, 518, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"599\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":518}', '2020-07-16 15:50:25'),
(525, 1, 519, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1072\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":519}', '2020-07-16 15:50:25'),
(526, 1, 520, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"604\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":520}', '2020-07-16 15:50:25'),
(527, 1, 521, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"852\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":2,\"id_stock_opname_item\":521}', '2020-07-16 15:50:25'),
(528, 1, 522, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"568\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":522}', '2020-07-16 15:50:25'),
(529, 1, 523, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1065\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":523}', '2020-07-16 15:50:25'),
(530, 1, 524, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"600\",\"qty_before\":\"43\",\"qty_after\":\"0\",\"qty_miss\":-43,\"id_stock_opname\":3,\"id_stock_opname_item\":524}', '2020-07-16 15:50:25'),
(531, 1, 525, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"861\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":525}', '2020-07-16 15:50:25'),
(532, 1, 527, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1066\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":527}', '2020-07-16 15:50:25'),
(533, 1, 526, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"569\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":526}', '2020-07-16 15:50:25'),
(534, 1, 528, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"572\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":528}', '2020-07-16 15:50:25'),
(535, 1, 529, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"851\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":529}', '2020-07-16 15:50:25'),
(536, 1, 530, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1073\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":530}', '2020-07-16 15:50:25'),
(537, 1, 531, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"570\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":531}', '2020-07-16 15:50:25'),
(538, 1, 532, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"858\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":532}', '2020-07-16 15:50:25'),
(539, 1, 533, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"850\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":533}', '2020-07-16 15:50:25'),
(540, 1, 534, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1071\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":534}', '2020-07-16 15:50:25'),
(541, 1, 535, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"571\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":535}', '2020-07-16 15:50:25'),
(542, 1, 536, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"859\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":536}', '2020-07-16 15:50:25'),
(543, 1, 537, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"849\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":537}', '2020-07-16 15:50:25'),
(544, 1, 538, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1070\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":538}', '2020-07-16 15:50:25'),
(545, 1, 540, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"603\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":540}', '2020-07-16 15:50:25'),
(546, 1, 539, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"860\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":539}', '2020-07-16 15:50:25'),
(547, 1, 542, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1068\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":542}', '2020-07-16 15:50:25'),
(548, 1, 541, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"848\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":541}', '2020-07-16 15:50:25'),
(549, 1, 544, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"852\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":3,\"id_stock_opname_item\":544}', '2020-07-16 15:50:26'),
(550, 1, 543, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"597\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":543}', '2020-07-16 15:50:26'),
(551, 1, 547, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"861\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":547}', '2020-07-16 15:50:26'),
(552, 1, 546, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"847\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":546}', '2020-07-16 15:50:26'),
(553, 1, 545, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1069\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":545}', '2020-07-16 15:50:26'),
(554, 1, 548, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"598\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":548}', '2020-07-16 15:50:26'),
(555, 1, 549, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"784\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":549}', '2020-07-16 15:50:26'),
(556, 1, 550, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1074\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":550}', '2020-07-16 15:50:26'),
(557, 1, 551, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"851\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":551}', '2020-07-16 15:50:26'),
(558, 1, 552, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"602\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":552}', '2020-07-16 15:50:26'),
(559, 1, 553, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"846\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":553}', '2020-07-16 15:50:26'),
(560, 1, 554, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"850\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":554}', '2020-07-16 15:50:26'),
(561, 1, 555, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1075\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":555}', '2020-07-16 15:50:26'),
(562, 1, 556, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"601\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":556}', '2020-07-16 15:50:26'),
(563, 1, 557, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"782\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":557}', '2020-07-16 15:50:26'),
(564, 1, 559, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1076\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":559}', '2020-07-16 15:50:26'),
(565, 1, 558, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"849\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":558}', '2020-07-16 15:50:26'),
(566, 1, 560, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"604\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":560}', '2020-07-16 15:50:26'),
(567, 1, 561, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"781\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":561}', '2020-07-16 15:50:26'),
(568, 1, 562, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1067\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":562}', '2020-07-16 15:50:26'),
(569, 1, 564, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"600\",\"qty_before\":\"43\",\"qty_after\":\"0\",\"qty_miss\":-43,\"id_stock_opname\":4,\"id_stock_opname_item\":564}', '2020-07-16 15:50:26'),
(570, 1, 563, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"848\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":563}', '2020-07-16 15:50:26'),
(571, 1, 565, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"780\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":565}', '2020-07-16 15:50:26'),
(572, 1, 566, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"572\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":566}', '2020-07-16 15:50:26'),
(573, 1, 567, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"847\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":567}', '2020-07-16 15:50:26'),
(574, 1, 568, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1077\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":568}', '2020-07-16 15:50:26'),
(575, 1, 569, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"783\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":569}', '2020-07-16 15:50:26'),
(576, 1, 570, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"858\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":570}', '2020-07-16 15:50:26'),
(577, 1, 572, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"784\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":572}', '2020-07-16 15:50:26'),
(578, 1, 571, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1105\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":571}', '2020-07-16 15:50:26'),
(579, 1, 574, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"857\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":574}', '2020-07-16 15:50:26'),
(580, 1, 573, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"859\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":573}', '2020-07-16 15:50:26'),
(581, 1, 575, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"846\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":575}', '2020-07-16 15:50:26'),
(582, 1, 576, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1104\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":576}', '2020-07-16 15:50:26'),
(583, 1, 578, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"966\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":2,\"id_stock_opname_item\":578}', '2020-07-16 15:50:26'),
(584, 1, 577, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"860\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":577}', '2020-07-16 15:50:26'),
(585, 1, 579, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"782\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":579}', '2020-07-16 15:50:26'),
(586, 1, 580, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"928\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":580}', '2020-07-16 15:50:26'),
(587, 1, 581, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"949\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":581}', '2020-07-16 15:50:26'),
(588, 1, 582, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"852\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":4,\"id_stock_opname_item\":582}', '2020-07-16 15:50:26'),
(589, 1, 583, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"781\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":583}', '2020-07-16 15:50:26'),
(590, 1, 584, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"929\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":1,\"id_stock_opname_item\":584}', '2020-07-16 15:50:26'),
(591, 1, 586, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"780\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":586}', '2020-07-16 15:50:26'),
(592, 1, 587, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"950\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":587}', '2020-07-16 15:50:26'),
(593, 1, 585, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"861\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":585}', '2020-07-16 15:50:26'),
(594, 1, 588, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"931\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":588}', '2020-07-16 15:50:26'),
(595, 1, 589, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"951\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":589}', '2020-07-16 15:50:27'),
(596, 1, 590, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"851\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":590}', '2020-07-16 15:50:27'),
(597, 1, 591, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"783\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":591}', '2020-07-16 15:50:27'),
(598, 1, 592, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"932\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":592}', '2020-07-16 15:50:27'),
(599, 1, 595, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"857\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":595}', '2020-07-16 15:50:28'),
(600, 1, 593, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"850\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":593}', '2020-07-16 15:50:28'),
(601, 1, 594, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"886\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":594}', '2020-07-16 15:50:28'),
(602, 1, 596, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"927\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":596}', '2020-07-16 15:50:28'),
(603, 1, 597, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"966\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":3,\"id_stock_opname_item\":597}', '2020-07-16 15:50:28'),
(604, 1, 598, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"849\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":598}', '2020-07-16 15:50:28'),
(605, 1, 599, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"885\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":599}', '2020-07-16 15:50:28'),
(606, 1, 600, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"934\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":600}', '2020-07-16 15:50:28'),
(607, 1, 601, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"949\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":601}', '2020-07-16 15:50:28'),
(608, 1, 602, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"848\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":602}', '2020-07-16 15:50:28'),
(609, 1, 603, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"884\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":603}', '2020-07-16 15:50:28'),
(610, 1, 604, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"930\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":604}', '2020-07-16 15:50:28'),
(611, 1, 605, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"950\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":605}', '2020-07-16 15:50:28'),
(612, 1, 606, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"878\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":606}', '2020-07-16 15:50:28'),
(613, 1, 607, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"847\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":607}', '2020-07-16 15:50:28'),
(614, 1, 608, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"933\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":608}', '2020-07-16 15:50:28'),
(615, 1, 609, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"951\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":609}', '2020-07-16 15:50:28'),
(616, 1, 610, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"877\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":610}', '2020-07-16 15:50:28'),
(617, 1, 611, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"784\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":611}', '2020-07-16 15:50:28'),
(618, 1, 612, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"940\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":612}', '2020-07-16 15:50:28'),
(619, 1, 613, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"886\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":613}', '2020-07-16 15:50:28'),
(620, 1, 614, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"883\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":614}', '2020-07-16 15:50:28'),
(621, 1, 615, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"846\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":615}', '2020-07-16 15:50:28'),
(622, 1, 616, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"937\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":616}', '2020-07-16 15:50:28'),
(623, 1, 617, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"885\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":617}', '2020-07-16 15:50:28'),
(624, 1, 618, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"880\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":618}', '2020-07-16 15:50:28'),
(625, 1, 619, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"782\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":619}', '2020-07-16 15:50:28'),
(626, 1, 620, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"938\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":620}', '2020-07-16 15:50:28'),
(627, 1, 621, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"884\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":621}', '2020-07-16 15:50:28'),
(628, 1, 622, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"881\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":622}', '2020-07-16 15:50:28'),
(629, 1, 623, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"781\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":623}', '2020-07-16 15:50:28'),
(630, 1, 624, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"936\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":624}', '2020-07-16 15:50:28'),
(631, 1, 625, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"878\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":625}', '2020-07-16 15:50:28'),
(632, 1, 627, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"882\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":627}', '2020-07-16 15:50:28'),
(633, 1, 626, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"780\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":626}', '2020-07-16 15:50:28'),
(634, 1, 628, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"935\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":628}', '2020-07-16 15:50:28'),
(635, 1, 629, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"877\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":629}', '2020-07-16 15:50:28'),
(636, 1, 630, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"783\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":630}', '2020-07-16 15:50:28'),
(637, 1, 632, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"939\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":632}', '2020-07-16 15:50:28'),
(638, 1, 631, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"346\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":631}', '2020-07-16 15:50:28'),
(639, 1, 633, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"883\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":633}', '2020-07-16 15:50:28'),
(640, 1, 635, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"941\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":635}', '2020-07-16 15:50:28'),
(641, 1, 636, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"857\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":636}', '2020-07-16 15:50:28'),
(642, 1, 634, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"345\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":634}', '2020-07-16 15:50:28');
INSERT INTO `t_document_history` (`id_document_history`, `id_karyawan`, `id_content`, `type_content`, `action`, `description`, `details`, `date`) VALUES
(643, 1, 637, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"880\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":637}', '2020-07-16 15:50:28'),
(644, 1, 640, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"942\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":640}', '2020-07-16 15:50:28'),
(645, 1, 639, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"344\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":639}', '2020-07-16 15:50:28'),
(646, 1, 638, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"966\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":4,\"id_stock_opname_item\":638}', '2020-07-16 15:50:28'),
(647, 1, 641, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"881\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":641}', '2020-07-16 15:50:28'),
(648, 1, 642, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"982\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":642}', '2020-07-16 15:50:28'),
(649, 1, 644, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"949\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":644}', '2020-07-16 15:50:28'),
(650, 1, 643, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"343\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":643}', '2020-07-16 15:50:28'),
(651, 1, 645, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"882\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":645}', '2020-07-16 15:50:28'),
(652, 1, 647, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"987\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":647}', '2020-07-16 15:50:28'),
(653, 1, 646, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"342\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":646}', '2020-07-16 15:50:28'),
(654, 1, 648, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"950\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":648}', '2020-07-16 15:50:28'),
(655, 1, 649, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"346\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":649}', '2020-07-16 15:50:28'),
(656, 1, 650, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"986\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":650}', '2020-07-16 15:50:29'),
(657, 1, 652, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"341\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":652}', '2020-07-16 15:50:29'),
(658, 1, 651, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"951\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":651}', '2020-07-16 15:50:29'),
(659, 1, 653, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"345\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":653}', '2020-07-16 15:50:29'),
(660, 1, 654, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"340\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":654}', '2020-07-16 15:50:29'),
(661, 1, 656, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"886\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":656}', '2020-07-16 15:50:29'),
(662, 1, 655, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"985\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":655}', '2020-07-16 15:50:29'),
(663, 1, 657, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"344\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":657}', '2020-07-16 15:50:29'),
(664, 1, 658, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"885\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":658}', '2020-07-16 15:50:29'),
(665, 1, 659, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"339\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":659}', '2020-07-16 15:50:29'),
(666, 1, 660, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"961\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":1,\"id_stock_opname_item\":660}', '2020-07-16 15:50:29'),
(667, 1, 661, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"343\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":661}', '2020-07-16 15:50:29'),
(668, 1, 664, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"984\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":664}', '2020-07-16 15:50:29'),
(669, 1, 662, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"338\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":662}', '2020-07-16 15:50:29'),
(670, 1, 663, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"884\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":663}', '2020-07-16 15:50:29'),
(671, 1, 665, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"342\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":665}', '2020-07-16 15:50:29'),
(672, 1, 666, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1081\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":2,\"id_stock_opname_item\":666}', '2020-07-16 15:50:29'),
(673, 1, 668, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"878\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":668}', '2020-07-16 15:50:29'),
(674, 1, 667, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"960\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":1,\"id_stock_opname_item\":667}', '2020-07-16 15:50:29'),
(675, 1, 669, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"341\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":669}', '2020-07-16 15:50:29'),
(676, 1, 670, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1082\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":2,\"id_stock_opname_item\":670}', '2020-07-16 15:50:29'),
(677, 1, 671, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"877\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":671}', '2020-07-16 15:50:29'),
(678, 1, 672, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"983\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":672}', '2020-07-16 15:50:29'),
(679, 1, 673, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"340\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":673}', '2020-07-16 15:50:29'),
(680, 1, 674, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"650\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":674}', '2020-07-16 15:50:29'),
(681, 1, 675, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"883\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":675}', '2020-07-16 15:50:29'),
(682, 1, 677, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"339\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":677}', '2020-07-16 15:50:29'),
(683, 1, 676, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"962\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":676}', '2020-07-16 15:50:29'),
(684, 1, 678, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"651\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":678}', '2020-07-16 15:50:29'),
(685, 1, 679, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"880\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":679}', '2020-07-16 15:50:29'),
(686, 1, 680, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"338\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":680}', '2020-07-16 15:50:29'),
(687, 1, 681, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"894\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":681}', '2020-07-16 15:50:29'),
(688, 1, 682, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"881\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":682}', '2020-07-16 15:50:29'),
(689, 1, 683, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"652\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":683}', '2020-07-16 15:50:29'),
(690, 1, 684, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1081\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":3,\"id_stock_opname_item\":684}', '2020-07-16 15:50:29'),
(691, 1, 685, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"896\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":685}', '2020-07-16 15:50:29'),
(692, 1, 687, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"882\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":687}', '2020-07-16 15:50:29'),
(693, 1, 686, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"653\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":686}', '2020-07-16 15:50:29'),
(694, 1, 688, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1082\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":3,\"id_stock_opname_item\":688}', '2020-07-16 15:50:29'),
(695, 1, 689, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"893\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":689}', '2020-07-16 15:50:29'),
(696, 1, 691, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"654\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":691}', '2020-07-16 15:50:29'),
(697, 1, 690, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"346\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":690}', '2020-07-16 15:50:29'),
(698, 1, 693, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"895\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":693}', '2020-07-16 15:50:29'),
(699, 1, 692, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"650\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":692}', '2020-07-16 15:50:29'),
(700, 1, 695, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"345\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":695}', '2020-07-16 15:50:29'),
(701, 1, 694, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"649\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":694}', '2020-07-16 15:50:29'),
(702, 1, 697, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"651\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":697}', '2020-07-16 15:50:29'),
(703, 1, 696, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1100\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":696}', '2020-07-16 15:50:29'),
(704, 1, 699, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"344\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":699}', '2020-07-16 15:50:29'),
(705, 1, 698, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"648\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":698}', '2020-07-16 15:50:29'),
(706, 1, 700, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"652\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":700}', '2020-07-16 15:50:29'),
(707, 1, 701, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"634\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":701}', '2020-07-16 15:50:29'),
(708, 1, 702, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"343\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":702}', '2020-07-16 15:50:29'),
(709, 1, 703, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"647\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":703}', '2020-07-16 15:50:32'),
(710, 1, 704, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"632\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":704}', '2020-07-16 15:50:33'),
(711, 1, 705, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"653\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":705}', '2020-07-16 15:50:33'),
(712, 1, 706, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"342\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":706}', '2020-07-16 15:50:33'),
(713, 1, 707, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"646\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":707}', '2020-07-16 15:50:33'),
(714, 1, 709, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"633\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":709}', '2020-07-16 15:50:34'),
(715, 1, 708, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"654\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":708}', '2020-07-16 15:50:34'),
(716, 1, 710, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"341\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":710}', '2020-07-16 15:50:34'),
(717, 1, 711, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"645\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":711}', '2020-07-16 15:50:34'),
(718, 1, 713, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"649\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":713}', '2020-07-16 15:50:34'),
(719, 1, 712, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"631\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":712}', '2020-07-16 15:50:34'),
(720, 1, 714, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"340\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":714}', '2020-07-16 15:50:35'),
(721, 1, 715, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"988\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":715}', '2020-07-16 15:50:35'),
(722, 1, 717, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"648\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":717}', '2020-07-16 15:50:35'),
(723, 1, 716, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"630\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":716}', '2020-07-16 15:50:35'),
(724, 1, 718, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"339\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":718}', '2020-07-16 15:50:35'),
(725, 1, 719, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"989\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":719}', '2020-07-16 15:50:35'),
(726, 1, 721, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"628\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":721}', '2020-07-16 15:50:35'),
(727, 1, 720, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"647\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":720}', '2020-07-16 15:50:35'),
(728, 1, 722, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"338\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":722}', '2020-07-16 15:50:35'),
(729, 1, 723, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"990\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":723}', '2020-07-16 15:50:35'),
(730, 1, 724, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"646\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":724}', '2020-07-16 15:50:35'),
(731, 1, 725, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"629\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":725}', '2020-07-16 15:50:35'),
(732, 1, 726, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1081\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":4,\"id_stock_opname_item\":726}', '2020-07-16 15:50:35'),
(733, 1, 727, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1072\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":727}', '2020-07-16 15:50:35'),
(734, 1, 728, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"627\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":728}', '2020-07-16 15:50:35'),
(735, 1, 729, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"645\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":729}', '2020-07-16 15:50:35'),
(736, 1, 730, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1082\",\"qty_before\":\"6\",\"qty_after\":\"0\",\"qty_miss\":-6,\"id_stock_opname\":4,\"id_stock_opname_item\":730}', '2020-07-16 15:50:35'),
(737, 1, 731, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1065\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":731}', '2020-07-16 15:50:36'),
(738, 1, 733, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"988\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":733}', '2020-07-16 15:50:36'),
(739, 1, 732, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1101\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":732}', '2020-07-16 15:50:36'),
(740, 1, 734, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"650\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":734}', '2020-07-16 15:50:36'),
(741, 1, 735, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1066\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":735}', '2020-07-16 15:50:36'),
(742, 1, 736, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1098\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":736}', '2020-07-16 15:50:36'),
(743, 1, 737, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"989\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":737}', '2020-07-16 15:50:36'),
(744, 1, 738, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"651\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":738}', '2020-07-16 15:50:36'),
(745, 1, 739, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1073\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":739}', '2020-07-16 15:50:36'),
(746, 1, 740, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1085\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":740}', '2020-07-16 15:50:36'),
(747, 1, 741, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"990\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":741}', '2020-07-16 15:50:36'),
(748, 1, 742, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"652\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":742}', '2020-07-16 15:50:36'),
(749, 1, 743, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1071\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":743}', '2020-07-16 15:50:36'),
(750, 1, 744, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1072\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":744}', '2020-07-16 15:50:36'),
(751, 1, 745, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1138\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":745}', '2020-07-16 15:50:36'),
(752, 1, 746, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"653\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":746}', '2020-07-16 15:50:36'),
(753, 1, 747, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1070\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":747}', '2020-07-16 15:50:36'),
(754, 1, 749, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1127\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":749}', '2020-07-16 15:50:36'),
(755, 1, 748, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1065\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":748}', '2020-07-16 15:50:36'),
(756, 1, 750, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"654\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":750}', '2020-07-16 15:50:36'),
(757, 1, 751, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1068\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":751}', '2020-07-16 15:50:36'),
(758, 1, 752, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1066\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":752}', '2020-07-16 15:50:36'),
(759, 1, 753, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1126\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":753}', '2020-07-16 15:50:36'),
(760, 1, 754, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"649\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":754}', '2020-07-16 15:50:36'),
(761, 1, 755, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1069\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":755}', '2020-07-16 15:50:36'),
(762, 1, 756, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1073\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":756}', '2020-07-16 15:50:36'),
(763, 1, 757, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1128\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":757}', '2020-07-16 15:50:36'),
(764, 1, 758, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"648\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":758}', '2020-07-16 15:50:36'),
(765, 1, 759, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1074\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":759}', '2020-07-16 15:50:36'),
(766, 1, 760, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1071\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":760}', '2020-07-16 15:50:36'),
(767, 1, 761, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1139\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":761}', '2020-07-16 15:50:36'),
(768, 1, 762, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"647\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":762}', '2020-07-16 15:50:36'),
(769, 1, 763, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1075\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":763}', '2020-07-16 15:50:36'),
(770, 1, 764, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1070\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":764}', '2020-07-16 15:50:36'),
(771, 1, 765, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1133\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":765}', '2020-07-16 15:50:36'),
(772, 1, 766, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"646\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":766}', '2020-07-16 15:50:36'),
(773, 1, 767, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1076\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":767}', '2020-07-16 15:50:36'),
(774, 1, 768, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1068\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":768}', '2020-07-16 15:50:36'),
(775, 1, 769, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1137\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":769}', '2020-07-16 15:50:36'),
(776, 1, 770, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"645\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":770}', '2020-07-16 15:50:36'),
(777, 1, 771, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1067\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":771}', '2020-07-16 15:50:36'),
(778, 1, 772, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1069\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":772}', '2020-07-16 15:50:36'),
(779, 1, 773, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1129\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":773}', '2020-07-16 15:50:36'),
(780, 1, 774, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"988\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":774}', '2020-07-16 15:50:36'),
(781, 1, 775, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1077\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":775}', '2020-07-16 15:50:36'),
(782, 1, 776, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1074\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":776}', '2020-07-16 15:50:36'),
(783, 1, 777, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1140\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":777}', '2020-07-16 15:50:36'),
(784, 1, 778, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"989\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":778}', '2020-07-16 15:50:36'),
(785, 1, 779, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1105\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":779}', '2020-07-16 15:50:36'),
(786, 1, 780, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1075\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":780}', '2020-07-16 15:50:36'),
(787, 1, 781, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1130\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":781}', '2020-07-16 15:50:36'),
(788, 1, 783, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"990\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":783}', '2020-07-16 15:50:36'),
(789, 1, 782, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1104\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":782}', '2020-07-16 15:50:36'),
(790, 1, 784, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1076\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":784}', '2020-07-16 15:50:36'),
(791, 1, 785, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1135\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":785}', '2020-07-16 15:50:36'),
(792, 1, 786, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"928\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":786}', '2020-07-16 15:50:36'),
(793, 1, 787, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1072\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":787}', '2020-07-16 15:50:36'),
(794, 1, 788, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1067\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":788}', '2020-07-16 15:50:36'),
(795, 1, 789, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1125\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":789}', '2020-07-16 15:50:36'),
(796, 1, 792, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1077\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":792}', '2020-07-16 15:50:37'),
(797, 1, 790, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"929\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":2,\"id_stock_opname_item\":790}', '2020-07-16 15:50:37'),
(798, 1, 791, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1065\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":791}', '2020-07-16 15:50:37'),
(799, 1, 793, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1134\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":793}', '2020-07-16 15:50:37'),
(800, 1, 794, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1105\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":794}', '2020-07-16 15:50:37'),
(801, 1, 795, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"931\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":795}', '2020-07-16 15:50:37'),
(802, 1, 796, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1066\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":796}', '2020-07-16 15:50:37'),
(803, 1, 797, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1136\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":797}', '2020-07-16 15:50:37'),
(804, 1, 798, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1104\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":798}', '2020-07-16 15:50:37'),
(805, 1, 800, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"932\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":800}', '2020-07-16 15:50:37'),
(806, 1, 799, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1073\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":799}', '2020-07-16 15:50:37'),
(807, 1, 801, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1131\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":801}', '2020-07-16 15:50:37'),
(808, 1, 802, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"928\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":802}', '2020-07-16 15:50:37'),
(809, 1, 803, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1071\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":803}', '2020-07-16 15:50:37'),
(810, 1, 804, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"927\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":804}', '2020-07-16 15:50:37'),
(811, 1, 805, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1132\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":805}', '2020-07-16 15:50:37'),
(812, 1, 806, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"929\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":3,\"id_stock_opname_item\":806}', '2020-07-16 15:50:37'),
(813, 1, 808, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"934\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":808}', '2020-07-16 15:50:37'),
(814, 1, 807, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1070\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":807}', '2020-07-16 15:50:37'),
(815, 1, 809, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"442\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":809}', '2020-07-16 15:50:37'),
(816, 1, 810, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"931\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":810}', '2020-07-16 15:50:37'),
(817, 1, 811, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1068\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":811}', '2020-07-16 15:50:37'),
(818, 1, 812, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"930\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":812}', '2020-07-16 15:50:37'),
(819, 1, 813, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"447\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":813}', '2020-07-16 15:50:37'),
(820, 1, 814, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"932\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":814}', '2020-07-16 15:50:37'),
(821, 1, 815, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1069\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":815}', '2020-07-16 15:50:37'),
(822, 1, 816, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"933\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":816}', '2020-07-16 15:50:37'),
(823, 1, 817, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"440\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":817}', '2020-07-16 15:50:37'),
(824, 1, 818, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"927\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":818}', '2020-07-16 15:50:37'),
(825, 1, 819, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1074\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":819}', '2020-07-16 15:50:37'),
(826, 1, 820, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"940\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":820}', '2020-07-16 15:50:37'),
(827, 1, 821, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"446\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":821}', '2020-07-16 15:50:37'),
(828, 1, 822, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"934\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":822}', '2020-07-16 15:50:37'),
(829, 1, 824, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1075\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":824}', '2020-07-16 15:50:37'),
(830, 1, 823, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"937\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":823}', '2020-07-16 15:50:37'),
(831, 1, 825, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"445\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":825}', '2020-07-16 15:50:37'),
(832, 1, 826, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"930\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":826}', '2020-07-16 15:50:37'),
(833, 1, 828, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"938\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":828}', '2020-07-16 15:50:37'),
(834, 1, 827, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1076\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":827}', '2020-07-16 15:50:37'),
(835, 1, 829, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"444\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":829}', '2020-07-16 15:50:37'),
(836, 1, 830, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"933\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":830}', '2020-07-16 15:50:37'),
(837, 1, 831, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"936\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":831}', '2020-07-16 15:50:37'),
(838, 1, 832, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1067\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":832}', '2020-07-16 15:50:37'),
(839, 1, 833, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"443\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":833}', '2020-07-16 15:50:37'),
(840, 1, 834, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"940\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":834}', '2020-07-16 15:50:37'),
(841, 1, 835, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1077\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":835}', '2020-07-16 15:50:37'),
(842, 1, 836, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"935\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":836}', '2020-07-16 15:50:37'),
(843, 1, 837, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"441\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":837}', '2020-07-16 15:50:37'),
(844, 1, 838, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"937\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":838}', '2020-07-16 15:50:37'),
(845, 1, 839, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"939\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":839}', '2020-07-16 15:50:37'),
(846, 1, 840, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1105\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":840}', '2020-07-16 15:50:37'),
(847, 1, 841, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"439\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":841}', '2020-07-16 15:50:37'),
(848, 1, 842, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"938\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":842}', '2020-07-16 15:50:37'),
(849, 1, 844, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1104\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":844}', '2020-07-16 15:50:37'),
(850, 1, 843, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"941\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":843}', '2020-07-16 15:50:37'),
(851, 1, 845, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"438\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":845}', '2020-07-16 15:50:37'),
(852, 1, 846, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"936\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":846}', '2020-07-16 15:50:37'),
(853, 1, 847, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"928\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":847}', '2020-07-16 15:50:37'),
(854, 1, 848, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"942\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":848}', '2020-07-16 15:50:37'),
(855, 1, 849, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"414\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":849}', '2020-07-16 15:50:37');
INSERT INTO `t_document_history` (`id_document_history`, `id_karyawan`, `id_content`, `type_content`, `action`, `description`, `details`, `date`) VALUES
(856, 1, 850, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"935\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":850}', '2020-07-16 15:50:37'),
(857, 1, 851, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"929\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":4,\"id_stock_opname_item\":851}', '2020-07-16 15:50:37'),
(858, 1, 852, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"982\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":852}', '2020-07-16 15:50:37'),
(859, 1, 853, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"931\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":853}', '2020-07-16 15:50:37'),
(860, 1, 854, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"411\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":854}', '2020-07-16 15:50:37'),
(861, 1, 855, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"939\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":855}', '2020-07-16 15:50:37'),
(862, 1, 856, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"987\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":856}', '2020-07-16 15:50:37'),
(863, 1, 857, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"932\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":857}', '2020-07-16 15:50:38'),
(864, 1, 859, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"941\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":859}', '2020-07-16 15:50:38'),
(865, 1, 858, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"412\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":858}', '2020-07-16 15:50:38'),
(866, 1, 860, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"986\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":860}', '2020-07-16 15:50:38'),
(867, 1, 861, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"927\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":861}', '2020-07-16 15:50:38'),
(868, 1, 862, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"418\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":862}', '2020-07-16 15:50:38'),
(869, 1, 863, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"942\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":863}', '2020-07-16 15:50:38'),
(870, 1, 864, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"985\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":864}', '2020-07-16 15:50:38'),
(871, 1, 865, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"934\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":865}', '2020-07-16 15:50:38'),
(872, 1, 867, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"982\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":867}', '2020-07-16 15:50:38'),
(873, 1, 866, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"416\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":866}', '2020-07-16 15:50:38'),
(874, 1, 868, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"961\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":2,\"id_stock_opname_item\":868}', '2020-07-16 15:50:38'),
(875, 1, 869, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"930\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":869}', '2020-07-16 15:50:38'),
(876, 1, 871, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"415\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":871}', '2020-07-16 15:50:38'),
(877, 1, 870, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"987\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":870}', '2020-07-16 15:50:38'),
(878, 1, 872, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"984\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":872}', '2020-07-16 15:50:38'),
(879, 1, 873, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"933\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":873}', '2020-07-16 15:50:38'),
(880, 1, 875, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"452\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":875}', '2020-07-16 15:50:38'),
(881, 1, 874, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"986\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":874}', '2020-07-16 15:50:38'),
(882, 1, 876, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"960\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":2,\"id_stock_opname_item\":876}', '2020-07-16 15:50:38'),
(883, 1, 877, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"940\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":877}', '2020-07-16 15:50:38'),
(884, 1, 878, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"417\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":878}', '2020-07-16 15:50:38'),
(885, 1, 879, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"985\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":879}', '2020-07-16 15:50:38'),
(886, 1, 881, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"937\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":881}', '2020-07-16 15:50:38'),
(887, 1, 880, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"983\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":880}', '2020-07-16 15:50:38'),
(888, 1, 882, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"419\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":882}', '2020-07-16 15:50:38'),
(889, 1, 883, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"961\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":3,\"id_stock_opname_item\":883}', '2020-07-16 15:50:38'),
(890, 1, 885, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"938\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":885}', '2020-07-16 15:50:39'),
(891, 1, 884, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"962\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":884}', '2020-07-16 15:50:39'),
(892, 1, 887, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"984\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":887}', '2020-07-16 15:50:39'),
(893, 1, 886, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"413\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":886}', '2020-07-16 15:50:39'),
(894, 1, 889, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"936\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":889}', '2020-07-16 15:50:39'),
(895, 1, 888, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"894\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":888}', '2020-07-16 15:50:39'),
(896, 1, 890, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1083\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":890}', '2020-07-16 15:50:39'),
(897, 1, 891, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"960\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":3,\"id_stock_opname_item\":891}', '2020-07-16 15:50:39'),
(898, 1, 893, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"896\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":893}', '2020-07-16 15:50:39'),
(899, 1, 892, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"935\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":892}', '2020-07-16 15:50:39'),
(900, 1, 894, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1084\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":894}', '2020-07-16 15:50:39'),
(901, 1, 895, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"983\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":895}', '2020-07-16 15:50:39'),
(902, 1, 897, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"939\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":897}', '2020-07-16 15:50:39'),
(903, 1, 896, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"893\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":896}', '2020-07-16 15:50:39'),
(904, 1, 899, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1107\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":899}', '2020-07-16 15:50:39'),
(905, 1, 898, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"962\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":898}', '2020-07-16 15:50:39'),
(906, 1, 900, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"941\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":900}', '2020-07-16 15:50:39'),
(907, 1, 901, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"895\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":901}', '2020-07-16 15:50:39'),
(908, 1, 902, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"894\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":902}', '2020-07-16 15:50:39'),
(909, 1, 903, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1106\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":903}', '2020-07-16 15:50:39'),
(910, 1, 904, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"942\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":904}', '2020-07-16 15:50:39'),
(911, 1, 905, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1100\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":905}', '2020-07-16 15:50:39'),
(912, 1, 906, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1008\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":1,\"id_stock_opname_item\":906}', '2020-07-16 15:50:39'),
(913, 1, 907, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"896\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":907}', '2020-07-16 15:50:39'),
(914, 1, 909, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"982\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":909}', '2020-07-16 15:50:39'),
(915, 1, 908, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"634\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":908}', '2020-07-16 15:50:39'),
(916, 1, 910, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1007\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":1,\"id_stock_opname_item\":910}', '2020-07-16 15:50:39'),
(917, 1, 911, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"893\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":911}', '2020-07-16 15:50:39'),
(918, 1, 912, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"632\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":912}', '2020-07-16 15:50:39'),
(919, 1, 913, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"987\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":913}', '2020-07-16 15:50:39'),
(920, 1, 914, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"890\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":914}', '2020-07-16 15:50:39'),
(921, 1, 915, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"895\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":915}', '2020-07-16 15:50:39'),
(922, 1, 917, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"633\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":917}', '2020-07-16 15:50:39'),
(923, 1, 916, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"986\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":916}', '2020-07-16 15:50:39'),
(924, 1, 919, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"891\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":919}', '2020-07-16 15:50:39'),
(925, 1, 918, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1100\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":918}', '2020-07-16 15:50:39'),
(926, 1, 921, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"985\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":921}', '2020-07-16 15:50:39'),
(927, 1, 920, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"631\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":920}', '2020-07-16 15:50:39'),
(928, 1, 922, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"634\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":922}', '2020-07-16 15:50:39'),
(929, 1, 923, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"892\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":923}', '2020-07-16 15:50:39'),
(930, 1, 924, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"630\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":924}', '2020-07-16 15:50:39'),
(931, 1, 925, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"961\",\"qty_before\":\"4\",\"qty_after\":\"0\",\"qty_miss\":-4,\"id_stock_opname\":4,\"id_stock_opname_item\":925}', '2020-07-16 15:50:39'),
(932, 1, 926, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"759\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":926}', '2020-07-16 15:50:39'),
(933, 1, 927, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"632\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":927}', '2020-07-16 15:50:39'),
(934, 1, 928, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"628\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":928}', '2020-07-16 15:50:39'),
(935, 1, 929, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"984\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":929}', '2020-07-16 15:50:39'),
(936, 1, 930, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"758\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":930}', '2020-07-16 15:50:39'),
(937, 1, 931, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"633\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":931}', '2020-07-16 15:50:39'),
(938, 1, 932, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"960\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":4,\"id_stock_opname_item\":932}', '2020-07-16 15:50:39'),
(939, 1, 933, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"629\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":933}', '2020-07-16 15:50:39'),
(940, 1, 934, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"631\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":934}', '2020-07-16 15:50:39'),
(941, 1, 935, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"756\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":935}', '2020-07-16 15:50:39'),
(942, 1, 936, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"627\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":936}', '2020-07-16 15:50:39'),
(943, 1, 937, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"983\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":937}', '2020-07-16 15:50:39'),
(944, 1, 938, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"630\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":938}', '2020-07-16 15:50:39'),
(945, 1, 939, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"962\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":939}', '2020-07-16 15:50:40'),
(946, 1, 940, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1101\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":940}', '2020-07-16 15:50:40'),
(947, 1, 941, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"757\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":1,\"id_stock_opname_item\":941}', '2020-07-16 15:50:40'),
(948, 1, 942, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"628\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":942}', '2020-07-16 15:50:40'),
(949, 1, 944, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"770\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":944}', '2020-07-16 15:50:40'),
(950, 1, 943, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"894\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":943}', '2020-07-16 15:50:40'),
(951, 1, 945, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1098\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":945}', '2020-07-16 15:50:40'),
(952, 1, 947, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"629\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":947}', '2020-07-16 15:50:40'),
(953, 1, 946, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"769\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":946}', '2020-07-16 15:50:40'),
(954, 1, 948, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1085\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":948}', '2020-07-16 15:50:40'),
(955, 1, 949, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"896\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":949}', '2020-07-16 15:50:40'),
(956, 1, 950, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"627\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":950}', '2020-07-16 15:50:40'),
(957, 1, 951, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"768\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":951}', '2020-07-16 15:50:40'),
(958, 1, 952, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1138\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":952}', '2020-07-16 15:50:40'),
(959, 1, 953, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"893\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":953}', '2020-07-16 15:50:40'),
(960, 1, 954, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1101\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":954}', '2020-07-16 15:50:40'),
(961, 1, 955, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"767\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":955}', '2020-07-16 15:50:40'),
(962, 1, 956, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"895\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":956}', '2020-07-16 15:50:40'),
(963, 1, 957, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1127\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":957}', '2020-07-16 15:50:40'),
(964, 1, 958, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1098\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":958}', '2020-07-16 15:50:40'),
(965, 1, 959, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"777\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":959}', '2020-07-16 15:50:40'),
(966, 1, 960, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1100\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":960}', '2020-07-16 15:50:40'),
(967, 1, 961, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1126\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":961}', '2020-07-16 15:50:40'),
(968, 1, 962, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1085\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":962}', '2020-07-16 15:50:40'),
(969, 1, 963, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"778\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":963}', '2020-07-16 15:50:40'),
(970, 1, 964, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"634\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":964}', '2020-07-16 15:50:40'),
(971, 1, 965, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1128\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":965}', '2020-07-16 15:50:40'),
(972, 1, 966, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1138\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":966}', '2020-07-16 15:50:40'),
(973, 1, 967, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"779\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":967}', '2020-07-16 15:50:40'),
(974, 1, 968, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"632\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":968}', '2020-07-16 15:50:40'),
(975, 1, 969, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1139\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":969}', '2020-07-16 15:50:40'),
(976, 1, 970, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1127\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":970}', '2020-07-16 15:50:40'),
(977, 1, 971, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"605\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":971}', '2020-07-16 15:50:40'),
(978, 1, 972, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"633\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":972}', '2020-07-16 15:50:40'),
(979, 1, 973, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1133\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":973}', '2020-07-16 15:50:40'),
(980, 1, 974, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1126\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":974}', '2020-07-16 15:50:40'),
(981, 1, 975, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"606\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":975}', '2020-07-16 15:50:40'),
(982, 1, 976, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"631\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":976}', '2020-07-16 15:50:40'),
(983, 1, 977, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1137\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":977}', '2020-07-16 15:50:40'),
(984, 1, 978, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1128\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":978}', '2020-07-16 15:50:40'),
(985, 1, 979, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"613\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":979}', '2020-07-16 15:50:40'),
(986, 1, 980, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"630\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":980}', '2020-07-16 15:50:40'),
(987, 1, 981, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1129\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":981}', '2020-07-16 15:50:40'),
(988, 1, 982, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1139\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":982}', '2020-07-16 15:50:40'),
(989, 1, 983, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"612\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":983}', '2020-07-16 15:50:40'),
(990, 1, 984, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"628\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":984}', '2020-07-16 15:50:40'),
(991, 1, 985, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1140\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":985}', '2020-07-16 15:50:40'),
(992, 1, 986, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1133\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":986}', '2020-07-16 15:50:40'),
(993, 1, 987, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"611\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":987}', '2020-07-16 15:50:40'),
(994, 1, 988, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"629\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":988}', '2020-07-16 15:50:40'),
(995, 1, 989, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1130\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":989}', '2020-07-16 15:50:40'),
(996, 1, 991, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"610\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":991}', '2020-07-16 15:50:40'),
(997, 1, 990, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1137\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":990}', '2020-07-16 15:50:40'),
(998, 1, 992, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"627\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":992}', '2020-07-16 15:50:40'),
(999, 1, 994, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1129\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":994}', '2020-07-16 15:50:40'),
(1000, 1, 993, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1135\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":993}', '2020-07-16 15:50:40'),
(1001, 1, 995, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"609\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":995}', '2020-07-16 15:50:40'),
(1002, 1, 996, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1101\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":996}', '2020-07-16 15:50:41'),
(1003, 1, 997, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1125\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":997}', '2020-07-16 15:50:41'),
(1004, 1, 998, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1140\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":998}', '2020-07-16 15:50:41'),
(1005, 1, 999, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"608\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":999}', '2020-07-16 15:50:41'),
(1006, 1, 1000, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1098\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1000}', '2020-07-16 15:50:41'),
(1007, 1, 1001, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1130\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1001}', '2020-07-16 15:50:41'),
(1008, 1, 1002, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1134\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1002}', '2020-07-16 15:50:41'),
(1009, 1, 1003, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"607\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":1003}', '2020-07-16 15:50:41'),
(1010, 1, 1004, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1085\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1004}', '2020-07-16 15:50:41'),
(1011, 1, 1006, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1136\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1006}', '2020-07-16 15:50:41'),
(1012, 1, 1005, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1135\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1005}', '2020-07-16 15:50:41'),
(1013, 1, 1007, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"626\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1007}', '2020-07-16 15:50:41'),
(1014, 1, 1008, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1138\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1008}', '2020-07-16 15:50:41'),
(1015, 1, 1010, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1125\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1010}', '2020-07-16 15:50:41'),
(1016, 1, 1009, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1131\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1009}', '2020-07-16 15:50:41'),
(1017, 1, 1011, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"625\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1011}', '2020-07-16 15:50:41'),
(1018, 1, 1012, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1127\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1012}', '2020-07-16 15:50:41'),
(1019, 1, 1015, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"624\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1015}', '2020-07-16 15:50:41'),
(1020, 1, 1013, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1134\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1013}', '2020-07-16 15:50:41'),
(1021, 1, 1014, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1132\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1014}', '2020-07-16 15:50:41'),
(1022, 1, 1016, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1126\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1016}', '2020-07-16 15:50:41'),
(1023, 1, 1018, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"623\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1018}', '2020-07-16 15:50:41'),
(1024, 1, 1019, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"442\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1019}', '2020-07-16 15:50:41'),
(1025, 1, 1017, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1136\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1017}', '2020-07-16 15:50:41'),
(1026, 1, 1020, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1128\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1020}', '2020-07-16 15:50:41'),
(1027, 1, 1021, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"447\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1021}', '2020-07-16 15:50:41'),
(1028, 1, 1022, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"621\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1022}', '2020-07-16 15:50:41'),
(1029, 1, 1023, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1131\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1023}', '2020-07-16 15:50:41'),
(1030, 1, 1024, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1139\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1024}', '2020-07-16 15:50:41'),
(1031, 1, 1026, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1132\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1026}', '2020-07-16 15:50:41'),
(1032, 1, 1025, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"440\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1025}', '2020-07-16 15:50:41'),
(1033, 1, 1027, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"622\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1027}', '2020-07-16 15:50:41'),
(1034, 1, 1028, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1133\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1028}', '2020-07-16 15:50:41'),
(1035, 1, 1029, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"442\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1029}', '2020-07-16 15:50:41'),
(1036, 1, 1030, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"548\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1030}', '2020-07-16 15:50:41'),
(1037, 1, 1031, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"446\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1031}', '2020-07-16 15:50:41'),
(1038, 1, 1032, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"447\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1032}', '2020-07-16 15:50:41'),
(1039, 1, 1033, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1137\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1033}', '2020-07-16 15:50:41'),
(1040, 1, 1035, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"445\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1035}', '2020-07-16 15:50:41'),
(1041, 1, 1034, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"547\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1034}', '2020-07-16 15:50:41'),
(1042, 1, 1037, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1129\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1037}', '2020-07-16 15:50:41'),
(1043, 1, 1036, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"440\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1036}', '2020-07-16 15:50:41'),
(1044, 1, 1038, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"444\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1038}', '2020-07-16 15:50:41'),
(1045, 1, 1039, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"546\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1039}', '2020-07-16 15:50:41'),
(1046, 1, 1042, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1140\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1042}', '2020-07-16 15:50:41'),
(1047, 1, 1040, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"443\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1040}', '2020-07-16 15:50:41'),
(1048, 1, 1041, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"446\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1041}', '2020-07-16 15:50:41'),
(1049, 1, 1043, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"551\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1043}', '2020-07-16 15:50:41'),
(1050, 1, 1044, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"445\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1044}', '2020-07-16 15:50:41'),
(1051, 1, 1045, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1130\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1045}', '2020-07-16 15:50:41'),
(1052, 1, 1046, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"441\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1046}', '2020-07-16 15:50:41'),
(1053, 1, 1047, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"553\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1047}', '2020-07-16 15:50:41'),
(1054, 1, 1049, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1135\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1049}', '2020-07-16 15:50:41'),
(1055, 1, 1050, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"439\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1050}', '2020-07-16 15:50:41'),
(1056, 1, 1048, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"444\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1048}', '2020-07-16 15:50:41'),
(1057, 1, 1051, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"552\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1051}', '2020-07-16 15:50:41'),
(1058, 1, 1052, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1125\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1052}', '2020-07-16 15:50:41'),
(1059, 1, 1053, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"438\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1053}', '2020-07-16 15:50:41'),
(1060, 1, 1054, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"443\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1054}', '2020-07-16 15:50:41'),
(1061, 1, 1055, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"550\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1055}', '2020-07-16 15:50:41'),
(1062, 1, 1056, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1134\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1056}', '2020-07-16 15:50:41'),
(1063, 1, 1057, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"414\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1057}', '2020-07-16 15:50:41'),
(1064, 1, 1058, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"441\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1058}', '2020-07-16 15:50:41'),
(1065, 1, 1059, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"549\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1059}', '2020-07-16 15:50:41'),
(1066, 1, 1061, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1136\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1061}', '2020-07-16 15:50:42'),
(1067, 1, 1060, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"411\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1060}', '2020-07-16 15:50:42');
INSERT INTO `t_document_history` (`id_document_history`, `id_karyawan`, `id_content`, `type_content`, `action`, `description`, `details`, `date`) VALUES
(1068, 1, 1062, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"439\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1062}', '2020-07-16 15:50:42'),
(1069, 1, 1063, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"244\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1063}', '2020-07-16 15:50:42'),
(1070, 1, 1064, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1131\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1064}', '2020-07-16 15:50:42'),
(1071, 1, 1065, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"412\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1065}', '2020-07-16 15:50:42'),
(1072, 1, 1066, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"438\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1066}', '2020-07-16 15:50:42'),
(1073, 1, 1067, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"243\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":1067}', '2020-07-16 15:50:42'),
(1074, 1, 1068, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1132\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1068}', '2020-07-16 15:50:42'),
(1075, 1, 1069, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"418\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1069}', '2020-07-16 15:50:42'),
(1076, 1, 1070, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"414\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1070}', '2020-07-16 15:50:42'),
(1077, 1, 1071, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"242\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":1071}', '2020-07-16 15:50:42'),
(1078, 1, 1072, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"442\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1072}', '2020-07-16 15:50:42'),
(1079, 1, 1073, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"416\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1073}', '2020-07-16 15:50:42'),
(1080, 1, 1074, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"241\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1074}', '2020-07-16 15:50:42'),
(1081, 1, 1075, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"411\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1075}', '2020-07-16 15:50:42'),
(1082, 1, 1076, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"447\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1076}', '2020-07-16 15:50:42'),
(1083, 1, 1077, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"415\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1077}', '2020-07-16 15:50:42'),
(1084, 1, 1078, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1005\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":1078}', '2020-07-16 15:50:42'),
(1085, 1, 1079, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"412\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1079}', '2020-07-16 15:50:42'),
(1086, 1, 1080, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"440\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1080}', '2020-07-16 15:50:42'),
(1087, 1, 1081, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"452\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1081}', '2020-07-16 15:50:42'),
(1088, 1, 1082, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1004\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":1,\"id_stock_opname_item\":1082}', '2020-07-16 15:50:42'),
(1089, 1, 1083, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"418\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1083}', '2020-07-16 15:50:42'),
(1090, 1, 1084, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"446\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1084}', '2020-07-16 15:50:42'),
(1091, 1, 1085, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"417\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1085}', '2020-07-16 15:50:42'),
(1092, 1, 1086, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"416\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1086}', '2020-07-16 15:50:42'),
(1093, 1, 1087, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1006\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1087}', '2020-07-16 15:50:42'),
(1094, 1, 1088, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"445\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1088}', '2020-07-16 15:50:42'),
(1095, 1, 1089, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"419\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1089}', '2020-07-16 15:50:42'),
(1096, 1, 1090, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1012\",\"qty_before\":\"13\",\"qty_after\":\"0\",\"qty_miss\":-13,\"id_stock_opname\":1,\"id_stock_opname_item\":1090}', '2020-07-16 15:50:42'),
(1097, 1, 1091, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"415\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1091}', '2020-07-16 15:50:42'),
(1098, 1, 1092, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"444\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1092}', '2020-07-16 15:50:42'),
(1099, 1, 1093, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"413\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1093}', '2020-07-16 15:50:42'),
(1100, 1, 1095, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"452\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1095}', '2020-07-16 15:50:42'),
(1101, 1, 1094, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1011\",\"qty_before\":\"13\",\"qty_after\":\"0\",\"qty_miss\":-13,\"id_stock_opname\":1,\"id_stock_opname_item\":1094}', '2020-07-16 15:50:42'),
(1102, 1, 1096, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"443\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1096}', '2020-07-16 15:50:42'),
(1103, 1, 1097, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1083\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1097}', '2020-07-16 15:50:42'),
(1104, 1, 1098, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"417\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1098}', '2020-07-16 15:50:42'),
(1105, 1, 1099, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1010\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":1,\"id_stock_opname_item\":1099}', '2020-07-16 15:50:42'),
(1106, 1, 1100, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"441\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1100}', '2020-07-16 15:50:42'),
(1107, 1, 1101, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1084\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1101}', '2020-07-16 15:50:42'),
(1108, 1, 1102, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"419\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1102}', '2020-07-16 15:50:42'),
(1109, 1, 1103, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1009\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":1,\"id_stock_opname_item\":1103}', '2020-07-16 15:50:42'),
(1110, 1, 1104, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"439\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1104}', '2020-07-16 15:50:42'),
(1111, 1, 1105, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1107\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1105}', '2020-07-16 15:50:42'),
(1112, 1, 1106, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"413\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1106}', '2020-07-16 15:50:42'),
(1113, 1, 1107, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"198\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1107}', '2020-07-16 15:50:42'),
(1114, 1, 1108, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"438\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1108}', '2020-07-16 15:50:42'),
(1115, 1, 1109, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1106\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1109}', '2020-07-16 15:50:42'),
(1116, 1, 1110, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1083\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1110}', '2020-07-16 15:50:42'),
(1117, 1, 1111, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"195\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1111}', '2020-07-16 15:50:42'),
(1118, 1, 1112, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"414\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1112}', '2020-07-16 15:50:42'),
(1119, 1, 1113, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1008\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":2,\"id_stock_opname_item\":1113}', '2020-07-16 15:50:42'),
(1120, 1, 1114, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1084\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1114}', '2020-07-16 15:50:42'),
(1121, 1, 1115, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"194\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1115}', '2020-07-16 15:50:42'),
(1122, 1, 1116, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"411\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1116}', '2020-07-16 15:50:42'),
(1123, 1, 1117, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1007\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":2,\"id_stock_opname_item\":1117}', '2020-07-16 15:50:42'),
(1124, 1, 1118, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1107\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1118}', '2020-07-16 15:50:43'),
(1125, 1, 1119, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"190\",\"qty_before\":\"0\",\"qty_after\":\"1\",\"qty_miss\":1,\"id_stock_opname\":1,\"id_stock_opname_item\":1119}', '2020-07-16 15:50:43'),
(1126, 1, 1120, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"412\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1120}', '2020-07-16 15:50:43'),
(1127, 1, 1121, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"890\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1121}', '2020-07-16 15:50:43'),
(1128, 1, 1122, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1106\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1122}', '2020-07-16 15:50:43'),
(1129, 1, 1123, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"193\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1123}', '2020-07-16 15:50:43'),
(1130, 1, 1124, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"418\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1124}', '2020-07-16 15:50:43'),
(1131, 1, 1125, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"891\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":1125}', '2020-07-16 15:50:43'),
(1132, 1, 1126, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1008\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":3,\"id_stock_opname_item\":1126}', '2020-07-16 15:50:43'),
(1133, 1, 1127, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"192\",\"qty_before\":\"0\",\"qty_after\":\"1\",\"qty_miss\":1,\"id_stock_opname\":1,\"id_stock_opname_item\":1127}', '2020-07-16 15:50:43'),
(1134, 1, 1128, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"416\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1128}', '2020-07-16 15:50:43'),
(1135, 1, 1129, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"892\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1129}', '2020-07-16 15:50:43'),
(1136, 1, 1130, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1007\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":3,\"id_stock_opname_item\":1130}', '2020-07-16 15:50:43'),
(1137, 1, 1131, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"197\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":1131}', '2020-07-16 15:50:43'),
(1138, 1, 1132, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"415\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1132}', '2020-07-16 15:50:43'),
(1139, 1, 1133, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"759\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1133}', '2020-07-16 15:50:43'),
(1140, 1, 1134, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"890\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1134}', '2020-07-16 15:50:43'),
(1141, 1, 1135, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"196\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1135}', '2020-07-16 15:50:43'),
(1142, 1, 1136, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"452\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1136}', '2020-07-16 15:50:43'),
(1143, 1, 1137, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"758\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1137}', '2020-07-16 15:50:43'),
(1144, 1, 1138, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"891\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":1138}', '2020-07-16 15:50:43'),
(1145, 1, 1139, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"199\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1139}', '2020-07-16 15:50:43'),
(1146, 1, 1140, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"417\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1140}', '2020-07-16 15:50:43'),
(1147, 1, 1141, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"756\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1141}', '2020-07-16 15:50:43'),
(1148, 1, 1142, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"892\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1142}', '2020-07-16 15:50:43'),
(1149, 1, 1143, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"191\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":1,\"id_stock_opname_item\":1143}', '2020-07-16 15:50:43'),
(1150, 1, 1144, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"419\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1144}', '2020-07-16 15:50:43'),
(1151, 1, 1145, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"757\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":2,\"id_stock_opname_item\":1145}', '2020-07-16 15:50:43'),
(1152, 1, 1146, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"759\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1146}', '2020-07-16 15:50:43'),
(1153, 1, 1147, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"864\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1147}', '2020-07-16 15:50:43'),
(1154, 1, 1148, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"770\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1148}', '2020-07-16 15:50:43'),
(1155, 1, 1149, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"413\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1149}', '2020-07-16 15:50:43'),
(1156, 1, 1150, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"758\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1150}', '2020-07-16 15:50:43'),
(1157, 1, 1151, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"277\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1151}', '2020-07-16 15:50:43'),
(1158, 1, 1153, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1083\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1153}', '2020-07-16 15:50:43'),
(1159, 1, 1152, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"769\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1152}', '2020-07-16 15:50:43'),
(1160, 1, 1154, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"756\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1154}', '2020-07-16 15:50:43'),
(1161, 1, 1155, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"278\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":1,\"id_stock_opname_item\":1155}', '2020-07-16 15:50:43'),
(1162, 1, 1156, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1084\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1156}', '2020-07-16 15:50:43'),
(1163, 1, 1157, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"768\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1157}', '2020-07-16 15:50:43'),
(1164, 1, 1158, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"757\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":3,\"id_stock_opname_item\":1158}', '2020-07-16 15:50:43'),
(1165, 1, 1160, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"767\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1160}', '2020-07-16 15:50:43'),
(1166, 1, 1159, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1107\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1159}', '2020-07-16 15:50:43'),
(1167, 1, 1161, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"770\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1161}', '2020-07-16 15:50:43'),
(1168, 1, 1163, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1106\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1163}', '2020-07-16 15:50:43'),
(1169, 1, 1162, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"777\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1162}', '2020-07-16 15:50:43'),
(1170, 1, 1164, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"769\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1164}', '2020-07-16 15:50:43'),
(1171, 1, 1166, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"778\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1166}', '2020-07-16 15:50:43'),
(1172, 1, 1165, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1008\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":4,\"id_stock_opname_item\":1165}', '2020-07-16 15:50:43'),
(1173, 1, 1167, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"768\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1167}', '2020-07-16 15:50:43'),
(1174, 1, 1169, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1007\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":4,\"id_stock_opname_item\":1169}', '2020-07-16 15:50:43'),
(1175, 1, 1168, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"779\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1168}', '2020-07-16 15:50:43'),
(1176, 1, 1170, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"767\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1170}', '2020-07-16 15:50:43'),
(1177, 1, 1172, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"890\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1172}', '2020-07-16 15:50:43'),
(1178, 1, 1171, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"605\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1171}', '2020-07-16 15:50:43'),
(1179, 1, 1173, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"777\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1173}', '2020-07-16 15:50:43'),
(1180, 1, 1175, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"606\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1175}', '2020-07-16 15:50:43'),
(1181, 1, 1174, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"891\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":1174}', '2020-07-16 15:50:43'),
(1182, 1, 1176, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"778\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1176}', '2020-07-16 15:50:43'),
(1183, 1, 1178, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"613\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1178}', '2020-07-16 15:50:43'),
(1184, 1, 1177, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"892\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1177}', '2020-07-16 15:50:43'),
(1185, 1, 1179, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"779\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1179}', '2020-07-16 15:50:43'),
(1186, 1, 1180, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"759\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1180}', '2020-07-16 15:50:43'),
(1187, 1, 1181, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"612\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1181}', '2020-07-16 15:50:43'),
(1188, 1, 1182, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"605\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1182}', '2020-07-16 15:50:43'),
(1189, 1, 1183, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"758\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1183}', '2020-07-16 15:50:43'),
(1190, 1, 1184, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"611\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1184}', '2020-07-16 15:50:43'),
(1191, 1, 1185, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"606\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1185}', '2020-07-16 15:50:43'),
(1192, 1, 1186, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"610\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1186}', '2020-07-16 15:50:44'),
(1193, 1, 1187, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"756\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1187}', '2020-07-16 15:50:44'),
(1194, 1, 1188, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"613\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1188}', '2020-07-16 15:50:44'),
(1195, 1, 1189, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"609\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1189}', '2020-07-16 15:50:44'),
(1196, 1, 1190, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"757\",\"qty_before\":\"3\",\"qty_after\":\"0\",\"qty_miss\":-3,\"id_stock_opname\":4,\"id_stock_opname_item\":1190}', '2020-07-16 15:50:44'),
(1197, 1, 1191, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"612\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1191}', '2020-07-16 15:50:44'),
(1198, 1, 1192, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"608\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1192}', '2020-07-16 15:50:44'),
(1199, 1, 1193, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"770\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1193}', '2020-07-16 15:50:44'),
(1200, 1, 1194, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"611\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1194}', '2020-07-16 15:50:44'),
(1201, 1, 1195, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"769\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1195}', '2020-07-16 15:50:44'),
(1202, 1, 1196, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"607\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1196}', '2020-07-16 15:50:44'),
(1203, 1, 1197, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"610\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1197}', '2020-07-16 15:50:44'),
(1204, 1, 1199, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"768\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1199}', '2020-07-16 15:50:44'),
(1205, 1, 1198, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"626\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1198}', '2020-07-16 15:50:44'),
(1206, 1, 1200, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"609\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1200}', '2020-07-16 15:50:44'),
(1207, 1, 1202, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"625\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1202}', '2020-07-16 15:50:44'),
(1208, 1, 1201, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"767\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1201}', '2020-07-16 15:50:44'),
(1209, 1, 1203, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"608\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1203}', '2020-07-16 15:50:44'),
(1210, 1, 1204, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"777\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1204}', '2020-07-16 15:50:44'),
(1211, 1, 1205, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"624\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1205}', '2020-07-16 15:50:44'),
(1212, 1, 1206, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"607\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1206}', '2020-07-16 15:50:44'),
(1213, 1, 1207, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"778\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1207}', '2020-07-16 15:50:44'),
(1214, 1, 1208, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"623\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1208}', '2020-07-16 15:50:44'),
(1215, 1, 1209, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"626\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1209}', '2020-07-16 15:50:44'),
(1216, 1, 1210, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"779\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1210}', '2020-07-16 15:50:44'),
(1217, 1, 1211, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"621\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1211}', '2020-07-16 15:50:44'),
(1218, 1, 1212, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"625\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1212}', '2020-07-16 15:50:44'),
(1219, 1, 1214, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"622\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1214}', '2020-07-16 15:50:44'),
(1220, 1, 1213, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"605\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1213}', '2020-07-16 15:50:44'),
(1221, 1, 1215, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"624\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1215}', '2020-07-16 15:50:44'),
(1222, 1, 1216, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"548\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1216}', '2020-07-16 15:50:44'),
(1223, 1, 1217, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"606\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1217}', '2020-07-16 15:50:44'),
(1224, 1, 1218, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"623\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1218}', '2020-07-16 15:50:44'),
(1225, 1, 1220, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"613\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1220}', '2020-07-16 15:50:44'),
(1226, 1, 1219, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"547\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1219}', '2020-07-16 15:50:44'),
(1227, 1, 1221, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"621\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1221}', '2020-07-16 15:50:44'),
(1228, 1, 1223, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"546\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1223}', '2020-07-16 15:50:44'),
(1229, 1, 1222, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"612\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1222}', '2020-07-16 15:50:44'),
(1230, 1, 1224, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"622\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1224}', '2020-07-16 15:50:44'),
(1231, 1, 1225, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"551\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1225}', '2020-07-16 15:50:44'),
(1232, 1, 1226, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"611\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1226}', '2020-07-16 15:50:44'),
(1233, 1, 1227, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"548\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1227}', '2020-07-16 15:50:44'),
(1234, 1, 1228, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"553\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1228}', '2020-07-16 15:50:44'),
(1235, 1, 1229, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"610\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1229}', '2020-07-16 15:50:44'),
(1236, 1, 1230, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"547\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1230}', '2020-07-16 15:50:44'),
(1237, 1, 1231, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"552\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1231}', '2020-07-16 15:50:44'),
(1238, 1, 1232, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"609\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1232}', '2020-07-16 15:50:44'),
(1239, 1, 1233, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"546\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1233}', '2020-07-16 15:50:45'),
(1240, 1, 1234, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"550\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1234}', '2020-07-16 15:50:45'),
(1241, 1, 1235, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"608\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1235}', '2020-07-16 15:50:45'),
(1242, 1, 1236, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"551\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1236}', '2020-07-16 15:50:45'),
(1243, 1, 1237, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"549\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1237}', '2020-07-16 15:50:45'),
(1244, 1, 1238, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"607\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1238}', '2020-07-16 15:50:45'),
(1245, 1, 1239, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"553\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1239}', '2020-07-16 15:50:45'),
(1246, 1, 1240, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"244\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1240}', '2020-07-16 15:50:45'),
(1247, 1, 1241, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"626\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1241}', '2020-07-16 15:50:45'),
(1248, 1, 1242, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"552\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1242}', '2020-07-16 15:50:45'),
(1249, 1, 1243, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"243\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1243}', '2020-07-16 15:50:45'),
(1250, 1, 1244, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"625\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1244}', '2020-07-16 15:50:45'),
(1251, 1, 1245, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"550\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1245}', '2020-07-16 15:50:45'),
(1252, 1, 1246, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"242\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1246}', '2020-07-16 15:50:45'),
(1253, 1, 1247, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"624\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1247}', '2020-07-16 15:50:45'),
(1254, 1, 1248, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"549\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1248}', '2020-07-16 15:50:45'),
(1255, 1, 1249, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"241\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1249}', '2020-07-16 15:50:45'),
(1256, 1, 1250, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"623\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1250}', '2020-07-16 15:50:45'),
(1257, 1, 1251, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"244\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1251}', '2020-07-16 15:50:45'),
(1258, 1, 1252, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1005\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1252}', '2020-07-16 15:50:45'),
(1259, 1, 1253, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"621\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1253}', '2020-07-16 15:50:45'),
(1260, 1, 1254, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"243\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1254}', '2020-07-16 15:50:45'),
(1261, 1, 1255, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1004\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":2,\"id_stock_opname_item\":1255}', '2020-07-16 15:50:45'),
(1262, 1, 1256, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"622\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1256}', '2020-07-16 15:50:45'),
(1263, 1, 1257, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"242\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1257}', '2020-07-16 15:50:45'),
(1264, 1, 1258, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1006\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1258}', '2020-07-16 15:50:45'),
(1265, 1, 1259, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"548\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1259}', '2020-07-16 15:50:45'),
(1266, 1, 1260, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"241\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1260}', '2020-07-16 15:50:45'),
(1267, 1, 1261, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1012\",\"qty_before\":\"13\",\"qty_after\":\"0\",\"qty_miss\":-13,\"id_stock_opname\":2,\"id_stock_opname_item\":1261}', '2020-07-16 15:50:45'),
(1268, 1, 1262, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"547\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1262}', '2020-07-16 15:50:45'),
(1269, 1, 1263, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1005\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1263}', '2020-07-16 15:50:45'),
(1270, 1, 1264, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1011\",\"qty_before\":\"13\",\"qty_after\":\"0\",\"qty_miss\":-13,\"id_stock_opname\":2,\"id_stock_opname_item\":1264}', '2020-07-16 15:50:45'),
(1271, 1, 1265, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"546\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1265}', '2020-07-16 15:50:45'),
(1272, 1, 1266, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1004\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":3,\"id_stock_opname_item\":1266}', '2020-07-16 15:50:45'),
(1273, 1, 1267, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1010\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":2,\"id_stock_opname_item\":1267}', '2020-07-16 15:50:45'),
(1274, 1, 1268, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"551\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1268}', '2020-07-16 15:50:45'),
(1275, 1, 1269, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1006\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1269}', '2020-07-16 15:50:45'),
(1276, 1, 1270, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1009\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":2,\"id_stock_opname_item\":1270}', '2020-07-16 15:50:45'),
(1277, 1, 1272, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1012\",\"qty_before\":\"13\",\"qty_after\":\"0\",\"qty_miss\":-13,\"id_stock_opname\":3,\"id_stock_opname_item\":1272}', '2020-07-16 15:50:45');
INSERT INTO `t_document_history` (`id_document_history`, `id_karyawan`, `id_content`, `type_content`, `action`, `description`, `details`, `date`) VALUES
(1278, 1, 1271, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"553\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1271}', '2020-07-16 15:50:45'),
(1279, 1, 1273, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"198\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1273}', '2020-07-16 15:50:45'),
(1280, 1, 1274, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"552\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1274}', '2020-07-16 15:50:45'),
(1281, 1, 1275, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1011\",\"qty_before\":\"13\",\"qty_after\":\"0\",\"qty_miss\":-13,\"id_stock_opname\":3,\"id_stock_opname_item\":1275}', '2020-07-16 15:50:45'),
(1282, 1, 1276, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"195\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1276}', '2020-07-16 15:50:45'),
(1283, 1, 1278, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"550\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1278}', '2020-07-16 15:50:45'),
(1284, 1, 1277, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1010\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":3,\"id_stock_opname_item\":1277}', '2020-07-16 15:50:45'),
(1285, 1, 1279, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"194\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1279}', '2020-07-16 15:50:45'),
(1286, 1, 1281, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1009\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":3,\"id_stock_opname_item\":1281}', '2020-07-16 15:50:45'),
(1287, 1, 1280, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"549\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1280}', '2020-07-16 15:50:45'),
(1288, 1, 1282, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"190\",\"qty_before\":\"0\",\"qty_after\":\"1\",\"qty_miss\":1,\"id_stock_opname\":2,\"id_stock_opname_item\":1282}', '2020-07-16 15:50:45'),
(1289, 1, 1283, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"198\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1283}', '2020-07-16 15:50:45'),
(1290, 1, 1284, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"244\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1284}', '2020-07-16 15:50:45'),
(1291, 1, 1285, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"193\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1285}', '2020-07-16 15:50:45'),
(1292, 1, 1286, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"195\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1286}', '2020-07-16 15:50:45'),
(1293, 1, 1287, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"243\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1287}', '2020-07-16 15:50:45'),
(1294, 1, 1288, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"192\",\"qty_before\":\"0\",\"qty_after\":\"1\",\"qty_miss\":1,\"id_stock_opname\":2,\"id_stock_opname_item\":1288}', '2020-07-16 15:50:45'),
(1295, 1, 1289, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"194\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1289}', '2020-07-16 15:50:46'),
(1296, 1, 1290, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"242\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1290}', '2020-07-16 15:50:46'),
(1297, 1, 1291, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"197\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1291}', '2020-07-16 15:50:46'),
(1298, 1, 1292, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"190\",\"qty_before\":\"0\",\"qty_after\":\"1\",\"qty_miss\":1,\"id_stock_opname\":3,\"id_stock_opname_item\":1292}', '2020-07-16 15:50:46'),
(1299, 1, 1293, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"241\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1293}', '2020-07-16 15:50:46'),
(1300, 1, 1294, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"196\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1294}', '2020-07-16 15:50:46'),
(1301, 1, 1295, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"193\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1295}', '2020-07-16 15:50:46'),
(1302, 1, 1296, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1005\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1296}', '2020-07-16 15:50:46'),
(1303, 1, 1297, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"199\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1297}', '2020-07-16 15:50:46'),
(1304, 1, 1298, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"192\",\"qty_before\":\"0\",\"qty_after\":\"1\",\"qty_miss\":1,\"id_stock_opname\":3,\"id_stock_opname_item\":1298}', '2020-07-16 15:50:46'),
(1305, 1, 1299, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1004\",\"qty_before\":\"5\",\"qty_after\":\"0\",\"qty_miss\":-5,\"id_stock_opname\":4,\"id_stock_opname_item\":1299}', '2020-07-16 15:50:46'),
(1306, 1, 1300, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"191\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":2,\"id_stock_opname_item\":1300}', '2020-07-16 15:50:46'),
(1307, 1, 1301, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"197\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1301}', '2020-07-16 15:50:46'),
(1308, 1, 1302, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1006\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1302}', '2020-07-16 15:50:46'),
(1309, 1, 1303, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"864\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1303}', '2020-07-16 15:50:46'),
(1310, 1, 1304, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"196\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1304}', '2020-07-16 15:50:46'),
(1311, 1, 1305, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1012\",\"qty_before\":\"13\",\"qty_after\":\"0\",\"qty_miss\":-13,\"id_stock_opname\":4,\"id_stock_opname_item\":1305}', '2020-07-16 15:50:46'),
(1312, 1, 1306, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"277\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1306}', '2020-07-16 15:50:46'),
(1313, 1, 1307, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"199\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1307}', '2020-07-16 15:50:46'),
(1314, 1, 1308, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1011\",\"qty_before\":\"13\",\"qty_after\":\"0\",\"qty_miss\":-13,\"id_stock_opname\":4,\"id_stock_opname_item\":1308}', '2020-07-16 15:50:46'),
(1315, 1, 1309, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"278\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":2,\"id_stock_opname_item\":1309}', '2020-07-16 15:50:46'),
(1316, 1, 1310, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"191\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":3,\"id_stock_opname_item\":1310}', '2020-07-16 15:50:46'),
(1317, 1, 1311, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1010\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":4,\"id_stock_opname_item\":1311}', '2020-07-16 15:50:46'),
(1318, 1, 1312, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"864\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1312}', '2020-07-16 15:50:46'),
(1319, 1, 1313, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"1009\",\"qty_before\":\"12\",\"qty_after\":\"0\",\"qty_miss\":-12,\"id_stock_opname\":4,\"id_stock_opname_item\":1313}', '2020-07-16 15:50:46'),
(1320, 1, 1314, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"277\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1314}', '2020-07-16 15:50:46'),
(1321, 1, 1315, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"198\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1315}', '2020-07-16 15:50:46'),
(1322, 1, 1316, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"278\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":3,\"id_stock_opname_item\":1316}', '2020-07-16 15:50:46'),
(1323, 1, 1317, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"195\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1317}', '2020-07-16 15:50:46'),
(1324, 1, 1318, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"194\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1318}', '2020-07-16 15:50:46'),
(1325, 1, 1319, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"190\",\"qty_before\":\"0\",\"qty_after\":\"1\",\"qty_miss\":1,\"id_stock_opname\":4,\"id_stock_opname_item\":1319}', '2020-07-16 15:50:46'),
(1326, 1, 1320, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"193\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1320}', '2020-07-16 15:50:46'),
(1327, 1, 1321, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"192\",\"qty_before\":\"0\",\"qty_after\":\"1\",\"qty_miss\":1,\"id_stock_opname\":4,\"id_stock_opname_item\":1321}', '2020-07-16 15:50:46'),
(1328, 1, 1322, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"197\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1322}', '2020-07-16 15:50:46'),
(1329, 1, 1323, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"196\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1323}', '2020-07-16 15:50:46'),
(1330, 1, 1324, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"199\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1324}', '2020-07-16 15:50:46'),
(1331, 1, 1325, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"191\",\"qty_before\":\"2\",\"qty_after\":\"0\",\"qty_miss\":-2,\"id_stock_opname\":4,\"id_stock_opname_item\":1325}', '2020-07-16 15:50:46'),
(1332, 1, 1326, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"864\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1326}', '2020-07-16 15:50:46'),
(1333, 1, 1327, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"277\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1327}', '2020-07-16 15:50:46'),
(1334, 1, 1328, 't_stock_opname_item', 'create', 'Created a StockOpnameItem', '{\"id_barang\":\"278\",\"qty_before\":\"1\",\"qty_after\":\"0\",\"qty_miss\":-1,\"id_stock_opname\":4,\"id_stock_opname_item\":1328}', '2020-07-16 15:50:46'),
(1335, 1, 1, 't_barang_masuk', 'create', 'Created a BarangMasuk', '{\"keterangan\":\"teat\",\"tanggal\":\"2020-07-16\",\"input_by\":\"Galetto\",\"id_barang_masuk\":1}', '2020-07-16 15:52:12'),
(1336, 1, 1, 't_barang_masuk_item', 'create', 'Created a BarangMasukItem', '{\"id_barang\":\"190\",\"qty\":\"1\",\"id_barang_masuk\":1,\"id_barang_masuk_item\":1}', '2020-07-16 15:52:12'),
(1337, 1, 2, 't_barang_masuk', 'create', 'Created a BarangMasuk', '{\"keterangan\":\"test\",\"tanggal\":\"2020-07-16\",\"input_by\":\"Galetto\",\"id_barang_masuk\":2}', '2020-07-16 15:53:19'),
(1338, 1, 2, 't_barang_masuk_item', 'create', 'Created a BarangMasukItem', '{\"id_barang\":\"192\",\"qty\":\"1\",\"id_barang_masuk\":2,\"id_barang_masuk_item\":2}', '2020-07-16 15:53:19'),
(1339, 1, 3, 't_barang_masuk', 'create', 'Created a BarangMasuk', '{\"keterangan\":\"test\",\"tanggal\":\"2020-07-16\",\"input_by\":\"Galetto\",\"id_barang_masuk\":3}', '2020-07-16 15:53:19'),
(1340, 1, 3, 't_barang_masuk_item', 'create', 'Created a BarangMasukItem', '{\"id_barang\":\"192\",\"qty\":\"1\",\"id_barang_masuk\":3,\"id_barang_masuk_item\":3}', '2020-07-16 15:53:20'),
(1341, 1, 3, 't_barang_masuk', 'delete', 'Deleted a BarangMasuk', '[]', '2020-07-16 15:53:30'),
(1342, 1, 1, 't_barang_masuk', 'update', 'Updated a BarangMasuk', '{\"is_lock\":\"Y\"}', '2020-07-16 15:57:12'),
(1343, 1, 2, 't_barang_masuk', 'update', 'Updated a BarangMasuk', '{\"is_lock\":\"Y\"}', '2020-07-16 15:58:24'),
(1344, 1, 1141, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1141,\"barcode\":\"BRG001\",\"barcode_asli\":\"BRG001\",\"id_category\":\"1\",\"nama_barang\":\"Es Cendol\",\"warna\":\"Durian\",\"size\":\"Reguler\",\"harga_beli\":\"3000\",\"harga_jual\":\"5000\",\"satuan\":\"Cup\"}', '2020-07-16 23:58:37'),
(1345, 1, 1141, 'm_barang', 'update', 'Updated a Barang', '{\"id_jenis_barang\":\"2\"}', '2020-07-17 00:00:46'),
(1346, 1, 1141, 'm_barang', 'update', 'Updated a Barang', '{\"id_jenis_barang\":\"1\",\"last_stock\":\"5\"}', '2020-07-17 00:05:06'),
(1347, 1, 1, 'm_karyawan', 'update', 'Updated a Karyawan', '{\"nama_lengkap\":\"Admin PakePOS\",\"email\":\"info@pakepos.com\",\"alamat\":\"Tigaraksa\"}', '2020-07-17 00:11:44'),
(1348, 1, 1016, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":14,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1016}', '2020-07-17 11:14:56'),
(1349, 1, 1017, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":15,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1017}', '2020-07-17 11:14:56'),
(1350, 1, 1018, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":18,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1018}', '2020-07-17 11:14:56'),
(1351, 1, 1019, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1019}', '2020-07-17 11:14:56'),
(1352, 1, 1020, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1020}', '2020-07-17 11:14:56'),
(1353, 1, 1021, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1021}', '2020-07-17 11:14:56'),
(1354, 1, 1022, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1022}', '2020-07-17 11:14:56'),
(1355, 1, 1023, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":28,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1023}', '2020-07-17 11:14:56'),
(1356, 1, 1024, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":29,\"id_role_link\":1024}', '2020-07-17 11:14:56'),
(1357, 1, 1025, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1025}', '2020-07-17 11:14:56'),
(1358, 1, 1026, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":43,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1026}', '2020-07-17 11:14:56'),
(1359, 1, 1027, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1027}', '2020-07-17 11:14:56'),
(1360, 1, 1028, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1028}', '2020-07-17 11:14:56'),
(1361, 1, 1029, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":46,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1029}', '2020-07-17 11:14:56'),
(1362, 1, 1030, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1030}', '2020-07-17 11:14:56'),
(1363, 1, 1031, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":48,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1031}', '2020-07-17 11:14:56'),
(1364, 1, 1032, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":49,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1032}', '2020-07-17 11:14:56'),
(1365, 1, 1033, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":50,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1033}', '2020-07-17 11:14:56'),
(1366, 1, 1034, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1034}', '2020-07-17 11:14:56'),
(1367, 1, 1035, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":52,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1035}', '2020-07-17 11:14:56'),
(1368, 1, 1036, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":53,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1036}', '2020-07-17 11:14:56'),
(1369, 1, 1037, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1037}', '2020-07-17 11:14:56'),
(1370, 1, 1038, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":55,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1038}', '2020-07-17 11:14:56'),
(1371, 1, 1039, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":56,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1039}', '2020-07-17 11:14:56'),
(1372, 1, 1040, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":14,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1040}', '2020-07-17 11:24:00'),
(1373, 1, 1041, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":15,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1041}', '2020-07-17 11:24:00'),
(1374, 1, 1042, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":18,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1042}', '2020-07-17 11:24:00'),
(1375, 1, 1043, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1043}', '2020-07-17 11:24:00'),
(1376, 1, 1044, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1044}', '2020-07-17 11:24:00'),
(1377, 1, 1045, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1045}', '2020-07-17 11:24:00'),
(1378, 1, 1046, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1046}', '2020-07-17 11:24:00'),
(1379, 1, 1047, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":28,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1047}', '2020-07-17 11:24:00'),
(1380, 1, 1048, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":29,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1048}', '2020-07-17 11:24:00'),
(1381, 1, 1049, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1049}', '2020-07-17 11:24:00'),
(1382, 1, 1050, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":43,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1050}', '2020-07-17 11:24:00'),
(1383, 1, 1051, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1051}', '2020-07-17 11:24:00'),
(1384, 1, 1052, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1052}', '2020-07-17 11:24:00'),
(1385, 1, 1053, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":46,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1053}', '2020-07-17 11:24:00'),
(1386, 1, 1054, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1054}', '2020-07-17 11:24:00'),
(1387, 1, 1055, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":48,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1055}', '2020-07-17 11:24:00'),
(1388, 1, 1056, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":49,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1056}', '2020-07-17 11:24:00'),
(1389, 1, 1057, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":50,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1057}', '2020-07-17 11:24:00'),
(1390, 1, 1058, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1058}', '2020-07-17 11:24:00'),
(1391, 1, 1059, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":52,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1059}', '2020-07-17 11:24:00'),
(1392, 1, 1060, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":53,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1060}', '2020-07-17 11:24:00'),
(1393, 1, 1061, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1061}', '2020-07-17 11:24:00'),
(1394, 1, 1062, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":55,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1062}', '2020-07-17 11:24:00'),
(1395, 1, 1063, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":56,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1063}', '2020-07-17 11:24:00'),
(1396, 1, 1064, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":57,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1064}', '2020-07-17 11:24:00'),
(1397, 1, 1065, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":58,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1065}', '2020-07-17 11:24:00'),
(1398, 1, 1066, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":59,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1066}', '2020-07-17 11:24:00'),
(1399, 1, 1067, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":14,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1067}', '2020-07-27 21:56:31'),
(1400, 1, 1068, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":15,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1068}', '2020-07-27 21:56:32'),
(1401, 1, 1069, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":18,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1069}', '2020-07-27 21:56:32'),
(1402, 1, 1070, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1070}', '2020-07-27 21:56:32'),
(1403, 1, 1071, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1071}', '2020-07-27 21:56:32'),
(1404, 1, 1072, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1072}', '2020-07-27 21:56:32'),
(1405, 1, 1073, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1073}', '2020-07-27 21:56:32'),
(1406, 1, 1074, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":28,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1074}', '2020-07-27 21:56:32'),
(1407, 1, 1075, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":29,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1075}', '2020-07-27 21:56:32'),
(1408, 1, 1076, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1076}', '2020-07-27 21:56:32'),
(1409, 1, 1077, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":43,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1077}', '2020-07-27 21:56:32'),
(1410, 1, 1078, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1078}', '2020-07-27 21:56:32'),
(1411, 1, 1079, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1079}', '2020-07-27 21:56:32'),
(1412, 1, 1080, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":46,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1080}', '2020-07-27 21:56:32'),
(1413, 1, 1081, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1081}', '2020-07-27 21:56:32'),
(1414, 1, 1082, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":48,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1082}', '2020-07-27 21:56:32'),
(1415, 1, 1083, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":49,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1083}', '2020-07-27 21:56:32'),
(1416, 1, 1084, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":50,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1084}', '2020-07-27 21:56:32'),
(1417, 1, 1085, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1085}', '2020-07-27 21:56:32'),
(1418, 1, 1086, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":52,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1086}', '2020-07-27 21:56:32'),
(1419, 1, 1087, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":53,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1087}', '2020-07-27 21:56:32'),
(1420, 1, 1088, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1088}', '2020-07-27 21:56:32'),
(1421, 1, 1089, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":55,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1089}', '2020-07-27 21:56:32'),
(1422, 1, 1090, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":56,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1090}', '2020-07-27 21:56:32'),
(1423, 1, 1091, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":57,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1091}', '2020-07-27 21:56:32'),
(1424, 1, 1092, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":58,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1092}', '2020-07-27 21:56:32'),
(1425, 1, 1093, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":59,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1093}', '2020-07-27 21:56:32'),
(1426, 1, 1094, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":60,\"id_role_link\":1094}', '2020-07-27 21:56:32'),
(1427, 1, 1095, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":61,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1095}', '2020-07-27 21:56:32'),
(1428, 1, 1141, 'm_barang', 'update', 'Updated a Barang', '{\"id_category\":\"2\",\"id_merk\":\"2\"}', '2020-07-27 22:06:58'),
(1429, 1, 1, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"-\",\"supplier\":\"sUPPLIER\",\"kode_po\":\"PO00123\",\"tanggal\":\"2020-09-25\",\"input_by\":\"Admin PakePOS\",\"id_po\":1}', '2020-09-25 08:38:50'),
(1430, 1, 1, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1141\",\"size\":\"Reguler\",\"warna\":\"Durian\",\"qty_po\":\"1\",\"qty_open\":\"1\",\"harga_beli\":\"3000\",\"id_po\":1,\"id_po_item\":1}', '2020-09-25 08:38:50'),
(1431, 1, 1142, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1142,\"barcode\":\"Test\",\"barcode_asli\":\"test\",\"id_category\":\"1\",\"id_jenis_barang\":\"1\",\"id_merk\":\"2\",\"nama_barang\":\"Test\",\"warna\":\"test\",\"size\":\"test\",\"harga_beli\":\"12\",\"harga_jual\":\"23\",\"satuan\":\"Test\",\"last_stock\":\"2\"}', '2020-10-22 09:41:18'),
(1432, 1, 1, 't_po', 'update', 'Updated a PO', '{\"is_lock\":\"Y\"}', '2021-01-08 21:58:44'),
(1433, 1, 2, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"Test\",\"supplier\":\"Toyotek\",\"kode_po\":\"PO001\",\"tanggal\":\"2021-01-08\",\"input_by\":\"Admin PakePOS\",\"id_po\":2}', '2021-01-08 22:00:44'),
(1434, 1, 2, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1141\",\"size\":\"Reguler\",\"warna\":\"Durian\",\"qty_po\":\"100\",\"qty_open\":\"100\",\"harga_beli\":\"3000\",\"id_po\":2,\"id_po_item\":2}', '2021-01-08 22:00:44'),
(1435, 1, 2, 't_po', 'update', 'Updated a PO', '{\"is_lock\":\"Y\"}', '2021-01-08 22:00:58'),
(1436, 1, 1, 't_penerimaan_barang', 'create', 'Created a PenerimaanBarang', '{\"keterangan\":\"Test Receive Batch 1\",\"id_po\":\"2\",\"tanggal\":\"2021-01-08\",\"input_by\":\"Admin PakePOS\",\"id_penerimaan_barang\":1}', '2021-01-08 22:01:47'),
(1437, 1, 1, 't_penerimaan_barang_item', 'create', 'Created a PenerimaanBarangItem', '{\"id_barang\":\"1141\",\"qty\":\"50\",\"qty_sisa\":50,\"qty_open\":100,\"qty_po\":100,\"id_penerimaan_barang\":1,\"id_penerimaan_barang_item\":1}', '2021-01-08 22:01:47'),
(1438, 1, 1, 't_penerimaan_barang', 'update', 'Updated a PenerimaanBarang', '{\"is_lock\":\"Y\"}', '2021-01-08 22:02:54'),
(1439, 1, 1, 't_retur', 'create', 'Created a Retur', '{\"keterangan\":\"Test\",\"tanggal\":\"2021-01-08\",\"id_po\":\"2\",\"input_by\":\"Admin PakePOS\",\"id_retur\":1}', '2021-01-08 22:06:17'),
(1440, 1, 1, 't_retur_item', 'create', 'Created a ReturItem', '{\"id_barang\":\"1141\",\"qty\":\"5\",\"id_retur\":1,\"id_retur_item\":1}', '2021-01-08 22:06:17'),
(1441, 1, 1, 't_retur', 'update', 'Updated a Retur', '{\"is_lock\":\"Y\"}', '2021-01-08 22:06:21'),
(1442, 1, 3, 'm_karyawan', 'create', 'Created a Karyawan', '{\"id_karyawan\":3,\"username\":\"server\",\"nama_lengkap\":\"server\",\"email\":\"server@server.com\",\"nomor_telepon\":\"0\",\"alamat\":\"Mustika Tigaraksa\",\"level\":\"Operator\",\"status\":\"Enable\",\"password\":\"$2y$10$pve.3\\/1PG.V949\\/R6IKdt.Wy9Dbw5WYp2n429s0\\/JNzYCvg4bb1VS\"}', '2021-01-14 20:56:35'),
(1443, 1, 4, 'm_role', 'create', 'Created a Role', '{\"id_role\":4,\"role_name\":\"Server\",\"level\":\"User\"}', '2021-01-14 21:20:37'),
(1444, 1, 3, 'm_karyawan', 'update', 'Updated a Karyawan', '{\"level\":\"Kasir\"}', '2021-01-14 21:21:29'),
(1445, 1, 1, 'm_category', 'update', 'Updated a Category', '{\"nama_category\":\"Gudang Kantor\"}', '2021-01-14 21:25:06'),
(1446, 1, 2, 'm_category', 'update', 'Updated a Category', '{\"nama_category\":\"WTP\"}', '2021-01-14 21:25:13'),
(1447, 3, 1141, 'm_barang', 'update', 'Updated a Barang', '{\"is_delete\":\"Y\"}', '2021-01-14 21:26:50'),
(1448, 3, 1142, 'm_barang', 'update', 'Updated a Barang', '{\"is_delete\":\"Y\"}', '2021-01-14 21:26:54'),
(1449, 3, 1143, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1143,\"barcode\":\"valve\",\"barcode_asli\":\"valve\",\"id_category\":\"1\",\"nama_barang\":\"Valve\",\"warna\":\"-\",\"size\":\"-\",\"last_stock\":\"100\"}', '2021-01-14 21:35:25'),
(1450, 1, 1096, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":14,\"can_access\":\"1\",\"id_role_link\":1096}', '2021-01-14 22:05:28'),
(1451, 1, 1097, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":15,\"id_role_link\":1097}', '2021-01-14 22:05:29'),
(1452, 1, 1098, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":18,\"can_access\":\"1\",\"id_role_link\":1098}', '2021-01-14 22:05:29'),
(1453, 1, 1099, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"id_role_link\":1099}', '2021-01-14 22:05:29'),
(1454, 1, 1100, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1100}', '2021-01-14 22:05:29'),
(1455, 1, 1101, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1101}', '2021-01-14 22:05:29'),
(1456, 1, 1102, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1102}', '2021-01-14 22:05:29'),
(1457, 1, 1103, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":28,\"id_role_link\":1103}', '2021-01-14 22:05:29'),
(1458, 1, 1104, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":29,\"id_role_link\":1104}', '2021-01-14 22:05:30'),
(1459, 1, 1105, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1105}', '2021-01-14 22:05:30'),
(1460, 1, 1106, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":43,\"id_role_link\":1106}', '2021-01-14 22:05:30'),
(1461, 1, 1107, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1107}', '2021-01-14 22:05:30'),
(1462, 1, 1108, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1108}', '2021-01-14 22:05:30'),
(1463, 1, 1109, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":46,\"id_role_link\":1109}', '2021-01-14 22:05:30'),
(1464, 1, 1110, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1110}', '2021-01-14 22:05:30'),
(1465, 1, 1111, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":48,\"id_role_link\":1111}', '2021-01-14 22:05:30'),
(1466, 1, 1112, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":49,\"id_role_link\":1112}', '2021-01-14 22:05:30'),
(1467, 1, 1113, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":50,\"id_role_link\":1113}', '2021-01-14 22:05:30'),
(1468, 1, 1114, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1114}', '2021-01-14 22:05:30'),
(1469, 1, 1115, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":52,\"id_role_link\":1115}', '2021-01-14 22:05:30'),
(1470, 1, 1116, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":53,\"id_role_link\":1116}', '2021-01-14 22:05:30'),
(1471, 1, 1117, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1117}', '2021-01-14 22:05:31'),
(1472, 1, 1118, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":55,\"id_role_link\":1118}', '2021-01-14 22:05:31'),
(1473, 1, 1119, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":56,\"id_role_link\":1119}', '2021-01-14 22:05:31'),
(1474, 1, 1120, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":57,\"id_role_link\":1120}', '2021-01-14 22:05:31'),
(1475, 1, 1121, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":58,\"id_role_link\":1121}', '2021-01-14 22:05:31'),
(1476, 1, 1122, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":59,\"id_role_link\":1122}', '2021-01-14 22:05:31'),
(1477, 1, 1123, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":60,\"id_role_link\":1123}', '2021-01-14 22:05:31'),
(1478, 1, 1124, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":61,\"id_role_link\":1124}', '2021-01-14 22:05:31'),
(1479, 3, 1144, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1144,\"barcode\":\"lockable\",\"barcode_asli\":\"lockable\",\"id_category\":\"1\",\"nama_barang\":\"Lockable\",\"warna\":\"-\",\"size\":\"-\",\"last_stock\":\"0\"}', '2021-01-14 22:27:51'),
(1480, 3, 3, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"Kocheng Lagi\",\"supplier\":\"Toyotek\",\"kode_po\":\"PO210128-2\",\"tanggal\":\"2021-01-28\",\"input_by\":\"server\",\"id_po\":3}', '2021-01-28 21:53:35'),
(1481, 3, 3, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1144\",\"size\":\"-\",\"warna\":\"-\",\"qty_po\":\"1\",\"qty_open\":\"1\",\"harga_beli\":\"0\",\"id_po\":3,\"id_po_item\":3}', '2021-01-28 21:53:35'),
(1482, 3, 4, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"Uang Sampah\",\"supplier\":\"Toyotek\",\"kode_po\":\"PO210128-3\",\"tanggal\":\"2021-01-29\",\"input_by\":\"server\",\"id_po\":4}', '2021-01-28 22:00:39'),
(1483, 3, 4, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1143\",\"size\":\"-\",\"warna\":\"-\",\"qty_po\":\"1\",\"qty_open\":\"1\",\"harga_beli\":\"0\",\"id_po\":4,\"id_po_item\":4}', '2021-01-28 22:00:39'),
(1484, 3, 1145, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1145,\"id_category\":\"1\",\"nama_barang\":\"Flower\",\"warna\":\"-\",\"size\":\"-\",\"last_stock\":\"0\"}', '2021-01-28 22:23:06'),
(1485, 3, 1146, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1146,\"id_category\":\"2\",\"nama_barang\":\"Rocket\",\"warna\":\"-\",\"size\":\"-\",\"last_stock\":\"0\"}', '2021-01-28 23:23:59'),
(1486, 3, 1147, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1147,\"id_category\":\"2\",\"nama_barang\":\"Strawberry\",\"warna\":\"-\",\"size\":\"-\",\"last_stock\":\"0\"}', '2021-01-28 23:32:39'),
(1487, 3, 1148, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1148,\"id_category\":\"1\",\"nama_barang\":\"Combro\",\"warna\":\"-\",\"size\":\"-\",\"last_stock\":\"0\"}', '2021-01-28 23:38:53'),
(1488, 3, 1149, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1149,\"id_category\":\"1\",\"nama_barang\":\"Combro\",\"warna\":\"-\",\"size\":\"-\",\"last_stock\":\"0\"}', '2021-01-28 23:44:07'),
(1489, 3, 1150, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1150,\"id_category\":\"2\",\"nama_barang\":\"Flower\",\"warna\":\"-\",\"size\":\"-\",\"last_stock\":\"0as\"}', '2021-01-28 23:44:45'),
(1490, 3, 1151, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1151,\"id_category\":\"1\",\"nama_barang\":\"Strawberry\",\"warna\":\"-\",\"size\":\"-\",\"last_stock\":\"0as\"}', '2021-01-28 23:46:25'),
(1491, 3, 1152, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1152}', '2021-01-28 23:53:16'),
(1492, 3, 1153, 'm_barang', 'create', 'Created a Barang', '{\"id_barang\":1153,\"id_category\":\"1\",\"nama_barang\":\"Flower\",\"warna\":\"-\",\"size\":\"-\",\"last_stock\":\"0\"}', '2021-01-28 23:57:08'),
(1493, 3, 1153, 'm_barang', 'update', 'Updated a Barang', '{\"is_delete\":\"Y\"}', '2021-01-28 23:57:16'),
(1494, 3, 1154, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"pizza\",\"id_category\":\"1\",\"size\":\"-\",\"last_stock\":\"0\",\"id_barang\":1154}', '2021-01-29 00:04:36'),
(1495, 3, 1155, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Flower\",\"id_category\":\"1\",\"size\":\"-\",\"last_stock\":\"0\",\"is_limbah\":\"Y\",\"id_barang\":1155}', '2021-01-29 00:05:39'),
(1496, 1, 1125, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":14,\"can_access\":\"1\",\"id_role_link\":1125}', '2021-01-29 21:16:27'),
(1497, 1, 1126, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":15,\"id_role_link\":1126}', '2021-01-29 21:16:28'),
(1498, 1, 1127, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":18,\"can_access\":\"1\",\"id_role_link\":1127}', '2021-01-29 21:16:28'),
(1499, 1, 1128, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"id_role_link\":1128}', '2021-01-29 21:16:28'),
(1500, 1, 1129, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1129}', '2021-01-29 21:16:28'),
(1501, 1, 1130, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1130}', '2021-01-29 21:16:28'),
(1502, 1, 1131, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1131}', '2021-01-29 21:16:28'),
(1503, 1, 1132, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":28,\"id_role_link\":1132}', '2021-01-29 21:16:28'),
(1504, 1, 1133, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":29,\"id_role_link\":1133}', '2021-01-29 21:16:28');
INSERT INTO `t_document_history` (`id_document_history`, `id_karyawan`, `id_content`, `type_content`, `action`, `description`, `details`, `date`) VALUES
(1505, 1, 1134, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1134}', '2021-01-29 21:16:29'),
(1506, 1, 1135, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":43,\"id_role_link\":1135}', '2021-01-29 21:16:29'),
(1507, 1, 1136, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1136}', '2021-01-29 21:16:29'),
(1508, 1, 1137, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1137}', '2021-01-29 21:16:29'),
(1509, 1, 1138, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":46,\"id_role_link\":1138}', '2021-01-29 21:16:29'),
(1510, 1, 1139, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1139}', '2021-01-29 21:16:29'),
(1511, 1, 1140, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":48,\"id_role_link\":1140}', '2021-01-29 21:16:30'),
(1512, 1, 1141, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":49,\"id_role_link\":1141}', '2021-01-29 21:16:30'),
(1513, 1, 1142, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":50,\"id_role_link\":1142}', '2021-01-29 21:16:30'),
(1514, 1, 1143, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1143}', '2021-01-29 21:16:30'),
(1515, 1, 1144, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":52,\"id_role_link\":1144}', '2021-01-29 21:16:30'),
(1516, 1, 1145, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":53,\"id_role_link\":1145}', '2021-01-29 21:16:30'),
(1517, 1, 1146, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1146}', '2021-01-29 21:16:30'),
(1518, 1, 1147, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":55,\"id_role_link\":1147}', '2021-01-29 21:16:31'),
(1519, 1, 1148, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":56,\"id_role_link\":1148}', '2021-01-29 21:16:31'),
(1520, 1, 1149, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":57,\"id_role_link\":1149}', '2021-01-29 21:16:31'),
(1521, 1, 1150, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":58,\"id_role_link\":1150}', '2021-01-29 21:16:31'),
(1522, 1, 1151, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":59,\"id_role_link\":1151}', '2021-01-29 21:16:31'),
(1523, 1, 1152, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":60,\"id_role_link\":1152}', '2021-01-29 21:16:31'),
(1524, 1, 1153, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":61,\"id_role_link\":1153}', '2021-01-29 21:16:31'),
(1525, 1, 1154, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":62,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1154}', '2021-01-29 21:16:31'),
(1526, 3, 1, 't_limbah_masuk', 'create', 'Created a LimbahMasuk', '{\"keterangan\":\"Limbah Heri\",\"tanggal\":\"2021-01-29\",\"input_by\":\"server\",\"id_limbah_masuk\":1}', '2021-01-29 22:47:40'),
(1527, 3, 1, 't_limbah_masuk_item', 'create', 'Created a LimbahMasukItem', '{\"id_barang\":\"1155\",\"qty\":\"10\",\"id_limbah_masuk\":1,\"id_limbah_masuk_item\":1}', '2021-01-29 22:47:41'),
(1528, 1, 1155, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":14,\"can_access\":\"1\",\"id_role_link\":1155}', '2021-01-29 23:00:25'),
(1529, 1, 1156, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":15,\"id_role_link\":1156}', '2021-01-29 23:00:26'),
(1530, 1, 1157, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":18,\"can_access\":\"1\",\"id_role_link\":1157}', '2021-01-29 23:00:26'),
(1531, 1, 1158, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"id_role_link\":1158}', '2021-01-29 23:00:26'),
(1532, 1, 1159, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1159}', '2021-01-29 23:00:26'),
(1533, 1, 1160, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1160}', '2021-01-29 23:00:26'),
(1534, 1, 1161, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1161}', '2021-01-29 23:00:26'),
(1535, 1, 1162, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":28,\"id_role_link\":1162}', '2021-01-29 23:00:26'),
(1536, 1, 1163, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":29,\"id_role_link\":1163}', '2021-01-29 23:00:26'),
(1537, 1, 1164, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1164}', '2021-01-29 23:00:26'),
(1538, 1, 1165, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":43,\"id_role_link\":1165}', '2021-01-29 23:00:26'),
(1539, 1, 1166, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1166}', '2021-01-29 23:00:26'),
(1540, 1, 1167, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1167}', '2021-01-29 23:00:26'),
(1541, 1, 1168, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":46,\"id_role_link\":1168}', '2021-01-29 23:00:27'),
(1542, 1, 1169, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1169}', '2021-01-29 23:00:27'),
(1543, 1, 1170, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":48,\"id_role_link\":1170}', '2021-01-29 23:00:27'),
(1544, 1, 1171, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":49,\"id_role_link\":1171}', '2021-01-29 23:00:27'),
(1545, 1, 1172, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":50,\"id_role_link\":1172}', '2021-01-29 23:00:27'),
(1546, 1, 1173, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1173}', '2021-01-29 23:00:27'),
(1547, 1, 1174, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":52,\"id_role_link\":1174}', '2021-01-29 23:00:27'),
(1548, 1, 1175, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":53,\"id_role_link\":1175}', '2021-01-29 23:00:27'),
(1549, 1, 1176, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1176}', '2021-01-29 23:00:27'),
(1550, 1, 1177, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":55,\"id_role_link\":1177}', '2021-01-29 23:00:27'),
(1551, 1, 1178, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":56,\"id_role_link\":1178}', '2021-01-29 23:00:27'),
(1552, 1, 1179, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":57,\"id_role_link\":1179}', '2021-01-29 23:00:27'),
(1553, 1, 1180, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":58,\"id_role_link\":1180}', '2021-01-29 23:00:28'),
(1554, 1, 1181, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":59,\"id_role_link\":1181}', '2021-01-29 23:00:28'),
(1555, 1, 1182, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":60,\"id_role_link\":1182}', '2021-01-29 23:00:28'),
(1556, 1, 1183, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":61,\"id_role_link\":1183}', '2021-01-29 23:00:28'),
(1557, 1, 1184, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":62,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1184}', '2021-01-29 23:00:28'),
(1558, 1, 1185, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"3\",\"id_menu\":63,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1185}', '2021-01-29 23:00:28'),
(1559, 3, 1156, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"kaporit\",\"id_category\":\"2\",\"size\":\"12\",\"last_stock\":\"0\",\"is_limbah\":\"Y\",\"id_barang\":1156}', '2021-02-20 15:00:44'),
(1560, 1, 1, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"A01\\/01\",\"tanggal\":\"2021-02-20\",\"input_by\":\"Admin PakePOS\",\"id_pengeluaran_barang\":1}', '2021-02-20 16:59:15'),
(1561, 1, 1, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1156\",\"qty\":\"2\",\"id_pengeluaran_barang\":1,\"id_pengeluaran_barang_item\":1}', '2021-02-20 16:59:15'),
(1562, 1, 2, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1144\",\"qty\":\"5\",\"id_pengeluaran_barang\":1,\"id_pengeluaran_barang_item\":2}', '2021-02-20 16:59:15'),
(1563, 1, 1186, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":14,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1186}', '2021-03-08 22:47:40'),
(1564, 1, 1187, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":15,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1187}', '2021-03-08 22:47:40'),
(1565, 1, 1188, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":18,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1188}', '2021-03-08 22:47:40'),
(1566, 1, 1189, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1189}', '2021-03-08 22:47:40'),
(1567, 1, 1190, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1190}', '2021-03-08 22:47:40'),
(1568, 1, 1191, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1191}', '2021-03-08 22:47:40'),
(1569, 1, 1192, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1192}', '2021-03-08 22:47:40'),
(1570, 1, 1193, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":28,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1193}', '2021-03-08 22:47:40'),
(1571, 1, 1194, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":29,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1194}', '2021-03-08 22:47:40'),
(1572, 1, 1195, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1195}', '2021-03-08 22:47:40'),
(1573, 1, 1196, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":43,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1196}', '2021-03-08 22:47:40'),
(1574, 1, 1197, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1197}', '2021-03-08 22:47:40'),
(1575, 1, 1198, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1198}', '2021-03-08 22:47:40'),
(1576, 1, 1199, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":46,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1199}', '2021-03-08 22:47:40'),
(1577, 1, 1200, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1200}', '2021-03-08 22:47:40'),
(1578, 1, 1201, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":48,\"id_role_link\":1201}', '2021-03-08 22:47:40'),
(1579, 1, 1202, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":49,\"id_role_link\":1202}', '2021-03-08 22:47:40'),
(1580, 1, 1203, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":50,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1203}', '2021-03-08 22:47:40'),
(1581, 1, 1204, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1204}', '2021-03-08 22:47:40'),
(1582, 1, 1205, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":52,\"id_role_link\":1205}', '2021-03-08 22:47:40'),
(1583, 1, 1206, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":53,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1206}', '2021-03-08 22:47:40'),
(1584, 1, 1207, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1207}', '2021-03-08 22:47:40'),
(1585, 1, 1208, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":55,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1208}', '2021-03-08 22:47:40'),
(1586, 1, 1209, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":56,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1209}', '2021-03-08 22:47:40'),
(1587, 1, 1210, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":57,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1210}', '2021-03-08 22:47:40'),
(1588, 1, 1211, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":58,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1211}', '2021-03-08 22:47:40'),
(1589, 1, 1212, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":59,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1212}', '2021-03-08 22:47:40'),
(1590, 1, 1213, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":60,\"id_role_link\":1213}', '2021-03-08 22:47:40'),
(1591, 1, 1214, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":61,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1214}', '2021-03-08 22:47:40'),
(1592, 1, 1215, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":62,\"id_role_link\":1215}', '2021-03-08 22:47:40'),
(1593, 1, 1216, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":63,\"id_role_link\":1216}', '2021-03-08 22:47:40'),
(1594, 1, 5, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"Test\",\"supplier\":\"Test\",\"kode_po\":\"001\\/TSM\\/PO\\/03\\/2021\",\"tanggal\":\"2021-03-10\",\"input_by\":\"Admin PakePOS\",\"id_po\":5}', '2021-03-10 14:12:12'),
(1595, 1, 5, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1155\",\"size\":\"-\",\"warna\":\"\",\"qty_po\":\"1\",\"qty_open\":\"1\",\"harga_beli\":\"0\",\"id_po\":5,\"id_po_item\":5}', '2021-03-10 14:12:12'),
(1596, 1, 1156, 'm_barang', 'update', 'Updated a Barang', '{\"nama_barang\":\"Kaporit\",\"satuan\":\"BAG\",\"last_stock\":\"6\",\"min_stock\":\"5\",\"max_stock\":\"500\",\"is_limbah\":null}', '2021-03-10 16:38:06'),
(1597, 1, 1157, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Limbah Kaporit\",\"id_category\":\"2\",\"satuan\":\"BAG\",\"size\":\"1\",\"jenis_barang\":null,\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"500\",\"is_limbah\":\"Y\",\"id_barang\":1157}', '2021-03-10 16:39:55'),
(1598, 1, 2, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Test\",\"tanggal\":\"2021-03-10\",\"input_by\":\"Admin PakePOS\",\"id_pengeluaran_barang\":2}', '2021-03-10 16:41:12'),
(1599, 1, 3, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1156\",\"qty\":\"5\",\"id_pengeluaran_barang\":2,\"id_pengeluaran_barang_item\":3}', '2021-03-10 16:41:12'),
(1600, 1, 2, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-03-10 16:41:16'),
(1601, 1, 2, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-03-10 16:43:20'),
(1602, 1, 1217, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":14,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1217}', '2021-03-10 16:52:34'),
(1603, 1, 1218, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":15,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1218}', '2021-03-10 16:52:34'),
(1604, 1, 1219, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":18,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1219}', '2021-03-10 16:52:34'),
(1605, 1, 1220, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1220}', '2021-03-10 16:52:34'),
(1606, 1, 1221, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1221}', '2021-03-10 16:52:34'),
(1607, 1, 1222, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1222}', '2021-03-10 16:52:34'),
(1608, 1, 1223, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1223}', '2021-03-10 16:52:34'),
(1609, 1, 1224, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":28,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1224}', '2021-03-10 16:52:34'),
(1610, 1, 1225, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":29,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1225}', '2021-03-10 16:52:34'),
(1611, 1, 1226, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1226}', '2021-03-10 16:52:34'),
(1612, 1, 1227, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":43,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1227}', '2021-03-10 16:52:34'),
(1613, 1, 1228, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1228}', '2021-03-10 16:52:34'),
(1614, 1, 1229, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1229}', '2021-03-10 16:52:34'),
(1615, 1, 1230, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":46,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1230}', '2021-03-10 16:52:34'),
(1616, 1, 1231, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1231}', '2021-03-10 16:52:34'),
(1617, 1, 1232, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":48,\"id_role_link\":1232}', '2021-03-10 16:52:34'),
(1618, 1, 1233, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":49,\"id_role_link\":1233}', '2021-03-10 16:52:34'),
(1619, 1, 1234, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":50,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1234}', '2021-03-10 16:52:34'),
(1620, 1, 1235, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1235}', '2021-03-10 16:52:34'),
(1621, 1, 1236, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":52,\"id_role_link\":1236}', '2021-03-10 16:52:34'),
(1622, 1, 1237, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":53,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1237}', '2021-03-10 16:52:34'),
(1623, 1, 1238, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1238}', '2021-03-10 16:52:34'),
(1624, 1, 1239, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":55,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1239}', '2021-03-10 16:52:34'),
(1625, 1, 1240, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":56,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1240}', '2021-03-10 16:52:34'),
(1626, 1, 1241, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":57,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1241}', '2021-03-10 16:52:34'),
(1627, 1, 1242, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":58,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1242}', '2021-03-10 16:52:34'),
(1628, 1, 1243, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":59,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1243}', '2021-03-10 16:52:34'),
(1629, 1, 1244, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":60,\"id_role_link\":1244}', '2021-03-10 16:52:34'),
(1630, 1, 1245, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":61,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1245}', '2021-03-10 16:52:34'),
(1631, 1, 1246, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":63,\"id_role_link\":1246}', '2021-03-10 16:52:34'),
(1632, 1, 1247, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":64,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1247}', '2021-03-10 16:52:34'),
(1633, 1, 1248, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":14,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1248}', '2021-03-11 11:16:07'),
(1634, 1, 1249, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":15,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1249}', '2021-03-11 11:16:07'),
(1635, 1, 1250, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":18,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1250}', '2021-03-11 11:16:07'),
(1636, 1, 1251, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1251}', '2021-03-11 11:16:07'),
(1637, 1, 1252, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1252}', '2021-03-11 11:16:07'),
(1638, 1, 1253, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1253}', '2021-03-11 11:16:07'),
(1639, 1, 1254, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1254}', '2021-03-11 11:16:07'),
(1640, 1, 1255, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":28,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1255}', '2021-03-11 11:16:07'),
(1641, 1, 1256, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":29,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1256}', '2021-03-11 11:16:07'),
(1642, 1, 1257, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1257}', '2021-03-11 11:16:07'),
(1643, 1, 1258, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":43,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1258}', '2021-03-11 11:16:07'),
(1644, 1, 1259, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1259}', '2021-03-11 11:16:07'),
(1645, 1, 1260, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1260}', '2021-03-11 11:16:07'),
(1646, 1, 1261, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":46,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1261}', '2021-03-11 11:16:07'),
(1647, 1, 1262, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1262}', '2021-03-11 11:16:07'),
(1648, 1, 1263, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":48,\"id_role_link\":1263}', '2021-03-11 11:16:07'),
(1649, 1, 1264, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":49,\"id_role_link\":1264}', '2021-03-11 11:16:07'),
(1650, 1, 1265, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":50,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1265}', '2021-03-11 11:16:07'),
(1651, 1, 1266, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1266}', '2021-03-11 11:16:07'),
(1652, 1, 1267, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":52,\"id_role_link\":1267}', '2021-03-11 11:16:07'),
(1653, 1, 1268, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":53,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1268}', '2021-03-11 11:16:07'),
(1654, 1, 1269, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1269}', '2021-03-11 11:16:07'),
(1655, 1, 1270, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":55,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1270}', '2021-03-11 11:16:07'),
(1656, 1, 1271, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":56,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1271}', '2021-03-11 11:16:07'),
(1657, 1, 1272, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":57,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1272}', '2021-03-11 11:16:07'),
(1658, 1, 1273, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":58,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1273}', '2021-03-11 11:16:07'),
(1659, 1, 1274, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":59,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1274}', '2021-03-11 11:16:07'),
(1660, 1, 1275, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":60,\"id_role_link\":1275}', '2021-03-11 11:16:07'),
(1661, 1, 1276, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":61,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1276}', '2021-03-11 11:16:07'),
(1662, 1, 1277, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":63,\"id_role_link\":1277}', '2021-03-11 11:16:07'),
(1663, 1, 1278, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":64,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1278}', '2021-03-11 11:16:07'),
(1664, 1, 1279, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":65,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1279}', '2021-03-11 11:16:07'),
(1665, 1, 1280, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":14,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1280}', '2021-03-11 11:18:19'),
(1666, 1, 1281, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":15,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1281}', '2021-03-11 11:18:19'),
(1667, 1, 1282, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":18,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1282}', '2021-03-11 11:18:19'),
(1668, 1, 1283, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1283}', '2021-03-11 11:18:19'),
(1669, 1, 1284, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1284}', '2021-03-11 11:18:19'),
(1670, 1, 1285, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1285}', '2021-03-11 11:18:19'),
(1671, 1, 1286, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1286}', '2021-03-11 11:18:19'),
(1672, 1, 1287, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":28,\"id_role_link\":1287}', '2021-03-11 11:18:19'),
(1673, 1, 1288, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":29,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1288}', '2021-03-11 11:18:19'),
(1674, 1, 1289, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1289}', '2021-03-11 11:18:19'),
(1675, 1, 1290, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":43,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1290}', '2021-03-11 11:18:19'),
(1676, 1, 1291, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1291}', '2021-03-11 11:18:19'),
(1677, 1, 1292, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1292}', '2021-03-11 11:18:19'),
(1678, 1, 1293, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":46,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1293}', '2021-03-11 11:18:19'),
(1679, 1, 1294, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1294}', '2021-03-11 11:18:19'),
(1680, 1, 1295, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":48,\"id_role_link\":1295}', '2021-03-11 11:18:19'),
(1681, 1, 1296, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":49,\"id_role_link\":1296}', '2021-03-11 11:18:19'),
(1682, 1, 1297, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":50,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1297}', '2021-03-11 11:18:19'),
(1683, 1, 1298, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1298}', '2021-03-11 11:18:19'),
(1684, 1, 1299, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":52,\"id_role_link\":1299}', '2021-03-11 11:18:19'),
(1685, 1, 1300, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":53,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1300}', '2021-03-11 11:18:19'),
(1686, 1, 1301, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1301}', '2021-03-11 11:18:19'),
(1687, 1, 1302, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":55,\"id_role_link\":1302}', '2021-03-11 11:18:19'),
(1688, 1, 1303, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":56,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1303}', '2021-03-11 11:18:19'),
(1689, 1, 1304, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":57,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1304}', '2021-03-11 11:18:19'),
(1690, 1, 1305, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":58,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1305}', '2021-03-11 11:18:19'),
(1691, 1, 1306, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":59,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1306}', '2021-03-11 11:18:19'),
(1692, 1, 1307, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":60,\"id_role_link\":1307}', '2021-03-11 11:18:19'),
(1693, 1, 1308, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":61,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1308}', '2021-03-11 11:18:19'),
(1694, 1, 1309, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":63,\"id_role_link\":1309}', '2021-03-11 11:18:19'),
(1695, 1, 1310, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":64,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1310}', '2021-03-11 11:18:19'),
(1696, 1, 1311, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":65,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1311}', '2021-03-11 11:18:19'),
(1697, 1, 1312, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":14,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1312}', '2021-03-11 11:30:12'),
(1698, 1, 1313, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":15,\"id_role_link\":1313}', '2021-03-11 11:30:12'),
(1699, 1, 1314, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":18,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1314}', '2021-03-11 11:30:12'),
(1700, 1, 1315, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1315}', '2021-03-11 11:30:12'),
(1701, 1, 1316, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1316}', '2021-03-11 11:30:12'),
(1702, 1, 1317, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1317}', '2021-03-11 11:30:12'),
(1703, 1, 1318, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1318}', '2021-03-11 11:30:12'),
(1704, 1, 1319, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":28,\"id_role_link\":1319}', '2021-03-11 11:30:12'),
(1705, 1, 1320, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":29,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1320}', '2021-03-11 11:30:12'),
(1706, 1, 1321, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1321}', '2021-03-11 11:30:12'),
(1707, 1, 1322, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":43,\"id_role_link\":1322}', '2021-03-11 11:30:12'),
(1708, 1, 1323, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1323}', '2021-03-11 11:30:12'),
(1709, 1, 1324, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1324}', '2021-03-11 11:30:12'),
(1710, 1, 1325, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":46,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1325}', '2021-03-11 11:30:12'),
(1711, 1, 1326, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1326}', '2021-03-11 11:30:12'),
(1712, 1, 1327, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":48,\"id_role_link\":1327}', '2021-03-11 11:30:12'),
(1713, 1, 1328, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":49,\"id_role_link\":1328}', '2021-03-11 11:30:12'),
(1714, 1, 1329, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":50,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1329}', '2021-03-11 11:30:12'),
(1715, 1, 1330, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1330}', '2021-03-11 11:30:12'),
(1716, 1, 1331, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":52,\"id_role_link\":1331}', '2021-03-11 11:30:12'),
(1717, 1, 1332, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":53,\"id_role_link\":1332}', '2021-03-11 11:30:12'),
(1718, 1, 1333, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1333}', '2021-03-11 11:30:12'),
(1719, 1, 1334, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":55,\"id_role_link\":1334}', '2021-03-11 11:30:12'),
(1720, 1, 1335, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":56,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1335}', '2021-03-11 11:30:12'),
(1721, 1, 1336, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":57,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1336}', '2021-03-11 11:30:12'),
(1722, 1, 1337, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":58,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1337}', '2021-03-11 11:30:12'),
(1723, 1, 1338, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":59,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1338}', '2021-03-11 11:30:12'),
(1724, 1, 1339, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":60,\"id_role_link\":1339}', '2021-03-11 11:30:12'),
(1725, 1, 1340, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":61,\"id_role_link\":1340}', '2021-03-11 11:30:12'),
(1726, 1, 1341, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":63,\"id_role_link\":1341}', '2021-03-11 11:30:12'),
(1727, 1, 1342, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":64,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1342}', '2021-03-11 11:30:12'),
(1728, 1, 1343, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":65,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1343}', '2021-03-11 11:30:12'),
(1729, 1, 1344, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":14,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1344}', '2021-03-11 11:31:23'),
(1730, 1, 1345, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":15,\"id_role_link\":1345}', '2021-03-11 11:31:23'),
(1731, 1, 1346, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":18,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1346}', '2021-03-11 11:31:23'),
(1732, 1, 1347, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1347}', '2021-03-11 11:31:23'),
(1733, 1, 1348, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1348}', '2021-03-11 11:31:23'),
(1734, 1, 1349, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1349}', '2021-03-11 11:31:23');
INSERT INTO `t_document_history` (`id_document_history`, `id_karyawan`, `id_content`, `type_content`, `action`, `description`, `details`, `date`) VALUES
(1735, 1, 1350, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1350}', '2021-03-11 11:31:23'),
(1736, 1, 1351, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":28,\"id_role_link\":1351}', '2021-03-11 11:31:23'),
(1737, 1, 1352, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":29,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1352}', '2021-03-11 11:31:23'),
(1738, 1, 1353, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1353}', '2021-03-11 11:31:23'),
(1739, 1, 1354, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":43,\"id_role_link\":1354}', '2021-03-11 11:31:23'),
(1740, 1, 1355, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1355}', '2021-03-11 11:31:23'),
(1741, 1, 1356, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1356}', '2021-03-11 11:31:23'),
(1742, 1, 1357, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":46,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1357}', '2021-03-11 11:31:23'),
(1743, 1, 1358, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1358}', '2021-03-11 11:31:23'),
(1744, 1, 1359, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":48,\"id_role_link\":1359}', '2021-03-11 11:31:23'),
(1745, 1, 1360, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":49,\"id_role_link\":1360}', '2021-03-11 11:31:23'),
(1746, 1, 1361, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":50,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1361}', '2021-03-11 11:31:23'),
(1747, 1, 1362, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1362}', '2021-03-11 11:31:23'),
(1748, 1, 1363, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":52,\"id_role_link\":1363}', '2021-03-11 11:31:23'),
(1749, 1, 1364, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":53,\"id_role_link\":1364}', '2021-03-11 11:31:23'),
(1750, 1, 1365, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1365}', '2021-03-11 11:31:23'),
(1751, 1, 1366, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":55,\"id_role_link\":1366}', '2021-03-11 11:31:23'),
(1752, 1, 1367, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":56,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1367}', '2021-03-11 11:31:23'),
(1753, 1, 1368, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":57,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1368}', '2021-03-11 11:31:23'),
(1754, 1, 1369, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":58,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1369}', '2021-03-11 11:31:23'),
(1755, 1, 1370, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":59,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1370}', '2021-03-11 11:31:23'),
(1756, 1, 1371, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":60,\"id_role_link\":1371}', '2021-03-11 11:31:23'),
(1757, 1, 1372, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":61,\"id_role_link\":1372}', '2021-03-11 11:31:23'),
(1758, 1, 1373, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":63,\"id_role_link\":1373}', '2021-03-11 11:31:23'),
(1759, 1, 1374, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":64,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1374}', '2021-03-11 11:31:23'),
(1760, 1, 1375, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":65,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1375}', '2021-03-11 11:31:23'),
(1761, 1, 1376, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":66,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1376}', '2021-03-11 11:31:23'),
(1762, 1, 1377, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":67,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1377}', '2021-03-11 11:31:23'),
(1763, 1, 1, 't_pengeluaran_limbah', 'create', 'Created a PengeluaranLimbah', '{\"tujuan\":\"Test\",\"keterangan\":\"test\",\"tanggal\":\"2021-03-11\",\"input_by\":\"Admin PakePOS\",\"id_pengeluaran_limbah\":1}', '2021-03-11 21:37:03'),
(1764, 1, 1, 't_pengeluaran_limbah_item', 'create', 'Created a PengeluaranLimbahItem', '{\"id_barang\":\"1157\",\"qty\":\"5\",\"id_pengeluaran_limbah\":1,\"id_pengeluaran_limbah_item\":1}', '2021-03-11 21:37:03'),
(1765, 1, 1, 't_pengeluaran_limbah', 'update', 'Updated a PengeluaranLimbah', '{\"is_lock\":\"Y\"}', '2021-03-11 21:37:05'),
(1766, 1, 1378, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":14,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1378}', '2021-03-11 21:42:34'),
(1767, 1, 1379, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":15,\"id_role_link\":1379}', '2021-03-11 21:42:34'),
(1768, 1, 1380, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":18,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1380}', '2021-03-11 21:42:34'),
(1769, 1, 1381, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1381}', '2021-03-11 21:42:34'),
(1770, 1, 1382, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1382}', '2021-03-11 21:42:34'),
(1771, 1, 1383, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1383}', '2021-03-11 21:42:34'),
(1772, 1, 1384, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1384}', '2021-03-11 21:42:34'),
(1773, 1, 1385, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":28,\"id_role_link\":1385}', '2021-03-11 21:42:34'),
(1774, 1, 1386, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":29,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1386}', '2021-03-11 21:42:34'),
(1775, 1, 1387, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1387}', '2021-03-11 21:42:34'),
(1776, 1, 1388, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":43,\"id_role_link\":1388}', '2021-03-11 21:42:34'),
(1777, 1, 1389, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1389}', '2021-03-11 21:42:34'),
(1778, 1, 1390, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1390}', '2021-03-11 21:42:34'),
(1779, 1, 1391, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":46,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1391}', '2021-03-11 21:42:34'),
(1780, 1, 1392, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1392}', '2021-03-11 21:42:34'),
(1781, 1, 1393, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":48,\"id_role_link\":1393}', '2021-03-11 21:42:34'),
(1782, 1, 1394, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":49,\"id_role_link\":1394}', '2021-03-11 21:42:34'),
(1783, 1, 1395, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":50,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1395}', '2021-03-11 21:42:34'),
(1784, 1, 1396, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1396}', '2021-03-11 21:42:34'),
(1785, 1, 1397, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":52,\"id_role_link\":1397}', '2021-03-11 21:42:34'),
(1786, 1, 1398, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":53,\"id_role_link\":1398}', '2021-03-11 21:42:34'),
(1787, 1, 1399, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1399}', '2021-03-11 21:42:34'),
(1788, 1, 1400, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":55,\"id_role_link\":1400}', '2021-03-11 21:42:34'),
(1789, 1, 1401, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":56,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1401}', '2021-03-11 21:42:34'),
(1790, 1, 1402, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":57,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1402}', '2021-03-11 21:42:34'),
(1791, 1, 1403, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":58,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1403}', '2021-03-11 21:42:34'),
(1792, 1, 1404, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":59,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1404}', '2021-03-11 21:42:34'),
(1793, 1, 1405, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":60,\"id_role_link\":1405}', '2021-03-11 21:42:34'),
(1794, 1, 1406, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":61,\"id_role_link\":1406}', '2021-03-11 21:42:34'),
(1795, 1, 1407, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":63,\"id_role_link\":1407}', '2021-03-11 21:42:34'),
(1796, 1, 1408, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":64,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1408}', '2021-03-11 21:42:34'),
(1797, 1, 1409, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":65,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1409}', '2021-03-11 21:42:34'),
(1798, 1, 1410, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":66,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1410}', '2021-03-11 21:42:34'),
(1799, 1, 1411, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":67,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1411}', '2021-03-11 21:42:34'),
(1800, 1, 1412, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":68,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1412}', '2021-03-11 21:42:34'),
(1801, 1, 1413, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":69,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1413}', '2021-03-11 21:42:34'),
(1802, 1, 1414, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":14,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1414}', '2021-03-11 23:24:57'),
(1803, 1, 1415, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":15,\"id_role_link\":1415}', '2021-03-11 23:24:57'),
(1804, 1, 1416, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":18,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1416}', '2021-03-11 23:24:57'),
(1805, 1, 1417, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":19,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1417}', '2021-03-11 23:24:57'),
(1806, 1, 1418, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":25,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1418}', '2021-03-11 23:24:57'),
(1807, 1, 1419, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":26,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1419}', '2021-03-11 23:24:57'),
(1808, 1, 1420, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":27,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1420}', '2021-03-11 23:24:57'),
(1809, 1, 1421, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":28,\"id_role_link\":1421}', '2021-03-11 23:24:57'),
(1810, 1, 1422, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":29,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1422}', '2021-03-11 23:24:57'),
(1811, 1, 1423, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":30,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1423}', '2021-03-11 23:24:57'),
(1812, 1, 1424, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":43,\"id_role_link\":1424}', '2021-03-11 23:24:57'),
(1813, 1, 1425, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":44,\"can_access\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1425}', '2021-03-11 23:24:57'),
(1814, 1, 1426, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":45,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1426}', '2021-03-11 23:24:57'),
(1815, 1, 1427, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":46,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1427}', '2021-03-11 23:24:57'),
(1816, 1, 1428, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":47,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1428}', '2021-03-11 23:24:57'),
(1817, 1, 1429, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":48,\"id_role_link\":1429}', '2021-03-11 23:24:57'),
(1818, 1, 1430, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":49,\"id_role_link\":1430}', '2021-03-11 23:24:57'),
(1819, 1, 1431, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":50,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1431}', '2021-03-11 23:24:57'),
(1820, 1, 1432, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":51,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1432}', '2021-03-11 23:24:57'),
(1821, 1, 1433, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":52,\"id_role_link\":1433}', '2021-03-11 23:24:57'),
(1822, 1, 1434, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":53,\"id_role_link\":1434}', '2021-03-11 23:24:57'),
(1823, 1, 1435, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":54,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1435}', '2021-03-11 23:24:57'),
(1824, 1, 1436, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":55,\"id_role_link\":1436}', '2021-03-11 23:24:57'),
(1825, 1, 1437, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":56,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1437}', '2021-03-11 23:24:57'),
(1826, 1, 1438, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":57,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1438}', '2021-03-11 23:24:57'),
(1827, 1, 1439, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":58,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1439}', '2021-03-11 23:24:57'),
(1828, 1, 1440, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":59,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1440}', '2021-03-11 23:24:57'),
(1829, 1, 1441, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":60,\"id_role_link\":1441}', '2021-03-11 23:24:57'),
(1830, 1, 1442, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":61,\"id_role_link\":1442}', '2021-03-11 23:24:57'),
(1831, 1, 1443, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":63,\"id_role_link\":1443}', '2021-03-11 23:24:57'),
(1832, 1, 1444, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":64,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1444}', '2021-03-11 23:24:57'),
(1833, 1, 1445, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":65,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1445}', '2021-03-11 23:24:57'),
(1834, 1, 1446, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":66,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1446}', '2021-03-11 23:24:57'),
(1835, 1, 1447, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":67,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1447}', '2021-03-11 23:24:57'),
(1836, 1, 1448, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":68,\"can_access\":\"1\",\"can_create\":\"1\",\"can_modify\":\"1\",\"can_delete\":\"1\",\"see_restricted\":\"1\",\"id_role_link\":1448}', '2021-03-11 23:24:57'),
(1837, 1, 1449, 'm_role_link', 'create', 'Created a RoleLink', '{\"id_role\":\"1\",\"id_menu\":69,\"id_role_link\":1449}', '2021-03-11 23:24:57'),
(1838, 1, 1, 't_barang_masuk', 'create', 'Created a BarangMasuk', '{\"keterangan\":\"Test\",\"tanggal\":\"2021-03-11\",\"input_by\":\"Admin PakePOS\",\"id_barang_masuk\":1}', '2021-03-11 23:27:27'),
(1839, 1, 1, 't_barang_masuk_item', 'create', 'Created a BarangMasukItem', '{\"id_barang\":\"1156\",\"qty\":\"12\",\"id_barang_masuk\":1,\"id_barang_masuk_item\":1}', '2021-03-11 23:27:27'),
(1840, 1, 1, 't_barang_masuk', 'update', 'Updated a BarangMasuk', '{\"is_lock\":\"Y\"}', '2021-03-11 23:27:29'),
(1841, 1, 6, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"Test\",\"supplier\":\"Test\",\"kode_po\":\"002\\/TSM\\/PO\\/03\\/2021\",\"tanggal\":\"2021-03-11\",\"input_by\":\"Admin PakePOS\",\"id_po\":6}', '2021-03-11 23:28:15'),
(1842, 1, 6, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1156\",\"size\":\"12\",\"warna\":\"\",\"qty_po\":\"11\",\"qty_open\":\"11\",\"harga_beli\":\"5000\",\"id_po\":6,\"id_po_item\":6}', '2021-03-11 23:28:15'),
(1843, 1, 6, 't_po', 'update', 'Updated a PO', '{\"is_lock\":\"Y\"}', '2021-03-11 23:28:17'),
(1844, 1, 2, 't_penerimaan_barang', 'create', 'Created a PenerimaanBarang', '{\"keterangan\":\"Test Masuk\",\"id_po\":\"6\",\"tanggal\":\"2021-03-11\",\"input_by\":\"Admin PakePOS\",\"id_penerimaan_barang\":2}', '2021-03-11 23:28:54'),
(1845, 1, 2, 't_penerimaan_barang_item', 'create', 'Created a PenerimaanBarangItem', '{\"id_barang\":\"1156\",\"qty\":\"11\",\"qty_sisa\":0,\"qty_open\":11,\"qty_po\":11,\"id_penerimaan_barang\":2,\"id_penerimaan_barang_item\":2}', '2021-03-11 23:28:54'),
(1846, 1, 2, 't_penerimaan_barang', 'update', 'Updated a PenerimaanBarang', '{\"is_lock\":\"Y\"}', '2021-03-11 23:28:57'),
(1847, 1, 1, 'm_karyawan', 'update', 'Updated a Karyawan', '{\"nama_lengkap\":\"Admin\",\"nomor_telepon\":\"-\",\"email\":\"-\"}', '2021-03-22 08:29:41'),
(1848, 1, 1143, 'm_barang', 'update', 'Updated a Barang', '{\"is_delete\":\"Y\"}', '2021-03-22 08:30:06'),
(1849, 1, 1144, 'm_barang', 'update', 'Updated a Barang', '{\"is_delete\":\"Y\"}', '2021-03-22 08:30:44'),
(1850, 1, 1158, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Valve\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"size\":\"2,5\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1158}', '2021-03-22 08:36:24'),
(1851, 1, 1159, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Lockable\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"size\":\"2,5\\\"\",\"jenis_barang\":\"ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1159}', '2021-03-23 09:35:23'),
(1852, 1, 1160, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Meteran\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"size\":\"1\\/2\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1160}', '2021-03-23 10:05:55'),
(1853, 1, 1161, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Meteran\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"size\":\"1\\/2\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1161}', '2021-03-23 10:10:05'),
(1854, 1, 1162, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Meteran\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"Itron\",\"size\":\"1\\/2\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1162}', '2021-03-23 10:11:44'),
(1855, 1, 1159, 'm_barang', 'update', 'Updated a Barang', '{\"jenis_barang\":\"TIDAK ADA LIMBAH\"}', '2021-03-23 10:12:38'),
(1856, 1, 1163, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Klem\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"2\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1163}', '2021-03-23 10:22:51'),
(1857, 1, 1164, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Klem\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"4\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1164}', '2021-03-23 10:23:32'),
(1858, 1, 1163, 'm_barang', 'update', 'Updated a Barang', '{\"nama_barang\":\"Klem 2\\\"\"}', '2021-03-23 11:14:55'),
(1859, 1, 1164, 'm_barang', 'update', 'Updated a Barang', '{\"nama_barang\":\"Klem 4\\\"\"}', '2021-03-23 11:15:02'),
(1860, 1, 1165, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Klem 6\\\"\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"6\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1165}', '2021-03-23 11:15:44'),
(1861, 1, 1166, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Gibolt 2\\\"\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"2\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1166}', '2021-03-23 11:16:49'),
(1862, 1, 1167, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Gibolt 4\\\"\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"4\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1167}', '2021-03-23 11:17:24'),
(1863, 1, 1168, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Gibolt 6\\\"\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"6\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1168}', '2021-03-23 11:17:53'),
(1864, 1, 1169, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Ferule Cutter\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1169}', '2021-03-23 11:18:43'),
(1865, 1, 1170, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Adaptor Sambung (L)\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1170}', '2021-03-23 11:19:41'),
(1866, 1, 1171, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Adaptor Sambung Lurus\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1171}', '2021-03-23 11:20:11'),
(1867, 1, 1172, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Cangkul\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1172}', '2021-03-23 11:20:37'),
(1868, 1, 1173, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Pas T\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":null,\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1173}', '2021-03-23 11:21:29'),
(1869, 1, 1174, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Pas 13 mm\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\".\",\"size\":\"13 mm\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1174}', '2021-03-23 11:22:13'),
(1870, 1, 1175, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Pas 12 mm\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":null,\"size\":\"12 mm\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1175}', '2021-03-23 11:22:48'),
(1871, 1, 1176, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Pas 14 mm\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"14 mm\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1176}', '2021-03-23 11:23:40'),
(1872, 1, 1177, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Pas 32 mm\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"32 mm\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1177}', '2021-03-23 11:24:11'),
(1873, 1, 1178, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Pas 30 mm\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"30 mm\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1178}', '2021-03-23 11:24:45'),
(1874, 1, 1179, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kuci Pipa\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1179}', '2021-03-23 11:25:27'),
(1875, 1, 1180, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Pipa PE\",\"id_category\":\"1\",\"satuan\":\"Meter\",\"merk\":\"-\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1180}', '2021-03-23 11:26:01'),
(1876, 1, 1181, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Pipa Besi\",\"id_category\":\"1\",\"satuan\":\"Meter\",\"merk\":\"-\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1181}', '2021-03-23 11:26:44'),
(1877, 1, 1182, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kapak\",\"id_category\":\"1\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1182}', '2021-03-23 11:27:23'),
(1878, 1, 1183, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Linggis\",\"id_category\":\"1\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1183}', '2021-03-23 11:27:41'),
(1879, 1, 1184, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Palu\",\"id_category\":\"1\",\"satuan\":\"-\",\"merk\":null,\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1184}', '2021-03-23 11:28:19'),
(1880, 1, 1185, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Mur Meteran\",\"id_category\":\"1\",\"satuan\":\".\",\"merk\":null,\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1185}', '2021-03-23 11:43:46'),
(1881, 1, 1158, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"56\"}', '2021-03-23 15:20:37'),
(1882, 1, 1159, 'm_barang', 'update', 'Updated a Barang', '{\"nama_barang\":\"Lockable Lurus\",\"last_stock\":\"13\"}', '2021-03-23 15:21:36'),
(1883, 1, 1186, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Lockable L\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":null,\"last_stock\":\"10\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1186}', '2021-03-23 15:22:14'),
(1884, 1, 1186, 'm_barang', 'update', 'Updated a Barang', '{\"jenis_barang\":\"TIDAK ADA LIMBAH\"}', '2021-03-23 15:22:37'),
(1885, 1, 1162, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"6\"}', '2021-03-23 15:23:14'),
(1886, 1, 1185, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"76\"}', '2021-03-23 15:23:26'),
(1887, 1, 1165, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"4\"}', '2021-03-23 15:27:59'),
(1888, 1, 1164, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"7\"}', '2021-03-23 15:28:07'),
(1889, 1, 1163, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"35\"}', '2021-03-23 15:28:22'),
(1890, 1, 1167, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"4\"}', '2021-03-23 15:28:50'),
(1891, 1, 1166, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"9\"}', '2021-03-23 15:29:00'),
(1892, 1, 1169, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"144\"}', '2021-03-23 15:29:28'),
(1893, 1, 1171, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"30\"}', '2021-03-23 15:29:55'),
(1894, 1, 1170, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"15\"}', '2021-03-23 15:30:02'),
(1895, 1, 1172, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"1\"}', '2021-03-23 15:30:19'),
(1896, 1, 1173, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"1\"}', '2021-03-23 15:30:36'),
(1897, 1, 1177, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"1\"}', '2021-03-23 15:30:48'),
(1898, 1, 1178, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"1\"}', '2021-03-23 15:30:53'),
(1899, 1, 1176, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"2\"}', '2021-03-23 15:31:04'),
(1900, 1, 1174, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"1\"}', '2021-03-23 15:31:11'),
(1901, 1, 1175, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"1\"}', '2021-03-23 15:31:18'),
(1902, 1, 1179, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"1\"}', '2021-03-23 15:31:45'),
(1903, 1, 1181, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"6\"}', '2021-03-23 15:31:57'),
(1904, 1, 1182, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"1\"}', '2021-03-23 15:32:29'),
(1905, 1, 1183, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"1\"}', '2021-03-23 15:32:45'),
(1906, 1, 1184, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"1\"}', '2021-03-23 15:32:57'),
(1907, 1, 1, 't_pengeluaran_barang', 'delete', 'Deleted a PengeluaranBarang', '[]', '2021-03-24 09:49:19'),
(1908, 1, 1187, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"PAC\",\"id_category\":\"2\",\"satuan\":\"Karung\",\"merk\":\"-\",\"size\":\"25 Kg\",\"jenis_barang\":\"ADA LIMBAH\",\"last_stock\":\"79\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1187}', '2021-03-25 08:52:35'),
(1909, 1, 1188, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kaporit\",\"id_category\":\"2\",\"satuan\":\"Drum\",\"merk\":\"-\",\"size\":\".\",\"jenis_barang\":\"ADA LIMBAH\",\"last_stock\":\"0\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1188}', '2021-03-25 08:53:31'),
(1910, 1, 7, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"Pesan kaporitnya 500 kg bri PAC 1 Ton ( 1000 Kg  )\",\"supplier\":\"PT. FORTUIN SUPEL INDONESIA\",\"kode_po\":\"001\\/TSM\\/PO\\/03\\/2021\",\"tanggal\":\"2021-03-25\",\"input_by\":\"Admin\",\"id_po\":7}', '2021-03-25 08:55:41'),
(1911, 1, 7, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1187\",\"size\":\"25 Kg\",\"warna\":\"\",\"qty_po\":\"40\",\"qty_open\":\"40\",\"harga_beli\":\"6700\",\"id_po\":7,\"id_po_item\":7}', '2021-03-25 08:55:41'),
(1912, 1, 8, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1188\",\"size\":\".\",\"warna\":\"\",\"qty_po\":\"10\",\"qty_open\":\"10\",\"harga_beli\":\"25500\",\"id_po\":7,\"id_po_item\":8}', '2021-03-25 08:55:42'),
(1913, 1, 1188, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"3\"}', '2021-03-25 09:17:46'),
(1914, 1, 1189, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Mesin Steam\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"Lakoni\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1189}', '2021-03-25 09:21:12'),
(1915, 1, 1190, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Mesin Las\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"Fitech\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1190}', '2021-03-25 09:23:30'),
(1916, 1, 1191, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Gerinda\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"Maktech\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1191}', '2021-03-25 09:24:23'),
(1917, 1, 1192, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Mesin Las ( Rusak )\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"2\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1192}', '2021-03-25 09:25:07'),
(1918, 1, 1193, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Palu\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1193}', '2021-03-25 09:25:40'),
(1919, 1, 1194, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Pipa\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1194}', '2021-03-25 09:26:11'),
(1920, 1, 7, 't_po', 'update', 'Updated a PO', '{\"is_lock\":\"Y\"}', '2021-03-29 11:04:48'),
(1921, 1, 3, 't_penerimaan_barang', 'create', 'Created a PenerimaanBarang', '{\"keterangan\":\"Pesan kaporitnya 500 kg bri PAC 1 Ton ( 1000 Kg  )\",\"id_po\":\"7\",\"tanggal\":\"2021-03-29\",\"input_by\":\"Admin\",\"id_penerimaan_barang\":3}', '2021-03-29 11:06:11'),
(1922, 1, 3, 't_penerimaan_barang_item', 'create', 'Created a PenerimaanBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"40\",\"qty_sisa\":0,\"qty_open\":40,\"qty_po\":40,\"id_penerimaan_barang\":3,\"id_penerimaan_barang_item\":3}', '2021-03-29 11:06:11'),
(1923, 1, 4, 't_penerimaan_barang_item', 'create', 'Created a PenerimaanBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"10\",\"qty_sisa\":0,\"qty_open\":10,\"qty_po\":10,\"id_penerimaan_barang\":3,\"id_penerimaan_barang_item\":4}', '2021-03-29 11:06:11'),
(1924, 1, 1195, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Tang gegep\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1195}', '2021-03-29 11:13:45'),
(1925, 1, 1196, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Gunting Baja Ringan\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\".\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1196}', '2021-03-29 11:14:11'),
(1926, 1, 1197, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Obeng Min Plus\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1197}', '2021-03-29 11:14:45'),
(1927, 1, 1198, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Penggaris Siku\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1198}', '2021-03-29 11:15:14'),
(1928, 1, 1199, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Y \\/ Ring\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1199}', '2021-03-29 11:15:46'),
(1929, 1, 1200, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci T\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1200}', '2021-03-29 11:16:13'),
(1930, 1, 1201, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Pas 19 mm\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1201}', '2021-03-29 11:16:55'),
(1931, 1, 1202, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Pas 24 mm\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1202}', '2021-03-29 11:17:29'),
(1932, 1, 1203, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Pas 26 mm\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1203}', '2021-03-29 11:23:26'),
(1933, 1, 1204, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci L\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1204}', '2021-03-29 11:28:44'),
(1934, 1, 1205, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Mata Bor 32 mm\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1205}', '2021-03-29 11:29:53'),
(1935, 1, 1206, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Mata Bor 18 mm\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1206}', '2021-03-29 11:30:13'),
(1936, 1, 1207, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Rumah \\/ Kepala Bor\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1207}', '2021-03-29 11:30:47'),
(1937, 1, 1208, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Golok\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1208}', '2021-03-29 11:31:28'),
(1938, 1, 1209, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Gergaji\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1209}', '2021-03-29 11:31:53'),
(1939, 1, 1210, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Bearing\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1210}', '2021-03-29 11:43:14'),
(1940, 1, 1211, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"TV\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1211}', '2021-03-29 11:43:56'),
(1941, 1, 1212, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Pompa Air\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"APP-KENJI\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1212}', '2021-03-29 11:45:08'),
(1942, 1, 1213, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Bor Magnetic\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"Nankai\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1213}', '2021-03-29 11:46:01'),
(1943, 1, 1214, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Mesin Potong Rumput\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1214}', '2021-03-29 11:46:32'),
(1944, 1, 1215, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Kunci Inggris 375\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"375\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1215}', '2021-03-29 11:47:06'),
(1945, 1, 1216, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"3-Phase Induction Motor\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"LM\",\"size\":\"3-Phase\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1216}', '2021-03-29 11:50:33');
INSERT INTO `t_document_history` (`id_document_history`, `id_karyawan`, `id_content`, `type_content`, `action`, `description`, `details`, `date`) VALUES
(1946, 1, 1217, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"3-Phase Induction Motor\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"Teco\",\"size\":\"3-Phase\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1217}', '2021-03-29 11:50:59'),
(1947, 1, 1218, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"3-Phase Induction Motor\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"World Energi\",\"size\":\"3-Phase\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1218}', '2021-03-29 13:04:42'),
(1948, 1, 1219, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"3-Phase Induction Motor\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"World Energi\",\"size\":\"3-Phase\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1219}', '2021-03-29 13:04:42'),
(1949, 1, 1219, 'm_barang', 'update', 'Updated a Barang', '{\"is_delete\":\"Y\"}', '2021-03-29 13:04:54'),
(1950, 1, 1166, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"19\"}', '2021-03-29 13:05:53'),
(1951, 1, 1220, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Gibol 3\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"3\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1220}', '2021-03-29 13:06:29'),
(1952, 1, 1221, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Gibolt 12\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"12\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"2\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1221}', '2021-03-29 13:07:02'),
(1953, 1, 1220, 'm_barang', 'update', 'Updated a Barang', '{\"nama_barang\":\"Gibolt 3\\\"\"}', '2021-03-29 13:07:15'),
(1954, 1, 1222, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Klem 12\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"12\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"10\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1222}', '2021-03-29 13:07:51'),
(1955, 1, 1223, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Ebara Pump\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"Ebara\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1223}', '2021-03-29 13:08:25'),
(1956, 1, 1224, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Gibolt 8\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"8\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1224}', '2021-03-29 13:15:57'),
(1957, 1, 1225, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Tabung Gas\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"3\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1225}', '2021-03-29 13:16:37'),
(1958, 1, 1226, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Gas elpiji\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"Pertamina\",\"size\":\"12Kg\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1226}', '2021-03-29 13:17:36'),
(1959, 1, 1227, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"1 Set Regulator Gas\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1227}', '2021-03-29 13:33:59'),
(1960, 1, 1228, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Safety Belt\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1228}', '2021-03-29 13:52:11'),
(1961, 1, 1229, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Elbow L 3\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"3\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1229}', '2021-03-29 13:58:26'),
(1962, 1, 1230, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Apar\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1230}', '2021-03-29 13:58:51'),
(1963, 1, 1231, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Pahat\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1231}', '2021-03-29 13:59:28'),
(1964, 1, 1232, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Ripet\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1232}', '2021-03-29 14:00:41'),
(1965, 1, 1210, 'm_barang', 'update', 'Updated a Barang', '{\"nama_barang\":\"Gear Puller\"}', '2021-03-29 14:02:24'),
(1966, 1, 1229, 'm_barang', 'update', 'Updated a Barang', '{\"nama_barang\":\"Elbow 3\\\"\"}', '2021-03-29 14:07:14'),
(1967, 1, 1233, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Elbow 6\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1233}', '2021-03-29 14:07:43'),
(1968, 1, 1234, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Pipa 2\\\"\",\"id_category\":\"2\",\"satuan\":\"Batang\",\"merk\":\"-\",\"size\":\"2\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"126\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1234}', '2021-03-29 14:08:53'),
(1969, 1, 1235, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Pipa 12\\\"\",\"id_category\":\"2\",\"satuan\":\"Batang\",\"merk\":\"-\",\"size\":\"12\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1235}', '2021-03-29 14:09:33'),
(1970, 1, 1236, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Pipa 6\\\"\",\"id_category\":\"2\",\"satuan\":\"Batang\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1236}', '2021-03-29 14:12:51'),
(1971, 1, 1237, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Pipa 4\\\"\",\"id_category\":\"2\",\"satuan\":\"Batang\",\"merk\":\"-\",\"size\":\"-\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"6\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1237}', '2021-03-29 14:13:48'),
(1972, 1, 1238, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Pipa 3\\\"\",\"id_category\":\"2\",\"satuan\":\"Batang\",\"merk\":\"-\",\"size\":\"3\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1238}', '2021-03-29 14:15:27'),
(1973, 1, 1239, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Flexible Tozen 3\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"3\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1239}', '2021-03-29 14:18:18'),
(1974, 1, 1240, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Flexible Tozen 4\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"4\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1240}', '2021-03-29 14:21:21'),
(1975, 1, 1241, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Karet 2\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"2\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"80\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1241}', '2021-03-29 14:22:45'),
(1976, 1, 1242, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Karet 12\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"12\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"2\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1242}', '2021-03-29 14:23:24'),
(1977, 1, 1243, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Karet 4\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"4\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1243}', '2021-03-29 14:23:55'),
(1978, 1, 1244, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Karet 6\\\"\",\"id_category\":\"2\",\"satuan\":\"-\",\"merk\":\"-\",\"size\":\"6\\\"\",\"jenis_barang\":\"TIDAK ADA LIMBAH\",\"last_stock\":\"1\",\"min_stock\":\"0\",\"max_stock\":\"0\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1244}', '2021-03-29 14:24:30'),
(1979, 1, 4, 't_penerimaan_barang', 'create', 'Created a PenerimaanBarang', '{\"keterangan\":\"Pesan kaporitnya 500 kg bri PAC 1 Ton ( 1000 Kg  )\",\"id_po\":\"7\",\"tanggal\":\"2021-03-29\",\"input_by\":\"Admin\",\"id_penerimaan_barang\":4}', '2021-03-29 14:30:40'),
(1980, 1, 5, 't_penerimaan_barang_item', 'create', 'Created a PenerimaanBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"40\",\"qty_sisa\":0,\"qty_open\":40,\"qty_po\":40,\"id_penerimaan_barang\":4,\"id_penerimaan_barang_item\":5}', '2021-03-29 14:30:40'),
(1981, 1, 6, 't_penerimaan_barang_item', 'create', 'Created a PenerimaanBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"10\",\"qty_sisa\":0,\"qty_open\":10,\"qty_po\":10,\"id_penerimaan_barang\":4,\"id_penerimaan_barang_item\":6}', '2021-03-29 14:30:40'),
(1982, 1, 5, 't_penerimaan_barang', 'create', 'Created a PenerimaanBarang', '{\"keterangan\":\"barang masuk\",\"id_po\":\"7\",\"tanggal\":\"2021-03-26\",\"input_by\":\"Admin\",\"id_penerimaan_barang\":5}', '2021-04-08 14:34:36'),
(1983, 1, 7, 't_penerimaan_barang_item', 'create', 'Created a PenerimaanBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"0\",\"qty_sisa\":40,\"qty_open\":40,\"qty_po\":40,\"id_penerimaan_barang\":5,\"id_penerimaan_barang_item\":7}', '2021-04-08 14:34:36'),
(1984, 1, 8, 't_penerimaan_barang_item', 'create', 'Created a PenerimaanBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"0\",\"qty_sisa\":10,\"qty_open\":10,\"qty_po\":10,\"id_penerimaan_barang\":5,\"id_penerimaan_barang_item\":8}', '2021-04-08 14:34:36'),
(1985, 1, 5, 't_penerimaan_barang', 'delete', 'Deleted a PenerimaanBarang', '[]', '2021-04-08 14:39:02'),
(1986, 1, 4, 't_penerimaan_barang', 'delete', 'Deleted a PenerimaanBarang', '[]', '2021-04-08 14:39:06'),
(1987, 1, 3, 't_penerimaan_barang', 'delete', 'Deleted a PenerimaanBarang', '[]', '2021-04-08 14:39:09'),
(1988, 1, 6, 't_penerimaan_barang', 'create', 'Created a PenerimaanBarang', '{\"keterangan\":\"Barang Masuk Kaporit dan PAC\",\"id_po\":\"7\",\"tanggal\":\"2021-04-26\",\"input_by\":\"Admin\",\"id_penerimaan_barang\":6}', '2021-04-08 14:43:02'),
(1989, 1, 9, 't_penerimaan_barang_item', 'create', 'Created a PenerimaanBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"40\",\"qty_sisa\":0,\"qty_open\":40,\"qty_po\":40,\"id_penerimaan_barang\":6,\"id_penerimaan_barang_item\":9}', '2021-04-08 14:43:02'),
(1990, 1, 10, 't_penerimaan_barang_item', 'create', 'Created a PenerimaanBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"10\",\"qty_sisa\":0,\"qty_open\":10,\"qty_po\":10,\"id_penerimaan_barang\":6,\"id_penerimaan_barang_item\":10}', '2021-04-08 14:43:02'),
(1991, 1, 6, 't_penerimaan_barang', 'update', 'Updated a PenerimaanBarang', '{\"is_lock\":\"Y\"}', '2021-04-08 14:43:08'),
(1992, 1, 3, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Penggunaan WTP\",\"keterangan\":\"pemakaian tanggal 28 Maret - 07 April\",\"tanggal\":\"2021-04-08\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":3}', '2021-04-08 14:58:14'),
(1993, 1, 4, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"32\",\"id_pengeluaran_barang\":3,\"id_pengeluaran_barang_item\":4}', '2021-04-08 14:58:14'),
(1994, 1, 3, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-04-08 14:58:31'),
(1995, 1, 4, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Penggunaan WTP\",\"keterangan\":\"pemakaian tanggal 28 Maret - 07 April\",\"tanggal\":\"2021-04-08\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":4}', '2021-04-08 15:02:06'),
(1996, 1, 5, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"4\",\"id_pengeluaran_barang\":4,\"id_pengeluaran_barang_item\":5}', '2021-04-08 15:02:06'),
(1997, 1, 4, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-04-08 15:02:30'),
(1998, 1, 1158, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"72\"}', '2021-04-19 12:55:55'),
(1999, 1, 1159, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"45\"}', '2021-04-19 12:56:11'),
(2000, 1, 1186, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"24\"}', '2021-04-19 12:56:39'),
(2001, 1, 1162, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"16\"}', '2021-04-19 12:57:22'),
(2002, 1, 1158, 'm_barang', 'update', 'Updated a Barang', '{\"min_stock\":\"10\",\"max_stock\":\"1000\"}', '2021-04-19 12:58:06'),
(2003, 1, 1159, 'm_barang', 'update', 'Updated a Barang', '{\"min_stock\":\"10\",\"max_stock\":\"1000\"}', '2021-04-19 12:58:19'),
(2004, 1, 1162, 'm_barang', 'update', 'Updated a Barang', '{\"min_stock\":\"5\",\"max_stock\":\"5000\"}', '2021-04-19 12:58:29'),
(2005, 1, 1186, 'm_barang', 'update', 'Updated a Barang', '{\"min_stock\":\"10\",\"max_stock\":\"1000\"}', '2021-04-19 12:58:52'),
(2006, 1, 8, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"PAC 2ton dan Kaporit 1\\/2 ton\",\"supplier\":\"PT. FORTUIN SUPEL INDONESIA\",\"kode_po\":\"001\\/TSM\\/PO\\/04\\/2021\",\"tanggal\":\"2021-04-21\",\"input_by\":\"Admin\",\"id_po\":8}', '2021-04-21 13:18:39'),
(2007, 1, 9, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1187\",\"size\":\"25 Kg\",\"warna\":\"\",\"qty_po\":\"40\",\"qty_open\":\"40\",\"harga_beli\":\"6700\",\"id_po\":8,\"id_po_item\":9}', '2021-04-21 13:18:40'),
(2008, 1, 10, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1188\",\"size\":\".\",\"warna\":\"\",\"qty_po\":\"10\",\"qty_open\":\"10\",\"harga_beli\":\"25500\",\"id_po\":8,\"id_po_item\":10}', '2021-04-21 13:18:40'),
(2009, 1, 1187, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"27\"}', '2021-04-21 15:19:18'),
(2010, 1, 1187, 'm_barang', 'update', 'Updated a Barang', '{\"min_stock\":\"30\"}', '2021-04-21 15:19:51'),
(2011, 1, 1187, 'm_barang', 'update', 'Updated a Barang', '{\"max_stock\":\"1000\"}', '2021-04-21 15:19:59'),
(2012, 1, 1188, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"1\",\"min_stock\":\"5\"}', '2021-04-21 15:20:25'),
(2013, 1, 5, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Perbaikan\",\"keterangan\":\"-\",\"tanggal\":\"2021-04-21\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":5}', '2021-04-21 15:31:48'),
(2014, 1, 6, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"1\",\"id_pengeluaran_barang\":5,\"id_pengeluaran_barang_item\":6}', '2021-04-21 15:31:48'),
(2015, 1, 7, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"1\",\"id_pengeluaran_barang\":5,\"id_pengeluaran_barang_item\":7}', '2021-04-21 15:31:48'),
(2016, 1, 8, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"3\",\"id_pengeluaran_barang\":5,\"id_pengeluaran_barang_item\":8}', '2021-04-21 15:31:48'),
(2017, 1, 5, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-04-21 15:31:55'),
(2018, 1, 8, 't_po', 'update', 'Updated a PO', '{\"is_lock\":\"Y\"}', '2021-04-23 09:56:54'),
(2019, 1, 1187, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"107\"}', '2021-04-23 10:55:28'),
(2020, 1, 1188, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"11\"}', '2021-04-23 10:57:48'),
(2021, 1, 6, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Perbaikan dan pasang baru\",\"keterangan\":\"Perbaikan\",\"tanggal\":\"2021-04-22\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":6}', '2021-04-27 13:31:16'),
(2022, 1, 9, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"2\",\"id_pengeluaran_barang\":6,\"id_pengeluaran_barang_item\":9}', '2021-04-27 13:31:16'),
(2023, 1, 10, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"4\",\"id_pengeluaran_barang\":6,\"id_pengeluaran_barang_item\":10}', '2021-04-27 13:31:16'),
(2024, 1, 11, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1186\",\"qty\":\"2\",\"id_pengeluaran_barang\":6,\"id_pengeluaran_barang_item\":11}', '2021-04-27 13:31:16'),
(2025, 1, 12, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"3\",\"id_pengeluaran_barang\":6,\"id_pengeluaran_barang_item\":12}', '2021-04-27 13:31:16'),
(2026, 1, 6, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-04-27 13:31:21'),
(2027, 1, 1167, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"8\"}', '2021-04-28 10:03:05'),
(2028, 1, 1220, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"5\"}', '2021-04-28 10:03:18'),
(2029, 1, 7, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pengeluaran Pak karno\",\"keterangan\":\"Catatan Pak karno\",\"tanggal\":\"2021-05-03\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":7}', '2021-05-03 15:42:28'),
(2030, 1, 13, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"4\",\"id_pengeluaran_barang\":7,\"id_pengeluaran_barang_item\":13}', '2021-05-03 15:42:29'),
(2031, 1, 14, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"6\",\"id_pengeluaran_barang\":7,\"id_pengeluaran_barang_item\":14}', '2021-05-03 15:42:29'),
(2032, 1, 15, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"6\",\"id_pengeluaran_barang\":7,\"id_pengeluaran_barang_item\":15}', '2021-05-03 15:42:29'),
(2033, 1, 7, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-05-03 15:42:32'),
(2034, 1, 9, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"PAC 1 TON KAPORIT 1\\/2 TON\",\"supplier\":\"PT. FORTUIN SUPEL INDONESIA\",\"kode_po\":\"001\\/TSM\\/PO\\/05\\/2021\",\"tanggal\":\"2021-05-03\",\"input_by\":\"Admin\",\"id_po\":9}', '2021-05-03 16:01:02'),
(2035, 1, 11, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1187\",\"size\":\"25 Kg\",\"warna\":\"\",\"qty_po\":\"40\",\"qty_open\":\"40\",\"harga_beli\":\"7600\",\"id_po\":9,\"id_po_item\":11}', '2021-05-03 16:01:03'),
(2036, 1, 12, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1188\",\"size\":\".\",\"warna\":\"\",\"qty_po\":\"10\",\"qty_open\":\"10\",\"harga_beli\":\"25500\",\"id_po\":9,\"id_po_item\":12}', '2021-05-03 16:01:03'),
(2037, 1, 8, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pasang Baru 2 Rumah\",\"keterangan\":\"Pasang Baru 2 Rumah\",\"tanggal\":\"2021-05-04\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":8}', '2021-05-04 11:01:31'),
(2038, 1, 16, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"2\",\"id_pengeluaran_barang\":8,\"id_pengeluaran_barang_item\":16}', '2021-05-04 11:01:31'),
(2039, 1, 17, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"2\",\"id_pengeluaran_barang\":8,\"id_pengeluaran_barang_item\":17}', '2021-05-04 11:01:31'),
(2040, 1, 18, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"2\",\"id_pengeluaran_barang\":8,\"id_pengeluaran_barang_item\":18}', '2021-05-04 11:01:31'),
(2041, 1, 9, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pasang Baru 2 Rumah\",\"keterangan\":\"Pasang Baru 2 Rumah\",\"tanggal\":\"2021-05-04\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":9}', '2021-05-04 11:01:31'),
(2042, 1, 19, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"2\",\"id_pengeluaran_barang\":9,\"id_pengeluaran_barang_item\":19}', '2021-05-04 11:01:32'),
(2043, 1, 20, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"2\",\"id_pengeluaran_barang\":9,\"id_pengeluaran_barang_item\":20}', '2021-05-04 11:01:32'),
(2044, 1, 21, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"2\",\"id_pengeluaran_barang\":9,\"id_pengeluaran_barang_item\":21}', '2021-05-04 11:01:32'),
(2045, 1, 9, 't_pengeluaran_barang', 'delete', 'Deleted a PengeluaranBarang', '[]', '2021-05-04 11:01:49'),
(2046, 1, 8, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-05-04 11:01:59'),
(2047, 1, 10, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pemasangan Di block C 2 rumah\",\"keterangan\":\"Pemasangan Di block C 2 rumah\",\"tanggal\":\"2021-05-07\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":10}', '2021-05-07 08:59:35'),
(2048, 1, 22, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"2\",\"id_pengeluaran_barang\":10,\"id_pengeluaran_barang_item\":22}', '2021-05-07 08:59:35'),
(2049, 1, 23, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"2\",\"id_pengeluaran_barang\":10,\"id_pengeluaran_barang_item\":23}', '2021-05-07 08:59:35'),
(2050, 1, 24, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"2\",\"id_pengeluaran_barang\":10,\"id_pengeluaran_barang_item\":24}', '2021-05-07 08:59:35'),
(2051, 1, 9, 't_po', 'update', 'Updated a PO', '{\"is_lock\":\"Y\"}', '2021-05-07 14:39:18'),
(2052, 1, 11, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"perbaikan\",\"keterangan\":\"perbaikan\",\"tanggal\":\"2021-05-11\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":11}', '2021-05-11 14:59:02'),
(2053, 1, 25, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"2\",\"id_pengeluaran_barang\":11,\"id_pengeluaran_barang_item\":25}', '2021-05-11 14:59:02'),
(2054, 1, 26, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1186\",\"qty\":\"1\",\"id_pengeluaran_barang\":11,\"id_pengeluaran_barang_item\":26}', '2021-05-11 14:59:02'),
(2055, 1, 27, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"1\",\"id_pengeluaran_barang\":11,\"id_pengeluaran_barang_item\":27}', '2021-05-11 14:59:03'),
(2056, 1, 10, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-05-11 14:59:14'),
(2057, 1, 11, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-05-11 14:59:19'),
(2058, 1, 12, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pemakaian kimia selama sebulan 22 april - 23 mei\",\"keterangan\":\"-\",\"tanggal\":\"2021-05-24\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":12}', '2021-05-24 08:29:39'),
(2059, 1, 28, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"92\",\"id_pengeluaran_barang\":12,\"id_pengeluaran_barang_item\":28}', '2021-05-24 08:29:39'),
(2060, 1, 29, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"10\",\"id_pengeluaran_barang\":12,\"id_pengeluaran_barang_item\":29}', '2021-05-24 08:29:39'),
(2061, 1, 12, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-05-24 08:29:44'),
(2062, 1, 13, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pemasangan Baru\",\"keterangan\":\"Pemasangan Baru\",\"tanggal\":\"2021-05-25\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":13}', '2021-05-25 10:24:30'),
(2063, 1, 30, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"3\",\"id_pengeluaran_barang\":13,\"id_pengeluaran_barang_item\":30}', '2021-05-25 10:24:31'),
(2064, 1, 13, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-05-25 10:24:34'),
(2065, 1, 10, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"PT. Fortuin Indonesia\",\"supplier\":\"PT. Fortuin Indonesia\",\"kode_po\":\"002\\/TSM\\/PO\\/05\\/2021\",\"tanggal\":\"2021-05-27\",\"input_by\":\"Admin\",\"id_po\":10}', '2021-05-27 07:59:13'),
(2066, 1, 13, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1187\",\"size\":\"25 Kg\",\"warna\":\"\",\"qty_po\":\"80\",\"qty_open\":\"80\",\"harga_beli\":\"6700\",\"id_po\":10,\"id_po_item\":13}', '2021-05-27 07:59:13'),
(2067, 1, 14, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1188\",\"size\":\".\",\"warna\":\"\",\"qty_po\":\"10\",\"qty_open\":\"10\",\"harga_beli\":\"0\",\"id_po\":10,\"id_po_item\":14}', '2021-05-27 07:59:13'),
(2068, 1, 15, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1187\",\"size\":\"25 Kg\",\"warna\":\"\",\"qty_po\":\"80\",\"qty_open\":\"80\",\"harga_beli\":\"6700\",\"id_po\":\"10\",\"id_po_item\":15}', '2021-05-27 07:59:32'),
(2069, 1, 16, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1188\",\"size\":\".\",\"warna\":\"\",\"qty_po\":\"10\",\"qty_open\":\"10\",\"harga_beli\":\"25500\",\"id_po\":\"10\",\"id_po_item\":16}', '2021-05-27 07:59:32'),
(2070, 1, 14, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Perbaikan\",\"keterangan\":\"-\",\"tanggal\":\"2021-05-29\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":14}', '2021-05-29 08:59:19'),
(2071, 1, 31, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"2\",\"id_pengeluaran_barang\":14,\"id_pengeluaran_barang_item\":31}', '2021-05-29 08:59:19'),
(2072, 1, 32, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"5\",\"id_pengeluaran_barang\":14,\"id_pengeluaran_barang_item\":32}', '2021-05-29 08:59:19'),
(2073, 1, 14, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-05-29 08:59:35'),
(2074, 1, 15, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pasang baru\",\"keterangan\":\"Pasang baru\",\"tanggal\":\"2021-06-02\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":15}', '2021-06-02 09:56:09'),
(2075, 1, 33, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"1\",\"id_pengeluaran_barang\":15,\"id_pengeluaran_barang_item\":33}', '2021-06-02 09:56:10'),
(2076, 1, 34, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"1\",\"id_pengeluaran_barang\":15,\"id_pengeluaran_barang_item\":34}', '2021-06-02 09:56:10'),
(2077, 1, 35, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"1\",\"id_pengeluaran_barang\":15,\"id_pengeluaran_barang_item\":35}', '2021-06-02 09:56:10'),
(2078, 1, 15, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-06-02 10:32:45'),
(2079, 1, 16, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Meteran Macet\",\"keterangan\":null,\"tanggal\":\"2021-06-03\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":16}', '2021-06-03 11:14:22'),
(2080, 1, 36, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"1\",\"id_pengeluaran_barang\":16,\"id_pengeluaran_barang_item\":36}', '2021-06-03 11:14:22'),
(2081, 1, 37, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1186\",\"qty\":\"1\",\"id_pengeluaran_barang\":16,\"id_pengeluaran_barang_item\":37}', '2021-06-03 11:14:22'),
(2082, 1, 16, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-06-03 11:14:26'),
(2083, 1, 10, 't_po', 'update', 'Updated a PO', '{\"is_lock\":\"Y\"}', '2021-06-04 13:24:43'),
(2084, 1, 11, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"PT. FORTUIN SUPEL INDONESIA\",\"supplier\":\"PT. FORTUIN SUPEL INDONESIA\",\"kode_po\":\"001\\/TSM\\/PO\\/06\\/2021\",\"tanggal\":\"2021-06-21\",\"input_by\":\"Admin\",\"id_po\":11}', '2021-06-21 08:36:05'),
(2085, 1, 17, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1187\",\"size\":\"25 Kg\",\"warna\":\"\",\"qty_po\":\"80\",\"qty_open\":\"80\",\"harga_beli\":\"6700\",\"id_po\":11,\"id_po_item\":17}', '2021-06-21 08:36:05'),
(2086, 1, 1158, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"28\"}', '2021-06-25 08:09:45'),
(2087, 1, 1162, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"11\"}', '2021-06-25 08:10:02'),
(2088, 1, 1159, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"29\"}', '2021-06-25 08:10:22'),
(2089, 1, 1186, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"2\"}', '2021-06-25 08:10:32'),
(2090, 1, 1187, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"80\"}', '2021-06-25 08:23:15'),
(2091, 1, 1187, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"74\"}', '2021-06-25 08:50:05'),
(2092, 1, 1187, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"33\"}', '2021-07-09 09:41:16'),
(2093, 1, 17, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pemakaian kimia\",\"keterangan\":\"Pemakaian kimia\",\"tanggal\":\"2021-07-09\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":17}', '2021-07-09 09:49:12'),
(2094, 1, 38, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"3.5\",\"id_pengeluaran_barang\":17,\"id_pengeluaran_barang_item\":38}', '2021-07-09 09:49:12'),
(2095, 1, 17, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-09 09:49:40'),
(2096, 1, 18, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pemakaian kimia\",\"keterangan\":\"Pemakaian kimia\",\"tanggal\":\"2021-07-09\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":18}', '2021-07-13 08:54:24'),
(2097, 1, 39, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"9\",\"id_pengeluaran_barang\":18,\"id_pengeluaran_barang_item\":39}', '2021-07-13 08:54:24'),
(2098, 1, 18, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-13 08:54:31'),
(2099, 1, 12, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"001-TSM-PO-07-2021\",\"supplier\":\"PT. FORTUIN SUPEL INDONESIA\",\"kode_po\":\"001\\/TSM\\/PO\\/07\\/2021\",\"tanggal\":\"2021-07-13\",\"input_by\":\"Admin\",\"id_po\":12}', '2021-07-13 13:07:27'),
(2100, 1, 18, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1187\",\"size\":\"25 Kg\",\"warna\":\"\",\"qty_po\":\"80\",\"qty_open\":\"80\",\"harga_beli\":\"6700\",\"id_po\":12,\"id_po_item\":18}', '2021-07-13 13:07:27'),
(2101, 1, 19, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1188\",\"size\":\".\",\"warna\":\"\",\"qty_po\":\"250\",\"qty_open\":\"250\",\"harga_beli\":\"25500\",\"id_po\":12,\"id_po_item\":19}', '2021-07-13 13:07:27'),
(2102, 1, 1159, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"41\"}', '2021-07-16 09:36:36'),
(2103, 1, 1186, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"25\"}', '2021-07-16 09:36:43'),
(2104, 1, 1158, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"26\"}', '2021-07-16 09:37:07'),
(2105, 1, 1188, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"385\"}', '2021-07-16 09:43:55'),
(2106, 1, 1187, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"90\"}', '2021-07-16 09:44:23'),
(2107, 1, 19, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pemakaian kimia dari tanggal 15 - 16 Juli\",\"keterangan\":\"Pemakaian kimia dari tanggal 15 - 16 Juli\",\"tanggal\":\"2021-07-16\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":19}', '2021-07-16 09:46:56'),
(2108, 1, 40, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"4\",\"id_pengeluaran_barang\":19,\"id_pengeluaran_barang_item\":40}', '2021-07-16 09:46:56'),
(2109, 1, 41, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"13\",\"id_pengeluaran_barang\":19,\"id_pengeluaran_barang_item\":41}', '2021-07-16 09:46:57'),
(2110, 1, 19, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-16 09:47:01'),
(2111, 1, 20, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Lokebel L B06A\\/20\",\"keterangan\":null,\"tanggal\":\"2021-07-17\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":20}', '2021-07-17 08:10:18'),
(2112, 1, 42, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1186\",\"qty\":\"1\",\"id_pengeluaran_barang\":20,\"id_pengeluaran_barang_item\":42}', '2021-07-17 08:10:18'),
(2113, 1, 20, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-17 08:10:23'),
(2114, 1, 21, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Masenay\",\"keterangan\":\"16 - 17 Juli 09.00 17.00\",\"tanggal\":\"2021-07-17\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":21}', '2021-07-17 08:48:50'),
(2115, 1, 43, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"1\",\"id_pengeluaran_barang\":21,\"id_pengeluaran_barang_item\":43}', '2021-07-17 08:48:50'),
(2116, 1, 44, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"7\",\"id_pengeluaran_barang\":21,\"id_pengeluaran_barang_item\":44}', '2021-07-17 08:48:50'),
(2117, 1, 21, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-17 08:48:54'),
(2118, 1, 22, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"17 Juli 09.00 17.00\",\"keterangan\":\"Pemakaian kimia\",\"tanggal\":\"2021-07-19\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":22}', '2021-07-19 12:37:54'),
(2119, 1, 45, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"2\",\"id_pengeluaran_barang\":22,\"id_pengeluaran_barang_item\":45}', '2021-07-19 12:37:54'),
(2120, 1, 46, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"7\",\"id_pengeluaran_barang\":22,\"id_pengeluaran_barang_item\":46}', '2021-07-19 12:37:54'),
(2121, 1, 22, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-19 12:37:58'),
(2122, 1, 23, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"17 - 18 Juli 17.00 17.00\",\"keterangan\":\"Hanapi\",\"tanggal\":\"2021-07-19\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":23}', '2021-07-19 12:39:02'),
(2123, 1, 47, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"3\",\"id_pengeluaran_barang\":23,\"id_pengeluaran_barang_item\":47}', '2021-07-19 12:39:02'),
(2124, 1, 48, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"15\",\"id_pengeluaran_barang\":23,\"id_pengeluaran_barang_item\":48}', '2021-07-19 12:39:02'),
(2125, 1, 23, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-19 12:39:06'),
(2126, 1, 24, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"16  - 17 Juli 17.00 09.00\",\"keterangan\":\"Heri\",\"tanggal\":\"2021-07-19\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":24}', '2021-07-19 15:10:48'),
(2127, 1, 49, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"2\",\"id_pengeluaran_barang\":24,\"id_pengeluaran_barang_item\":49}', '2021-07-19 15:10:48'),
(2128, 1, 50, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"8\",\"id_pengeluaran_barang\":24,\"id_pengeluaran_barang_item\":50}', '2021-07-19 15:10:49'),
(2129, 1, 24, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-19 15:10:52'),
(2130, 1, 25, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"C18\\/08\",\"keterangan\":\"meteran macet\",\"tanggal\":\"2021-07-19\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":25}', '2021-07-21 12:31:52'),
(2131, 1, 51, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"1\",\"id_pengeluaran_barang\":25,\"id_pengeluaran_barang_item\":51}', '2021-07-21 12:31:52'),
(2132, 1, 25, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-21 12:31:56'),
(2133, 1, 26, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"E18\\/02\",\"keterangan\":\"meteran macet\",\"tanggal\":\"2021-07-22\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":26}', '2021-07-22 08:44:56'),
(2134, 1, 52, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"1\",\"id_pengeluaran_barang\":26,\"id_pengeluaran_barang_item\":52}', '2021-07-22 08:44:56'),
(2135, 1, 27, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"perbaikan\",\"keterangan\":\"perbaikan\",\"tanggal\":\"2021-07-22\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":27}', '2021-07-22 08:45:48'),
(2136, 1, 53, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"1\",\"id_pengeluaran_barang\":27,\"id_pengeluaran_barang_item\":53}', '2021-07-22 08:45:48'),
(2137, 1, 54, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"1\",\"id_pengeluaran_barang\":27,\"id_pengeluaran_barang_item\":54}', '2021-07-22 08:45:48'),
(2138, 1, 26, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-22 08:45:56'),
(2139, 1, 27, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-22 08:46:01'),
(2140, 1, 28, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pemakaian kimia 18 - 22 Juli\",\"keterangan\":\"-\",\"tanggal\":\"2021-07-22\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":28}', '2021-07-22 14:31:55'),
(2141, 1, 55, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"9\",\"id_pengeluaran_barang\":28,\"id_pengeluaran_barang_item\":55}', '2021-07-22 14:31:55'),
(2142, 1, 56, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"39\",\"id_pengeluaran_barang\":28,\"id_pengeluaran_barang_item\":56}', '2021-07-22 14:31:55'),
(2143, 1, 28, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-22 14:31:59'),
(2144, 1, 29, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"perbaikan\",\"keterangan\":\"-\",\"tanggal\":\"2021-07-24\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":29}', '2021-07-24 12:17:09'),
(2145, 1, 57, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"2\",\"id_pengeluaran_barang\":29,\"id_pengeluaran_barang_item\":57}', '2021-07-24 12:17:09'),
(2146, 1, 58, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"2\",\"id_pengeluaran_barang\":29,\"id_pengeluaran_barang_item\":58}', '2021-07-24 12:17:09'),
(2147, 1, 59, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"1\",\"id_pengeluaran_barang\":29,\"id_pengeluaran_barang_item\":59}', '2021-07-24 12:17:09'),
(2148, 1, 29, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-24 12:17:14'),
(2149, 1, 30, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"D02\\/19\",\"keterangan\":\"Valve\",\"tanggal\":\"2021-07-26\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":30}', '2021-07-26 09:09:16'),
(2150, 1, 60, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"1\",\"id_pengeluaran_barang\":30,\"id_pengeluaran_barang_item\":60}', '2021-07-26 09:09:16'),
(2151, 1, 30, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-27 13:02:11'),
(2152, 1, 31, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"perbaikan\",\"keterangan\":\"-\",\"tanggal\":\"2021-07-27\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":31}', '2021-07-27 13:03:06'),
(2153, 1, 61, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"6\",\"id_pengeluaran_barang\":31,\"id_pengeluaran_barang_item\":61}', '2021-07-27 13:03:06'),
(2154, 1, 62, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"2\",\"id_pengeluaran_barang\":31,\"id_pengeluaran_barang_item\":62}', '2021-07-27 13:03:06'),
(2155, 1, 63, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1186\",\"qty\":\"2\",\"id_pengeluaran_barang\":31,\"id_pengeluaran_barang_item\":63}', '2021-07-27 13:03:06'),
(2156, 1, 31, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-27 13:03:09'),
(2157, 1, 32, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pemakaian kimia selama sebulan 23 - 27 Juli\",\"keterangan\":\"Pemakaian kimia\",\"tanggal\":\"2021-07-27\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":32}', '2021-07-27 13:17:25'),
(2158, 1, 64, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"11\",\"id_pengeluaran_barang\":32,\"id_pengeluaran_barang_item\":64}', '2021-07-27 13:17:25'),
(2159, 1, 65, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"52\",\"id_pengeluaran_barang\":32,\"id_pengeluaran_barang_item\":65}', '2021-07-27 13:17:26'),
(2160, 1, 32, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-27 13:17:29'),
(2161, 1, 33, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pemakaian kimia 27 Juli\",\"keterangan\":\"-\",\"tanggal\":\"2021-07-28\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":33}', '2021-07-28 09:55:51'),
(2162, 1, 66, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"4\",\"id_pengeluaran_barang\":33,\"id_pengeluaran_barang_item\":66}', '2021-07-28 09:55:51'),
(2163, 1, 67, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"16\",\"id_pengeluaran_barang\":33,\"id_pengeluaran_barang_item\":67}', '2021-07-28 09:55:51'),
(2164, 1, 33, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-28 09:55:59'),
(2165, 1, 34, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"perbaikan\",\"keterangan\":\"-\",\"tanggal\":\"2021-07-28\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":34}', '2021-07-28 15:03:40'),
(2166, 1, 68, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"2\",\"id_pengeluaran_barang\":34,\"id_pengeluaran_barang_item\":68}', '2021-07-28 15:03:40'),
(2167, 1, 69, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"3\",\"id_pengeluaran_barang\":34,\"id_pengeluaran_barang_item\":69}', '2021-07-28 15:03:40'),
(2168, 1, 70, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"1\",\"id_pengeluaran_barang\":34,\"id_pengeluaran_barang_item\":70}', '2021-07-28 15:03:40'),
(2169, 1, 34, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-28 15:03:43'),
(2170, 1, 35, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"Pemakaian kimia dari tanggal 28 - 30Juli\",\"keterangan\":\"Pemakaian kimia\",\"tanggal\":\"2021-07-31\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":35}', '2021-07-31 08:24:37'),
(2171, 1, 71, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1187\",\"qty\":\"6\",\"id_pengeluaran_barang\":35,\"id_pengeluaran_barang_item\":71}', '2021-07-31 08:24:37'),
(2172, 1, 72, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1188\",\"qty\":\"45\",\"id_pengeluaran_barang\":35,\"id_pengeluaran_barang_item\":72}', '2021-07-31 08:24:37'),
(2173, 1, 35, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-31 08:24:45'),
(2174, 1, 36, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"perbaikan\",\"keterangan\":\"-\",\"tanggal\":\"2021-07-30\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":36}', '2021-07-31 08:26:33'),
(2175, 1, 73, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"2\",\"id_pengeluaran_barang\":36,\"id_pengeluaran_barang_item\":73}', '2021-07-31 08:26:33'),
(2176, 1, 36, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-07-31 08:26:37'),
(2177, 1, 1158, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"12\"}', '2021-07-31 08:50:29'),
(2178, 1, 1159, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"35\"}', '2021-07-31 08:50:46'),
(2179, 1, 1186, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"29\"}', '2021-07-31 08:51:01'),
(2180, 1, 1162, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"4\"}', '2021-07-31 08:52:04'),
(2181, 1, 1159, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"34\"}', '2021-07-31 10:08:26'),
(2182, 1, 1186, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"30\"}', '2021-07-31 10:08:31'),
(2183, 1, 37, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"perbaikan\",\"keterangan\":\"-\",\"tanggal\":\"2021-08-04\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":37}', '2021-08-05 13:48:14'),
(2184, 1, 74, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"1\",\"id_pengeluaran_barang\":37,\"id_pengeluaran_barang_item\":74}', '2021-08-05 13:48:14'),
(2185, 1, 37, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-08-05 13:48:18'),
(2186, 1, 38, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"perbaikan\",\"keterangan\":\"-\",\"tanggal\":\"2021-08-05\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":38}', '2021-08-05 13:48:56'),
(2187, 1, 75, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"2\",\"id_pengeluaran_barang\":38,\"id_pengeluaran_barang_item\":75}', '2021-08-05 13:48:56');
INSERT INTO `t_document_history` (`id_document_history`, `id_karyawan`, `id_content`, `type_content`, `action`, `description`, `details`, `date`) VALUES
(2188, 1, 76, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"1\",\"id_pengeluaran_barang\":38,\"id_pengeluaran_barang_item\":76}', '2021-08-05 13:48:56'),
(2189, 1, 38, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-08-05 13:49:02'),
(2190, 1, 39, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"perbaikan\",\"keterangan\":\"-\",\"tanggal\":\"2021-08-03\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":39}', '2021-08-05 14:18:54'),
(2191, 1, 77, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"2\",\"id_pengeluaran_barang\":39,\"id_pengeluaran_barang_item\":77}', '2021-08-05 14:18:54'),
(2192, 1, 78, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"3\",\"id_pengeluaran_barang\":39,\"id_pengeluaran_barang_item\":78}', '2021-08-05 14:18:54'),
(2193, 1, 79, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"2\",\"id_pengeluaran_barang\":39,\"id_pengeluaran_barang_item\":79}', '2021-08-05 14:18:54'),
(2194, 1, 39, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-08-05 14:18:59'),
(2195, 1, 40, 't_pengeluaran_barang', 'create', 'Created a PengeluaranBarang', '{\"tujuan\":\"perbaikan\",\"keterangan\":\"-\",\"tanggal\":\"2021-08-07\",\"input_by\":\"Admin\",\"id_pengeluaran_barang\":40}', '2021-08-07 08:26:16'),
(2196, 1, 80, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1158\",\"qty\":\"1\",\"id_pengeluaran_barang\":40,\"id_pengeluaran_barang_item\":80}', '2021-08-07 08:26:16'),
(2197, 1, 81, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1162\",\"qty\":\"1\",\"id_pengeluaran_barang\":40,\"id_pengeluaran_barang_item\":81}', '2021-08-07 08:26:16'),
(2198, 1, 82, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1186\",\"qty\":\"1\",\"id_pengeluaran_barang\":40,\"id_pengeluaran_barang_item\":82}', '2021-08-07 08:26:16'),
(2199, 1, 83, 't_pengeluaran_barang_item', 'create', 'Created a PengeluaranBarangItem', '{\"id_barang\":\"1159\",\"qty\":\"1\",\"id_pengeluaran_barang\":40,\"id_pengeluaran_barang_item\":83}', '2021-08-07 08:26:16'),
(2200, 1, 40, 't_pengeluaran_barang', 'update', 'Updated a PengeluaranBarang', '{\"is_lock\":\"Y\"}', '2021-08-07 08:26:21'),
(2201, 1, 13, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"PAC German\",\"supplier\":\"PT. FORTUIN SUPEL INDONESIA\",\"kode_po\":\"001\\/TSM\\/PO\\/08\\/2021\",\"tanggal\":\"2021-08-27\",\"input_by\":\"Admin\",\"id_po\":13}', '2021-08-27 11:30:37'),
(2202, 1, 20, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1187\",\"size\":\"25 Kg\",\"warna\":\"\",\"qty_po\":\"100\",\"qty_open\":\"100\",\"harga_beli\":\"10500\",\"id_po\":13,\"id_po_item\":20}', '2021-08-27 11:30:37'),
(2203, 1, 14, 't_po', 'create', 'Created a PO', '{\"keterangan\":\"PO\",\"supplier\":\"PT. FORTUIN SUPEL INDONESIA\",\"kode_po\":\"002\\/TSM\\/PO\\/08\\/2021\",\"tanggal\":\"2021-08-30\",\"input_by\":\"Admin\",\"id_po\":14}', '2021-08-30 09:12:42'),
(2204, 1, 21, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1187\",\"size\":\"25 Kg\",\"warna\":\"\",\"qty_po\":\"300\",\"qty_open\":\"300\",\"harga_beli\":\"6700\",\"id_po\":14,\"id_po_item\":21}', '2021-08-30 09:12:42'),
(2205, 1, 22, 't_po_item', 'create', 'Created a POItem', '{\"id_barang\":\"1188\",\"size\":\".\",\"warna\":\"\",\"qty_po\":\"250\",\"qty_open\":\"250\",\"harga_beli\":\"25500\",\"id_po\":14,\"id_po_item\":22}', '2021-08-30 09:12:42'),
(2206, 1, 1158, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"12\"}', '2021-12-03 10:51:17'),
(2207, 1, 1159, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"32\"}', '2021-12-03 10:52:02'),
(2208, 1, 1186, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"19\"}', '2021-12-03 10:52:10'),
(2209, 1, 1245, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Valve Panjang\",\"id_category\":\"1\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"2,5\\\"\",\"jenis_barang\":null,\"last_stock\":\"6\",\"min_stock\":\"5\",\"max_stock\":\"1000\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1245}', '2021-12-03 10:53:06'),
(2210, 1, 1170, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"6\"}', '2021-12-10 08:43:21'),
(2211, 1, 1170, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"0\"}', '2021-12-10 08:43:29'),
(2212, 1, 1171, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"6\"}', '2021-12-10 08:43:35'),
(2213, 1, 1163, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"42\"}', '2021-12-10 08:43:44'),
(2214, 1, 1246, 'm_barang', 'create', 'Created a Barang', '{\"nama_barang\":\"Klem 3\\\"\",\"id_category\":\"2\",\"satuan\":\"Pcs\",\"merk\":\"-\",\"size\":\"3\\\"\",\"jenis_barang\":null,\"last_stock\":\"4\",\"min_stock\":\"5\",\"max_stock\":\"1000\",\"is_limbah\":null,\"parent_barang\":null,\"id_barang\":1246}', '2021-12-10 08:44:18'),
(2215, 1, 1164, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"5\"}', '2021-12-10 08:44:30'),
(2216, 1, 1165, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"3\"}', '2021-12-10 08:44:34'),
(2217, 1, 1166, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"15\"}', '2021-12-10 08:44:47'),
(2218, 1, 1220, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"13\"}', '2021-12-10 08:44:53'),
(2219, 1, 1167, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"7\"}', '2021-12-10 08:44:58'),
(2220, 1, 1220, 'm_barang', 'update', 'Updated a Barang', '{\"id_category\":\"1\"}', '2021-12-10 08:46:03'),
(2221, 1, 1169, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"143\"}', '2021-12-10 08:53:42'),
(2222, 1, 1, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"30\"}', '2021-12-14 10:40:47'),
(2223, 1, 2, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"20\"}', '2021-12-14 10:40:57'),
(2224, 1, 3, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"20\"}', '2021-12-14 10:41:05'),
(2225, 1, 3, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"19\"}', '2021-12-14 10:41:21'),
(2226, 1, 5, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"10\"}', '2021-12-14 10:41:52'),
(2227, 1, 1170, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"40\"}', '2021-12-14 10:42:18'),
(2228, 1, 1171, 'm_barang', 'update', 'Updated a Barang', '{\"last_stock\":\"10\"}', '2021-12-14 10:42:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_limbah_masuk`
--

CREATE TABLE `t_limbah_masuk` (
  `id_limbah_masuk` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `is_lock` varchar(1) NOT NULL DEFAULT 'N',
  `input_by` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_limbah_masuk`
--

INSERT INTO `t_limbah_masuk` (`id_limbah_masuk`, `tanggal`, `keterangan`, `is_lock`, `input_by`, `input_date`) VALUES
(1, '2021-01-29', 'Limbah Heri', 'N', 'server', '2021-01-29 22:47:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_limbah_masuk_item`
--

CREATE TABLE `t_limbah_masuk_item` (
  `id_limbah_masuk_item` int(11) NOT NULL,
  `id_limbah_masuk` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_limbah_masuk_item`
--

INSERT INTO `t_limbah_masuk_item` (`id_limbah_masuk_item`, `id_limbah_masuk`, `id_barang`, `warna`, `size`, `qty`) VALUES
(1, 1, 1155, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_order`
--

CREATE TABLE `t_order` (
  `id_order` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `nama` varchar(100) DEFAULT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `jenis_pembayaran` varchar(50) DEFAULT NULL,
  `no_kartu` varchar(50) DEFAULT NULL,
  `harga` int(11) NOT NULL DEFAULT 0,
  `diskon` int(11) NOT NULL DEFAULT 0,
  `total_harga` int(11) DEFAULT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `nominal_bayar` int(11) DEFAULT NULL,
  `kembali` int(11) DEFAULT NULL,
  `input_by` varchar(50) NOT NULL,
  `is_delete` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_order`
--

INSERT INTO `t_order` (`id_order`, `tanggal`, `nama`, `tipe`, `jenis_pembayaran`, `no_kartu`, `harga`, `diskon`, `total_harga`, `total_qty`, `nominal_bayar`, `kembali`, `input_by`, `is_delete`) VALUES
(1, '2020-07-17 00:05:35', 'Test', 'TOKO', 'CASH', 'CASH', 0, 0, 10000, 2, 12000, 2000, 'Galetto', 'N'),
(2, '2020-07-17 00:09:19', NULL, 'TOKO', 'CASH', 'CASH', 0, 0, 5000, 1, 10000, 5000, 'Galetto', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_order_item`
--

CREATE TABLE `t_order_item` (
  `id_order_item` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `warna` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_order_item`
--

INSERT INTO `t_order_item` (`id_order_item`, `id_order`, `id_barang`, `tanggal`, `warna`, `size`, `qty`, `harga_beli`, `harga`, `subtotal`) VALUES
(1, 1, 1141, '2020-07-17 00:05:35', NULL, NULL, 2, 3000, 5000, 10000),
(2, 2, 1141, '2020-07-17 00:09:19', NULL, NULL, 1, 3000, 5000, 5000),
(3, 3, 1141, '2020-10-19 12:46:44', NULL, NULL, 1, 3000, 5000, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pemakaian_kimia`
--

CREATE TABLE `t_pemakaian_kimia` (
  `id_pk` int(11) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `id_pac` int(11) DEFAULT NULL,
  `qty_pac` int(11) DEFAULT NULL,
  `id_kaporit` int(11) DEFAULT NULL,
  `qty_kaporit` float DEFAULT NULL,
  `in_date` datetime DEFAULT NULL,
  `out_date` datetime DEFAULT NULL,
  `input_date` timestamp NULL DEFAULT current_timestamp(),
  `is_delete` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_pemakaian_kimia`
--

INSERT INTO `t_pemakaian_kimia` (`id_pk`, `petugas`, `id_pac`, `qty_pac`, `id_kaporit`, `qty_kaporit`, `in_date`, `out_date`, `input_date`, `is_delete`) VALUES
(7, 'Hanapi', NULL, 2, NULL, 7.5, '2021-12-01 17:00:00', '2021-12-02 09:00:00', '2021-12-15 07:10:57', 'N'),
(8, 'Masenay', NULL, 1, NULL, 7.5, '2021-12-02 09:00:00', '2021-12-03 17:00:00', '2021-12-15 07:11:44', 'N'),
(9, 'Hanapi', NULL, 2, NULL, 7.5, '2021-12-03 17:00:00', '2021-12-04 09:00:00', '2021-12-15 07:12:47', 'N'),
(10, 'Masenay', NULL, 3, NULL, 15, '2021-12-04 17:00:00', '2021-12-05 17:00:00', '2021-12-15 07:26:19', 'N'),
(11, 'Hanapi', NULL, 3, NULL, 15, '2021-12-05 17:00:00', '2021-12-06 17:00:00', '2021-12-15 07:26:49', 'N'),
(12, 'Masenay', NULL, 1, NULL, 7.5, '2021-12-07 09:00:00', '2021-12-07 17:00:00', '2021-12-15 07:32:57', 'N'),
(13, 'Hanapi', NULL, 2, NULL, 7.5, '2021-12-07 17:00:00', '2021-12-08 09:00:00', '2021-12-15 07:34:16', 'N'),
(14, 'Masenay', NULL, 1, NULL, 7.5, '2021-12-08 09:00:00', '2021-12-08 17:00:00', '2021-12-15 07:35:55', 'N'),
(15, 'Masenay', NULL, 3, NULL, 22.5, '2021-12-09 17:00:00', '2021-12-11 17:00:00', '2021-12-15 07:36:36', 'N'),
(16, 'Hanapi', NULL, 2, NULL, 7.5, '2021-12-12 17:00:00', '2021-12-12 09:00:00', '2021-12-15 07:37:35', 'N'),
(17, 'Hanapi', NULL, 1, NULL, 7.5, '2021-12-13 09:00:00', '2021-12-13 17:00:00', '2021-12-15 07:38:27', 'N'),
(18, 'Hanapi', NULL, 2, NULL, 7.5, '2021-12-10 17:00:00', '2021-12-11 09:00:00', '2021-12-15 07:39:09', 'N'),
(19, 'Masenay', NULL, 2, NULL, 7.5, '2021-12-13 17:00:00', '2021-12-14 09:00:00', '2021-12-15 07:39:53', 'N'),
(20, 'Hanapi', NULL, 1, NULL, 7.5, '2021-12-14 09:00:00', '2021-12-14 17:00:00', '2021-12-16 01:00:01', 'N'),
(21, 'Hanapi', NULL, 2, NULL, 7.5, '2021-12-15 09:00:00', '2021-12-15 17:00:00', '2021-12-16 01:01:49', 'N'),
(22, 'Masenay', NULL, 2, NULL, 7.5, '2021-12-15 17:00:00', '2021-12-16 09:00:00', '2021-12-16 02:15:44', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penerimaan_barang`
--

CREATE TABLE `t_penerimaan_barang` (
  `id_penerimaan_barang` int(11) NOT NULL,
  `id_po` int(11) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `is_lock` varchar(1) NOT NULL DEFAULT 'N',
  `input_by` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_penerimaan_barang`
--

INSERT INTO `t_penerimaan_barang` (`id_penerimaan_barang`, `id_po`, `tanggal`, `keterangan`, `is_lock`, `input_by`, `input_date`) VALUES
(6, 7, '2021-04-26', 'Barang Masuk Kaporit dan PAC', 'Y', 'Admin', '2021-04-08 14:43:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penerimaan_barang_item`
--

CREATE TABLE `t_penerimaan_barang_item` (
  `id_penerimaan_barang_item` int(11) NOT NULL,
  `id_penerimaan_barang` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `qty_po` int(11) NOT NULL DEFAULT 0,
  `qty_open` int(11) NOT NULL DEFAULT 0,
  `qty_sisa` int(11) NOT NULL DEFAULT 0,
  `harga_beli` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_penerimaan_barang_item`
--

INSERT INTO `t_penerimaan_barang_item` (`id_penerimaan_barang_item`, `id_penerimaan_barang`, `id_barang`, `warna`, `size`, `qty`, `qty_po`, `qty_open`, `qty_sisa`, `harga_beli`) VALUES
(9, 6, 1187, NULL, NULL, 40, 40, 40, 0, 0),
(10, 6, 1188, NULL, NULL, 10, 10, 10, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengeluaran`
--

CREATE TABLE `t_pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `id_jenis_pengeluaran` int(11) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` int(11) NOT NULL,
  `input_by` varchar(1000) NOT NULL,
  `input_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_delete` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengeluaran_barang`
--

CREATE TABLE `t_pengeluaran_barang` (
  `id_pengeluaran_barang` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `keterangan` varchar(1000) DEFAULT NULL,
  `is_lock` varchar(1) NOT NULL DEFAULT 'N',
  `input_by` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_pengeluaran_barang`
--

INSERT INTO `t_pengeluaran_barang` (`id_pengeluaran_barang`, `tanggal`, `tujuan`, `keterangan`, `is_lock`, `input_by`, `input_date`) VALUES
(3, '2021-04-08', 'Penggunaan WTP', 'pemakaian tanggal 28 Maret - 07 April', 'Y', 'Admin', '2021-04-08 14:58:14'),
(4, '2021-04-08', 'Penggunaan WTP', 'pemakaian tanggal 28 Maret - 07 April', 'Y', 'Admin', '2021-04-08 15:02:06'),
(5, '2021-04-21', 'Perbaikan', '-', 'Y', 'Admin', '2021-04-21 15:31:48'),
(6, '2021-04-22', 'Perbaikan dan pasang baru', 'Perbaikan', 'Y', 'Admin', '2021-04-27 13:31:16'),
(7, '2021-05-03', 'Pengeluaran Pak karno', 'Catatan Pak karno', 'Y', 'Admin', '2021-05-03 15:42:28'),
(8, '2021-05-04', 'Pasang Baru 2 Rumah', 'Pasang Baru 2 Rumah', 'Y', 'Admin', '2021-05-04 11:01:31'),
(10, '2021-05-07', 'Pemasangan Di block C 2 rumah', 'Pemasangan Di block C 2 rumah', 'Y', 'Admin', '2021-05-07 08:59:35'),
(11, '2021-05-11', 'perbaikan', 'perbaikan', 'Y', 'Admin', '2021-05-11 14:59:02'),
(12, '2021-05-24', 'Pemakaian kimia selama sebulan 22 april - 23 mei', '-', 'Y', 'Admin', '2021-05-24 08:29:39'),
(13, '2021-05-25', 'Pemasangan Baru', 'Pemasangan Baru', 'Y', 'Admin', '2021-05-25 10:24:30'),
(14, '2021-05-29', 'Perbaikan', '-', 'Y', 'Admin', '2021-05-29 08:59:19'),
(15, '2021-06-02', 'Pasang baru', 'Pasang baru', 'Y', 'Admin', '2021-06-02 09:56:09'),
(16, '2021-06-03', 'Meteran Macet', NULL, 'Y', 'Admin', '2021-06-03 11:14:22'),
(17, '2021-07-09', 'Pemakaian kimia', 'Pemakaian kimia', 'Y', 'Admin', '2021-07-09 09:49:12'),
(18, '2021-07-09', 'Pemakaian kimia', 'Pemakaian kimia', 'Y', 'Admin', '2021-07-13 08:54:24'),
(19, '2021-07-16', 'Pemakaian kimia dari tanggal 15 - 16 Juli', 'Pemakaian kimia dari tanggal 15 - 16 Juli', 'Y', 'Admin', '2021-07-16 09:46:56'),
(20, '2021-07-17', 'Lokebel L B06A/20', NULL, 'Y', 'Admin', '2021-07-17 08:10:18'),
(21, '2021-07-17', 'Masenay', '16 - 17 Juli 09.00 17.00', 'Y', 'Admin', '2021-07-17 08:48:50'),
(22, '2021-07-19', '17 Juli 09.00 17.00', 'Pemakaian kimia', 'Y', 'Admin', '2021-07-19 12:37:54'),
(23, '2021-07-19', '17 - 18 Juli 17.00 17.00', 'Hanapi', 'Y', 'Admin', '2021-07-19 12:39:02'),
(24, '2021-07-19', '16  - 17 Juli 17.00 09.00', 'Heri', 'Y', 'Admin', '2021-07-19 15:10:48'),
(25, '2021-07-19', 'C18/08', 'meteran macet', 'Y', 'Admin', '2021-07-21 12:31:52'),
(26, '2021-07-22', 'E18/02', 'meteran macet', 'Y', 'Admin', '2021-07-22 08:44:56'),
(27, '2021-07-22', 'perbaikan', 'perbaikan', 'Y', 'Admin', '2021-07-22 08:45:48'),
(28, '2021-07-22', 'Pemakaian kimia 18 - 22 Juli', '-', 'Y', 'Admin', '2021-07-22 14:31:55'),
(29, '2021-07-24', 'perbaikan', '-', 'Y', 'Admin', '2021-07-24 12:17:09'),
(30, '2021-07-26', 'D02/19', 'Valve', 'Y', 'Admin', '2021-07-26 09:09:16'),
(31, '2021-07-27', 'perbaikan', '-', 'Y', 'Admin', '2021-07-27 13:03:06'),
(32, '2021-07-27', 'Pemakaian kimia selama sebulan 23 - 27 Juli', 'Pemakaian kimia', 'Y', 'Admin', '2021-07-27 13:17:25'),
(33, '2021-07-28', 'Pemakaian kimia 27 Juli', '-', 'Y', 'Admin', '2021-07-28 09:55:51'),
(34, '2021-07-28', 'perbaikan', '-', 'Y', 'Admin', '2021-07-28 15:03:40'),
(35, '2021-07-31', 'Pemakaian kimia dari tanggal 28 - 30Juli', 'Pemakaian kimia', 'Y', 'Admin', '2021-07-31 08:24:37'),
(36, '2021-07-30', 'perbaikan', '-', 'Y', 'Admin', '2021-07-31 08:26:33'),
(37, '2021-08-04', 'perbaikan', '-', 'Y', 'Admin', '2021-08-05 13:48:14'),
(38, '2021-08-05', 'perbaikan', '-', 'Y', 'Admin', '2021-08-05 13:48:56'),
(39, '2021-08-03', 'perbaikan', '-', 'Y', 'Admin', '2021-08-05 14:18:53'),
(40, '2021-08-07', 'perbaikan', '-', 'Y', 'Admin', '2021-08-07 08:26:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengeluaran_barang_item`
--

CREATE TABLE `t_pengeluaran_barang_item` (
  `id_pengeluaran_barang_item` int(11) NOT NULL,
  `id_pengeluaran_barang` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_pengeluaran_barang_item`
--

INSERT INTO `t_pengeluaran_barang_item` (`id_pengeluaran_barang_item`, `id_pengeluaran_barang`, `id_barang`, `warna`, `size`, `qty`) VALUES
(4, 3, 1187, NULL, NULL, 32),
(5, 4, 1188, NULL, NULL, 4),
(6, 5, 1158, NULL, NULL, 1),
(7, 5, 1162, NULL, NULL, 1),
(8, 5, 1159, NULL, NULL, 3),
(9, 6, 1162, NULL, NULL, 2),
(10, 6, 1158, NULL, NULL, 4),
(11, 6, 1186, NULL, NULL, 2),
(12, 6, 1159, NULL, NULL, 3),
(13, 7, 1162, NULL, NULL, 4),
(14, 7, 1158, NULL, NULL, 6),
(15, 7, 1159, NULL, NULL, 6),
(16, 8, 1162, NULL, NULL, 2),
(17, 8, 1158, NULL, NULL, 2),
(18, 8, 1159, NULL, NULL, 2),
(22, 10, 1162, NULL, NULL, 2),
(23, 10, 1158, NULL, NULL, 2),
(24, 10, 1159, NULL, NULL, 2),
(25, 11, 1158, NULL, NULL, 2),
(26, 11, 1186, NULL, NULL, 1),
(27, 11, 1159, NULL, NULL, 1),
(28, 12, 1187, NULL, NULL, 92),
(29, 12, 1188, NULL, NULL, 10),
(30, 13, 1162, NULL, NULL, 3),
(31, 14, 1158, NULL, NULL, 2),
(32, 14, 1159, NULL, NULL, 5),
(33, 15, 1162, NULL, NULL, 1),
(34, 15, 1159, NULL, NULL, 1),
(35, 15, 1158, NULL, NULL, 1),
(36, 16, 1162, NULL, NULL, 1),
(37, 16, 1186, NULL, NULL, 1),
(38, 17, 1187, NULL, NULL, 4),
(39, 18, 1187, NULL, NULL, 9),
(40, 19, 1187, NULL, NULL, 4),
(41, 19, 1188, NULL, NULL, 13),
(42, 20, 1186, NULL, NULL, 1),
(43, 21, 1187, NULL, NULL, 1),
(44, 21, 1188, NULL, NULL, 7),
(45, 22, 1187, NULL, NULL, 2),
(46, 22, 1188, NULL, NULL, 7),
(47, 23, 1187, NULL, NULL, 3),
(48, 23, 1188, NULL, NULL, 15),
(49, 24, 1187, NULL, NULL, 2),
(50, 24, 1188, NULL, NULL, 8),
(51, 25, 1162, NULL, NULL, 1),
(52, 26, 1162, NULL, NULL, 1),
(53, 27, 1158, NULL, NULL, 1),
(54, 27, 1159, NULL, NULL, 1),
(55, 28, 1187, NULL, NULL, 9),
(56, 28, 1188, NULL, NULL, 39),
(57, 29, 1162, NULL, NULL, 2),
(58, 29, 1158, NULL, NULL, 2),
(59, 29, 1159, NULL, NULL, 1),
(60, 30, 1158, NULL, NULL, 1),
(61, 31, 1158, NULL, NULL, 6),
(62, 31, 1159, NULL, NULL, 2),
(63, 31, 1186, NULL, NULL, 2),
(64, 32, 1187, NULL, NULL, 11),
(65, 32, 1188, NULL, NULL, 52),
(66, 33, 1187, NULL, NULL, 4),
(67, 33, 1188, NULL, NULL, 16),
(68, 34, 1162, NULL, NULL, 2),
(69, 34, 1158, NULL, NULL, 3),
(70, 34, 1159, NULL, NULL, 1),
(71, 35, 1187, NULL, NULL, 6),
(72, 35, 1188, NULL, NULL, 45),
(73, 36, 1158, NULL, NULL, 2),
(74, 37, 1158, NULL, NULL, 1),
(75, 38, 1158, NULL, NULL, 2),
(76, 38, 1159, NULL, NULL, 1),
(77, 39, 1162, NULL, NULL, 2),
(78, 39, 1158, NULL, NULL, 3),
(79, 39, 1159, NULL, NULL, 2),
(80, 40, 1158, NULL, NULL, 1),
(81, 40, 1162, NULL, NULL, 1),
(82, 40, 1186, NULL, NULL, 1),
(83, 40, 1159, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengeluaran_limbah`
--

CREATE TABLE `t_pengeluaran_limbah` (
  `id_pengeluaran_limbah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `keterangan` varchar(1000) DEFAULT NULL,
  `is_lock` varchar(1) NOT NULL DEFAULT 'N',
  `input_by` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_pengeluaran_limbah`
--

INSERT INTO `t_pengeluaran_limbah` (`id_pengeluaran_limbah`, `tanggal`, `tujuan`, `keterangan`, `is_lock`, `input_by`, `input_date`) VALUES
(1, '2021-03-11', 'Test', 'test', 'Y', 'Admin PakePOS', '2021-03-11 21:37:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengeluaran_limbah_item`
--

CREATE TABLE `t_pengeluaran_limbah_item` (
  `id_pengeluaran_limbah_item` int(11) NOT NULL,
  `id_pengeluaran_limbah` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_pengeluaran_limbah_item`
--

INSERT INTO `t_pengeluaran_limbah_item` (`id_pengeluaran_limbah_item`, `id_pengeluaran_limbah`, `id_barang`, `qty`) VALUES
(1, 1, 1157, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pesanan`
--

CREATE TABLE `t_pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `is_lock` varchar(1) NOT NULL DEFAULT 'N',
  `input_by` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pesanan_item`
--

CREATE TABLE `t_pesanan_item` (
  `id_pesanan_item` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_po`
--

CREATE TABLE `t_po` (
  `id_po` int(11) NOT NULL,
  `kode_po` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `is_lock` varchar(1) NOT NULL DEFAULT 'N',
  `is_receive` varchar(1) DEFAULT 'N',
  `receive_status` varchar(50) NOT NULL DEFAULT 'PENDING',
  `input_by` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_delete` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_po`
--

INSERT INTO `t_po` (`id_po`, `kode_po`, `tanggal`, `supplier`, `keterangan`, `is_lock`, `is_receive`, `receive_status`, `input_by`, `input_date`, `is_delete`) VALUES
(7, '001/TSM/PO/03/2021', '2021-03-25', 'PT. FORTUIN SUPEL INDONESIA', 'Pesan kaporitnya 500 kg bri PAC 1 Ton ( 1000 Kg  )', 'Y', 'Y', 'FINISH', 'Admin', '2021-03-25 08:55:41', 'N'),
(8, '001/TSM/PO/04/2021', '2021-04-21', 'PT. FORTUIN SUPEL INDONESIA', 'PAC 2ton dan Kaporit 1/2 ton', 'Y', 'N', 'PENDING', 'Admin', '2021-04-21 13:18:39', 'N'),
(9, '001/TSM/PO/05/2021', '2021-05-03', 'PT. FORTUIN SUPEL INDONESIA', 'PAC 1 TON KAPORIT 1/2 TON', 'Y', 'N', 'PENDING', 'Admin', '2021-05-03 16:01:02', 'N'),
(10, '002/TSM/PO/05/2021', '2021-05-27', 'PT. Fortuin Indonesia', 'PT. Fortuin Indonesia', 'Y', 'N', 'PENDING', 'Admin', '2021-05-27 07:59:12', 'N'),
(11, '001/TSM/PO/06/2021', '2021-06-21', 'PT. FORTUIN SUPEL INDONESIA', 'PT. FORTUIN SUPEL INDONESIA', 'N', 'N', 'PENDING', 'Admin', '2021-06-21 08:36:05', 'N'),
(12, '001/TSM/PO/07/2021', '2021-07-13', 'PT. FORTUIN SUPEL INDONESIA', '001-TSM-PO-07-2021', 'N', 'N', 'PENDING', 'Admin', '2021-07-13 13:07:27', 'N'),
(13, '001/TSM/PO/08/2021', '2021-08-27', 'PT. FORTUIN SUPEL INDONESIA', 'PAC German', 'N', 'N', 'PENDING', 'Admin', '2021-08-27 11:30:37', 'N'),
(14, '002/TSM/PO/08/2021', '2021-08-30', 'PT. FORTUIN SUPEL INDONESIA', 'PO', 'N', 'N', 'PENDING', 'Admin', '2021-08-30 09:12:42', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_po_item`
--

CREATE TABLE `t_po_item` (
  `id_po_item` int(11) NOT NULL,
  `id_po` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `qty_po` int(11) NOT NULL DEFAULT 0,
  `qty_open` int(11) NOT NULL,
  `qty_receive` int(11) NOT NULL DEFAULT 0,
  `qty_miss` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_po_item`
--

INSERT INTO `t_po_item` (`id_po_item`, `id_po`, `id_barang`, `harga_beli`, `warna`, `size`, `qty_po`, `qty_open`, `qty_receive`, `qty_miss`) VALUES
(7, 7, 1187, 6700, '', '25 Kg', 40, 0, 40, 0),
(8, 7, 1188, 25500, '', '.', 10, 0, 10, 0),
(9, 8, 1187, 6700, '', '25 Kg', 40, 40, 0, 0),
(10, 8, 1188, 25500, '', '.', 10, 10, 0, 0),
(11, 9, 1187, 7600, '', '25 Kg', 40, 40, 0, 0),
(12, 9, 1188, 25500, '', '.', 10, 10, 0, 0),
(15, 10, 1187, 6700, '', '25 Kg', 80, 80, 0, 0),
(16, 10, 1188, 25500, '', '.', 10, 10, 0, 0),
(17, 11, 1187, 6700, '', '25 Kg', 80, 80, 0, 0),
(18, 12, 1187, 6700, '', '25 Kg', 80, 80, 0, 0),
(19, 12, 1188, 25500, '', '.', 250, 250, 0, 0),
(20, 13, 1187, 10500, '', '25 Kg', 100, 100, 0, 0),
(21, 14, 1187, 6700, '', '25 Kg', 300, 300, 0, 0),
(22, 14, 1188, 25500, '', '.', 250, 250, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_retur`
--

CREATE TABLE `t_retur` (
  `id_retur` int(11) NOT NULL,
  `id_po` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `is_lock` varchar(1) NOT NULL DEFAULT 'N',
  `input_by` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_retur`
--

INSERT INTO `t_retur` (`id_retur`, `id_po`, `tanggal`, `keterangan`, `is_lock`, `input_by`, `input_date`) VALUES
(1, 2, '2021-01-08', 'Test', 'Y', 'Admin PakePOS', '2021-01-08 22:06:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_retur_item`
--

CREATE TABLE `t_retur_item` (
  `id_retur_item` int(11) NOT NULL,
  `id_retur` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_retur_item`
--

INSERT INTO `t_retur_item` (`id_retur_item`, `id_retur`, `id_barang`, `warna`, `size`, `qty`) VALUES
(1, 1, 1141, NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_so`
--

CREATE TABLE `t_so` (
  `id_so` int(11) NOT NULL,
  `no_so` varchar(100) DEFAULT NULL,
  `tanggal_so` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_so`
--

INSERT INTO `t_so` (`id_so`, `no_so`, `tanggal_so`) VALUES
(16, 'SO13122021', '2021-12-13 06:39:02'),
(22, 'SO14122021', '2021-12-14 02:40:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_so_detail`
--

CREATE TABLE `t_so_detail` (
  `id_so_detail` int(11) NOT NULL,
  `id_so` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `system_stock` int(11) DEFAULT NULL,
  `real_stock` int(11) DEFAULT NULL,
  `gap_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_so_detail`
--

INSERT INTO `t_so_detail` (`id_so_detail`, `id_so`, `id_barang`, `system_stock`, `real_stock`, `gap_stock`) VALUES
(30, 16, 1, 11, 8, -3),
(31, 16, 2, 30, 8, -22),
(32, 16, 3, 0, 8, 8),
(33, 16, 4, 6, 8, 2),
(34, 16, 5, 17, 8, -9),
(35, 16, 1163, 41, 8, -33),
(36, 16, 1164, 5, 8, 3),
(37, 16, 1165, 3, 8, 5),
(38, 16, 1166, 15, 8, -7),
(39, 16, 1167, 7, 8, 1),
(40, 16, 1168, 0, 8, 8),
(41, 16, 1169, 143, 8, -135),
(42, 16, 1170, 0, 8, 8),
(43, 16, 1171, 6, 8, 2),
(44, 16, 1172, 1, 8, 7),
(45, 16, 1173, 1, 8, 7),
(46, 16, 1174, 1, 8, 7),
(47, 16, 1175, 1, 8, 7),
(48, 16, 1176, 2, 8, 6),
(49, 16, 1177, 1, 8, 7),
(50, 16, 1178, 1, 8, 7),
(51, 16, 1179, 1, 8, 7),
(52, 16, 1180, 0, 8, 8),
(53, 16, 1181, 6, 8, 2),
(54, 16, 1182, 1, 8, 7),
(55, 16, 1183, 1, 8, 7),
(56, 16, 1184, 1, 8, 7),
(57, 16, 1185, 76, 8, -68),
(58, 16, 1220, 13, 8, -5),
(59, 17, 1, 11, 8, -3),
(60, 17, 2, 30, 8, -22),
(61, 17, 3, 0, 8, 8),
(62, 17, 4, 6, 8, 2),
(63, 17, 5, 17, 8, -9),
(64, 17, 1163, 41, 8, -33),
(65, 17, 1164, 5, 8, 3),
(66, 17, 1165, 3, 8, 5),
(67, 17, 1166, 15, 8, -7),
(68, 17, 1167, 7, 8, 1),
(69, 17, 1168, 0, 8, 8),
(70, 17, 1169, 143, 8, -135),
(71, 17, 1170, 0, 8, 8),
(72, 17, 1171, 6, 8, 2),
(73, 17, 1172, 1, 8, 7),
(74, 17, 1173, 1, 8, 7),
(75, 17, 1174, 1, 8, 7),
(76, 17, 1175, 1, 8, 7),
(77, 17, 1176, 2, 8, 6),
(78, 17, 1177, 1, 8, 7),
(79, 17, 1178, 1, 8, 7),
(80, 17, 1179, 1, 8, 7),
(81, 17, 1180, 0, 8, 8),
(82, 17, 1181, 6, 8, 2),
(83, 17, 1182, 1, 8, 7),
(84, 17, 1183, 1, 8, 7),
(85, 17, 1184, 1, 8, 7),
(86, 17, 1185, 76, 8, -68),
(87, 17, 1220, 13, 8, -5),
(88, 18, 1, 11, 8, -3),
(89, 18, 2, 30, 8, -22),
(90, 18, 3, 0, 8, 8),
(91, 18, 4, 6, 8, 2),
(92, 18, 5, 17, 8, -9),
(93, 18, 1163, 41, 8, -33),
(94, 18, 1164, 5, 8, 3),
(95, 18, 1165, 3, 8, 5),
(96, 18, 1166, 15, 8, -7),
(97, 18, 1167, 7, 8, 1),
(98, 18, 1168, 0, 8, 8),
(99, 18, 1169, 143, 8, -135),
(100, 18, 1170, 0, 8, 8),
(101, 18, 1171, 6, 8, 2),
(102, 18, 1172, 1, 8, 7),
(103, 18, 1173, 1, 8, 7),
(104, 18, 1174, 1, 8, 7),
(105, 18, 1175, 1, 8, 7),
(106, 18, 1176, 2, 8, 6),
(107, 18, 1177, 1, 8, 7),
(108, 18, 1178, 1, 8, 7),
(109, 18, 1179, 1, 8, 7),
(110, 18, 1180, 0, 8, 8),
(111, 18, 1181, 6, 8, 2),
(112, 18, 1182, 1, 8, 7),
(113, 18, 1183, 1, 8, 7),
(114, 18, 1184, 1, 8, 7),
(115, 18, 1185, 76, 8, -68),
(116, 18, 1220, 13, 8, -5),
(117, 19, 1, 11, 8, -3),
(118, 19, 2, 30, 8, -22),
(119, 19, 3, 0, 8, 8),
(120, 19, 4, 6, 8, 2),
(121, 19, 5, 17, 8, -9),
(122, 19, 1163, 41, 8, -33),
(123, 19, 1164, 5, 8, 3),
(124, 19, 1165, 3, 8, 5),
(125, 19, 1166, 15, 8, -7),
(126, 19, 1167, 7, 8, 1),
(127, 19, 1168, 0, 8, 8),
(128, 19, 1169, 143, 8, -135),
(129, 19, 1170, 0, 8, 8),
(130, 19, 1171, 6, 8, 2),
(131, 19, 1172, 1, 8, 7),
(132, 19, 1173, 1, 8, 7),
(133, 19, 1174, 1, 8, 7),
(134, 19, 1175, 1, 8, 7),
(135, 19, 1176, 2, 8, 6),
(136, 19, 1177, 1, 8, 7),
(137, 19, 1178, 1, 8, 7),
(138, 19, 1179, 1, 8, 7),
(139, 19, 1180, 0, 8, 8),
(140, 19, 1181, 6, 8, 2),
(141, 19, 1182, 1, 8, 7),
(142, 19, 1183, 1, 8, 7),
(143, 19, 1184, 1, 8, 7),
(144, 19, 1185, 76, 8, -68),
(145, 19, 1220, 13, 8, -5),
(146, 20, 1, 11, 8, -3),
(147, 20, 2, 30, 8, -22),
(148, 20, 3, 0, 8, 8),
(149, 20, 4, 6, 8, 2),
(150, 20, 5, 17, 8, -9),
(151, 20, 1163, 41, 8, -33),
(152, 20, 1164, 5, 8, 3),
(153, 20, 1165, 3, 8, 5),
(154, 20, 1166, 15, 8, -7),
(155, 20, 1167, 7, 8, 1),
(156, 20, 1168, 0, 8, 8),
(157, 20, 1169, 143, 8, -135),
(158, 20, 1170, 0, 8, 8),
(159, 20, 1171, 6, 8, 2),
(160, 20, 1172, 1, 8, 7),
(161, 20, 1173, 1, 8, 7),
(162, 20, 1174, 1, 8, 7),
(163, 20, 1175, 1, 8, 7),
(164, 20, 1176, 2, 8, 6),
(165, 20, 1177, 1, 8, 7),
(166, 20, 1178, 1, 8, 7),
(167, 20, 1179, 1, 8, 7),
(168, 20, 1180, 0, 8, 8),
(169, 20, 1181, 6, 8, 2),
(170, 20, 1182, 1, 8, 7),
(171, 20, 1183, 1, 8, 7),
(172, 20, 1184, 1, 8, 7),
(173, 20, 1185, 76, 8, -68),
(174, 20, 1220, 13, 8, -5),
(175, 21, 1, 11, 8, -3),
(176, 21, 2, 30, 8, -22),
(177, 21, 3, 0, 8, 8),
(178, 21, 4, 6, 8, 2),
(179, 21, 5, 17, 8, -9),
(180, 21, 1163, 41, 8, -33),
(181, 21, 1164, 5, 8, 3),
(182, 21, 1165, 3, 8, 5),
(183, 21, 1166, 15, 8, -7),
(184, 21, 1167, 7, 8, 1),
(185, 21, 1168, 0, 8, 8),
(186, 21, 1169, 143, 8, -135),
(187, 21, 1170, 0, 8, 8),
(188, 21, 1171, 6, 8, 2),
(189, 21, 1172, 1, 8, 7),
(190, 21, 1173, 1, 8, 7),
(191, 21, 1174, 1, 8, 7),
(192, 21, 1175, 1, 8, 7),
(193, 21, 1176, 2, 8, 6),
(194, 21, 1177, 1, 8, 7),
(195, 21, 1178, 1, 8, 7),
(196, 21, 1179, 1, 8, 7),
(197, 21, 1180, 0, 8, 8),
(198, 21, 1181, 6, 8, 2),
(199, 21, 1182, 1, 8, 7),
(200, 21, 1183, 1, 8, 7),
(201, 21, 1184, 1, 8, 7),
(202, 21, 1185, 76, 8, -68),
(203, 21, 1220, 13, 8, -5),
(204, 22, 1, 9, 30, 21),
(205, 22, 2, 28, 20, -18),
(206, 22, 3, -1, 20, 21),
(207, 22, 5, 17, 10, -7),
(208, 22, 1170, 0, 40, 40),
(209, 22, 1171, 6, 10, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_spk`
--

CREATE TABLE `t_spk` (
  `id_spk` int(11) NOT NULL,
  `jenis_pekerjaan` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `input_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `input_by` varchar(100) DEFAULT NULL,
  `is_delete` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_spk`
--

INSERT INTO `t_spk` (`id_spk`, `jenis_pekerjaan`, `alamat`, `telp`, `input_date`, `input_by`, `is_delete`) VALUES
(1, 'Valve', 'C10/11', '083121717171', '2021-12-16 15:32:17', NULL, 'N'),
(2, 'Valve', 'test', '083121717171', '2021-12-16 15:54:46', '::1', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_stock_opname`
--

CREATE TABLE `t_stock_opname` (
  `id_stock_opname` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `qty_before` int(11) NOT NULL,
  `qty_after` int(11) NOT NULL,
  `qty_miss` int(11) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `input_by` varchar(100) NOT NULL,
  `input_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_lock` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_stock_opname_item`
--

CREATE TABLE `t_stock_opname_item` (
  `id_stock_opname_item` int(11) NOT NULL,
  `id_stock_opname` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `qty_before` int(11) NOT NULL,
  `qty_after` int(11) NOT NULL,
  `qty_miss` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `m_barang_pengeluaran`
--
ALTER TABLE `m_barang_pengeluaran`
  ADD PRIMARY KEY (`id_barang_pengeluaran`);

--
-- Indeks untuk tabel `m_category`
--
ALTER TABLE `m_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indeks untuk tabel `m_jenis_barang`
--
ALTER TABLE `m_jenis_barang`
  ADD PRIMARY KEY (`id_jenis_barang`);

--
-- Indeks untuk tabel `m_jenis_pengeluaran`
--
ALTER TABLE `m_jenis_pengeluaran`
  ADD PRIMARY KEY (`id_jenis_pengeluaran`);

--
-- Indeks untuk tabel `m_karyawan`
--
ALTER TABLE `m_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `m_menu`
--
ALTER TABLE `m_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `m_merk`
--
ALTER TABLE `m_merk`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indeks untuk tabel `m_options`
--
ALTER TABLE `m_options`
  ADD PRIMARY KEY (`id_option`);

--
-- Indeks untuk tabel `m_role`
--
ALTER TABLE `m_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `m_role_link`
--
ALTER TABLE `m_role_link`
  ADD PRIMARY KEY (`id_role_link`);

--
-- Indeks untuk tabel `t_barang_masuk`
--
ALTER TABLE `t_barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`);

--
-- Indeks untuk tabel `t_barang_masuk_item`
--
ALTER TABLE `t_barang_masuk_item`
  ADD PRIMARY KEY (`id_barang_masuk_item`);

--
-- Indeks untuk tabel `t_document_history`
--
ALTER TABLE `t_document_history`
  ADD PRIMARY KEY (`id_document_history`);

--
-- Indeks untuk tabel `t_limbah_masuk`
--
ALTER TABLE `t_limbah_masuk`
  ADD PRIMARY KEY (`id_limbah_masuk`);

--
-- Indeks untuk tabel `t_limbah_masuk_item`
--
ALTER TABLE `t_limbah_masuk_item`
  ADD PRIMARY KEY (`id_limbah_masuk_item`);

--
-- Indeks untuk tabel `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indeks untuk tabel `t_order_item`
--
ALTER TABLE `t_order_item`
  ADD PRIMARY KEY (`id_order_item`);

--
-- Indeks untuk tabel `t_pemakaian_kimia`
--
ALTER TABLE `t_pemakaian_kimia`
  ADD PRIMARY KEY (`id_pk`);

--
-- Indeks untuk tabel `t_penerimaan_barang`
--
ALTER TABLE `t_penerimaan_barang`
  ADD PRIMARY KEY (`id_penerimaan_barang`);

--
-- Indeks untuk tabel `t_penerimaan_barang_item`
--
ALTER TABLE `t_penerimaan_barang_item`
  ADD PRIMARY KEY (`id_penerimaan_barang_item`);

--
-- Indeks untuk tabel `t_pengeluaran`
--
ALTER TABLE `t_pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indeks untuk tabel `t_pengeluaran_barang`
--
ALTER TABLE `t_pengeluaran_barang`
  ADD PRIMARY KEY (`id_pengeluaran_barang`);

--
-- Indeks untuk tabel `t_pengeluaran_barang_item`
--
ALTER TABLE `t_pengeluaran_barang_item`
  ADD PRIMARY KEY (`id_pengeluaran_barang_item`);

--
-- Indeks untuk tabel `t_pengeluaran_limbah`
--
ALTER TABLE `t_pengeluaran_limbah`
  ADD PRIMARY KEY (`id_pengeluaran_limbah`);

--
-- Indeks untuk tabel `t_pengeluaran_limbah_item`
--
ALTER TABLE `t_pengeluaran_limbah_item`
  ADD PRIMARY KEY (`id_pengeluaran_limbah_item`);

--
-- Indeks untuk tabel `t_pesanan`
--
ALTER TABLE `t_pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indeks untuk tabel `t_pesanan_item`
--
ALTER TABLE `t_pesanan_item`
  ADD PRIMARY KEY (`id_pesanan_item`);

--
-- Indeks untuk tabel `t_po`
--
ALTER TABLE `t_po`
  ADD PRIMARY KEY (`id_po`);

--
-- Indeks untuk tabel `t_po_item`
--
ALTER TABLE `t_po_item`
  ADD PRIMARY KEY (`id_po_item`);

--
-- Indeks untuk tabel `t_retur`
--
ALTER TABLE `t_retur`
  ADD PRIMARY KEY (`id_retur`);

--
-- Indeks untuk tabel `t_retur_item`
--
ALTER TABLE `t_retur_item`
  ADD PRIMARY KEY (`id_retur_item`);

--
-- Indeks untuk tabel `t_so`
--
ALTER TABLE `t_so`
  ADD PRIMARY KEY (`id_so`);

--
-- Indeks untuk tabel `t_so_detail`
--
ALTER TABLE `t_so_detail`
  ADD PRIMARY KEY (`id_so_detail`);

--
-- Indeks untuk tabel `t_spk`
--
ALTER TABLE `t_spk`
  ADD PRIMARY KEY (`id_spk`);

--
-- Indeks untuk tabel `t_stock_opname`
--
ALTER TABLE `t_stock_opname`
  ADD PRIMARY KEY (`id_stock_opname`);

--
-- Indeks untuk tabel `t_stock_opname_item`
--
ALTER TABLE `t_stock_opname_item`
  ADD PRIMARY KEY (`id_stock_opname_item`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1247;

--
-- AUTO_INCREMENT untuk tabel `m_barang_pengeluaran`
--
ALTER TABLE `m_barang_pengeluaran`
  MODIFY `id_barang_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `m_category`
--
ALTER TABLE `m_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `m_jenis_barang`
--
ALTER TABLE `m_jenis_barang`
  MODIFY `id_jenis_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `m_jenis_pengeluaran`
--
ALTER TABLE `m_jenis_pengeluaran`
  MODIFY `id_jenis_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `m_karyawan`
--
ALTER TABLE `m_karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `m_menu`
--
ALTER TABLE `m_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `m_merk`
--
ALTER TABLE `m_merk`
  MODIFY `id_merk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `m_options`
--
ALTER TABLE `m_options`
  MODIFY `id_option` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `m_role`
--
ALTER TABLE `m_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `m_role_link`
--
ALTER TABLE `m_role_link`
  MODIFY `id_role_link` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1450;

--
-- AUTO_INCREMENT untuk tabel `t_barang_masuk`
--
ALTER TABLE `t_barang_masuk`
  MODIFY `id_barang_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_barang_masuk_item`
--
ALTER TABLE `t_barang_masuk_item`
  MODIFY `id_barang_masuk_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_document_history`
--
ALTER TABLE `t_document_history`
  MODIFY `id_document_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2229;

--
-- AUTO_INCREMENT untuk tabel `t_limbah_masuk`
--
ALTER TABLE `t_limbah_masuk`
  MODIFY `id_limbah_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_limbah_masuk_item`
--
ALTER TABLE `t_limbah_masuk_item`
  MODIFY `id_limbah_masuk_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_order`
--
ALTER TABLE `t_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_order_item`
--
ALTER TABLE `t_order_item`
  MODIFY `id_order_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_pemakaian_kimia`
--
ALTER TABLE `t_pemakaian_kimia`
  MODIFY `id_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `t_penerimaan_barang`
--
ALTER TABLE `t_penerimaan_barang`
  MODIFY `id_penerimaan_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `t_penerimaan_barang_item`
--
ALTER TABLE `t_penerimaan_barang_item`
  MODIFY `id_penerimaan_barang_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `t_pengeluaran`
--
ALTER TABLE `t_pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_pengeluaran_barang`
--
ALTER TABLE `t_pengeluaran_barang`
  MODIFY `id_pengeluaran_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `t_pengeluaran_barang_item`
--
ALTER TABLE `t_pengeluaran_barang_item`
  MODIFY `id_pengeluaran_barang_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `t_pengeluaran_limbah`
--
ALTER TABLE `t_pengeluaran_limbah`
  MODIFY `id_pengeluaran_limbah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_pengeluaran_limbah_item`
--
ALTER TABLE `t_pengeluaran_limbah_item`
  MODIFY `id_pengeluaran_limbah_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_pesanan`
--
ALTER TABLE `t_pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_pesanan_item`
--
ALTER TABLE `t_pesanan_item`
  MODIFY `id_pesanan_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_po`
--
ALTER TABLE `t_po`
  MODIFY `id_po` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `t_po_item`
--
ALTER TABLE `t_po_item`
  MODIFY `id_po_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `t_retur`
--
ALTER TABLE `t_retur`
  MODIFY `id_retur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_retur_item`
--
ALTER TABLE `t_retur_item`
  MODIFY `id_retur_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_so`
--
ALTER TABLE `t_so`
  MODIFY `id_so` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `t_so_detail`
--
ALTER TABLE `t_so_detail`
  MODIFY `id_so_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT untuk tabel `t_spk`
--
ALTER TABLE `t_spk`
  MODIFY `id_spk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_stock_opname`
--
ALTER TABLE `t_stock_opname`
  MODIFY `id_stock_opname` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_stock_opname_item`
--
ALTER TABLE `t_stock_opname_item`
  MODIFY `id_stock_opname_item` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
