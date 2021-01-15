-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2020 at 01:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azure books`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `IdBuku` varchar(10) NOT NULL,
  `IdPenulis` varchar(10) NOT NULL,
  `IdPenerbit` varchar(10) NOT NULL,
  `Judul Buku` varchar(50) NOT NULL,
  `Harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`IdBuku`, `IdPenulis`, `IdPenerbit`, `Judul Buku`, `Harga`) VALUES
('1', '2', '4', 'Kind Of A Big Deal', '20'),
('10', '3', '2', 'Radio Silence', '11'),
('2', '4', '1', 'Winner Take All', '22'),
('3', '2', '2', 'Ten Thousand Skies Above You', '25'),
('4', '1', '5', 'Empty Bottles Full Of Stories', '15'),
('5', '3', '6', 'The Obstacle Is The Way', '28'),
('6', '10', '6', 'How To Build An Online Business', '30'),
('7', '9', '5', 'Mindset', '17'),
('8', '4', '2', 'Rich And Pretty', '22'),
('9', '8', '6', 'I Was Born For This', '27');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `IdMember` int(10) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`IdMember`, `Username`, `Password`) VALUES
(1, 'Clara4me', 'Clara12'),
(2, 'Nicage86', 'Nicholas#'),
(3, 'Helenn6', 'Huntt2'),
(4, 'SarrahMe', 'Sarr9'),
(5, 'Hilaryy', 'Duffy7');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `IdPembeli` varchar(10) NOT NULL,
  `Nama Depan` varchar(50) NOT NULL,
  `Nama Belakang` varchar(50) NOT NULL,
  `Telepon` int(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Kode Pos` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`IdPembeli`, `Nama Depan`, `Nama Belakang`, `Telepon`, `Alamat`, `Kode Pos`) VALUES
('1', 'Sally', 'Wood', 32546, 'New York', '5442'),
('2', 'Jane', 'Abigail', 77322, 'Manchester', '6543'),
('3', 'Jessi ', 'Gracie', 92176, 'Columbia', '2387'),
('4', 'Adams', 'Windsong', 92631, 'Melbourne', '2123'),
('5', 'Cassie', 'West', 54328, 'Columbia', '6545');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `IdPembelian` varchar(10) NOT NULL,
  `IdPembeli` varchar(10) NOT NULL,
  `IdBuku` varchar(10) NOT NULL,
  `Judul Buku` varchar(50) NOT NULL,
  `Jumlah` int(100) NOT NULL,
  `TanggalBeli` date NOT NULL,
  `TanggalKirim` date NOT NULL,
  `Stok` int(50) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`IdPembelian`, `IdPembeli`, `IdBuku`, `Judul Buku`, `Jumlah`, `TanggalBeli`, `TanggalKirim`, `Stok`, `Alamat`) VALUES
('1', '3', '7', 'Mindset', 1, '2009-06-12', '2009-06-15', 50, 'Boston'),
('2', '4', '3', 'Ten Thousand Skies Above You', 3, '2011-08-25', '2011-08-27', 43, 'Boston'),
('3', '3', '5', 'The Obstacle Is The Way', 10, '2010-02-23', '2010-02-25', 33, 'New York'),
('4', '5', '9', 'I Was Born For This', 7, '2009-07-18', '2009-07-20', 45, 'Columbia'),
('5', '2', '1', 'Kind Of A Big Deal', 2, '2010-03-13', '2010-03-15', 55, 'Manchester');

-- --------------------------------------------------------

--
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `IdPeminjam` varchar(10) NOT NULL,
  `IdMember` varchar(10) NOT NULL,
  `Nama Depan` varchar(50) NOT NULL,
  `Nama Belakang` varchar(50) NOT NULL,
  `Telepon` int(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Kode Pos` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjam`
--

INSERT INTO `peminjam` (`IdPeminjam`, `IdMember`, `Nama Depan`, `Nama Belakang`, `Telepon`, `Alamat`, `Kode Pos`) VALUES
('1', '1', 'Clara', 'Lionetta', 76645, 'Paris', '54454'),
('2', '4', 'Sarah', 'Grant', 30256, 'Sao Paulo', '6543'),
('3', '2', 'Nicholas', 'Cage', 99712, 'Berlin', '87346'),
('4', '5', 'Hilary', 'Duff', 652178, 'Boston', '2385'),
('5', '3', 'Helen', 'Hunt', 12567, 'Melbourne', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `IdPeminjaman` varchar(10) NOT NULL,
  `IdPeminjam` varchar(10) NOT NULL,
  `IdBuku` varchar(10) NOT NULL,
  `Judul Buku` varchar(50) NOT NULL,
  `TanggalPinjam` date NOT NULL,
  `TanggalKembali` date NOT NULL,
  `Denda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`IdPeminjaman`, `IdPeminjam`, `IdBuku`, `Judul Buku`, `TanggalPinjam`, `TanggalKembali`, `Denda`) VALUES
('1', '4', '1', 'Kind Of A Big Deal', '2011-08-01', '2011-08-07', '0'),
('2', '3', '6', 'How To Build An Online Business', '2011-03-22', '2011-04-02', '5'),
('3', '1', '10', 'Radio Silence', '2012-05-03', '2012-05-20', '11'),
('4', '2', '8', 'Rich And Pretty', '2012-09-06', '2012-09-14', '2'),
('5', '2', '4', 'Empty Bottles Full Of Stories', '2010-09-21', '2010-09-27', '0');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `IdPenerbit` varchar(10) NOT NULL,
  `NamaPenerbit` varchar(50) NOT NULL,
  `Tahun Terbit` int(10) NOT NULL,
  `Kota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`IdPenerbit`, `NamaPenerbit`, `Tahun Terbit`, `Kota`) VALUES
('1', 'Luceme Publishing', 2015, 'New York'),
('2', 'Macmillan Publisher', 2001, 'Chicago'),
('3', 'Harper Collins', 2000, 'Berkeley'),
('4', 'Penguin Random House', 1998, 'Dallas'),
('5', 'Ramona Publishers', 2001, 'Melbourne'),
('6', 'Scootney Books', 2001, 'Boston');

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `IdPenulis` varchar(10) NOT NULL,
  `NamaPenulis` varchar(50) NOT NULL,
  `Telepon` int(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`IdPenulis`, `NamaPenulis`, `Telepon`, `Alamat`) VALUES
('1', 'Shannon Hale', 97681, 'New York'),
('10', 'Jenn Bennett', 63283, 'Paris'),
('2', 'Shawn Joy', 99826, 'Paris'),
('3', 'Jeremy Hans', 87525, 'Melbourne'),
('4', 'Hailey Dahye', 73545, 'New York'),
('5', 'Adams Joseph', 63253, 'New York'),
('6', 'Emery Smith', 863543, 'Columbia'),
('7', 'Simon Schuster', 97656, 'Melbourne'),
('8', 'Ruth Ware', 47837, 'Boston'),
('9', 'Sean Wise', 72632, 'Columbia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`IdBuku`),
  ADD KEY `IdPenulis` (`IdPenulis`),
  ADD KEY `IdPenerbit` (`IdPenerbit`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`IdMember`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`IdPembeli`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`IdPembelian`),
  ADD KEY `IdPembeli` (`IdPembeli`),
  ADD KEY `IdBuku` (`IdBuku`);

--
-- Indexes for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`IdPeminjam`),
  ADD KEY `IdMember` (`IdMember`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`IdPeminjaman`),
  ADD KEY `IdPeminjam` (`IdPeminjam`),
  ADD KEY `IdBuku` (`IdBuku`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`IdPenerbit`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`IdPenulis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
