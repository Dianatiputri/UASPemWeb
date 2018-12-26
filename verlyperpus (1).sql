-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2014 at 08:02 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `verlyperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE IF NOT EXISTS `tb_buku` (
  `id_buku` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(20) NOT NULL,
  `id_penerbit` int(20) NOT NULL,
  `id_pengarang` int(20) NOT NULL,
  `stock` int(40) NOT NULL,
  `isi` text NOT NULL,
  `id_jenis` int(20) NOT NULL,
  `lihat` int(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pengirim` varchar(20) NOT NULL,
  `picture` varchar(40) NOT NULL,
  `nama_peminjam` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `id_penerbit`, `id_pengarang`, `stock`, `isi`, `id_jenis`, `lihat`, `status`, `pengirim`, `picture`, `nama_peminjam`, `date`) VALUES
(1, 'www', 1, 2, 1, 'e', 1, 0, 'T', 'dwda', 'verly.jpg', 'tftftft', '2014-12-10'),
(2, 'Veer', 1, 1, 1, 'veererere', 0, 0, 'T', 'Verly', 'atau3.png', '', '2014-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE IF NOT EXISTS `tb_login` (
  `id_login` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `level` varchar(20) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id_login`, `username`, `password`, `avatar`, `level`) VALUES
(1, 'verlyadmin', 'verlyananda', 'verly.png', 'admin'),
(2, 'verlyuser', 'verlyananda', 'verlyuser.png', 'user'),
(3, 'verlyuser2', 'verlyananda', 'verlyava.jpg', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjam`
--

CREATE TABLE IF NOT EXISTS `tb_peminjam` (
  `id_peminjam` int(20) NOT NULL AUTO_INCREMENT,
  `id_login` int(20) NOT NULL,
  `id_buku` int(20) NOT NULL,
  `nama_peminjam` varchar(30) NOT NULL,
  `judul` varchar(20) NOT NULL,
  `penerbit` varchar(20) NOT NULL,
  `pengarang` varchar(20) NOT NULL,
  `isi` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pengirim` varchar(20) NOT NULL,
  `picture` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_peminjam`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `id_login`, `id_buku`, `nama_peminjam`, `judul`, `penerbit`, `pengarang`, `isi`, `status`, `pengirim`, `picture`, `date`) VALUES
(46, 2, 29, 'verlyuser', 'Belajar Sendiri 2', 'PT.Verli', 'Kenji ', 'BelajarBelajarBelaja', 'K', '', 'ava.png', '2014-11-28'),
(47, 2, 28, 'verlyuser', 'Belajar Sendiri', 'PT.Verli', 'Masashi Kishimoto', 'BelajarBelajarrrrrSe', 'K', '', 'verlybookverpus.png', '2014-11-28'),
(48, 3, 29, 'verlyuser2', 'Belajar Sendiri 2', 'PT.Verli', 'Kenji ', 'BelajarBelajarBelaja', 'K', '', 'ava.png', '2014-11-28'),
(49, 3, 28, 'verlyuser2', 'Belajar Sendiri', 'PT.Verli', 'Masashi Kishimoto', 'BelajarBelajarrrrrSe', 'K', '', 'verlybookverpus.png', '2014-11-28'),
(50, 3, 29, 'verlyuser2', 'Belajar Sendiri 2', 'PT.Verli', 'Kenji ', 'BelajarBelajarBelaja', 'P', '', 'ava.png', '2014-11-28'),
(51, 2, 29, 'verlyuser', 'Belajar Sendiri 2', 'PT.Verli', 'Kenji ', 'BelajarBelajarBelaja', 'P', '', 'ava.png', '2014-11-29'),
(52, 2, 1, 'verlyuser', 'www', 'PT.Verli', 'Kenji ', 'e', 'K', '', 'verly.jpg', '2014-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penerbit`
--

CREATE TABLE IF NOT EXISTS `tb_penerbit` (
  `id_penerbit` int(20) NOT NULL AUTO_INCREMENT,
  `penerbit` varchar(20) NOT NULL,
  PRIMARY KEY (`id_penerbit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_penerbit`
--

INSERT INTO `tb_penerbit` (`id_penerbit`, `penerbit`) VALUES
(1, 'PT.Verli'),
(2, 'PT.Gramedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengarang`
--

CREATE TABLE IF NOT EXISTS `tb_pengarang` (
  `id_pengarang` int(20) NOT NULL AUTO_INCREMENT,
  `pengarang` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pengarang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_pengarang`
--

INSERT INTO `tb_pengarang` (`id_pengarang`, `pengarang`) VALUES
(1, 'Masashi Kishimoto'),
(2, 'Kenji ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
