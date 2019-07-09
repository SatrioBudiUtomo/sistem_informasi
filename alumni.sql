-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jul 2019 pada 06.35
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `isi_berita` text DEFAULT NULL,
  `tgl_berita` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `slug`, `isi_berita`, `tgl_berita`) VALUES
(1, 'Selamat Datang', 'selamat-datang', '<p>Selamat datang di Sistem Informasi Alumni</p>\r\n', '2019-07-05 07:35:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL,
  `nama_web` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id`, `nama_web`) VALUES
(1, 'SIAP  BLKI Tuban');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pk` int(11) NOT NULL,
  `jenis_pk` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pk`, `jenis_pk`) VALUES
(15, 'Kerja'),
(16, 'Kuliah'),
(17, 'Kerja dan Kuliah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(100) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `jk` varchar(2) NOT NULL,
  `angkatan` varchar(200) DEFAULT NULL,
  `kontak` varchar(200) DEFAULT NULL,
  `foto` varchar(1000) NOT NULL,
  `alamat` text NOT NULL,
  `pekerjaan` int(11) NOT NULL,
  `lokasi_krj` varchar(200) NOT NULL,
  `posisi` varchar(200) NOT NULL,
  `universitas` varchar(200) NOT NULL,
  `fakultas` varchar(200) NOT NULL,
  `jurusan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `fullname`, `jk`, `angkatan`, `kontak`, `foto`, `alamat`, `pekerjaan`, `lokasi_krj`, `posisi`, `universitas`, `fakultas`, `jurusan`) VALUES
(1, 'Aji Nursyamsi, S.Pd', 'L', '2017', '', 'uploadfoto20170828113918.jpeg', '', 1, 'Staff sakahayang', 'PT Alim Rugi', 'info_aji', 'nursyamsiaji', 'neozonk'),
(2, 'Satrio Budi Utomo', 'L', '2015', '08123456789', 'uploadfoto20190701140806.jpeg', 'Malang', 5, 'adad', 'sdasdf', 'adad', 'adad', 'adad'),
(5, 'Freddy', 'L', '2016', '081234567985', '', 'Gombong', 15, 'Vokalis', 'Queen', '-', '-', '-'),
(7, 'Chris Evans', 'L', '2012', '85136584768', '', 'fasedf', 16, 'Captain America', 'Avengers', '-', '-', '-'),
(8, 'Renata Moeloek', 'P', '2013', '0897654321', '', 'Jakarta', 17, 'Chef', 'Master chef', 'UGM', 'Fakultas Kedokteran', 'Tata Boga'),
(10, 'Muhammad Wafi Irmansyah', '', '2016', '08312664668', '', 'Bululawang', 16, '-', '-', 'Universitas Brawijaya', 'Vokasi', 'Manajemen Informatika'),
(11, 'Muhammad Saidul Umam', '', '2017', '0854620219', '', 'Gresik', 17, 'DOT', 'Front end programmer', 'Universitas Brawijaya', 'Vokasi', 'Manajemen Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(200) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `last_login` datetime NOT NULL,
  `active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `role`, `last_login`, `active`) VALUES
(1, 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '2019-07-09 11:32:06', 1),
(2, 'satriobudi.u99@gmail.com', '6b2244ecf5881e4aa6d4235d16be7b48', 'Member', '2019-07-09 11:25:49', 1),
(3, 'stephen123@yahoo.com', '315eb115d98fcbad39ffc5edebd669c9', 'Member', '2019-07-02 15:08:17', 0),
(4, 'neymar11@gmail.com', '315eb115d98fcbad39ffc5edebd669c9', 'Member', '2019-07-02 15:12:26', 0),
(5, 'freddy.queen@gmail.com', '6183a01d15e697df2796df621d718d89', 'Member', '0000-00-00 00:00:00', 1),
(6, 'adit.ndoet@gmail.com', '6ebe76c9fb411be97b3b0d48b791a7c9', 'Member', '0000-00-00 00:00:00', 0),
(7, 'chris.capt@yahoo.com', '6eea9b7ef19179a06954edd0f6c05ceb', 'Member', '0000-00-00 00:00:00', 1),
(8, 'renata.moel@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Member', '2019-07-03 11:36:27', 1),
(9, 'changcuters@gmail.com', '315eb115d98fcbad39ffc5edebd669c9', 'Member', '0000-00-00 00:00:00', 0),
(10, 'mwafii98@gmail.com', '6b2244ecf5881e4aa6d4235d16be7b48', 'Member', '2019-07-03 10:59:25', 1),
(11, 'ami.api@gmail.com', '6b2244ecf5881e4aa6d4235d16be7b48', 'Member', '0000-00-00 00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pk`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
