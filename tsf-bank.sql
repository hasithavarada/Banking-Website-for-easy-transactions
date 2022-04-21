-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 06:53 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankofspain`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `remitter` varchar(50) NOT NULL,
  `beneficiary` varchar(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`remitter`, `beneficiary`, `amount`, `date`, `time`) VALUES
('Kiran', 'Hasi', 100, '2022-04-19', '09:51:24'),
('Kiran', 'Kamal', 42, '2022-04-19', '10:04:30'),
('Kamal', 'Gayu', 345, '2022-04-19', '10:19:58'),
('Hasi', 'Kiran', 7563, '2022-04-19', '10:41:50'),
('Parker', 'Naina', 8567, '2022-04-19', '10:45:22'),
('Naina', 'Kritha', 987, '2022-04-19', '10:50:25'),
('Rachel Geller', 'Ria', 5643, '2022-04-19', '10:53:54'),
('Naina', 'Luke Parker', 558, '2022-04-19', '10:57:48'),
('Kiran', 'Kamal', 4588, '2022-04-19', '11:36:43'),
('Stefen', 'Kritha', 1244, '2022-04-20', '08:58:48'),
('Ria', 'Gayu', 222, '2022-04-20', '09:32:48'),
('Kamal', 'Kiran', 545, '2022-04-20', '10:05:32');

--
-- Triggers `transaction`
--
DELIMITER $$
CREATE TRIGGER `device` BEFORE INSERT ON `transaction` FOR EACH ROW IF new.date IS NULL THEN
	SET NEW.date = CURDATE();
    SET NEW.time = CURTIME();
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `amount`, `address`, `phone`) VALUES
(10, 'Kritha', 'Kritha@yahoo.com', 37681, 'Eusebio Dávila, 40 41460 Las Navas de la Concepció', '600 523 737'),
(5, 'Gayu', ' Gayu@yahoo.com', 18920, 'Pl. Virgen Blanca, 8 08470 Sant Celoni', '759 900 841'),
(6, 'Naina', 'Naina56@yahoo.com', 4176, 'Eusebio Dávila, 86 41530 Morón de la Frontera', '720 330 854'),
(1, 'Ria', 'Ria@jourrapide.com', 378, '2323 Cherry Ridge Drive Roseville, MI 48066', '2147483647'),
(3, 'Kiran', 'Kiranrahul41@gmail.com', 5215, 'Urzáiz, 8 44600 Alcañiz', '747 035 392'),
(9, 'Stefen Wesley', 'Stefen@yahoo.com', 10344, 'Fuente del Gallo, 89 15117 Laxe', '619 498 764'),
(7, 'Luke Parker', 'LukeParker@armyspy.com', 65082, 'C/ Cuevas de Ambrosio, 29 23740 Andújar', '698 824 254'),
(8, 'Noah Millers', 'Noahmillers@jourrapide.com', 476586, 'Avda. Explanada Barnuevo, 86 35430 Firgas', '683 673 778'),
(4, 'Kamal', 'LexiKamal@gmail.com', 34377, 'Cádiz, 67 18490 Murtas', '771 491 815'),
(2, 'Hasi', 'Hasivarada@gmail.com', 11491, '2063 Karen Lane Louisville, KY 40202', '2028359827');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `phone` (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
