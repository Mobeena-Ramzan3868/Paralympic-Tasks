-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2025 at 05:57 AM
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
-- Database: `athletes_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `athlete`
--

CREATE TABLE `athlete` (
  `id` int(10) UNSIGNED NOT NULL,
  `givenName` varchar(100) NOT NULL,
  `familyName` varchar(100) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `sport` enum('athletics track','swimming','cycling','triathlon') NOT NULL,
  `personalBestTime` char(8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `athlete`
--

INSERT INTO `athlete` (`id`, `givenName`, `familyName`, `dateOfBirth`, `sport`, `personalBestTime`, `created_at`) VALUES
(2, 'Ben', 'Schmidt', '1998-02-03', 'cycling', '01:15:05', '2025-08-23 15:42:43'),
(3, 'Mariam', 'Keller', '1998-11-19', 'cycling', '01:18:32', '2025-08-25 01:05:11'),
(5, 'Greta', 'Acosta', '2001-04-30', 'swimming', '00:55:42', '2025-08-25 01:05:11'),
(12, 'Dmitri', 'Orlov', '1994-10-04', 'cycling', '01:16:58', '2025-08-25 01:05:11'),
(13, 'Leonie', 'Pohl', '1998-05-18', 'swimming', '00:59:21', '2025-08-25 01:05:11'),
(14, 'Yusuf', 'Farooq', '1992-01-27', 'triathlon', '02:03:40', '2025-08-25 01:05:11'),
(15, 'Felix', 'Haas', '1997-12-21', 'cycling', '01:20:44', '2025-08-25 01:05:11'),
(16, 'Noemi', 'Kraemer', '2003-03-09', 'athletics track', '00:13:52', '2025-08-25 01:05:11'),
(19, 'Tobias', 'Kuhn', '1991-11-30', 'cycling', '01:28:03', '2025-08-25 01:05:11'),
(20, 'Sofia', 'Marquez', '1996-02-15', 'athletics track', '00:14:49', '2025-08-25 01:05:11'),
(21, 'Diego', 'Martinez', '1993-04-02', 'triathlon', '02:08:11', '2025-08-25 01:05:11'),
(22, 'Lena', 'Scholz', '2000-12-06', 'swimming', '00:53:33', '2025-08-25 01:05:11'),
(23, 'Omar', 'Hassan', '1994-03-17', 'athletics track', '00:13:59', '2025-08-25 01:05:11'),
(24, 'Marta', 'Hein', '1992-01-29', 'triathlon', '01:43:15', '2025-08-25 01:05:11'),
(25, 'Kenji', 'Sato', '1989-07-22', 'triathlon', '01:58:40', '2025-08-25 01:05:11'),
(26, 'Anil', 'Patel', '1992-08-28', 'cycling', '01:21:16', '2025-08-25 01:05:11'),
(27, 'Greta', 'Lang', '1988-05-13', 'swimming', '01:03:22', '2025-08-25 01:05:11'),
(28, 'Leo', 'Ott', '2000-12-05', 'cycling', '01:19:59', '2025-08-25 01:05:11'),
(29, 'Yara', 'Kaiser', '1993-09-03', 'athletics track', '00:14:07', '2025-08-25 01:05:11'),
(30, 'Helena', 'Kruger', '1996-10-09', 'swimming', '00:59:12', '2025-08-25 01:05:11'),
(31, 'Kira', 'Gross', '2000-02-13', 'cycling', '01:16:42', '2025-08-25 01:05:11'),
(32, 'Roman', 'Luka', '1997-05-07', 'cycling', '01:26:58', '2025-08-25 01:05:11'),
(33, 'Zoe', 'Funk', '1999-04-14', 'triathlon', '01:39:42', '2025-08-25 01:05:11'),
(34, 'Tom', 'Meier', '1991-12-12', 'swimming', '00:49:58', '2025-08-25 01:05:11'),
(35, 'Aria', 'Berger', '2002-08-16', 'athletics track', '00:13:41', '2025-08-25 01:05:11'),
(36, 'Iris', 'Franz', '1995-08-07', 'cycling', '01:13:27', '2025-08-25 01:05:11'),
(37, 'Nora', 'Winter', '1990-05-05', 'triathlon', '01:47:12', '2025-08-25 01:05:11'),
(38, 'Samuel', 'Dietrich', '1990-10-03', 'swimming', '01:00:05', '2025-08-25 01:05:11'),
(39, 'Peter', 'Bohm', '1991-01-20', 'athletics track', '00:13:36', '2025-08-25 01:05:11'),
(40, 'Amelia', 'Geiger', '1998-05-18', 'cycling', '01:15:05', '2025-08-25 01:05:11'),
(41, 'Maya', 'Seidel', '2001-06-29', 'swimming', '00:51:45', '2025-08-25 01:05:11'),
(42, 'Owen', 'Jakobs', '1987-02-11', 'athletics track', '00:16:05', '2025-08-25 01:05:11'),
(43, 'Rita', 'Mendez', '1994-12-17', 'swimming', '01:01:25', '2025-08-25 01:05:11'),
(44, 'Karl', 'Schmidt', '1992-03-09', 'cycling', '01:18:45', '2025-08-25 01:05:11'),
(45, 'Ada', 'Kaufmann', '1996-09-12', 'triathlon', '01:56:05', '2025-08-25 01:05:11'),
(46, 'Emily', 'Kuhn', '2000-10-28', 'athletics track', '00:14:38', '2025-08-25 01:05:11'),
(47, 'Mateo', 'Wagner', '1989-10-30', 'cycling', '01:24:44', '2025-08-25 01:05:11'),
(48, 'Clara', 'Berg', '1999-09-23', 'swimming', '00:58:05', '2025-08-25 01:05:11'),
(49, 'Jonah', 'Reiter', '1994-11-03', 'triathlon', '01:48:20', '2025-08-25 01:05:11'),
(50, 'Nikolai', 'Ritter', '1993-07-07', 'triathlon', '02:05:50', '2025-08-25 01:05:11'),
(51, 'Finn', 'Kraus', '2003-04-08', 'athletics track', '00:13:05', '2025-08-25 01:05:11'),
(52, 'Isabella', 'Becker', '1997-07-21', 'cycling', '01:25:00', '2025-08-25 01:05:11'),
(53, 'Paul', 'Keller', '1998-07-11', 'swimming', '00:52:30', '2025-08-25 01:05:11'),
(54, 'Zara', 'Haas', '1996-02-22', 'cycling', '01:17:33', '2025-08-25 01:05:11'),
(55, 'Sophie', 'Wolf', '1999-11-26', 'cycling', '01:12:15', '2025-08-25 01:05:11'),
(56, 'Noah', 'Weber', '1997-11-02', 'athletics track', '00:12:58', '2025-08-25 01:05:11'),
(57, 'Tara', 'Schreiber', '1997-01-25', 'triathlon', '01:52:10', '2025-08-25 01:05:11'),
(58, 'Lea', 'Hartmann', '1998-09-30', 'athletics track', '00:14:55', '2025-08-25 01:05:11'),
(59, 'Rayan', 'Ali', '1998-06-08', 'triathlon', '02:12:34', '2025-08-25 01:05:11'),
(60, 'Darius', 'Nowak', '1998-03-22', 'swimming', '00:52:55', '2025-08-25 01:05:11');

--
-- Triggers `athlete`
--
DELIMITER $$
CREATE TRIGGER `bi_athlete_pbt` BEFORE INSERT ON `athlete` FOR EACH ROW BEGIN
  IF NEW.personalBestTime NOT REGEXP '^[0-9]{2}:[0-9]{2}:[0-9]{2}$' THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'personalBestTime must be hh:mm:ss';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bu_athlete_pbt` BEFORE UPDATE ON `athlete` FOR EACH ROW BEGIN
  IF NEW.personalBestTime NOT REGEXP '^[0-9]{2}:[0-9]{2}:[0-9]{2}$' THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'personalBestTime must be hh:mm:ss';
  END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `athlete`
--
ALTER TABLE `athlete`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `athlete`
--
ALTER TABLE `athlete`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
