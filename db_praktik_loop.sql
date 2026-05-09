-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Bulan Mei 2026 pada 09.09
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_praktik_loop`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `hitung_belanja` ()   BEGIN
    DECLARE v_total_belanja INT DEFAULT 0;
    DECLARE v_tambah INT DEFAULT 50000;
    
    WHILE v_total_belanja < 500000 DO
        SET v_total_belanja = v_total_belanja + v_tambah;
        SELECT CONCAT('Tambah Rp50.000, Total Belanja: Rp', v_total_belanja) AS Status;
    END WHILE;
    
    SELECT 'Target belanja Rp500.000 telah tercapai.' AS Pesan_Akhir;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hitung_total_20` ()   BEGIN
    DECLARE v_counter INT DEFAULT 1;
    DECLARE v_total INT DEFAULT 0;
    
    WHILE v_counter <= 20 DO
        SET v_total = v_total + v_counter;
        SET v_counter = v_counter + 1;
    END WHILE;
    
    SELECT CONCAT('Total angka 1 sampai 20 adalah: ', v_total) AS Hasil;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `latihan_loop_10` ()   BEGIN
    DECLARE v_counter INT DEFAULT 1;
    
    loop_angka: LOOP
        SELECT v_counter AS Angka;
        SET v_counter = v_counter + 1;
        
        IF v_counter > 10 THEN
            LEAVE loop_angka;
        END IF;
    END LOOP loop_angka;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tampil_genap_20` ()   BEGIN
    DECLARE i INT DEFAULT 2;
    
    WHILE i <= 20 DO
        SELECT i AS Bilangan_Genap;
        SET i = i + 2;
    END WHILE;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jurusan` varchar(50) DEFAULT 'Informatika',
  `angkatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`, `angkatan`) VALUES
('IK2411062', 'JACK STIVEN', 'Informatika', 2024);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
