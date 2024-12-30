-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2024 at 10:29 AM
-- Server version: 10.6.20-MariaDB-cll-lve
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rcdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `phone`, `website`, `message`, `created_at`) VALUES
(7, 'Rohit madhwal', 'samriddhiclothing07@gmail.com', '7060187780', 'www.ipmamanagementservices.com', 'Maintaines', '2024-12-26 19:21:21'),
(8, 'Rohit madhwal', 'samriddhiclothing07@gmail.com', '7060187780', 'www.ipmamanagementservices.com', 'Desighning', '2024-12-26 19:22:12'),
(9, 'Rohit madhwal', 'rohitmadhwal007@gmail.com', '9410139501', 'www.ipmamanagementservices.com', 'Hi how are you ', '2024-12-27 17:10:42'),
(10, 'Rishabh madhwal', 'Rishabhmadhwal147@gmail.com', '9921346999', 'www.samriddhiindia.com', 'Ecommers website Details', '2024-12-27 17:19:53'),
(11, 'Meshu', 'Rishabhmadhwal147@gmail.com', '9921346999', 'www.dehraduntimesmagazin.com', 'Maintaines charges required', '2024-12-28 04:07:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
