-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2022 at 04:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seniorprojectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ID`, `email`, `message`) VALUES
(1, 'test', 'test'),
(2, 'aaa@ccc.dd', 'Hello World!'),
(3, 'aaa@ccc.dd', 'Hello World!'),
(4, 'a@b.c', 'asdds'),
(5, 'test', 'test'),
(6, 'test', 'test'),
(7, 'test', 'test'),
(8, '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `spirits`
--

CREATE TABLE `spirits` (
  `ID` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Alcohol Percentage` int(255) NOT NULL,
  `Bottle Size in cl` int(255) NOT NULL,
  `ImageLink` text NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spirits`
--

INSERT INTO `spirits` (`ID`, `Name`, `Alcohol Percentage`, `Bottle Size in cl`, `ImageLink`, `category`) VALUES
(1, 'Johnnie Walker Red', 40, 70, 'https://muci.al/wp-content/uploads/2021/10/1010584_1-1.jpg', 'Whiskey'),
(2, 'Johnnie Walker Black', 40, 70, 'https://muci.al/wp-content/uploads/2014/01/Johnnie-Walker-Black-Label-07-L.jpg', 'Whiskey'),
(3, 'Johnnie Walker Blue', 40, 70, 'https://applejack.com/site/images/Johnnie-Walker-Blue-Label-12-year-Blended-Scotch-750-ml_1.png', 'Whiskey'),
(4, 'Vodka Greygoose', 40, 70, 'https://www.thewhiskyworld.com/images/grey-goose-vodka-6-litre-magnum-p2377-6426_image.jpg', 'Vodka'),
(5, 'Vodka Belvedere', 40, 70, 'https://www.thewhiskyworld.com/images/belvedere-vodka-gift-box-p1538-11008_image.jpg', 'Vodka'),
(6, 'Vodka Smirnoff', 40, 70, 'https://mediacore.kyuubi.it/anticaenotecagiulianelli/media/img/2020/8/8/164133-large-vodka-smirnoff-n-21-37-5-lt-1-et-rossa.jpg', 'Vodka'),
(7, 'Vodka Puschkin', 40, 70, 'https://cdn.expert24.com/imagecache/item-fullscreen/60dec43eef315cbd7928241be03cc0041e1ad936686b6619a72542a3d9f9ee8d.jpg', 'Vodka'),
(8, 'Jägermeister', 35, 70, 'https://cdn.shopify.com/s/files/1/1624/5203/products/31dover-jagermeister-shadow1000x1000_1.jpg?v=1656665311', 'Digestif'),
(9, 'Jack Daniels', 40, 70, 'https://www.gourmetencasa-tcm.com/17699/jack-daniels-70cl.jpg', 'Whiskey'),
(10, 'Jim Beam', 40, 70, 'https://mediacore.kyuubi.it/anticaenotecagiulianelli/media/img/2020/8/3/163210-large-whisky-jim-beam-bourbon-40-cl-70-et-bianca.jpg', 'Whiskey'),
(11, 'J&B', 40, 70, 'https://mediacore.kyuubi.it/anticaenotecagiulianelli/media/img/2020/8/3/163269-large-whisky-j-b-rare-40-lt-1.jpg', 'Whiskey'),
(12, 'Talisker', 46, 70, 'https://mediacore.kyuubi.it/anticaenotecagiulianelli/media/img/2020/8/1/162852-large-whisky-talisker-18y-45-8-cl-70-giftbox.jpg', 'Whiskey'),
(13, 'Bacardí', 37, 70, 'https://images.squarespace-cdn.com/content/v1/5f1e7a8d356dcf5fdedfdeb2/1597846884080-TW0BPQRQ1MTJ3YP917ME/jO1NELr.png?format=1000w', 'Rum'),
(14, 'Dictator', 40, 70, 'https://www.excellencerhum.com/9781-thickbox_default/rum-dictador-12-years.jpg', 'Rum'),
(15, 'Hennessy VSOP', 40, 70, 'https://www.irishdrinkshop.com/image/cache/catalog/Cognacs/hennessy-vsop-cognac-1000x1000.jpg', 'Cognac');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `spirits`
--
ALTER TABLE `spirits`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
