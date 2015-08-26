-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2015 at 06:13 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `polychem`
--

-- --------------------------------------------------------

--
-- Table structure for table `base`
--

CREATE TABLE IF NOT EXISTS `base` (
  `id` int(11) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `dimension` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `emboossingMT` varchar(30) NOT NULL,
  `embossingUT` varchar(30) NOT NULL,
  `embossingOT` varchar(30) NOT NULL,
  `embossingPF` varchar(30) NOT NULL,
  `embossingCT` varchar(30) NOT NULL,
  `embossing_laminating` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base`
--

INSERT INTO `base` (`id`, `brand`, `dimension`, `type`, `color`, `emboossingMT`, `embossingUT`, `embossingOT`, `embossingPF`, `embossingCT`, `embossing_laminating`) VALUES
(3, 'Galaxy', '0.30 x 1950', 'Base-UT', 'Black', '', 'Satin', '', '', '', 'Mirror'),
(4, 'Carnival', '0.46 x 1950', 'Base-UT', 'Black', '', 'Satin', '', '', '', 'Mirror'),
(5, 'Venus', '0.46 x 2150', 'Base-UT', 'Black', '', 'Satin', '', '', '', 'Mirror'),
(6, 'Calio', '0.50 x 2150', 'Base-UT', 'Pink', 'Matt', 'N.Back', '', '', '', 'Matt'),
(7, 'Mini Calio', '0.56 x 2150', 'Base-UT', 'Pink', '', 'N.Back', '', '', '', 'Matt'),
(18, 'Dull CT', '0.10 x 2150', 'Clear Transparent', 'Null', '', '', '', '', 'Matt', ''),
(19, 'Neptune', '0.45 x 2150', 'Base-MT', 'Ash Grey', 'Matt', 'Satin', '', '', '', 'Matt'),
(20, 'Neptune', '0.45 x 2150', 'Base-MT', 'Beige', 'Matt', 'Satin', '', '', '', 'Matt'),
(21, 'Neptune', '0.45 x 2150', 'Base-MT', 'Blue', 'Matt', 'Satin', '', '', '', 'Matt'),
(22, 'Neptune', '0.45 x 2150', 'Base-MT', 'Green', 'Matt', 'Satin', '', '', '', 'Matt'),
(23, 'Neptune', '0.45 x 2150', 'Base-MT', 'Lt Grey', 'Matt', 'Satin', '', '', '', 'Matt'),
(24, 'Neptune', '0.45 x 2150', 'Base-MT', 'Red Terracotta', 'Matt', 'Satin', '', '', '', 'Matt'),
(25, 'Neptune', '0.45 x 2150', 'Base-MT', 'White', 'Matt', 'Satin', '', '', '', 'Matt'),
(26, 'Neptune', '0.45 x 2150', 'Base-UT', 'Ash Grey', 'Matt', 'Satin', '', '', '', 'Matt'),
(27, 'Neptune', '0.45 x 2150', 'Base-UT', 'Beige', 'Matt', 'Satin', '', '', '', 'Matt'),
(28, 'Neptune', '0.45 x 2150', 'Base-UT', 'Blue', 'Matt', 'Satin', '', '', '', 'Matt'),
(29, 'Neptune', '0.45 x 2150', 'Base-UT', 'Green', 'Matt', 'Satin', '', '', '', 'Matt'),
(30, 'Neptune', '0.45 x 2150', 'Base-UT', 'Lt Grey', 'Matt', 'Satin', '', '', '', 'Matt'),
(31, 'Neptune', '0.45 x 2150', 'Base-UT', 'Red Terracotta', 'Matt', 'Satin', '', '', '', 'Matt'),
(32, 'Neptune', '0.45 x 2150', 'Base-UT', 'White', 'Matt', 'Satin', '', '', '', 'Matt'),
(33, 'Calio', '0.50 x 2150', 'Base-MT', 'pink', 'Matt', 'N.Back', '', '', '', 'Matt'),
(34, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Ash Grey', 'Matt', 'Satin', '', '', '', 'Matt'),
(35, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Beige', 'Matt', 'Satin', '', '', '', 'Matt'),
(36, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Blue', 'Matt', 'Satin', '', '', '', 'Matt'),
(37, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Green', 'Matt', 'Satin', '', '', '', 'Matt'),
(38, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Lt Grey', 'Matt', 'Satin', '', '', '', 'Matt'),
(39, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Red Terracotta', 'Matt', 'Satin', '', '', '', 'Matt'),
(40, 'Jupiter', '0.62 x 2150', 'Base-UT', 'white', 'Matt', 'Satin', '', '', '', 'Matt'),
(41, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Ash Grey', 'Matt', 'Satin', '', '', '', 'Matt'),
(42, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Beige', 'Matt', 'Satin', '', '', '', 'Matt'),
(43, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Blue', 'Matt', 'Satin', '', '', '', 'Matt'),
(44, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Green', 'Matt', 'Satin', '', '', '', 'Matt'),
(45, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Lt Grey', 'Matt', 'Satin', '', '', '', 'Matt'),
(46, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Red Terracotta', 'Matt', 'Satin', '', '', '', 'Matt'),
(47, 'Jupiter', '0.62 x 2150', 'Base-MT', 'white', 'Matt', 'Satin', '', '', '', 'Matt'),
(48, 'Super Calio', '0.62 x 2150', 'Base-UT', 'Pink', 'Matt', 'Satin', '', '', '', 'Wooden'),
(49, 'Chipps', '0.62 x 2150', 'Base-UT', 'Blue', 'Matt', 'Satin', '', '', '', 'Matt'),
(50, 'Chipps', '0.62 x 2150', 'Base-UT', 'Green', 'Matt', 'Satin', '', '', '', 'Matt'),
(51, 'Chipps', '0.62 x 2150', 'Base-UT', 'Red', 'Matt', 'Satin', '', '', '', 'Matt'),
(52, 'Chipps', '0.62 x 2150', 'Base-UT', ' Terracotta', 'Matt', 'Satin', '', '', '', 'Matt'),
(53, 'Chipps', '0.62 x 2150', 'Base-MT', 'Blue', 'Matt', 'Satin', '', '', '', 'Matt'),
(54, 'Chipps', '0.62 x 2150', 'Base-MT', 'Green', 'Matt', 'Satin', '', '', '', 'Matt'),
(55, 'Chipps', '0.62 x 2150', 'Base-MT', 'Red', 'Matt', 'Satin', '', '', '', 'Matt'),
(56, 'Chipps', '0.62 x 2150', 'Base-MT', ' Terracotta', 'Matt', 'Satin', '', '', '', 'Matt'),
(57, 'Mars', '0.65 x 2150', 'Base-MT', 'Ash Grey', 'Matt', 'Satin', '', '', '', 'Matt'),
(58, 'Mars', '0.65 x 2150', 'Base-MT', 'Beige', 'Matt', 'Satin', '', '', '', 'Matt'),
(59, 'Mars', '0.65 x 2150', 'Base-MT', 'Blue', 'Matt', 'Satin', '', '', '', 'Matt'),
(60, 'Mars', '0.65 x 2150', 'Base-MT', 'Green', 'Matt', 'Satin', '', '', '', 'Matt'),
(61, 'Mars', '0.65 x 2150', 'Base-MT', 'Lt Grey', 'Matt', 'Satin', '', '', '', 'Matt'),
(62, 'Mars', '0.65 x 2150', 'Base-MT', 'Red Terracotta', 'Matt', 'Satin', '', '', '', 'Matt'),
(63, 'Mars', '0.65 x 2150', 'Base-MT', 'white', 'Matt', 'Satin', '', '', '', 'Matt'),
(64, 'Print Film ', '0.07 x 1950', 'Print Film', 'White', '', '', '', 'Matt', '', ''),
(65, 'Print Film ', '0.07 x 1950', 'Print Film', 'Cream', '', '', '', 'Matt', '', ''),
(66, 'Print Film ', '0.07 x 1950', 'Print Film', 'Buff', '', '', '', 'Matt', '', ''),
(67, 'Print Film ', '0.07 x 1950', 'Print Film', 'Biscuit', '', '', '', 'Matt', '', ''),
(68, 'Print Film ', '0.07 x 1950', 'Print Film', 'Maroon', '', '', '', 'Matt', '', ''),
(69, 'Print Film ', '0.07 x 1950', 'Print Film', 'Rust', '', '', '', 'Matt', '', ''),
(70, 'Print Film ', '0.07 x 1950', 'Print Film', 'New Rust', '', '', '', 'Matt', '', ''),
(71, 'Print Film ', '0.07 x 1950', 'Print Film', 'Fawn', '', '', '', 'Matt', '', ''),
(72, 'Print Film ', '0.07 x 1950', 'Print Film', 'White', '', '', '', 'Matt', '', ''),
(73, 'Print Film ', '0.07 x 1950', 'Print Film', 'Cream', '', '', '', 'Matt', '', ''),
(74, 'Print Film ', '0.07 x 1950', 'Print Film', 'Buff', '', '', '', 'Matt', '', ''),
(75, 'Print Film ', '0.07 x 1950', 'Print Film', 'Biscuit', '', '', '', 'Matt', '', ''),
(76, 'Print Film ', '0.07 x 1950', 'Print Film', 'Maroon', '', '', '', 'Matt', '', ''),
(77, 'Print Film ', '0.07 x 1950', 'Print Film', 'Rust', '', '', '', 'Matt', '', ''),
(78, 'Print Film ', '0.07 x 1950', 'Print Film', 'New Rust', '', '', '', 'Matt', '', ''),
(79, 'Print Film ', '0.07 x 1950', 'Print Film', 'Fawn', '', '', '', 'Matt', '', ''),
(80, 'Print Film ', '0.07 x 2150', 'Print Film', 'White', '', '', '', 'Matt', '', ''),
(81, 'Print Film ', '0.07 x 2150', 'Print Film', 'Cream', '', '', '', 'Matt', '', ''),
(82, 'Print Film ', '0.07 x 2150', 'Print Film', 'Buff', '', '', '', 'Matt', '', ''),
(83, 'Print Film ', '0.07 x 2150', 'Print Film', 'Biscuit', '', '', '', 'Matt', '', ''),
(84, 'Print Film ', '0.07 x 2150', 'Print Film', 'Maroon', '', '', '', 'Matt', '', ''),
(85, 'Print Film ', '0.07 x 2150', 'Print Film', 'Rust', '', '', '', 'Matt', '', ''),
(86, 'Print Film ', '0.07 x 2150', 'Print Film', 'New Rust', '', '', '', 'Matt', '', ''),
(87, 'Print Film ', '0.07 x 2150', 'Print Film', 'Fawn', '', '', '', 'Matt', '', ''),
(88, 'Print Film ', '0.07 x 2150', 'Print Film', 'White', '', '', '', 'Matt', '', ''),
(89, 'Print Film ', '0.07 x 2150', 'Print Film', 'Cream', '', '', '', 'Matt', '', ''),
(90, 'Print Film ', '0.07 x 2150', 'Print Film', 'Buff', '', '', '', 'Matt', '', ''),
(91, 'Print Film ', '0.07 x 2150', 'Print Film', 'Biscuit', '', '', '', 'Matt', '', ''),
(92, 'Print Film ', '0.07 x 2150', 'Print Film', 'Maroon', '', '', '', 'Matt', '', ''),
(93, 'Print Film ', '0.07 x 2150', 'Print Film', 'Rust', '', '', '', 'Matt', '', ''),
(94, 'Print Film ', '0.07 x 2150', 'Print Film', 'New Rust', '', '', '', 'Matt', '', ''),
(95, 'Print Film ', '0.07 x 2150', 'Print Film', 'Fawn', '', '', '', 'Matt', '', ''),
(96, 'Print Film ', '0.10 x 2150', 'Print Film', 'Clear', '', '', '', 'Matt', '', ''),
(97, 'Print Film ', '0.10 x 2150', 'Print Film', 'White', '', '', '', 'Matt', '', ''),
(98, 'Print Film ', '0.10 x 2150', 'Print Film', 'Cream', '', '', '', 'Matt', '', ''),
(99, 'Print Film ', '0.10 x 2150', 'Print Film', 'Buff', '', '', '', 'Matt', '', ''),
(100, 'Print Film ', '0.10 x 2150', 'Print Film', 'Biscuit', '', '', '', 'Matt', '', ''),
(101, 'Print Film ', '0.10 x 2150', 'Print Film', 'Maroon', '', '', '', 'Matt', '', ''),
(102, 'Print Film ', '0.10 x 2150', 'Print Film', 'Rust', '', '', '', 'Matt', '', ''),
(103, 'Print Film ', '0.10 x 2150', 'Print Film', 'New Rust', '', '', '', 'Matt', '', ''),
(104, 'Print Film ', '0.10 x 2150', 'Print Film', 'Fawn', '', '', '', 'Matt', '', ''),
(105, 'Print Film ', '0.10 x 2150', 'Print Film', 'Clear', '', '', '', 'Matt', '', ''),
(106, 'Print Film ', '0.10 x 2150', 'Print Film', 'White', '', '', '', 'Matt', '', ''),
(107, 'Print Film ', '0.10 x 2150', 'Print Film', 'Cream', '', '', '', 'Matt', '', ''),
(108, 'Print Film ', '0.10 x 2150', 'Print Film', 'Buff', '', '', '', 'Matt', '', ''),
(109, 'Print Film ', '0.10 x 2150', 'Print Film', 'Biscuit', '', '', '', 'Matt', '', ''),
(110, 'Print Film ', '0.10 x 2150', 'Print Film', 'Maroon', '', '', '', 'Matt', '', ''),
(111, 'Print Film ', '0.10 x 2150', 'Print Film', 'Rust', '', '', '', 'Matt', '', ''),
(112, 'Print Film ', '0.10 x 2150', 'Print Film', 'New Rust', '', '', '', 'Matt', '', ''),
(113, 'Print Film ', '0.10 x 2150', 'Print Film', 'Fawn', '', '', '', 'Matt', '', ''),
(114, 'Print Film ', '0.10 x 2150', 'Print Film', 'Clear', '', '', '', 'Matt', '', ''),
(115, 'Print Film ', '0.10 x 2150', 'Print Film', 'White', '', '', '', 'Matt', '', ''),
(116, 'Print Film ', '0.10 x 2150', 'Print Film', 'Cream', '', '', '', 'Matt', '', ''),
(117, 'Print Film ', '0.10 x 2150', 'Print Film', 'Buff', '', '', '', 'Matt', '', ''),
(118, 'Print Film ', '0.10 x 2150', 'Print Film', 'Biscuit', '', '', '', 'Matt', '', ''),
(119, 'Print Film ', '0.10 x 2150', 'Print Film', 'Maroon', '', '', '', 'Matt', '', ''),
(120, 'Print Film ', '0.10 x 2150', 'Print Film', 'Rust', '', '', '', 'Matt', '', ''),
(121, 'Print Film ', '0.10 x 2150', 'Print Film', 'New Rust', '', '', '', 'Matt', '', ''),
(122, 'Print Film ', '0.10 x 2150', 'Print Film', 'Fawn', '', '', '', 'Matt', '', ''),
(123, 'Mars', '0.20 x 2150 ', 'OT', 'Ash Grey', '', '', 'Matt', '', '', ''),
(124, 'Mars', '0.20 x 2150 ', 'OT', 'Beige', '', '', 'Matt', '', '', ''),
(125, 'Mars', '0.20 x 2150 ', 'OT', 'Blue', '', '', 'Matt', '', '', ''),
(126, 'Mars', '0.20 x 2150 ', 'OT', 'Green', '', '', 'Matt', '', '', ''),
(127, 'Mars', '0.20 x 2150 ', 'OT', 'Lt Grey', '', '', 'Matt', '', '', ''),
(128, 'Mars', '0.20 x 2150 ', 'OT', 'Red Terracotta', '', '', 'Matt', '', '', ''),
(129, 'Mars', '0.20 x 2150 ', 'OT', 'White', '', '', 'Matt', '', '', ''),
(130, 'Neptune', '0.45 x 2150', 'OT', 'Ash Grey', '', '', 'Matt', '', '', ''),
(131, 'Neptune', '0.45 x 2150', 'OT', 'Beige', '', '', 'Matt', '', '', ''),
(132, 'Neptune', '0.45 x 2150', 'OT', 'Blue', '', '', 'Matt', '', '', ''),
(133, 'Neptune', '0.45 x 2150', 'OT', 'Green', '', '', 'Matt', '', '', ''),
(134, 'Neptune', '0.45 x 2150', 'OT', 'Lt Grey', '', '', 'Matt', '', '', ''),
(135, 'Neptune', '0.45 x 2150', 'OT', 'Red Terracotta', '', '', 'Matt', '', '', ''),
(136, 'Neptune', '0.45 x 2150', 'OT', 'White', '', '', 'Matt', '', '', ''),
(137, 'Jupiter', '0.20 x 2150 ', 'OT', 'Ash Grey', '', '', 'Matt', '', '', ''),
(138, 'Jupiter', '0.20 x 2150 ', 'OT', 'Beige', '', '', 'Matt', '', '', ''),
(139, 'Jupiter', '0.20 x 2150 ', 'OT', 'Blue', '', '', 'Matt', '', '', ''),
(140, 'Jupiter', '0.20 x 2150 ', 'OT', 'Green', '', '', 'Matt', '', '', ''),
(141, 'Jupiter', '0.20 x 2150 ', 'OT', 'Lt Grey', '', '', 'Matt', '', '', ''),
(142, 'Jupiter', '0.20 x 2150 ', 'OT', 'Red Terracotta', '', '', 'Matt', '', '', ''),
(143, 'Jupiter', '0.20 x 2150 ', 'OT', 'White', '', '', 'Matt', '', '', ''),
(144, 'Print Film', '0.07 x 1950', 'Print Film', 'Tan', '', '', '', 'Matt', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `basecolor`
--

CREATE TABLE IF NOT EXISTS `basecolor` (
  `basecolor_id` int(11) NOT NULL,
  `basecolor_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `baseemboss`
--

CREATE TABLE IF NOT EXISTS `baseemboss` (
  `id` int(10) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Dimension` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `Emboss` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baseemboss`
--

INSERT INTO `baseemboss` (`id`, `Brand`, `Dimension`, `Type`, `Color`, `Emboss`) VALUES
(5, 'Neptune', '0.45 x 1950', 'Base-MT', 'Ash Grey', 'Matt'),
(6, 'Neptune', '0.45 x 1950', 'Base-UT', 'Ash Grey', 'Satin'),
(7, 'Neptune', '0.20 x 2150 ', 'Base-OT', 'Ash Grey', 'Matt'),
(8, 'Neptune', '0.45 x 1950', 'Base-MT', 'Beige', 'Matt'),
(9, 'Neptune', '0.45 x 1950', 'Base-UT', 'Beige', 'Satin'),
(10, 'Neptune', '0.20 x 2150 ', 'Base-OT', 'Beige', 'Matt'),
(12, 'Neptune', '0.45 x 1950', 'Base-UT', 'Blue', 'Satin'),
(14, 'Neptune', '0.45 x 1950', 'Base-MT', 'Green', 'Matt'),
(15, 'Neptune', '0.45 x 1950', 'Base-UT', 'Green', 'Satin'),
(16, 'Neptune', '0.20 x 2150 ', 'Base-OT', 'Green', 'Matt'),
(17, 'Neptune', '0.45 x 1950', 'Base-MT', 'Lt. Grey', 'Matt'),
(18, 'Neptune', '0.45 x 1950', 'Base-UT', 'Lt. Grey', 'Satin'),
(19, 'Neptune', '0.20 x 2150 ', 'Base-OT', 'Lt. Grey', 'Matt'),
(20, 'Neptune', '0.45 x 1950', 'Base-MT', 'Red', 'Matt'),
(21, 'Neptune', '0.45 x 1950', 'Base-UT', 'Red', 'Satin'),
(22, 'Neptune', '0.20 x 2150 ', 'Base-OT', 'Red', 'Matt'),
(23, 'Neptune', '0.45 x 1950', 'Base-MT', 'Terracotta', 'Matt'),
(24, 'Neptune', '0.45 x 1950', 'Base-UT', 'Terracotta', 'Satin'),
(25, 'Neptune', '0.20 x 2150 ', 'Base-OT', 'Terracotta', 'Matt'),
(26, 'Neptune', '0.45 x 1950', 'Base-MT', 'White', 'Matt'),
(27, 'Neptune', '0.45 x 1950', 'Base-UT', 'White', 'Satin'),
(28, 'Neptune', '0.20 x 2150 ', 'Base-OT', 'White', 'Matt'),
(30, 'Venus', '0.46 x 2150', 'Base-UT', 'Black', 'Satin'),
(33, 'Mini Calio', '0.56 x 2150', 'Base-UT', 'Pink', 'N.Back'),
(34, 'Calio Max', '0.60 x 2150', 'Base-MT', 'Pink', 'Matt'),
(35, 'Calio Max', '0.60 x 2150', 'Base-UT', 'Pink', 'Satin'),
(36, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Ash Grey', 'Matt'),
(37, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Ash Grey', 'Satin'),
(38, 'Jupiter', '0.20 x 2150 ', 'Base-OT', 'Ash Grey', 'Matt'),
(39, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Beige', 'Matt'),
(40, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Beige', 'Satin'),
(41, 'Jupiter', '0.20 x 2150 ', 'Base-OT', 'Beige', 'Matt'),
(42, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Blue', 'Matt'),
(43, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Blue', 'Satin'),
(44, 'Jupiter', '0.20 x 2150 ', 'Base-OT', 'Blue', 'Matt'),
(45, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Green', 'Matt'),
(46, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Green', 'Satin'),
(47, 'Jupiter', '0.20 x 2150 ', 'Base-OT', 'Green', 'Matt'),
(48, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Lt. Grey', 'Matt'),
(49, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Lt. Grey', 'Satin'),
(50, 'Jupiter', '0.20 x 2150 ', 'Base-OT', 'Lt. Grey', 'Matt'),
(51, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Red', 'Matt'),
(52, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Red', 'Satin'),
(53, 'Jupiter', '0.20 x 2150 ', 'Base-OT', 'Red', 'Matt'),
(54, 'Jupiter', '0.62 x 2150', 'Base-MT', 'Terracotta', 'Matt'),
(55, 'Jupiter', '0.62 x 2150', 'Base-UT', 'Terracotta', 'Satin'),
(56, 'Jupiter', '0.20 x 2150 ', 'Base-OT', 'Terracotta', 'Matt'),
(57, 'Jupiter', '0.62 x 2150', 'Base-MT', 'White', 'Matt'),
(58, 'Jupiter', '0.62 x 2150', 'Base-UT', 'White', 'Satin'),
(59, 'Jupiter', '0.20 x 2150 ', 'Base-OT', 'White', 'Matt'),
(60, 'Super Calio', '0.62 x 2150', 'Base-MT', 'Pink', 'Matt'),
(61, 'Super Calio', '0.62 x 2150', 'Base-UT', 'Pink', 'Satin'),
(65, 'Chipps', '0.62 x 2150', 'Base-UT', 'Green', 'Satin'),
(66, 'Chipps', '0.62 x 2150', 'Base-MT', 'Red', 'Matt'),
(67, 'Chipps', '0.62 x 2150', 'Base-UT', 'Red', 'Satin'),
(68, 'Chipps', '0.62 x 2150', 'Base-MT', 'Terracotta', 'Matt'),
(69, 'Chipps', '0.62 x 2150', 'Base-UT', 'Terracotta', 'Satin'),
(70, 'Mars', '0.65 x 2150', 'Base-MT', 'Ash Grey', 'Matt'),
(71, 'Mars', '0.65 x 2150', 'Base-UT', 'Ash Grey', 'Satin'),
(72, 'Mars', '0.20 x 2150 ', 'Base-OT', 'Ash Grey', 'Matt'),
(73, 'Mars', '0.65 x 2150', 'Base-MT', 'Beige', 'Matt'),
(74, 'Mars', '0.65 x 2150', 'Base-UT', 'Beige', 'Satin'),
(75, 'Mars', '0.20 x 2150 ', 'Base-OT', 'Beige', 'Matt'),
(76, 'Mars', '0.65 x 2150', 'Base-MT', 'Blue', 'Matt'),
(77, 'Mars', '0.65 x 2150', 'Base-UT', 'Blue', 'Satin'),
(78, 'Mars', '0.20 x 2150 ', 'Base-OT', 'Blue', 'Matt'),
(79, 'Mars', '0.65 x 2150', 'Base-MT', 'Green', 'Matt'),
(80, 'Mars', '0.65 x 2150', 'Base-UT', 'Green', 'Satin'),
(81, 'Mars', '0.20 x 2150 ', 'Base-OT', 'Green', 'Matt'),
(82, 'Mars', '0.65 x 2150', 'Base-MT', 'Lt. Grey', 'Matt'),
(83, 'Mars', '0.65 x 2150', 'Base-UT', 'Lt. Grey', 'Satin'),
(84, 'Mars', '0.20 x 2150 ', 'Base-OT', 'Lt. Grey', 'Matt'),
(85, 'Mars', '0.65 x 2150', 'Base-MT', 'Red', 'Matt'),
(86, 'Mars', '0.65 x 2150', 'Base-UT', 'Red', 'Satin'),
(87, 'Mars', '0.20 x 2150 ', 'Base-OT', 'Red', 'Matt'),
(88, 'Mars', '0.65 x 2150', 'Base-MT', 'Terracotta', 'Matt'),
(89, 'Mars', '0.65 x 2150', 'Base-UT', 'Terracotta', 'Satin'),
(90, 'Mars', '0.20 x 2150 ', 'Base-OT', 'Terracotta', 'Matt'),
(91, 'Mars', '0.65 x 2150', 'Base-MT', 'White', 'Matt'),
(92, 'Mars', '0.65 x 2150', 'Base-UT', 'White', 'Satin'),
(93, 'Mars', '0.20 x 2150 ', 'Base-OT', 'White', 'Matt'),
(94, 'Print Film', '0.07 x 1950', 'Print Film', 'White', 'Matt'),
(95, 'Print Film', '0.07 x 1950', 'Print Film', 'Cream', 'Matt'),
(96, 'Print Film', '0.07 x 1950', 'Print Film', 'Buff', 'Matt'),
(97, 'Print Film', '0.07 x 1950', 'Print Film', 'Biscuit', 'Matt'),
(98, 'Print Film', '0.07 x 1950', 'Print Film', 'Maroon', 'Matt'),
(99, 'Print Film', '0.07 x 1950', 'Print Film', 'Rust', 'Matt'),
(100, 'Print Film', '0.07 x 1950', 'Print Film', 'New Rust', 'Matt'),
(101, 'Print Film', '0.07 x 1950', 'Print Film', 'Fawn', 'Matt'),
(102, 'Print Film', '0.07 x 2150', 'Print Film', 'White', 'Matt'),
(105, 'Print Film', '0.07 x 2150', 'Print Film', 'Biscuit', 'Matt'),
(106, 'Print Film', '0.07 x 2150', 'Print Film', 'Maroon', 'Matt'),
(110, 'Print Film', '0.10 x 2150', 'Print Film', 'Clear', 'Matt'),
(111, 'Print Film', '0.10 x 2150', 'Print Film', 'White', 'Matt'),
(112, 'Print Film', '0.10 x 2150', 'Print Film', 'Cream', 'Matt'),
(370, 'Galaxy', '0.30 x 1950', 'Base-UT', 'Black', 'Satin'),
(371, 'Neptune', '0.20 x 2150', 'Base-OT', 'Blue', 'Matt'),
(372, 'Neptune', '0.46 x 1950', 'Base-MT', 'Blue', 'Matt'),
(373, 'Carnival', '0.46 x 1950', 'Base-UT', 'Black', 'Satin'),
(374, 'Chipps', '0.62 x 2150', 'Base-MT', 'Blue', 'Matt'),
(375, 'Chipps', '0.62 x 2150', 'Base-UT', 'Blue', 'Satin'),
(376, 'Chipps', '0.62 x 2150', 'Base-MT', 'Green', 'Matt'),
(377, 'Print Film', '0.07 x 1950', 'Print Film', 'Tan', 'Matt'),
(378, 'Print Film', '0.07 x 1950', 'Print Film', 'Sea Green', 'Matt'),
(379, 'Print Film', '0.07 x 1950', 'Print Film', 'Orange', 'Matt'),
(380, 'Print Film', '0.07 x 1950', 'Print Film', 'Brick', 'Matt'),
(381, 'Print Film', '0.07 x 1950', 'Print Film', 'Pure White', 'Matt'),
(383, 'Print Film', '0.07 x 1950', 'Print Film', 'Lt. Blue', 'Matt'),
(384, 'Print Film', '0.07 x 1950', 'Print Film', 'Blue', 'Matt'),
(385, 'Print Film', '0.07 x 1950', 'Print Film', 'Pure Black', 'Matt'),
(386, 'Print Film', '0.07 x 1950', 'Print Film', 'Lemon', 'Matt'),
(387, 'Dull CT', '0.10 x 2150', 'Dull CT', 'Clear', 'Matt'),
(388, 'Print Film', '0.13 x 2150', 'Print Film', 'Terracotta', 'Matt'),
(389, 'Print Film', '0.13 x 2150', 'Print Film', 'Green', 'Matt'),
(390, 'Print Film', '0.13 x 2150', 'Print Film', 'Red', 'Matt'),
(391, 'Print Film', '0.13 x 2150', 'Print Film', 'Blue', 'Matt'),
(392, 'Print Film', '0.07 x 2150', 'Print Film', 'Pure White', 'Matt'),
(393, 'Print Film', '0.07 x 2150', 'Print Film', 'Pure Black', 'Matt'),
(395, 'Print Film', '0.07 x 2150', 'Print Film', 'Black', 'Matt'),
(396, 'Print Film', '0.07 x 2150', 'Print Film', 'Lemon', 'Matt'),
(397, 'Print Film', '0.07 x 2150', 'Print Film', 'Blue', 'Matt'),
(398, 'Print Film', '0.07 x 2150', 'Print Film', 'Cream', 'Matt'),
(399, 'Print Film', '0.07 x 2150', 'Print Film', 'Fawn', 'Matt'),
(400, 'Print Film', '0.07 x 2150', 'Print Film', 'Pure Black', 'Matt'),
(401, 'Print Film', '0.07 x 2150', 'Print Film', 'Lt. Blue', 'Matt'),
(402, 'Print Film', '0.07 x 2150', 'Print Film', 'Lt. Green', 'Matt'),
(403, 'Print Film', '0.10 x 2150', 'Print Film', 'Fawn', 'Matt'),
(404, 'Print Film', '0.10 x 2150', 'Print Film', 'Biscuit', 'Matt'),
(405, 'Print Film', '0.10 x 2150', 'Print Film', 'Buff', 'Matt'),
(406, 'Coral', '0.48 x 1950', 'Base-UT', 'Pink', 'N.Back'),
(407, 'Calio', '0.50 x 2150', 'Base-UT', 'Pink', 'N.Back'),
(408, 'Calio', '0.50 x 2150', 'Base-MT', 'Pink', 'Matt');

-- --------------------------------------------------------

--
-- Table structure for table `calender_cpr`
--

CREATE TABLE IF NOT EXISTS `calender_cpr` (
  `shift` varchar(100) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `quality` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `embossing` varchar(100) DEFAULT NULL,
  `Dimension` varchar(100) DEFAULT NULL,
  `length` varchar(11) DEFAULT NULL,
  `ntwt` varchar(11) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `department_id` varchar(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `total` varchar(50) NOT NULL,
  `reusable` varchar(20) NOT NULL,
  `lumps_plates` varchar(20) NOT NULL,
  `total_scrap_generated` varchar(20) NOT NULL,
  `less_scrap_used` varchar(20) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calender_cpr`
--

INSERT INTO `calender_cpr` (`shift`, `type`, `quality`, `color`, `embossing`, `Dimension`, `length`, `ntwt`, `date`, `department_id`, `id`, `total`, `reusable`, `lumps_plates`, `total_scrap_generated`, `less_scrap_used`, `uid`) VALUES
('A', 'Base-MT', 'Chipps', 'Terracotta', 'Matt', '0.62 x 2150', '100', '1100', '2072-04-01', 'calender', 1, '232.00', '', '', '', '', 970746);

-- --------------------------------------------------------

--
-- Table structure for table `calender_input`
--

CREATE TABLE IF NOT EXISTS `calender_input` (
  `id` int(11) NOT NULL COMMENT '	',
  `total_input` int(11) DEFAULT NULL,
  `actual_raw_material` int(11) DEFAULT NULL,
  `DANA` int(11) DEFAULT NULL,
  `total_scrap` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `shift` varchar(45) DEFAULT NULL,
  `department_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calender_irr`
--

CREATE TABLE IF NOT EXISTS `calender_irr` (
  `id` int(11) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `quality` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `emb` varchar(100) DEFAULT NULL,
  `mtr` int(11) DEFAULT NULL,
  `kgs` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `department_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calender_irr`
--

INSERT INTO `calender_irr` (`id`, `date`, `quality`, `color`, `dimension`, `emb`, `mtr`, `kgs`, `remarks`, `department_id`) VALUES
(1, '2012-12-12 00:00:00', 'galexy', 'black', '0.6*099', 'gafa', 35, 1891, 'this ', NULL),
(2, '0000-00-00 00:00:00', 'galexy', 'black', '8781', 'uo', 89, 9, 'yht', 'calender'),
(3, '0000-00-00 00:00:00', '1', '213', '23', '12', 12, 12, 'dads', 'calender'),
(4, '0000-00-00 00:00:00', '1', 'red', '123', 'emt', 123, 123, 'this is it', 'calender'),
(5, '0000-00-00 00:00:00', '1', 'white', '0923*123', '1', 123, 23, 'this is it', 'calender');

-- --------------------------------------------------------

--
-- Table structure for table `calender_program`
--

CREATE TABLE IF NOT EXISTS `calender_program` (
  `department_id` varchar(50) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `quality` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `order_mtr` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calender_program`
--

INSERT INTO `calender_program` (`department_id`, `date`, `quality`, `color`, `dimension`, `order_mtr`, `remarks`, `id`) VALUES
('calender', '0000-00-00 00:00:00', 'galexy', 'green', '4993', 9090, 'this is it', 1),
('calender', '0000-00-00 00:00:00', 'calio', 'green', '12312322', 493939, 'yooooooooooo', 2),
('calender', '0000-00-00 00:00:00', 'calio', 'BLACK', '1234', 123, 'HA', 3),
('calender', '0000-00-00 00:00:00', '1', 'green', '12312', 9898, 'yooooooooooo', 4);

-- --------------------------------------------------------

--
-- Table structure for table `calender_scrap`
--

CREATE TABLE IF NOT EXISTS `calender_scrap` (
  `id` int(11) NOT NULL,
  `resuable` varchar(50) NOT NULL,
  `lamps_plates` varchar(50) NOT NULL,
  `total_scrap_generated` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(18, 'category 1'),
(19, 'category 2'),
(20, 'review catagory');

-- --------------------------------------------------------

--
-- Table structure for table `composition`
--

CREATE TABLE IF NOT EXISTS `composition` (
  `composition_id` int(11) NOT NULL,
  `quality_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `standard` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consumption_stock`
--

CREATE TABLE IF NOT EXISTS `consumption_stock` (
  `consumption_id` int(11) NOT NULL,
  `quality_id` varchar(40) DEFAULT NULL,
  `brand` varchar(50) NOT NULL,
  `quantity` varchar(11) DEFAULT NULL,
  `department_id` varchar(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `nepalidate` varchar(40) NOT NULL,
  `material_id` varchar(45) DEFAULT NULL,
  `m_id` int(11) NOT NULL,
  `dimension` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `shift` varchar(10) NOT NULL,
  `total` varchar(23) NOT NULL,
  `uid` int(11) NOT NULL,
  `inserted` int(11) NOT NULL DEFAULT '0',
  `mat_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumption_stock`
--

INSERT INTO `consumption_stock` (`consumption_id`, `quality_id`, `brand`, `quantity`, `department_id`, `date`, `nepalidate`, `material_id`, `m_id`, `dimension`, `color`, `shift`, `total`, `uid`, `inserted`, `mat_id`) VALUES
(2, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Scrap Plain', 31, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(3, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Scrap Unprinted', 30, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(4, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Scrap Printed', 29, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(5, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Scrap Laminated', 28, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(6, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Bought Scrap', 27, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(7, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Yellow 137k OP', 26, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(8, 'Base-UT', 'Carnival', '1111', 'mixing', '13-08-2015', '2072-04-08', 'Yellow 1322k IOP', 25, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(9, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Ultramarine Blue', 24, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(10, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Titanium DiOxide Rutile', 23, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(11, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Titanuim DiOxide Anatese', 22, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(12, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', ' Red Oxide 1814', 21, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(13, 'Base-UT', 'Carnival', '1111', 'mixing', '13-08-2015', '2072-04-08', 'Red 562', 20, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(14, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Orange 1475k IOP', 19, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(15, 'Base-UT', 'Carnival', '11', 'mixing', '13-08-2015', '2072-04-08', 'Middle Chrome 1322', 18, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(16, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Green 2724OP', 17, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(17, 'Base-UT', 'Carnival', '11', 'mixing', '13-08-2015', '2072-04-08', ' Blue 2764OP', 16, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(18, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Black N330', 15, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(19, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Gemesol GMS', 14, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(20, 'Base-UT', 'Carnival', '11', 'mixing', '13-08-2015', '2072-04-08', 'Finalux G3', 13, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(21, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Stearic Acid (SA)', 12, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(22, 'Base-UT', 'Carnival', '11', 'mixing', '13-08-2015', '2072-04-08', 'Lead Sterate (LS)', 11, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(23, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Calcium Stearate (CS)', 10, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(24, 'Base-UT', 'Carnival', '11', 'mixing', '13-08-2015', '2072-04-08', 'TBLS', 9, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(25, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', ' Stablizer 890', 8, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(26, 'Base-UT', 'Carnival', '11', 'mixing', '13-08-2015', '2072-04-08', 'Dolomite', 7, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(27, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Calcium Carbonate Uncoated', 6, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(28, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'Calcium Carbonate Coated', 5, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(29, 'Base-UT', 'Carnival', '11', 'mixing', '13-08-2015', '2072-04-08', 'EPOXY', 4, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(30, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'DOP DOP', 3, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(31, 'Base-UT', 'Carnival', '11', 'mixing', '13-08-2015', '2072-04-08', 'Chlorinated Paraffin Oil/Wax (CPO,CPW)', 2, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(32, 'Base-UT', 'Carnival', '1', 'mixing', '13-08-2015', '2072-04-08', 'PVC Resin - White', 1, '0.46 x 1950', 'Black', 'A', '2332', 332080, 1, 0),
(33, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Scrap CT', 32, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(34, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Scrap Plain', 31, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(35, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Scrap Unprinted', 30, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(36, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'Scrap Printed', 29, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(37, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Scrap Laminated', 28, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(38, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'Bought Scrap', 27, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(39, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Yellow 137k OP', 26, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(40, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'Yellow 1322k IOP', 25, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(41, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Ultramarine Blue', 24, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(42, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'Titanium DiOxide Rutile', 23, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(43, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Titanuim DiOxide Anatese', 22, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(44, 'Base-UT', 'Carnival', '33333', 'mixing', '13-08-2015', '2072-04-23', ' Red Oxide 1814', 21, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(45, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Red 562', 20, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(46, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'Orange 1475k IOP', 19, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(47, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Middle Chrome 1322', 18, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(48, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'Green 2724OP', 17, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(49, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', ' Blue 2764OP', 16, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(50, 'Base-UT', 'Carnival', '333', 'mixing', '13-08-2015', '2072-04-23', 'Black N330', 15, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(51, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Gemesol GMS', 14, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(52, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'Finalux G3', 13, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(53, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Stearic Acid (SA)', 12, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(54, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'Lead Sterate (LS)', 11, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(55, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Calcium Stearate (CS)', 10, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(56, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'TBLS', 9, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(57, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', ' Stablizer 890', 8, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(58, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'Dolomite', 7, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(59, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Calcium Carbonate Uncoated', 6, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(60, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'Calcium Carbonate Coated', 5, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(61, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'EPOXY', 4, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(62, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'DOP DOP', 3, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(63, 'Base-UT', 'Carnival', '3', 'mixing', '13-08-2015', '2072-04-23', 'Chlorinated Paraffin Oil/Wax (CPO,CPW)', 2, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(64, 'Base-UT', 'Carnival', '33', 'mixing', '13-08-2015', '2072-04-23', 'PVC Resin - White', 1, '0.46 x 1950', 'Black', 'A', '34146', 838592, 1, 0),
(65, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Scrap CT', 32, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(66, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Scrap Plain', 31, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(67, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Scrap Unprinted', 30, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(68, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Scrap Printed', 29, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(69, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Scrap Laminated', 28, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(70, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Bought Scrap', 27, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(71, 'Base-UT', 'Coral', '99', 'mixing', '13-08-2015', '2072-04-12', 'Yellow 137k OP', 26, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(72, 'Base-UT', 'Coral', '99', 'mixing', '13-08-2015', '2072-04-12', 'Yellow 1322k IOP', 25, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(73, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Ultramarine Blue', 24, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(74, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Titanium DiOxide Rutile', 23, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(75, 'Base-UT', 'Coral', '99', 'mixing', '13-08-2015', '2072-04-12', 'Titanuim DiOxide Anatese', 22, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(76, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', ' Red Oxide 1814', 21, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(77, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Red 562', 20, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(78, 'Base-UT', 'Coral', '99', 'mixing', '13-08-2015', '2072-04-12', 'Orange 1475k IOP', 19, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(79, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Middle Chrome 1322', 18, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(80, 'Base-UT', 'Coral', '99', 'mixing', '13-08-2015', '2072-04-12', 'Green 2724OP', 17, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(81, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', ' Blue 2764OP', 16, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(82, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Black N330', 15, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(83, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Gemesol GMS', 14, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(84, 'Base-UT', 'Coral', '99', 'mixing', '13-08-2015', '2072-04-12', 'Finalux G3', 13, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(85, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Stearic Acid (SA)', 12, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(86, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Lead Sterate (LS)', 11, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(87, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Calcium Stearate (CS)', 10, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(88, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'TBLS', 9, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(89, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', ' Stablizer 890', 8, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(90, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Dolomite', 7, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(91, 'Base-UT', 'Coral', '99', 'mixing', '13-08-2015', '2072-04-12', 'Calcium Carbonate Uncoated', 6, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(92, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Calcium Carbonate Coated', 5, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(93, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'EPOXY', 4, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(94, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'DOP DOP', 3, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(95, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'Chlorinated Paraffin Oil/Wax (CPO,CPW)', 2, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(96, 'Base-UT', 'Coral', '9', 'mixing', '13-08-2015', '2072-04-12', 'PVC Resin - White', 1, '0.48 x 1950', 'Pink', 'A', '918', 234893, 1, 0),
(97, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Scrap CT', 32, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(98, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Scrap Plain', 31, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(99, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Scrap Unprinted', 30, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(100, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Scrap Printed', 29, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(101, 'Base-UT', 'Neptune', '44', 'mixing', '13-08-2015', '2072-04-15', 'Scrap Laminated', 28, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(102, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Bought Scrap', 27, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(103, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Yellow 137k OP', 26, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(104, 'Base-UT', 'Neptune', '44', 'mixing', '13-08-2015', '2072-04-15', 'Yellow 1322k IOP', 25, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(105, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Ultramarine Blue', 24, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(106, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Titanium DiOxide Rutile', 23, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(107, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Titanuim DiOxide Anatese', 22, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(108, 'Base-UT', 'Neptune', '44', 'mixing', '13-08-2015', '2072-04-15', ' Red Oxide 1814', 21, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(109, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Red 562', 20, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(110, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Orange 1475k IOP', 19, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(111, 'Base-UT', 'Neptune', '44', 'mixing', '13-08-2015', '2072-04-15', 'Middle Chrome 1322', 18, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(112, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Green 2724OP', 17, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(113, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', ' Blue 2764OP', 16, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(114, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Black N330', 15, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(115, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Gemesol GMS', 14, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(116, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Finalux G3', 13, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(117, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Stearic Acid (SA)', 12, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(118, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Lead Sterate (LS)', 11, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(119, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Calcium Stearate (CS)', 10, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(120, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'TBLS', 9, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(121, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', ' Stablizer 890', 8, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(122, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Dolomite', 7, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(123, 'Base-UT', 'Neptune', '44', 'mixing', '13-08-2015', '2072-04-15', 'Calcium Carbonate Uncoated', 6, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(124, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Calcium Carbonate Coated', 5, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(125, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'EPOXY', 4, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(126, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'DOP DOP', 3, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(127, 'Base-UT', 'Neptune', '4', 'mixing', '13-08-2015', '2072-04-15', 'Chlorinated Paraffin Oil/Wax (CPO,CPW)', 2, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(128, 'Base-UT', 'Neptune', '44', 'mixing', '13-08-2015', '2072-04-15', 'PVC Resin - White', 1, '0.45 x 1950', 'Lt. Grey', 'A', '368', 386927, 1, 0),
(129, 'Base-UT', 'Coral', '8', 'mixing', '13-08-2015', '2072-04-02', 'Scrap CT', 32, '0.48 x 1950', 'Pink', 'A', '1296', 922087, 1, 0),
(162, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Scrap CT', 32, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(163, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Plain', 31, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(164, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Unprinted', 30, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(165, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Printed', 29, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(166, 'Base-UT', 'Venus', '555', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Laminated', 28, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(167, 'Base-UT', 'Venus', '55', 'mixing', '14-08-2015', '2072-04-31', 'Bought Scrap', 27, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(168, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Yellow 137k OP', 26, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(169, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Yellow 1322k IOP', 25, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(170, 'Base-UT', 'Venus', '55', 'mixing', '14-08-2015', '2072-04-31', 'Ultramarine Blue', 24, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(171, 'Base-UT', 'Venus', '55', 'mixing', '14-08-2015', '2072-04-31', 'Titanium DiOxide Rutile', 23, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(172, 'Base-UT', 'Venus', '55', 'mixing', '14-08-2015', '2072-04-31', 'Titanuim DiOxide Anatese', 22, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(173, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', ' Red Oxide 1814', 21, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(174, 'Base-UT', 'Venus', '55', 'mixing', '14-08-2015', '2072-04-31', 'Red 562', 20, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(175, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Orange 1475k IOP', 19, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(176, 'Base-UT', 'Venus', '55', 'mixing', '14-08-2015', '2072-04-31', 'Middle Chrome 1322', 18, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(177, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Green 2724OP', 17, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(178, 'Base-UT', 'Venus', '55', 'mixing', '14-08-2015', '2072-04-31', ' Blue 2764OP', 16, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(179, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Black N330', 15, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(180, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Gemesol GMS', 14, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(181, 'Base-UT', 'Venus', '55', 'mixing', '14-08-2015', '2072-04-31', 'Finalux G3', 13, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(182, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Stearic Acid (SA)', 12, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(183, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Lead Sterate (LS)', 11, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(184, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Stearate (CS)', 10, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(185, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'TBLS', 9, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(186, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', ' Stablizer 890', 8, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(187, 'Base-UT', 'Venus', '55', 'mixing', '14-08-2015', '2072-04-31', 'Dolomite', 7, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(188, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Carbonate Uncoated', 6, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(189, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Carbonate Coated', 5, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(190, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'EPOXY', 4, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(191, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'DOP DOP', 3, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(192, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'Chlorinated Paraffin Oil/Wax (CPO,CPW)', 2, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(193, 'Base-UT', 'Venus', '5', 'mixing', '14-08-2015', '2072-04-31', 'PVC Resin - White', 1, '0.46 x 2150', 'Black', 'A', '1165', 242881, 1, 0),
(226, 'Base-UT', 'Mini Calio', '4', 'mixing', '14-08-2015', '2072-04-31', 'PVC Resin - White', 1, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(227, 'Base-UT', 'Mini Calio', '5', 'mixing', '14-08-2015', '2072-04-31', 'Chlorinated Paraffin Oil/Wax (CPO,CPW)', 2, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(228, 'Base-UT', 'Mini Calio', '6', 'mixing', '14-08-2015', '2072-04-31', 'DOP DOP', 3, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(229, 'Base-UT', 'Mini Calio', '7', 'mixing', '14-08-2015', '2072-04-31', 'EPOXY', 4, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(230, 'Base-UT', 'Mini Calio', '8', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Carbonate Coated', 5, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(231, 'Base-UT', 'Mini Calio', '8', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Carbonate Uncoated', 6, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(232, 'Base-UT', 'Mini Calio', '6', 'mixing', '14-08-2015', '2072-04-31', 'Dolomite', 7, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(233, 'Base-UT', 'Mini Calio', '5', 'mixing', '14-08-2015', '2072-04-31', ' Stablizer 890', 8, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(234, 'Base-UT', 'Mini Calio', '5', 'mixing', '14-08-2015', '2072-04-31', 'TBLS', 9, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(235, 'Base-UT', 'Mini Calio', '6', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Stearate (CS)', 10, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(236, 'Base-UT', 'Mini Calio', '7', 'mixing', '14-08-2015', '2072-04-31', 'Lead Sterate (LS)', 11, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(237, 'Base-UT', 'Mini Calio', '7', 'mixing', '14-08-2015', '2072-04-31', 'Stearic Acid (SA)', 12, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(238, 'Base-UT', 'Mini Calio', '7', 'mixing', '14-08-2015', '2072-04-31', 'Finalux G3', 13, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(239, 'Base-UT', 'Mini Calio', '7', 'mixing', '14-08-2015', '2072-04-31', 'Gemesol GMS', 14, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(240, 'Base-UT', 'Mini Calio', '8', 'mixing', '14-08-2015', '2072-04-31', 'Black N330', 15, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(241, 'Base-UT', 'Mini Calio', '8', 'mixing', '14-08-2015', '2072-04-31', ' Blue 2764OP', 16, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(242, 'Base-UT', 'Mini Calio', '9', 'mixing', '14-08-2015', '2072-04-31', 'Green 2724OP', 17, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(243, 'Base-UT', 'Mini Calio', '0', 'mixing', '14-08-2015', '2072-04-31', 'Middle Chrome 1322', 18, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(244, 'Base-UT', 'Mini Calio', '0', 'mixing', '14-08-2015', '2072-04-31', 'Orange 1475k IOP', 19, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(245, 'Base-UT', 'Mini Calio', '7', 'mixing', '14-08-2015', '2072-04-31', 'Red 562', 20, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(246, 'Base-UT', 'Mini Calio', '7', 'mixing', '14-08-2015', '2072-04-31', ' Red Oxide 1814', 21, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(247, 'Base-UT', 'Mini Calio', '6', 'mixing', '14-08-2015', '2072-04-31', 'Titanuim DiOxide Anatese', 22, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(248, 'Base-UT', 'Mini Calio', '6', 'mixing', '14-08-2015', '2072-04-31', 'Titanium DiOxide Rutile', 23, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(249, 'Base-UT', 'Mini Calio', '5', 'mixing', '14-08-2015', '2072-04-31', 'Ultramarine Blue', 24, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(250, 'Base-UT', 'Mini Calio', '5', 'mixing', '14-08-2015', '2072-04-31', 'Yellow 1322k IOP', 25, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(251, 'Base-UT', 'Mini Calio', '6', 'mixing', '14-08-2015', '2072-04-31', 'Yellow 137k OP', 26, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(252, 'Base-UT', 'Mini Calio', '7', 'mixing', '14-08-2015', '2072-04-31', 'Bought Scrap', 27, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(253, 'Base-UT', 'Mini Calio', '7', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Laminated', 28, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(254, 'Base-UT', 'Mini Calio', '8', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Printed', 29, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(255, 'Base-UT', 'Mini Calio', '7', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Unprinted', 30, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(256, 'Base-UT', 'Mini Calio', '8', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Plain', 31, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(257, 'Base-UT', 'Mini Calio', '8', 'mixing', '14-08-2015', '2072-04-31', 'Scrap CT', 32, '0.56 x 2150', 'Pink', 'A', '200', 362252, 1, 0),
(258, 'Dull CT', 'Dull CT', '9', 'mixing', '14-08-2015', '2072-04-31', 'PVC Resin - White', 1, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(259, 'Dull CT', 'Dull CT', '8', 'mixing', '14-08-2015', '2072-04-31', 'Chlorinated Paraffin Oil/Wax (CPO,CPW)', 2, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(260, 'Dull CT', 'Dull CT', '7', 'mixing', '14-08-2015', '2072-04-31', 'DOP DOP', 3, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(261, 'Dull CT', 'Dull CT', '6', 'mixing', '14-08-2015', '2072-04-31', 'EPOXY', 4, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(262, 'Dull CT', 'Dull CT', '5', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Carbonate Coated', 5, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(263, 'Dull CT', 'Dull CT', '8', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Carbonate Uncoated', 6, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(264, 'Dull CT', 'Dull CT', '9', 'mixing', '14-08-2015', '2072-04-31', 'Dolomite', 7, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(265, 'Dull CT', 'Dull CT', '7', 'mixing', '14-08-2015', '2072-04-31', ' Stablizer 890', 8, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(266, 'Dull CT', 'Dull CT', '6', 'mixing', '14-08-2015', '2072-04-31', 'TBLS', 9, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(267, 'Dull CT', 'Dull CT', '5', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Stearate (CS)', 10, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(268, 'Dull CT', 'Dull CT', '5', 'mixing', '14-08-2015', '2072-04-31', 'Lead Sterate (LS)', 11, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(269, 'Dull CT', 'Dull CT', '0', 'mixing', '14-08-2015', '2072-04-31', 'Stearic Acid (SA)', 12, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(270, 'Dull CT', 'Dull CT', '4', 'mixing', '14-08-2015', '2072-04-31', 'Finalux G3', 13, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(271, 'Dull CT', 'Dull CT', '4', 'mixing', '14-08-2015', '2072-04-31', 'Gemesol GMS', 14, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(272, 'Dull CT', 'Dull CT', '4', 'mixing', '14-08-2015', '2072-04-31', 'Black N330', 15, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(273, 'Dull CT', 'Dull CT', '44', 'mixing', '14-08-2015', '2072-04-31', ' Blue 2764OP', 16, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(274, 'Dull CT', 'Dull CT', '4', 'mixing', '14-08-2015', '2072-04-31', 'Green 2724OP', 17, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(275, 'Dull CT', 'Dull CT', '5', 'mixing', '14-08-2015', '2072-04-31', 'Middle Chrome 1322', 18, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(276, 'Dull CT', 'Dull CT', '55', 'mixing', '14-08-2015', '2072-04-31', 'Orange 1475k IOP', 19, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(277, 'Dull CT', 'Dull CT', '5', 'mixing', '14-08-2015', '2072-04-31', 'Red 562', 20, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(278, 'Dull CT', 'Dull CT', '5', 'mixing', '14-08-2015', '2072-04-31', ' Red Oxide 1814', 21, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(279, 'Dull CT', 'Dull CT', '55', 'mixing', '14-08-2015', '2072-04-31', 'Titanuim DiOxide Anatese', 22, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(280, 'Dull CT', 'Dull CT', '4', 'mixing', '14-08-2015', '2072-04-31', 'Titanium DiOxide Rutile', 23, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(281, 'Dull CT', 'Dull CT', '3', 'mixing', '14-08-2015', '2072-04-31', 'Ultramarine Blue', 24, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(282, 'Dull CT', 'Dull CT', '3', 'mixing', '14-08-2015', '2072-04-31', 'Yellow 1322k IOP', 25, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(283, 'Dull CT', 'Dull CT', '2', 'mixing', '14-08-2015', '2072-04-31', 'Yellow 137k OP', 26, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(284, 'Dull CT', 'Dull CT', '2', 'mixing', '14-08-2015', '2072-04-31', 'Bought Scrap', 27, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(285, 'Dull CT', 'Dull CT', '1', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Laminated', 28, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(286, 'Dull CT', 'Dull CT', '2', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Printed', 29, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(287, 'Dull CT', 'Dull CT', '22', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Unprinted', 30, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(288, 'Dull CT', 'Dull CT', '2', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Plain', 31, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(289, 'Dull CT', 'Dull CT', '2', 'mixing', '14-08-2015', '2072-04-31', 'Scrap CT', 32, '0.10 x 2150', 'Clear', 'A', '303', 522221, 0, 0),
(290, 'Base-UT', 'Carnival', '7', 'mixing', '14-08-2015', '2072-04-31', 'PVC Resin - White', 1, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(291, 'Base-UT', 'Carnival', '8', 'mixing', '14-08-2015', '2072-04-31', 'Chlorinated Paraffin Oil/Wax (CPO,CPW)', 2, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(292, 'Base-UT', 'Carnival', '7', 'mixing', '14-08-2015', '2072-04-31', 'DOP DOP', 3, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(293, 'Base-UT', 'Carnival', '7', 'mixing', '14-08-2015', '2072-04-31', 'EPOXY', 4, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(294, 'Base-UT', 'Carnival', '6', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Carbonate Coated', 5, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(295, 'Base-UT', 'Carnival', '65', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Carbonate Uncoated', 6, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(296, 'Base-UT', 'Carnival', '5', 'mixing', '14-08-2015', '2072-04-31', 'Dolomite', 7, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(297, 'Base-UT', 'Carnival', '4', 'mixing', '14-08-2015', '2072-04-31', ' Stablizer 890', 8, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(298, 'Base-UT', 'Carnival', '0', 'mixing', '14-08-2015', '2072-04-31', 'TBLS', 9, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(299, 'Base-UT', 'Carnival', '4', 'mixing', '14-08-2015', '2072-04-31', 'Calcium Stearate (CS)', 10, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(300, 'Base-UT', 'Carnival', '5', 'mixing', '14-08-2015', '2072-04-31', 'Lead Sterate (LS)', 11, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(301, 'Base-UT', 'Carnival', '6', 'mixing', '14-08-2015', '2072-04-31', 'Stearic Acid (SA)', 12, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(302, 'Base-UT', 'Carnival', '7', 'mixing', '14-08-2015', '2072-04-31', 'Finalux G3', 13, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(303, 'Base-UT', 'Carnival', '7', 'mixing', '14-08-2015', '2072-04-31', 'Gemesol GMS', 14, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(304, 'Base-UT', 'Carnival', '8', 'mixing', '14-08-2015', '2072-04-31', 'Black N330', 15, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(305, 'Base-UT', 'Carnival', '8', 'mixing', '14-08-2015', '2072-04-31', ' Blue 2764OP', 16, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(306, 'Base-UT', 'Carnival', '9', 'mixing', '14-08-2015', '2072-04-31', 'Green 2724OP', 17, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(307, 'Base-UT', 'Carnival', '0', 'mixing', '14-08-2015', '2072-04-31', 'Middle Chrome 1322', 18, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(308, 'Base-UT', 'Carnival', '0', 'mixing', '14-08-2015', '2072-04-31', 'Orange 1475k IOP', 19, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(309, 'Base-UT', 'Carnival', '9', 'mixing', '14-08-2015', '2072-04-31', 'Red 562', 20, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(310, 'Base-UT', 'Carnival', '8', 'mixing', '14-08-2015', '2072-04-31', ' Red Oxide 1814', 21, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(311, 'Base-UT', 'Carnival', '7', 'mixing', '14-08-2015', '2072-04-31', 'Titanuim DiOxide Anatese', 22, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(312, 'Base-UT', 'Carnival', '6', 'mixing', '14-08-2015', '2072-04-31', 'Titanium DiOxide Rutile', 23, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(313, 'Base-UT', 'Carnival', '5', 'mixing', '14-08-2015', '2072-04-31', 'Ultramarine Blue', 24, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(314, 'Base-UT', 'Carnival', '54', 'mixing', '14-08-2015', '2072-04-31', 'Yellow 1322k IOP', 25, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(315, 'Base-UT', 'Carnival', '4', 'mixing', '14-08-2015', '2072-04-31', 'Yellow 137k OP', 26, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(316, 'Base-UT', 'Carnival', '5', 'mixing', '14-08-2015', '2072-04-31', 'Bought Scrap', 27, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(317, 'Base-UT', 'Carnival', '5', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Laminated', 28, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(318, 'Base-UT', 'Carnival', '6', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Printed', 29, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(319, 'Base-UT', 'Carnival', '7', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Unprinted', 30, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(320, 'Base-UT', 'Carnival', '8', 'mixing', '14-08-2015', '2072-04-31', 'Scrap Plain', 31, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(321, 'Base-UT', 'Carnival', '8', 'mixing', '14-08-2015', '2072-04-31', 'Scrap CT', 32, '0.46 x 1950', 'Black', 'A', '295', 933551, 0, 0),
(322, NULL, '', '0', 'mix', NULL, '2072-04-25', NULL, 45, NULL, NULL, '', '', 0, 0, 0),
(323, 'Base-UT', 'Carnival', '0', 'asd', NULL, '2072-04-08', NULL, 50, '0.46 x 1950', 'Black', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dailyrawmaterialprinting_report`
--

CREATE TABLE IF NOT EXISTS `dailyrawmaterialprinting_report` (
  `id` int(10) unsigned NOT NULL,
  `cyclo` int(11) DEFAULT NULL,
  `mek` int(11) DEFAULT NULL,
  `toluene` int(11) DEFAULT NULL,
  `stabalizer890` int(11) DEFAULT NULL,
  `pvc_regin` int(11) DEFAULT NULL,
  `finawax_vl` int(11) DEFAULT NULL,
  `black _N_330` int(11) DEFAULT NULL,
  `blue_2764` int(11) DEFAULT NULL,
  `green_2764` int(11) DEFAULT NULL,
  `orange_1475K` int(11) DEFAULT NULL,
  `red_562` int(11) DEFAULT NULL,
  `silver_paste` int(11) DEFAULT NULL,
  `TI02_A` int(11) DEFAULT NULL,
  `yellow_137k` int(11) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  `other` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dailyrawmaterialprinting_report`
--

INSERT INTO `dailyrawmaterialprinting_report` (`id`, `cyclo`, `mek`, `toluene`, `stabalizer890`, `pvc_regin`, `finawax_vl`, `black _N_330`, `blue_2764`, `green_2764`, `orange_1475K`, `red_562`, `silver_paste`, `TI02_A`, `yellow_137k`, `gold`, `other`, `total`) VALUES
(1, 23, 23, 13, NULL, 22, NULL, NULL, NULL, 22, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'store'),
(3, 'mixing');

-- --------------------------------------------------------

--
-- Table structure for table `department_stock`
--

CREATE TABLE IF NOT EXISTS `department_stock` (
  `id` int(11) NOT NULL,
  `department_id` varchar(20) NOT NULL DEFAULT '0',
  `material_id` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `quantity` varchar(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_stock`
--

INSERT INTO `department_stock` (`id`, `department_id`, `material_id`, `date`, `quantity`) VALUES
(1, 'mixing', 'PVCResin', '28-07-2015', '-62657'),
(2, 'mixing', 'Chorinated Paraffin ', NULL, '100'),
(3, 'mixing', 'DOP', '03-08-2015', '-17897.5'),
(4, 'mixing', 'EPOXY', '14-08-2015', '-1856.4'),
(5, 'mixing', 'Calcium Carbonated C', NULL, '100'),
(6, 'mixing', 'Calcium Carbonated U', NULL, '100'),
(7, 'mixing', 'Dolomite', '14-08-2015', '-224133'),
(8, 'mixing', ' Stablizer 890', '14-08-2015', '-2598'),
(9, 'mixing', 'TBLS', '14-08-2015', '-2108.6'),
(10, 'mixing', 'Calcium Stearate CS', '30-07-2015', '-127.4'),
(11, 'mixing', 'Lead Sterate LS', '30-07-2015', '-196.4'),
(12, 'mixing', 'Stearic Acid', '30-07-2015', '-331.2'),
(13, 'mixing', 'Finalux G3', '14-08-2015', '-544.8'),
(14, 'mixing', 'Gemesol GMS', '14-08-2015', '-425.2'),
(15, 'mixing', 'Black N330', '14-08-2015', '-495.031'),
(16, 'mixing', ' Blue 2764OP', '14-08-2015', '-246.77'),
(17, 'mixing', 'Green 2724OP', '14-08-2015', '-3474.575'),
(18, 'mixing', 'Middle Chrome 1322', '14-08-2015', '-228.67'),
(19, 'mixing', 'Orange 1475k IOP', '14-08-2015', '-362.784'),
(20, 'mixing', 'Red 562', '14-08-2015', '-1233.593'),
(21, 'mixing', ' Red Oxide 1814', '14-08-2015', '-33456.16'),
(22, 'mixing', 'Titanuim DiOxide Ana', NULL, '100'),
(23, 'mixing', 'Titanium DiOxide Rut', NULL, '100'),
(24, 'mixing', 'Ultramarine Blue', '14-08-2015', '-1114.86'),
(25, 'mixing', 'Yellow 1322k IOP', '14-08-2015', '-1432.013'),
(26, 'mixing', 'yellow 137k OP', '14-08-2015', '-91'),
(27, 'mixing', 'Bought Scrap', '14-08-2015', '-21049'),
(28, 'mixing', 'Scrap Laminated', '14-08-2015', '-139067'),
(29, 'mixing', 'Scrap Printed', '14-08-2015', '-16990'),
(30, 'mixing', 'Scrap Unprinted', '14-08-2015', '-5914'),
(31, 'mixing', 'Scrap Plan', '16-07-2015', '-33509'),
(32, 'mixing', 'Scrap CT', '14-08-2015', '-296');

-- --------------------------------------------------------

--
-- Table structure for table `dimension`
--

CREATE TABLE IF NOT EXISTS `dimension` (
  `id` int(11) NOT NULL,
  `dimension` varchar(45) DEFAULT NULL,
  `base` varchar(45) DEFAULT NULL,
  `quality` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimension`
--

INSERT INTO `dimension` (`id`, `dimension`, `base`, `quality`, `color`) VALUES
(1, '0.50 x 2150', 'BaseUT', 'calio', 'green '),
(2, '0.50 x 2150', 'BaseUT', '', 'green'),
(3, '0.50 x 2150', 'BaseMT', '', '123-123-123'),
(4, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factory_halt`
--

CREATE TABLE IF NOT EXISTS `factory_halt` (
  `id` int(11) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `department_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factory_halt`
--

INSERT INTO `factory_halt` (`id`, `date`, `status`, `reason`, `department_id`) VALUES
(1, '2014-12-12 00:00:00', 'halt', 'electrical', NULL),
(2, 'Thu May 28 2015 15:42:59 GMT+0545 (NPT)', 'halts', 'workers strict', NULL),
(3, 'Thu May 28 2015 15:50:26 GMT+0545 (NPT)', 'closed', 'holiday', 'mixing'),
(4, 'Thu May 28 2015 15:53:20 GMT+0545 (NPT)', 'halts', 'machine damaged', 'mixing'),
(5, 'Fri May 29 2015 13:29:59 GMT+0545 (NPT)', 'halts', '232', 'mixing'),
(6, 'Fri May 29 2015 13:30:56 GMT+0545 (NPT)', 'halts', '123', 'mixing'),
(7, 'Wed Jun 03 2015 10:22:54 GMT+0545 (NPT)', 'closed', 'machine halts', 'calender'),
(8, 'Sun Jun 28 2015 10:40:12 GMT+0545 (NPT)', 'runnding', 'current', 'mixing');

-- --------------------------------------------------------

--
-- Table structure for table `input_output`
--

CREATE TABLE IF NOT EXISTS `input_output` (
  `id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `to_day` int(11) DEFAULT NULL,
  `to_month` int(11) DEFAULT NULL,
  `to_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE IF NOT EXISTS `issue` (
  `issue_id` int(11) NOT NULL,
  `material_id` varchar(11) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `department_id` varchar(50) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `issued_to` varchar(100) DEFAULT NULL,
  `issued_by` varchar(100) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laminating_reason`
--

CREATE TABLE IF NOT EXISTS `laminating_reason` (
  `id` int(11) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laminating_reason`
--

INSERT INTO `laminating_reason` (`id`, `reason`, `type`) VALUES
(3, 'Color Line', 'Printed '),
(6, 'Design Refitting', 'Printed '),
(8, 'Air Pressure Problem', 'Printed '),
(13, 'Fish Eye', 'Unprinted'),
(14, 'Pin Hole and Big Hole', 'Unprinted'),
(15, 'Shortage', 'Unprinted'),
(16, 'Center Jali Line', 'Unprinted'),
(18, 'Pipe Crease', 'Unprinted'),
(19, 'Side Cutting Not Proper', 'Unprinted'),
(20, 'Color Variation', 'Unprinted'),
(23, 'Others', 'Printed '),
(24, 'Color Matching', 'Printed '),
(25, 'Design Setting', 'Printed '),
(26, 'Blade Polish Color Line', 'Printed '),
(27, 'Crease and Holes', 'Printed '),
(28, 'Fish Eye Print', 'Printed '),
(30, 'Color Refilling', 'Printed '),
(31, 'Color Shade Problem', 'Printed '),
(32, 'Power Cut ', 'Printed '),
(34, 'Air Pressure Leakage', 'Printed '),
(35, 'Joint', 'Printed '),
(36, 'Lumps', 'Printed '),
(38, 'Pipe Crease', 'Printed '),
(39, 'Side Cutting Not Proper', 'Printed '),
(40, 'Rubber Roll', 'Printed '),
(41, 'White Dot', 'Printed '),
(42, 'Crease and Holes', 'Unprinted'),
(43, 'Width Shortage', 'Unprinted'),
(44, 'Lumps', 'Unprinted'),
(47, 'Calendar Shortage', 'Unprinted'),
(49, 'Heavy Gauge', 'Unprinted'),
(52, 'Color Shade Problem', 'Unprinted'),
(53, 'Others', 'Unprinted'),
(54, 'Joint', 'Unprinted'),
(55, 'White Dot', 'Unprinted');

-- --------------------------------------------------------

--
-- Table structure for table `laminating_reason_other`
--

CREATE TABLE IF NOT EXISTS `laminating_reason_other` (
  `id` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `reason` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laminating_reason_other`
--

INSERT INTO `laminating_reason_other` (`id`, `date`, `reason`) VALUES
(1, '17-06-2015', 'gyg'),
(2, '17-06-2015', 'this is thi'),
(3, '17-06-2015', 'sdhfsagh'),
(4, '17-06-2015', 'ret'),
(5, '17-06-2015', 'asdas'),
(6, '17-06-2015', 'dqw'),
(7, '17-06-2015', 'xxxx'),
(8, '17-06-2015', 'sdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `leminating_colorcode`
--

CREATE TABLE IF NOT EXISTS `leminating_colorcode` (
  `color_id` int(11) NOT NULL,
  `color_code` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `machine_loss`
--

CREATE TABLE IF NOT EXISTS `machine_loss` (
  `id` int(11) NOT NULL,
  `loss_type` varchar(100) DEFAULT NULL,
  `loss_time` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE IF NOT EXISTS `materials` (
  `material_id` int(11) NOT NULL,
  `material_name` varchar(100) DEFAULT NULL,
  `material_state` varchar(100) DEFAULT NULL,
  `category_id` varchar(20) DEFAULT NULL,
  `vender_id` varchar(20) DEFAULT NULL,
  `measuring_unit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`material_id`, `material_name`, `material_state`, `category_id`, `vender_id`, `measuring_unit`) VALUES
(34, 'material 1', 'solid', 'category 1', 'some vendor', 'kg'),
(35, 'material 1123', 'solid', 'category 1', 'some vendor', 'jj'),
(36, 'tauline', 'solid', 'category 2', 'form style', 'kgs');

--
-- Triggers `materials`
--
DELIMITER $$
CREATE TRIGGER `materials_AINS` AFTER INSERT ON `materials`
 FOR EACH ROW begin
insert into stock(material_id) select materials.material_name from materials 
ORDER BY material_name DESC LIMIT 1;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `mixing_base`
--

CREATE TABLE IF NOT EXISTS `mixing_base` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mixing_base`
--

INSERT INTO `mixing_base` (`id`, `name`) VALUES
(1, 'BaseUT'),
(2, 'BaseOT'),
(3, 'BaseMT'),
(4, 'PrintFilm'),
(5, 'CT');

-- --------------------------------------------------------

--
-- Table structure for table `mixing_cpar`
--

CREATE TABLE IF NOT EXISTS `mixing_cpar` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `shift` varchar(100) DEFAULT NULL,
  `supervisor_name` varchar(100) DEFAULT NULL,
  `operator_name` varchar(100) DEFAULT NULL,
  `quality` varchar(100) DEFAULT NULL,
  `noofcharge` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `material_id` varchar(50) DEFAULT NULL,
  `standard` varchar(100) DEFAULT NULL,
  `blenderquality` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mixing_cpar`
--

INSERT INTO `mixing_cpar` (`id`, `date`, `shift`, `supervisor_name`, `operator_name`, `quality`, `noofcharge`, `color`, `material_id`, `standard`, `blenderquality`) VALUES
(1, '2015-12-12 00:00:00', 'A', 'yubarj', 'hari', 'galexy', '22', 'reb', NULL, '23', NULL),
(2, '0000-00-00 00:00:00', 'B', 'yubraj', 'hari', 'galexy', '22', 'reb', '1', '23', '24'),
(3, '0000-00-00 00:00:00', 'B', 'haru', 'yubraj', '123', '22', 'green', '2', '22', '23'),
(4, '0000-00-00 00:00:00', 'B', 'yuy', 'fyf', '123', '22', 'gh', '2', 'fh', '');

-- --------------------------------------------------------

--
-- Table structure for table `mixing_materials`
--

CREATE TABLE IF NOT EXISTS `mixing_materials` (
  `id` int(11) NOT NULL COMMENT '	',
  `name` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mixing_materials`
--

INSERT INTO `mixing_materials` (`id`, `name`, `department`) VALUES
(1, 'PVC Resin - White', 'mixing'),
(2, 'Chlorinated Paraffin Oil/Wax (CPO,CPW)', 'mixing'),
(3, 'DOP DOP', 'mixing'),
(4, 'EPOXY', 'mixing'),
(5, 'Calcium Carbonate Coated', 'mixing'),
(6, 'Calcium Carbonate Uncoated', 'mixing'),
(7, 'Dolomite', 'mixing'),
(8, ' Stablizer 890', 'mixing'),
(9, 'TBLS', 'mixing'),
(10, 'Calcium Stearate (CS)', 'mixing'),
(11, 'Lead Sterate (LS)', 'mixing'),
(12, 'Stearic Acid (SA)', 'mixing'),
(13, 'Finalux G3', 'mixing'),
(14, 'Gemesol GMS', 'mixing'),
(15, 'Black N330', 'mixing'),
(16, ' Blue 2764OP', 'mixing'),
(17, 'Green 2724OP', 'mixing'),
(18, 'Middle Chrome 1322', 'mixing'),
(19, 'Orange 1475k IOP', 'mixing'),
(20, 'Red 562', 'mixing'),
(21, ' Red Oxide 1814', 'mixing'),
(22, 'Titanuim DiOxide Anatese', 'mixing'),
(23, 'Titanium DiOxide Rutile', 'mixing'),
(24, 'Ultramarine Blue', 'mixing'),
(25, 'Yellow 1322k IOP', 'mixing'),
(26, 'Yellow 137k OP', 'mixing'),
(27, 'Bought Scrap', 'mixing'),
(28, 'Scrap Laminated', 'mixing'),
(29, 'Scrap Printed', 'mixing'),
(30, 'Scrap Unprinted', 'mixing'),
(31, 'Scrap Plain', 'mixing'),
(32, 'Scrap CT', 'mixing'),
(50, 'adass', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `mixing_product`
--

CREATE TABLE IF NOT EXISTS `mixing_product` (
  `id` int(11) NOT NULL COMMENT '	',
  `quality` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `dimension` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patterns`
--

CREATE TABLE IF NOT EXISTS `patterns` (
  `pattern_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `quality_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `printing_data`
--

CREATE TABLE IF NOT EXISTS `printing_data` (
  `id` int(11) NOT NULL,
  `dimension` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `color_code` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printing_data`
--

INSERT INTO `printing_data` (`id`, `dimension`, `color`, `color_code`) VALUES
(2, '0.07 x 1950', 'Biscuit', '102-701-009'),
(3, '0.07 x 1950', 'Biscuit', '204-701-009'),
(4, '0.07 x 1950', 'Black', '101-701-050'),
(5, '0.07 x 1950', 'Brick', '211-701-082'),
(6, '0.07 x 1950', 'Brick', '212-701-082'),
(7, '0.07 x 1950', 'Buff', '304-701-082'),
(8, '0.07 x 1950', 'Cream', '205-701-061'),
(9, '0.07 x 1950', 'Cream', '205-701-062'),
(10, '0.07 x 1950', 'Cream', '207-701-045'),
(11, '0.07 x 1950', 'Cream', '301-701-061'),
(12, '0.07 x 1950', 'Cream', '305-701-019'),
(13, '0.07 x 1950', 'Cream', '305-701-061'),
(14, '0.07 x 1950', 'Cream', '309-701-009'),
(15, '0.07 x 1950', 'Cream', '309-701-061'),
(16, '0.07 x 1950', 'Cream', '309-701-062'),
(17, '0.07 x 1950', 'Cream', '312-701-045'),
(18, '0.07 x 1950', 'Cream', '312-701-062'),
(19, '0.07 x 1950', 'Cream', '312-701-067'),
(20, '0.07 x 1950', 'Cream', '313-701-061'),
(21, '0.07 x 1950', 'Cream', '314-701-019'),
(22, '0.07 x 1950', 'Cream', '314-701-060'),
(23, '0.07 x 1950', 'Cream', '323-701-019'),
(24, '0.07 x 1950', 'Cream', '401-701-075'),
(25, '0.07 x 1950', 'Cream', '405-701-019'),
(26, '0.07 x 1950', 'Fawn', '301-701-074'),
(27, '0.07 x 1950', 'Fawn', '305-701-076'),
(28, '0.07 x 1950', 'Fawn', '310-701-066'),
(29, '0.07 x 1950', 'Marron', '104-701-057'),
(30, '0.07 x 1950', 'Marron', '401-701-057'),
(31, '0.07 x 1950', 'New Rust', '207-701-082'),
(32, '0.07 x 1950', 'Orange', '207-701-061'),
(33, '0.07 x 1950', 'Rust', '315-701-056'),
(34, '0.07 x 1950', 'Rust', '316-701-004'),
(35, '0.07 x 1950', 'White', '101-701-022'),
(36, '0.07 x 1950', 'White', '101-701-045'),
(37, '0.07 x 1950', 'White', '102-701-004'),
(38, '0.07 x 1950', 'White', '204-701-002'),
(39, '0.07 x 1950', 'White', '204-701-004'),
(40, '0.07 x 1950', 'White', '204-701-009'),
(41, '0.07 x 1950', 'White', '204-701-061'),
(42, '0.07 x 1950', 'White', '206-701-002'),
(43, '0.07 x 1950', 'White', '206-701-008'),
(44, '0.07 x 1950', 'White', '206-701-045'),
(45, '0.07 x 1950', 'White', '207-701-045'),
(46, '0.07 x 1950', 'White', '209-701-002'),
(47, '0.07 x 1950', 'White', '209-701-008'),
(48, '0.07 x 1950', 'White', '209-701-045'),
(49, '0.07 x 1950', 'White', '210-701-001'),
(50, '0.07 x 1950', 'White', '210-701-002'),
(51, '0.07 x 1950', 'White', '210-701-045'),
(52, '0.07 x 1950', 'White', '211-701-045'),
(53, '0.07 x 1950', 'White', '211-701-061'),
(54, '0.07 x 1950', 'White', '212-701-001'),
(55, '0.07 x 1950', 'White', '212-701-061'),
(56, '0.07 x 1950', 'White', '213-701-002'),
(57, '0.07 x 1950', 'White', '213-701-005'),
(58, '0.07 x 1950', 'White', '213-701-008'),
(59, '0.07 x 1950', 'White', '228-701-001'),
(60, '0.07 x 1950', 'White', '228-701-003'),
(61, '0.07 x 1950', 'White', '228-701-045'),
(62, '0.07 x 1950', 'White', '301-701-002'),
(63, '0.07 x 1950', 'White', '301-701-061'),
(64, '0.07 x 1950', 'White', '305-701-019'),
(65, '0.07 x 1950', 'White', '305-701-061'),
(66, '0.07 x 1950', 'White', '305-701-076'),
(67, '0.07 x 1950', 'White', '310-701-002'),
(68, '0.07 x 1950', 'White', '314-701-019'),
(69, '0.07 x 1950', 'White', '314-701-060'),
(70, '0.07 x 1950', 'White', '314-701-067'),
(71, '0.07 x 1950', 'White', '315-701-001'),
(72, '0.07 x 1950', 'White', '315-701-011'),
(73, '0.07 x 1950', 'White', '316-701-002'),
(74, '0.07 x 1950', 'White', '316-701-045'),
(75, '0.07 x 1950', 'White', '318-701-001'),
(76, '0.07 x 1950', 'White', '318-701-002'),
(77, '0.07 x 1950', 'White', '323-701-001'),
(78, '0.07 x 1950', 'White', '323-701-002'),
(79, '0.07 x 1950', 'White', '323-701-019'),
(80, '0.07 x 1950', 'White', '330-701-002'),
(81, '0.07 x 1950', 'White', '330-701-003'),
(82, '0.07 x 1950', 'White', '401-701-075'),
(83, '0.07 x 1950', 'White', '404-701-002'),
(84, '0.07 x 1950', 'White', '404-701-003'),
(85, '0.07 x 1950', 'White', '404-701-011'),
(86, '0.07 x 1950', 'White', '405-701-005'),
(87, '0.07 x 1950', 'White', '405-701-066'),
(88, '0.07 x 1950', 'White', '406-701-002'),
(89, '0.07 x 1950', 'White', '406-701-003'),
(90, '0.07 x 1950', 'White', '406-701-045'),
(91, '0.07 x 1950', 'White', '407-701-007'),
(92, '0.07 x 2150', 'Biscuit', '102-701-009'),
(93, '0.07 x 2150', 'Biscuit', '204-701-009'),
(94, '0.07 x 2150', 'Black', '101-701-050'),
(95, '0.07 x 2150', 'Black ', 'Black '),
(96, '0.07 x 2150', 'Cream', '103-701-062'),
(97, '0.07 x 2150', 'Cream', '205-701-061'),
(98, '0.07 x 2150', 'Cream', '205-701-062'),
(99, '0.07 x 2150', 'Cream', '205-701-067'),
(100, '0.07 x 2150', 'Cream', '301-701-061'),
(101, '0.07 x 2150', 'Cream', '305-701-061'),
(102, '0.07 x 2150', 'Cream', '310-701-009'),
(103, '0.07 x 2150', 'Cream', '312-701-009'),
(104, '0.07 x 2150', 'Cream', '312-701-084'),
(105, '0.07 x 2150', 'Cream', '313-701-028'),
(106, '0.07 x 2150', 'Cream', '313-701-073'),
(107, '0.07 x 2150', 'Cream', '314-701-060'),
(108, '0.07 x 2150', 'Cream', '314-701-060'),
(109, '0.07 x 2150', 'Cream', '314-701-061'),
(110, '0.07 x 2150', 'Cream', '314-701-067'),
(111, '0.07 x 2150', 'Cream', '314-701-067'),
(112, '0.07 x 2150', 'Cream', '314-701-082'),
(113, '0.07 x 2150', 'Cream', '325-701-061'),
(114, '0.07 x 2150', 'Cream', '325-701-067'),
(115, '0.07 x 2150', 'Cream', '329-701-061'),
(116, '0.07 x 2150', 'Cream', '329-701-067'),
(117, '0.07 x 2150', 'Cream', '407-701-004'),
(118, '0.07 x 2150', 'Cream', '407-701-007'),
(119, '0.07 x 2150', 'Fawn', '301-701-074'),
(120, '0.07 x 2150', 'Fawn', '305-701-076'),
(121, '0.07 x 2150', 'Fawn', '310-701-066'),
(122, '0.07 x 2150', 'Fawn', '313-701-061'),
(123, '0.07 x 2150', 'Fawn', '313-701-082'),
(124, '0.07 x 2150', 'Fawn', '329-701-082'),
(125, '0.07 x 2150', 'Marron', '202-701-005'),
(126, '0.07 x 2150', 'Marron', '202-701-056'),
(127, '0.07 x 2150', 'Pure Black', 'Pure Black'),
(128, '0.07 x 2150', 'Pure White', 'Pure White'),
(129, '0.07 x 2150', 'White', '101-701-004'),
(130, '0.07 x 2150', 'White', '101-701-009'),
(131, '0.07 x 2150', 'White', '101-701-022'),
(132, '0.07 x 2150', 'White', '101-701-045'),
(133, '0.07 x 2150', 'White', '102-701-004'),
(134, '0.07 x 2150', 'White', '103-701-005'),
(135, '0.07 x 2150', 'White', '201-701-005'),
(136, '0.07 x 2150', 'White', '201-701-045'),
(137, '0.07 x 2150', 'White', '204-701-002'),
(138, '0.07 x 2150', 'White', '204-701-004'),
(139, '0.07 x 2150', 'White', '204-701-075'),
(140, '0.07 x 2150', 'White', '205-701-061'),
(141, '0.07 x 2150', 'White', '205-701-062'),
(142, '0.07 x 2150', 'White', '205-701-067'),
(143, '0.07 x 2150', 'White', '213-701-002'),
(144, '0.07 x 2150', 'White', '213-701-005'),
(145, '0.07 x 2150', 'White', '213-701-008'),
(146, '0.07 x 2150', 'White', '301-701-002'),
(147, '0.07 x 2150', 'White', '301-701-061'),
(148, '0.07 x 2150', 'White', '305-701-019'),
(149, '0.07 x 2150', 'White', '305-701-022'),
(150, '0.07 x 2150', 'White', '305-701-061'),
(151, '0.07 x 2150', 'White', '305-701-073'),
(152, '0.07 x 2150', 'White', '310-701-002'),
(153, '0.07 x 2150', 'White', '310-701-009'),
(154, '0.07 x 2150', 'White', '312-701-005'),
(155, '0.07 x 2150', 'White', '312-701-009'),
(156, '0.07 x 2150', 'White', '312-701-084'),
(157, '0.07 x 2150', 'White', '313-701-028'),
(158, '0.07 x 2150', 'White', '313-701-073'),
(159, '0.07 x 2150', 'White', '314-701-060'),
(160, '0.07 x 2150', 'White', '314-701-067'),
(161, '0.07 x 2150', 'White', '322-701-002'),
(162, '0.07 x 2150', 'White', '322-701-003'),
(163, '0.07 x 2150', 'White', '322-701-074'),
(164, '0.07 x 2150', 'White', '323-701-003'),
(165, '0.07 x 2150', 'White', '325-701-067'),
(166, '0.07 x 2150', 'White', '325-701-082'),
(167, '0.07 x 2150', 'White', '329-701-061'),
(168, '0.07 x 2150', 'White', '329-701-067'),
(169, '0.07 x 2150', 'White', '407-701-004'),
(170, '0.07 x 2150', 'White', '407-701-007'),
(171, '0.07 x 2150', 'White', 'White'),
(172, '0.10 x 2150', 'Biscuit', '306-701-060'),
(173, '0.10 x 2150', 'Buff', '304-701-082'),
(174, '0.10 x 2150', 'Buff', '304-703-082'),
(175, '0.10 x 2150', 'Buff', '306-703-082'),
(176, '0.10 x 2150', 'Buff', '321-701-082'),
(177, '0.10 x 2150', 'Cream', '304-701-067'),
(178, '0.10 x 2150', 'Cream', '305-701-022'),
(179, '0.10 x 2150', 'Cream', '305-701-061'),
(180, '0.10 x 2150', 'Cream', '306-701-062'),
(181, '0.10 x 2150', 'Cream', '306-701-067'),
(182, '0.10 x 2150', 'Cream', '307-701-022'),
(183, '0.10 x 2150', 'Cream', '307-701-075'),
(184, '0.10 x 2150', 'Cream', '321-701-022'),
(185, '0.10 x 2150', 'Cream', '321-701-061'),
(186, '0.10 x 2150', 'Cream', '321-701-061'),
(187, '0.10 x 2150', 'Cream', '321-701-082'),
(188, '0.10 x 2150', 'Cream', '501-701-004'),
(189, '0.10 x 2150', 'Cream', '501-701-007'),
(190, '0.10 x 2150', 'Cream', '501-703-004'),
(191, '0.10 x 2150', 'Cream', '501-703-007'),
(192, '0.10 x 2150', 'Fawn', '304-701-061'),
(193, '0.10 x 2150', 'Fawn', '319-701-003'),
(194, '0.10 x 2150', 'Fawn', '319-701-009'),
(195, '0.10 x 2150', 'Fawn', '319-701-022'),
(196, '0.10 x 2150', 'Fawn', '319-701-067'),
(197, '0.10 x 2150', 'White', '304-701-022'),
(198, '0.10 x 2150', 'White', '304-701-060'),
(199, '0.10 x 2150', 'White', '304-701-061'),
(200, '0.10 x 2150', 'White', '304-701-076'),
(201, '0.10 x 2150', 'White', '304-703-022'),
(202, '0.10 x 2150', 'White', '304-703-060'),
(203, '0.10 x 2150', 'White', '304-703-061'),
(204, '0.10 x 2150', 'White', '304-703-067'),
(205, '0.10 x 2150', 'White', '305-703-067'),
(206, '0.10 x 2150', 'White', '306-703-019'),
(207, '0.10 x 2150', 'White', '306-703-022'),
(208, '0.10 x 2150', 'White', '306-703-067'),
(209, '0.10 x 2150', 'White', '307-701-075'),
(210, '0.10 x 2150', 'White', '307-703-022'),
(211, '0.10 x 2150', 'White', '321-701-019'),
(212, '0.10 x 2150', 'White', '321-701-060'),
(213, '0.10 x 2150', 'White', '501-701-004'),
(214, '0.10 x 2150', 'White', '501-701-007'),
(215, '0.13 x 2150', 'Blue', 'Blue'),
(216, '0.13 x 2150', 'Green', 'Green'),
(217, '0.13 x 2150', 'Red', 'Red'),
(218, '0.13 x 2150', 'Terracotta', 'Terracotta'),
(219, '0.07 x 2150', 'White', '320-701-061'),
(220, '0.07 x 2150', 'White', '320-701-009'),
(221, '0.07 x 1950', 'Rust', '406-701-082'),
(222, '0.07 x 1950', 'Sea Green', '406-701-011'),
(223, '0.07 x 1950', 'White', '403-701-001'),
(224, '0.07 x 1950', 'White', '331-701-003'),
(225, '0.07 x 1950', 'Fawn', '331-701-009'),
(226, '0.07 x 1950', 'White', '331-701-061'),
(227, '0.07 x 1950', 'White', '324-701-001'),
(228, '0.07 x 1950', 'White', '324-701-002'),
(229, '0.07 x 1950', 'White', '324-701-045'),
(230, '0.07 x 1950', 'White', '324-701-067'),
(231, '0.07 x 1950', 'White', '215-701-008'),
(232, '0.07 x 1950', 'White', '215-701-009'),
(233, '0.07 x 1950', 'White', '215-701-061'),
(234, '0.07 x 1950', 'White', '404-701-045'),
(235, '0.07 x 2150', 'Blue', '103-701-002'),
(236, '0.07 x 2150', 'Sea Green', '103-701-045'),
(237, '0.07 x 2150', 'White', '308-701-001'),
(238, '0.07 x 2150', 'White', '308-701-009'),
(239, '0.07 x 2150', 'White', '308-701-061'),
(240, '0.07 x 2150', 'White', '308-701-082'),
(241, '0.07 x 2150', 'White', '320-701-009'),
(242, '0.07 x 2150', 'White', '320-701-061'),
(243, '0.07 x 2150', 'White', '320-701-067');

-- --------------------------------------------------------

--
-- Table structure for table `printing_issue`
--

CREATE TABLE IF NOT EXISTS `printing_issue` (
  `id` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `material` varchar(11) NOT NULL,
  `pattern` varchar(11) NOT NULL,
  `quantity` varchar(11) NOT NULL DEFAULT '0',
  `total` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printing_issue`
--

INSERT INTO `printing_issue` (`id`, `date`, `material`, `pattern`, `quantity`, `total`) VALUES
(1, '2072-04-03', 'ssss', 'PCVResin', '', '771'),
(2, '2072-04-03', 'ssss', 'FinawaxVL', '25', '771'),
(3, '2072-04-03', 'ssss', 'BlackN330', '020', '771'),
(4, '2072-04-03', 'ssss', 'Blue2764', '60', '771'),
(5, '2072-04-03', 'ssss', 'Green2724', '80', '771'),
(6, '2072-04-03', 'ssss', 'Orange1475K', '100', '771'),
(7, '2072-04-03', 'ssss', 'Red562', '10', '771'),
(8, '2072-04-03', 'ssss', 'SliverPaste', '0', '771'),
(9, '2072-04-03', 'ssss', 'TIO2A', '75', '771'),
(10, '2072-04-03', 'ssss', 'Yellow137K', '60', '771'),
(11, '2072-04-03', 'ssss', 'Gold', '15', '771'),
(12, '2072-04-03', '', 'Yellow137K', '60', '771'),
(13, '2072-04-03', '', 'Gold', '15', '771'),
(14, '2072-04-03', '', 'Yellow137K', '60', '7005'),
(15, '2072-04-03', 'sssss', 'Gold', '15', '7005'),
(16, '2072-04-20', 'sssss', 'CYCLO', '0', '0'),
(17, '2072-04-20', 'sssss', 'MEK', '0', '0'),
(18, '2072-04-20', 'sssss', 'Toluene', '0', '0'),
(19, '2072-04-20', 'sssss', 'Stabalizer8', '0', '0'),
(20, '2072-04-20', 'sssss', 'PCVResin', '0', '0'),
(21, '2072-04-20', 'sssss', 'FinawaxVL', '0', '0'),
(22, '2072-04-20', 'sssss', 'BlackN330', '0', '0'),
(23, '2072-04-20', 'sssss', 'Blue2764', '0', '0'),
(24, '2072-04-20', 'sssss', 'Green2724', '0', '0'),
(25, '2072-04-20', 'sssss', 'Orange1475K', '0', '0'),
(26, '2072-04-20', 'sssss', 'Red562', '0', '0'),
(27, '2072-04-20', 'sssss', 'SliverPaste', '0', '0'),
(28, '2072-04-20', 'sssss', 'TIO2A', '0', '0'),
(29, '2072-04-20', 'sssss', 'Yellow137K', '0', '0'),
(30, '2072-04-20', 'sss', 'Gold', '0', '0'),
(31, '2072-04-03', '', 'CYCLO', '149', '985'),
(32, '2072-04-03', '', 'MEK', '140', '985'),
(33, '2072-04-03', '', 'Toluene', '230', '985'),
(34, '2072-04-03', '', 'Stabalizer8', '21', '985'),
(35, '2072-04-03', '', 'PCVResin', '', '985'),
(36, '2072-04-03', '', 'FinawaxVL', '25', '985'),
(37, '2072-04-03', '', 'BlackN330', '020', '985'),
(38, '2072-04-03', '', 'Blue2764', '60', '985'),
(39, '2072-04-03', '', 'Green2724', '80', '985'),
(40, '2072-04-03', '', 'Orange1475K', '100', '985'),
(41, '2072-04-03', '', 'Red562', '10', '985'),
(42, '2072-04-03', '', 'SliverPaste', '0', '985'),
(43, '2072-04-03', '', 'TIO2A', '75', '985'),
(44, '2072-04-03', '', 'Yellow137K', '', '778'),
(45, '2072-04-03', '', 'Gold', '', '778'),
(46, '2072-04-03', '', 'CYCLO', '120', '778'),
(47, '2072-04-03', '', 'MEK', '200', '778'),
(48, '2072-04-03', '', 'Toluene', '400', '778'),
(49, '2072-04-03', '', 'Stabalizer8', '6', '778'),
(50, '2072-04-03', '', 'PCVResin', '50', '778'),
(51, '2072-04-03', '', 'FinawaxVL', '2', '778'),
(52, '2072-04-03', '', 'BlackN330', '0', '778'),
(53, '2072-04-03', '', 'Blue2764', '0', '778'),
(54, '2072-04-03', '', 'Green2724', '0', '778'),
(55, '2072-04-03', '', 'Orange1475K', '0', '778'),
(56, '2072-04-03', '', 'Red562', '0', '778'),
(57, '2072-04-03', '', 'SliverPaste', '0', '778'),
(58, '2072-04-03', '', 'TIO2A', '0', '778'),
(59, '2072-04-03', '', 'Yellow137K', '50', '1301'),
(60, '2072-04-03', '', 'Gold', '15', '1301'),
(61, '2072-04-03', '', 'CYCLO', '190', '1207'),
(62, '2072-04-03', '', 'MEK', '330', '1207'),
(63, '2072-04-03', '', 'Toluene', '537', '1207'),
(64, '2072-04-03', '', 'Stabalizer8', '0', '1207'),
(65, '2072-04-03', '', 'PCVResin', '150', '1207'),
(66, '2072-04-03', '', 'FinawaxVL', '0', '1207'),
(67, '2072-04-03', '', 'BlackN330', '0', '1207'),
(68, '2072-04-03', '', 'Blue2764', '0', '1207'),
(69, '2072-04-03', '', 'Green2724', '0', '1207'),
(70, '2072-04-03', '', 'Orange1475K', '0', '1207'),
(71, '2072-04-03', '', 'Red562', '0', '1207'),
(72, '2072-04-03', '', 'SliverPaste', '0', '1207'),
(73, '2072-04-03', '', 'TIO2A', '0', '1207'),
(74, '2072-04-03', '', 'Yellow137K', '0', '1207'),
(75, '2072-04-03', '', 'Gold', '0', '1207'),
(76, '2072-04-03', '', 'CYCLO', '190', '1207'),
(77, '2072-04-03', '', 'MEK', '330', '1207'),
(78, '2072-04-03', '', 'Toluene', '537', '1207'),
(79, '2072-04-03', '', 'Stabalizer8', '0', '1207'),
(80, '2072-04-03', '', 'PCVResin', '150', '1207'),
(81, '2072-04-03', '', 'FinawaxVL', '0', '1207'),
(82, '2072-04-03', '', 'BlackN330', '0', '1207'),
(83, '2072-04-03', '', 'Blue2764', '0', '1207'),
(84, '2072-04-03', '', 'Green2724', '0', '1207'),
(85, '2072-04-03', '', 'Orange1475K', '0', '1207'),
(86, '2072-04-03', '', 'Red562', '0', '1207'),
(87, '2072-04-03', '', 'SliverPaste', '0', '1207'),
(88, '2072-04-03', '', 'TIO2A', '0', '1207'),
(89, '2072-04-03', '', 'Yellow137K', '0', '1207'),
(90, '2072-04-03', '', 'Gold', '0', '1207'),
(91, '2072-04-03', '', 'CYCLO', '190', '1207'),
(92, '2072-04-03', '', 'MEK', '330', '1207'),
(93, '2072-04-03', '', 'Toluene', '537', '1207'),
(94, '2072-04-03', '', 'Stabalizer8', '', '1207'),
(95, '2072-04-03', '', 'PCVResin', '150', '1207'),
(96, '2072-04-03', '', 'FinawaxVL', '0', '1207'),
(97, '2072-04-03', '', 'BlackN330', '0', '1207'),
(98, '2072-04-03', '', 'Blue2764', '0', '1207'),
(99, '2072-04-03', '', 'Green2724', '0', '1207'),
(100, '2072-04-03', '', 'Orange1475K', '0', '1207'),
(101, '2072-04-03', '', 'Red562', '0', '1207'),
(102, '2072-04-03', '', 'SliverPaste', '0', '1207'),
(103, '2072-04-03', '', 'TIO2A', '0', '1207'),
(104, '2072-04-03', '', 'Yellow137K', '0', '1207'),
(105, '2072-04-03', '', 'Gold', '0', '1207'),
(106, '2072-04-10', '', 'CYCLO', '190', '753'),
(107, '2072-04-10', '', 'MEK', '165', '753'),
(108, '2072-04-10', '', 'Toluene', '358', '753'),
(109, '2072-04-10', '', 'Stabalizer8', '0', '753'),
(110, '2072-04-10', '', 'PCVResin', '0', '753'),
(111, '2072-04-10', '', 'FinawaxVL', '0', '753'),
(112, '2072-04-10', '', 'BlackN330', '0', '753'),
(113, '2072-04-10', '', 'Blue2764', '0', '753'),
(114, '2072-04-10', '', 'Green2724', '0', '753'),
(115, '2072-04-10', '', 'Orange1475K', '0', '753'),
(116, '2072-04-10', '', 'Red562', '40', '753'),
(117, '2072-04-10', '', 'SliverPaste', '0', '753'),
(118, '2072-04-10', '', 'TIO2A', '0', '753'),
(119, '2072-04-10', '', 'Yellow137K', '0', '753'),
(120, '2072-04-10', '', 'Gold', '0', '753'),
(121, '2072-04-12', '', 'CYCLO', '0', '523'),
(122, '2072-04-12', '', 'MEK', '165', '523'),
(123, '2072-04-12', '', 'Toluene', '358', '523'),
(124, '2072-04-12', '', 'Stabalizer8', '0', '523'),
(125, '2072-04-12', '', 'PCVResin', '0', '523'),
(126, '2072-04-12', '', 'FinawaxVL', '0', '523'),
(127, '2072-04-12', '', 'BlackN330', '0', '523'),
(128, '2072-04-12', '', 'Blue2764', '0', '523'),
(129, '2072-04-12', '', 'Green2724', '0', '523'),
(130, '2072-04-12', '', 'Orange1475K', '0', '523'),
(131, '2072-04-12', '', 'Red562', '0', '523'),
(132, '2072-04-12', '', 'SliverPaste', '0', '523'),
(133, '2072-04-12', '', 'TIO2A', '0', '523'),
(134, '2072-04-12', '', 'Yellow137K', '0', '523'),
(135, '2072-04-12', '', 'Gold', '0', '523'),
(136, '2072-04-14', '', 'CYCLO', '0', '773'),
(137, '2072-04-14', '', 'MEK', '165', '773'),
(138, '2072-04-14', '', 'Toluene', '358', '773'),
(139, '2072-04-14', '', 'Stabalizer8', '0', '773'),
(140, '2072-04-14', '', 'PCVResin', '150', '773'),
(141, '2072-04-14', '', 'FinawaxVL', '0', '773'),
(142, '2072-04-14', '', 'BlackN330', '0', '773'),
(143, '2072-04-14', '', 'Blue2764', '0', '773'),
(144, '2072-04-14', '', 'Green2724', '0', '773'),
(145, '2072-04-14', '', 'Orange1475K', '0', '773'),
(146, '2072-04-14', '', 'Red562', '100', '773'),
(147, '2072-04-14', '', 'SliverPaste', '0', '773'),
(148, '2072-04-14', '', 'TIO2A', '0', '773'),
(149, '2072-04-14', '', 'Yellow137K', '0', '773'),
(150, '2072-04-14', '', 'Gold', '0', '773'),
(151, '2072-04-15', '', 'CYCLO', '190', '240'),
(152, '2072-04-15', '', 'MEK', '0', '240'),
(153, '2072-04-15', '', 'Toluene', '0', '240'),
(154, '2072-04-15', '', 'Stabalizer8', '0', '240'),
(155, '2072-04-15', '', 'PCVResin', '0', '240'),
(156, '2072-04-15', '', 'FinawaxVL', '0', '240'),
(157, '2072-04-15', '', 'BlackN330', '0', '240'),
(158, '2072-04-15', '', 'Blue2764', '0', '240'),
(159, '2072-04-15', '', 'Green2724', '0', '240'),
(160, '2072-04-15', '', 'Orange1475K', '0', '240'),
(161, '2072-04-15', '', 'Red562', '0', '240'),
(162, '2072-04-15', '', 'SliverPaste', '50', '240'),
(163, '2072-04-15', '', 'TIO2A', '0', '240'),
(164, '2072-04-15', '', 'Yellow137K', '0', '240'),
(165, '2072-04-15', '', 'Gold', '0', '240'),
(166, '2072-04-03', '', 'CYCLO', '190', '1207'),
(167, '2072-04-03', '', 'MEK', '330', '1207'),
(168, '2072-04-03', '', 'Toluene', '537', '1207'),
(169, '2072-04-03', '', 'Stabalizer8', '0', '1207'),
(170, '2072-04-03', '', 'PCVResin', '150', '1207'),
(171, '2072-04-03', '', 'FinawaxVL', '0', '1207'),
(172, '2072-04-03', '', 'BlackN330', '0', '1207'),
(173, '2072-04-03', '', 'Blue2764', '0', '1207'),
(174, '2072-04-03', '', 'Green2724', '0', '1207'),
(175, '2072-04-03', '', 'Orange1475K', '0', '1207'),
(176, '2072-04-03', '', 'Red562', '0', '1207'),
(177, '2072-04-03', '', 'SliverPaste', '0', '1207'),
(178, '2072-04-03', '', 'TIO2A', '0', '1207'),
(179, '2072-04-03', '', 'Yellow137K', '0', '1207'),
(180, '2072-04-03', '', 'Gold', '0', '1207'),
(181, '2072-04-10', '', 'CYCL', '190', '753'),
(182, '2072-04-10', '', 'MEK', '165', '753'),
(183, '2072-04-10', '', 'Toluene', '358', '753'),
(184, '2072-04-10', '', 'Stabalizer8', '0', '753'),
(185, '2072-04-10', '', 'PCVResin', '0', '753'),
(186, '2072-04-10', '', 'FinawaxVL', '0', '753'),
(187, '2072-04-10', '', 'BlackN330', '0', '753'),
(188, '2072-04-10', '', 'Blue2764', '0', '753'),
(189, '2072-04-10', '', 'Green2724', '0', '753'),
(190, '2072-04-10', '', 'Orange1475K', '0', '753'),
(191, '2072-04-10', '', 'Red562', '40', '753'),
(192, '2072-04-10', '', 'SliverPaste', '0', '753'),
(193, '2072-04-10', '', 'TIO2A', '0', '753'),
(194, '2072-04-10', '', 'Yellow137K', '0', '753'),
(195, '2072-04-10', '', 'Gold', '0', '753'),
(196, '2072-04-16', '', 'CYCLO', '0', '165'),
(197, '2072-04-16', '', 'MEK', '165', '165'),
(198, '2072-04-16', '', 'Toluene', '0', '165'),
(199, '2072-04-16', '', 'Stabalizer8', '0', '165'),
(200, '2072-04-16', '', 'PCVResin', '0', '165'),
(201, '2072-04-16', '', 'FinawaxVL', '0', '165'),
(202, '2072-04-16', '', 'BlackN330', '0', '165'),
(203, '2072-04-16', '', 'Blue2764', '0', '165'),
(204, '2072-04-16', '', 'Green2724', '0', '165'),
(205, '2072-04-16', '', 'Orange1475K', '0', '165'),
(206, '2072-04-16', '', 'Red562', '0', '165'),
(207, '2072-04-16', '', 'SliverPaste', '0', '165'),
(208, '2072-04-16', '', 'TIO2A', '0', '165'),
(209, '2072-04-16', '', 'Yellow137K', '0', '165'),
(210, '2072-04-16', '', 'Gold', '0', '165'),
(211, '2072-04-17', '', 'CYCLO', '190', '892'),
(212, '2072-04-17', '', 'MEK', '165', '892'),
(213, '2072-04-17', '', 'Toluene', '537', '892'),
(214, '2072-04-17', '', 'Stabalizer8', '0', '892'),
(215, '2072-04-17', '', 'PCVResin', '0', '892'),
(216, '2072-04-17', '', 'FinawaxVL', '0', '892'),
(217, '2072-04-17', '', 'BlackN330', '0', '892'),
(218, '2072-04-17', '', 'Blue2764', '0', '892'),
(219, '2072-04-17', '', 'Green2724', '0', '892'),
(220, '2072-04-17', '', 'Orange1475K', '0', '892'),
(221, '2072-04-17', '', 'Red562', '0', '892'),
(222, '2072-04-17', '', 'SliverPaste', '0', '892'),
(223, '2072-04-17', '', 'TIO2A', '0', '892'),
(224, '2072-04-17', '', 'Yellow137K', '0', '892'),
(225, '2072-04-17', '', 'Gold', '0', '892');

-- --------------------------------------------------------

--
-- Table structure for table `printing_pattern`
--

CREATE TABLE IF NOT EXISTS `printing_pattern` (
  `id` int(11) NOT NULL,
  `pattern_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printing_pattern`
--

INSERT INTO `printing_pattern` (`id`, `pattern_name`) VALUES
(1, 'CYCLO'),
(2, 'MEK'),
(3, 'Toluene'),
(4, 'Stabalizer890'),
(5, 'PCVResin'),
(6, 'FinawaxVL'),
(7, 'BlackN330'),
(8, 'Blue2764'),
(9, 'Green2724'),
(10, 'Orange1475K'),
(11, 'Red562'),
(12, 'SliverPaste'),
(13, 'TIO2A'),
(14, 'Yellow137K'),
(15, 'Gold');

-- --------------------------------------------------------

--
-- Table structure for table `printing_rawmaterial`
--

CREATE TABLE IF NOT EXISTS `printing_rawmaterial` (
  `printing_rawmaterialid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printing_rawmaterial`
--

INSERT INTO `printing_rawmaterial` (`printing_rawmaterialid`, `name`) VALUES
(2, 'orange'),
(3, 'red'),
(4, 'T102');

-- --------------------------------------------------------

--
-- Table structure for table `printing_shiftreport`
--

CREATE TABLE IF NOT EXISTS `printing_shiftreport` (
  `shift` varchar(100) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `PF_Color` varchar(11) DEFAULT NULL,
  `color_code` varchar(100) DEFAULT NULL,
  `input` varchar(11) DEFAULT NULL,
  `output` varchar(100) DEFAULT NULL,
  `unprinted_scrap` varchar(100) DEFAULT '0',
  `department_id` varchar(50) DEFAULT NULL,
  `printed_scrap` varchar(11) DEFAULT NULL,
  `printed_scrap_reason` varchar(40) DEFAULT NULL,
  `unprinted_scrap_reason` varchar(45) DEFAULT NULL,
  `printed_reason_1` varchar(50) NOT NULL,
  `quantity_1` varchar(10) NOT NULL,
  `printed_reason_2` varchar(20) NOT NULL,
  `quantity_2` varchar(20) NOT NULL,
  `printed_reason_3` varchar(20) NOT NULL,
  `quantity_3` varchar(20) NOT NULL,
  `printed_reason_4` varchar(40) NOT NULL,
  `quantity_4` varchar(20) NOT NULL,
  `printed_reason_5` varchar(40) NOT NULL,
  `quantity_5` varchar(20) NOT NULL,
  `unprinted_reason_1` varchar(40) NOT NULL,
  `quantity1` varchar(20) NOT NULL,
  `unprinted_reason_2` varchar(40) NOT NULL,
  `quantity2` varchar(20) NOT NULL,
  `unprinted_reason_3` varchar(40) NOT NULL,
  `quantity3` varchar(20) NOT NULL,
  `unprinted_reason_4` varchar(40) NOT NULL,
  `quantity4` varchar(20) NOT NULL,
  `unprinted_reason_5` varchar(40) NOT NULL,
  `quantity5` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printing_shiftreport`
--

INSERT INTO `printing_shiftreport` (`shift`, `date`, `id`, `dimension`, `PF_Color`, `color_code`, `input`, `output`, `unprinted_scrap`, `department_id`, `printed_scrap`, `printed_scrap_reason`, `unprinted_scrap_reason`, `printed_reason_1`, `quantity_1`, `printed_reason_2`, `quantity_2`, `printed_reason_3`, `quantity_3`, `printed_reason_4`, `quantity_4`, `printed_reason_5`, `quantity_5`, `unprinted_reason_1`, `quantity1`, `unprinted_reason_2`, `quantity2`, `unprinted_reason_3`, `quantity3`, `unprinted_reason_4`, `quantity4`, `unprinted_reason_5`, `quantity5`) VALUES
('A', '2072-04-03', 2, '0.07 x 1950', 'White', '206-701-045', '6450', '6060', '210', 'printing', '180', 'Null', 'Pipe Crease', 'Color Matching', '70', 'Joint', '90', 'Color Line', '20', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-03', 3, '0.07 x 1950', 'White', '405-701-005', '5180', '5060', '0', 'printing', '120', 'Color Matching', 'NULL', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-03', 6, '0.07 x 1950', 'White', '405-701-066', '4850', '4750', '10', 'printing', '90', 'Null', 'Pipe Crease', 'Color Matching', '40', 'Joint', '50', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-03', 9, '0.07 x 1950', 'White', '314-701-060', '5350', '5150', '50', 'printing', '150', 'Null', 'NULL', 'Color Matching', '100', 'Joint', '50', 'Null', '0', 'Null', '0', 'Null', '0', 'Pipe Crease', '50', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-04', 13, '0.07 x 1950', 'White', '314-701-019', '4200', '4020', '40', 'printing', '140', 'Null', 'Pipe Crease', 'Color Matching', '40', 'Joint', '40', 'Crease and Holes', '60', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-03', 14, '0.07 x 1950', 'White', '406-701-003', '6505', '6210', '125', 'printing', '170', 'Null', 'Pipe Crease', 'Color Matching', '50', 'Joint', '120', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-07', 15, '0.07 x 2150', 'White', '205-701-061', '1890', '1800', '0', 'printing', '90', 'Color Matching', 'NULL', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-10', 17, '0.07 x 1950', 'White', '209-701-045', '2000', '1950', '40', 'printing', '10', 'Joint', 'Pipe Crease', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-10', 19, '0.07 x 1950', 'White', '209-701-008', '4400', '4180', '103', 'printing', '117', 'Null', 'Pipe Crease', 'Color Matching', '60', 'Joint', '47', 'Color Line', '10', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-10', 20, '0.07 x 1950', 'White', '209-701-045', '4100', '3870', '60', 'printing', '170', 'Color Matching', 'Pipe Crease', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-12', 24, '0.07 x 2150', 'White', '310-701-009', '2550', '2200', '150', 'printing', '200', 'Color Matching', 'Pipe Crease', 'Color Matching', '80', 'Side Cutting Not Pro', '70', 'Power Cut ', '50', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-12', 25, '0.10 x 2150', 'Buff', '304-701-082', '1400', '1050', '140', 'printing', '210', 'Null', 'Pipe Crease', 'Color Matching', '100', 'Lumps', '60', 'Color Line', '30', 'Joint', '20', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-14', 26, '0.07 x 1950', 'Cream', '312-701-067', '4790', '4640', '10', 'printing', '140', 'Null', 'Pipe Crease', 'Joint', '40', 'Color Matching', '80', 'Design Setting', '20', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-14', 27, '0.07 x 1950', 'Cream', '312-701-062', '7210', '6590', '240', 'printing', '380', 'Null', 'Pipe Crease', 'Color Matching', '80', 'Color Line', '60', 'Joint', '110', 'Crease and Holes', '70', 'Lumps', '60', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-10', 28, '0.07 x 2150', 'White', '320-701-061', '1900', '1680', '140', 'printing', '80', 'Null', 'Pipe Crease', 'Color Matching', '60', 'Joint', '20', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-10', 29, '0.07 x 2150', 'White', '320-701-009', '1750', '1600', '60', 'printing', '90', 'Null', 'Pipe Crease', 'Color Matching', '70', 'Joint', '20', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-11', 30, '0.07 x 2150', 'White', '320-701-067', '1800', '1720', '30', 'printing', '50', 'Color Matching', 'Pipe Crease', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-11', 31, '0.07 x 2150', 'Blue', '103-701-002', '2200', '1940', '160', 'printing', '100', 'Null', 'Pipe Crease', 'Rubber Roll', '50', 'Color Matching', '40', 'Joint', '10', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-11', 32, '0.07 x 2150', 'White', '308-701-061', '1800', '1700', '0', 'printing', '100', 'Null', 'NULL', 'Color Matching', '70', 'Joint', '30', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-12', 33, '0.07 x 2150', 'White', '308-701-001', '1750', '1550', '50', 'printing', '150', 'Null', 'Pipe Crease', 'Color Matching', '60', 'Pipe Crease', '40', 'Crease and Holes', '50', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-15', 35, '0.07 x 2150', 'Fawn', '310-701-066', '2000', '1800', '110', 'printing', '90', 'Null', 'NULL', 'Color Matching', '70', 'Joint', '20', 'Null', '0', 'Null', '0', 'Null', '0', 'Pipe Crease', '30', 'Calendar Shortage', '80', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-15', 36, '0.07 x 2150', 'Sea Green', '103-701-045', '1700', '1695', '0', 'printing', '5', 'Color Matching', 'NULL', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-15', 37, '0.07 x 1950', 'White', '404-701-002', '4320', '4240', '30', 'printing', '50', 'Null', 'Pipe Crease', 'Color Matching', '40', 'Joint', '10', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-15', 38, '0.07 x 2150', 'White', '308-701-009', '1130', '1100', '', 'printing', '30', 'Color Matching', 'NULL', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-16', 39, '0.07 x 2150', 'White', '308-701-009', '500', '500', '', 'printing', '', 'Null', 'White Dot', 'Color Matching', '90', 'Joint', '60', 'Crease and Holes', '30', 'Lumps', '20', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-16', 40, '0.07 x 2150', 'White', '308-701-082', '1930', '1550', '260', 'printing', '120', 'Null', 'NULL', 'Color Matching', '60', 'Joint', '60', 'Null', '0', 'Null', '0', 'Null', '0', 'White Dot', '200', 'Pipe Crease', '60', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-16', 41, '0.07 x 1950', 'White', '404-701-011', '5650', '5560', '30', 'printing', '60', 'Null', 'Shortage', 'Color Matching', '30', 'Joint', '30', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-16', 43, '0.07 x 1950', 'White', '406-701-003', '2200', '2100', '30', 'printing', '70', 'Null', 'Pipe Crease', 'Color Matching', '50', 'Joint', '20', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-16', 44, '0.07 x 1950', 'White', '404-701-045', '1680', '1610', '', 'printing', '70', 'Null', 'NULL', 'Color Matching', '40', 'Joint', '30', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-16', 45, '0.07 x 1950', 'White', '406-701-003', '2550', '2470', '50', 'printing', '30', 'Joint', 'Pipe Crease', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-16', 46, '0.07 x 1950', 'White', '406-701-002', '4740', '4250', '230', 'printing', '260', 'Null', 'Pipe Crease', 'Color Matching', '40', 'Joint', '70', 'Side Cutting Not Pro', '90', 'Crease and Holes', '60', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-16', 47, '0.07 x 1950', 'White', '331-701-061', '100', '50', '0', 'printing', '50', 'Color Matching', 'NULL', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-16', 48, '0.07 x 2150', 'Cream', '205-701-062', '2150', '2075', '65', 'printing', '60', 'Null', 'Pipe Crease', 'Color Matching', '50', 'Joint', '10', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-17', 49, '0.10 x 2150', 'Cream', '305-701-061', '1680', '1500', '45', 'printing', '135', 'Null', 'Pipe Crease', 'Color Matching', '40', 'Joint', '20', 'Rubber Roll', '20', 'Others', '55', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-17', 50, '0.10 x 2150', 'White', '501-701-004', '1650', '1560', '20', 'printing', '70', 'Null', 'Pipe Crease', 'Color Matching', '50', 'Joint', '20', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('B', '2072-04-17', 51, '0.10 x 2150', 'White', '501-701-007', '1450', '1350', '20', 'printing', '80', 'Null', 'Pipe Crease', 'Color Matching', '60', 'Joint', '20', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-17', 52, '0.07 x 2150', 'Cream', '205-701-067', '2150', '2000', '', 'printing', '150', 'Null', 'NULL', 'Color Matching', '80', 'Design Setting', '20', 'Crease and Holes', '30', 'Joint', '20', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0'),
('A', '2072-04-17', 53, '0.07 x 2150', 'Cream', '329-701-067', '2150', '2100', '', 'printing', '50', 'Joint', 'NULL', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0', 'Null', '0');

-- --------------------------------------------------------

--
-- Table structure for table `printing_stock`
--

CREATE TABLE IF NOT EXISTS `printing_stock` (
  `id` int(11) NOT NULL COMMENT '	',
  `patttern` varchar(45) DEFAULT NULL,
  `consumption` varchar(11) DEFAULT NULL,
  `balance` varchar(11) DEFAULT NULL,
  `issue` varchar(11) DEFAULT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printing_stock`
--

INSERT INTO `printing_stock` (`id`, `patttern`, `consumption`, `balance`, `issue`, `date`) VALUES
(2, 'MEK', '0', '0', '0', '2072-03-01'),
(3, 'Toluene', '0', '0', '0', '2072-03-01'),
(4, 'Stabalizer890', '0', '0', '0', '2072-03-01'),
(5, 'PCVResin', '0', '0', '0', '2072-03-01'),
(6, 'FinawaxVL', '0', '0', '0', '2072-03-01'),
(7, 'BlackN330', '0', '0', '0', '2072-03-01'),
(8, 'Blue2764', '0', '0', '0', '2072-03-01'),
(9, 'Green2724', '0', '0', '0', '2072-03-01'),
(10, 'Orange1475K', '0', '0', '0', '2072-03-01'),
(11, 'Red562', '0', '0', '0', '2072-03-01'),
(12, 'SliverPast', '0', '0', '0', '2072-03-01'),
(13, 'TIO2A', '0', '0', '0', '2072-03-01'),
(14, 'Yellow137K', '0', '0', '0', '2072-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `printng_opening`
--

CREATE TABLE IF NOT EXISTS `printng_opening` (
  `id` int(11) NOT NULL,
  `material` varchar(10) NOT NULL,
  `opening` varchar(10) NOT NULL,
  `issues` varchar(10) NOT NULL,
  `consumption` varchar(10) NOT NULL,
  `balance` varchar(10) NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printng_opening`
--

INSERT INTO `printng_opening` (`id`, `material`, `opening`, `issues`, `consumption`, `balance`, `date`) VALUES
(1, 'MEK', '100', '', '', '', ''),
(2, 'Toluene', '100', '', '', '', ''),
(3, 'Stabalizer', '23', '', '', '', ''),
(4, 'PCVResin', '100', '', '', '', ''),
(5, 'FinawaxVL', '23', '', '', '', ''),
(6, 'BlackN330', '', '', '', '', ''),
(7, 'Blue2764', '34', '', '', '', ''),
(8, 'Green2724', '12', '', '', '', ''),
(9, 'Orange1475', '23', '', '', '', ''),
(10, 'Red562', '23', '', '', '', ''),
(11, 'SliverPast', '23', '', '', '', ''),
(12, 'TIO2A', '12', '', '', '', ''),
(13, 'Yellow137K', '123', '', '', '', ''),
(14, 'gold', '12', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `print_base_code`
--

CREATE TABLE IF NOT EXISTS `print_base_code` (
  `id` int(11) NOT NULL,
  `base_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `brand`, `color`) VALUES
(1, 'Calio', '304-701-022'),
(2, 'Calio', '304-701-060'),
(3, 'Calio', '304-701-061'),
(4, 'Calio', '304-701-076'),
(5, 'Calio', '304-701-082'),
(6, 'Calio', '305-701-022'),
(7, 'Calio', '305-701-061'),
(8, 'Calio', '306-701-060'),
(9, 'Calio', '306-701-062'),
(10, 'Calio', '307-701-075'),
(11, 'Calio', '321-701-019'),
(12, 'Calio', '321-701-060'),
(13, 'Calio', '321-701-061'),
(14, 'Calio', '321-701-082'),
(15, 'Calio', '501-701-004'),
(16, 'Calio', '501-701-007'),
(17, 'Calio Max', '304-701-061'),
(18, 'Calio Max', '319-701-003'),
(19, 'Calio Max', '319-701-009'),
(20, 'Calio Max', '319-701-022'),
(21, 'Calio Max', '319-701-067'),
(22, 'Calio Max', '321-701-022'),
(23, 'Calio Max', '321-701-082'),
(24, 'Carnival', '101-701-022'),
(25, 'Carnival', '101-701-045'),
(26, 'Carnival', '101-701-050'),
(27, 'Carnival', '204-701-002'),
(28, 'Carnival', '204-701-004'),
(29, 'Carnival', '204-701-009'),
(30, 'Carnival', '204-701-061'),
(31, 'Carnival', '211-701-045'),
(32, 'Carnival', '211-701-061'),
(33, 'Carnival', '211-701-082'),
(34, 'Carnival', '301-701-002'),
(35, 'Carnival', '301-701-061'),
(36, 'Carnival', '301-701-074'),
(37, 'Carnival', '304-701-076'),
(38, 'Carnival', '304-701-082'),
(39, 'Carnival', '305-701-019'),
(40, 'Carnival', '305-701-061'),
(41, 'Carnival', '305-701-076'),
(42, 'Carnival', '316-701-045'),
(43, 'Chipps', 'Blue'),
(44, 'Chipps', 'Green'),
(45, 'Chipps', 'Red'),
(46, 'Chipps', 'Terracotta'),
(55, 'Galaxy', '101-701-045'),
(56, 'Galaxy', '104-701-057'),
(57, 'Galaxy', '204-701-009'),
(58, 'Galaxy', '204-701-061'),
(59, 'Galaxy', '206-701-002'),
(60, 'Galaxy', '206-701-008'),
(61, 'Galaxy', '206-701-045'),
(62, 'Galaxy', '207-701-045'),
(63, 'Galaxy', '207-701-061'),
(64, 'Galaxy', '207-701-082'),
(65, 'Galaxy', '209-701-002'),
(66, 'Galaxy', '209-701-008'),
(67, 'Galaxy', '209-701-045'),
(68, 'Galaxy', '210-701-001'),
(69, 'Galaxy', '210-701-002'),
(70, 'Galaxy', '210-701-045'),
(71, 'Galaxy', '211-701-082'),
(72, 'Galaxy', '212-701-001'),
(73, 'Galaxy', '212-701-061'),
(74, 'Galaxy', '212-701-082'),
(75, 'Galaxy', '213-701-002'),
(76, 'Galaxy', '213-701-005'),
(77, 'Galaxy', '213-701-008'),
(78, 'Galaxy', '228-701-001'),
(79, 'Galaxy', '228-701-003'),
(80, 'Galaxy', '228-701-045'),
(81, 'Galaxy', '309-701-009'),
(82, 'Galaxy', '309-701-061'),
(83, 'Galaxy', '309-701-062'),
(84, 'Galaxy', '312-701-045'),
(85, 'Galaxy', '312-701-062'),
(86, 'Galaxy', '312-701-067'),
(87, 'Galaxy', '314-701-019'),
(88, 'Galaxy', '314-701-060'),
(89, 'Galaxy', '314-701-067'),
(90, 'Galaxy', '315-701-001'),
(91, 'Galaxy', '315-701-011'),
(92, 'Galaxy', '315-701-056'),
(93, 'Galaxy', '316-701-002'),
(94, 'Galaxy', '316-701-004'),
(95, 'Galaxy', '318-701-001'),
(96, 'Galaxy', '318-701-002'),
(97, 'Galaxy', '323-701-001'),
(98, 'Galaxy', '323-701-002'),
(99, 'Galaxy', '323-701-019'),
(100, 'Galaxy', '330-701-002'),
(101, 'Galaxy', '330-701-003'),
(102, 'Galaxy', '401-701-057'),
(103, 'Galaxy', '401-701-075'),
(104, 'Galaxy', '404-701-002'),
(105, 'Galaxy', '404-701-003'),
(106, 'Galaxy', '404-701-011'),
(107, 'Galaxy', '405-701-005'),
(108, 'Galaxy', '405-701-019'),
(109, 'Galaxy', '405-701-066'),
(110, 'Galaxy', '406-701-002'),
(111, 'Galaxy', '406-701-003'),
(112, 'Galaxy', '406-701-045'),
(113, 'Galaxy', 'New Color'),
(114, 'Jupiter', 'Ash Grey'),
(115, 'Jupiter', 'Beige'),
(116, 'Jupiter', 'Blue'),
(117, 'Jupiter', 'Green'),
(118, 'Jupiter', 'Light Grey'),
(119, 'Jupiter', 'Light Maroon'),
(120, 'Jupiter', 'Red'),
(121, 'Jupiter', 'Terracotta'),
(122, 'Jupiter', 'White'),
(123, 'Mars', 'Ash Grey'),
(124, 'Mars', 'Beige'),
(125, 'Mars', 'Blue'),
(126, 'Mars', 'Green'),
(127, 'Mars', 'Light Grey'),
(128, 'Mars', 'Light Maroon'),
(129, 'Mars', 'Red'),
(130, 'Mars', 'Terracotta'),
(131, 'Mars', 'White'),
(132, 'M-Calio', '102-701-004'),
(133, 'M-Calio', '102-701-005'),
(134, 'M-Calio', '102-701-009'),
(135, 'M-Calio', '103-701-005'),
(136, 'M-Calio', '103-701-062'),
(137, 'M-Calio', '205-701-061'),
(138, 'M-Calio', '205-701-062'),
(139, 'M-Calio', '205-701-067'),
(140, 'M-Calio', '213-701-002'),
(141, 'M-Calio', '213-701-005'),
(142, 'M-Calio', '213-701-008'),
(143, 'M-Calio', '310-701-002'),
(144, 'M-Calio', '310-701-009'),
(145, 'M-Calio', '310-701-066'),
(146, 'M-Calio', '313-701-028'),
(147, 'M-Calio', '313-701-061'),
(148, 'M-Calio', '313-701-073'),
(149, 'M-Calio', '313-701-082'),
(150, 'M-Calio', '322-701-002'),
(151, 'M-Calio', '322-701-003'),
(152, 'M-Calio', '322-701-074'),
(153, 'M-Calio', '323-701-003'),
(154, 'M-Calio', '325-701-061'),
(155, 'M-Calio', '325-701-067'),
(156, 'M-Calio', '325-701-082'),
(157, 'M-Calio', '329-701-061'),
(158, 'M-Calio', '329-701-067'),
(159, 'M-Calio', '329-701-082'),
(160, 'M-Calio', '407-701-004'),
(161, 'M-Calio', '407-701-007'),
(162, 'M-Calio', 'Black'),
(163, 'M-Calio', 'White'),
(164, 'Neptune', 'Ash Grey'),
(165, 'Neptune', 'Beige'),
(166, 'Neptune', 'Blue'),
(167, 'Neptune', 'Green'),
(168, 'Neptune', 'Red'),
(169, 'Neptune', 'Terracotta'),
(178, 'Super Calio', '304-703-022'),
(179, 'Super Calio', '304-703-060'),
(180, 'Super Calio', '304-703-061'),
(181, 'Super Calio', '304-703-067'),
(182, 'Super Calio', '304-703-082'),
(183, 'Super Calio', '305-703-067'),
(184, 'Super Calio', '306-703-019'),
(185, 'Super Calio', '306-703-022'),
(186, 'Super Calio', '306-703-067'),
(187, 'Super Calio', '306-703-082'),
(188, 'Super Calio', '307-703-022'),
(189, 'Super Calio', '501-703-004'),
(190, 'Super Calio', '501-703-007'),
(191, 'Venus', '101-701-004'),
(192, 'Venus', '101-701-009'),
(193, 'Venus', '101-701-022'),
(194, 'Venus', '101-701-045'),
(195, 'Venus', '101-701-050'),
(196, 'Venus', '201-701-005'),
(197, 'Venus', '201-701-007'),
(198, 'Venus', '201-701-045'),
(199, 'Venus', '201-701-074'),
(200, 'Venus', '202-701-005'),
(201, 'Venus', '202-701-056'),
(202, 'Venus', '204-701-002'),
(203, 'Venus', '204-701-004'),
(204, 'Venus', '204-701-009'),
(205, 'Venus', '204-701-075'),
(206, 'Venus', '301-701-002'),
(207, 'Venus', '301-701-061'),
(208, 'Venus', '301-701-074'),
(209, 'Venus', '305-701-019'),
(210, 'Venus', '305-701-022'),
(211, 'Venus', '305-701-061'),
(212, 'Venus', '305-701-073'),
(213, 'Venus', '305-701-076'),
(214, 'Venus', '312-701-005'),
(215, 'Venus', '312-701-009'),
(216, 'Venus', '312-701-084'),
(217, 'Venus', '314-701-060'),
(218, 'Venus', '314-701-061'),
(219, 'Venus', '314-701-067'),
(220, 'Venus', '314-701-082'),
(221, 'Venus', 'Pure Black'),
(222, 'Venus', 'Pure White'),
(223, 'M-Calio', '103-071-002'),
(224, 'M-Calio', '103-071-045'),
(225, 'M-Calio', '308-071-001'),
(226, 'M-Calio', '308-071-009'),
(227, 'M-Calio', '308-071-061'),
(228, 'M-Calio', '308-071-082'),
(229, 'M-Calio', '320-071-009'),
(230, 'M-Calio', '320-071-061'),
(231, 'M-Calio', '320-701-067'),
(234, 'M-Calio', '103-701-045'),
(235, 'M-Calio', '103-701-002'),
(236, 'M-Calio', '308-701-001'),
(237, 'M-Calio', '308-701-061'),
(238, 'M-Calio', '308-701-009'),
(239, 'M-Calio', '308-701-082'),
(240, 'Galaxy', '214-701-061'),
(241, 'Galaxy', '214-701-008'),
(242, 'Galaxy', '214-701-045'),
(243, 'Galaxy', '214-701-007'),
(244, 'Galaxy', '326-701-001'),
(245, 'Galaxy', '326-701-045'),
(246, 'Galaxy', '326-701-002'),
(247, 'Galaxy', '403-701-001'),
(248, 'Galaxy', '403-701-003'),
(249, 'Galaxy', '403-701-045'),
(250, 'Galaxy', '403-701-002'),
(251, 'Galaxy', '404-701-045'),
(252, 'Galaxy', '406-701-082'),
(253, 'Galaxy', '406-701-011'),
(254, 'Coral', '324-701-067'),
(255, 'Coral', '324-701-001'),
(256, 'Coral', '324-701-045'),
(257, 'Coral', '324-701-002'),
(258, 'Coral', '215-701-061'),
(259, 'Coral', '215-701-008'),
(260, 'Coral', '215-701-009'),
(261, 'Coral', '211-701-045'),
(262, 'Coral', '211-701-061'),
(263, 'Coral', '211-701-082'),
(264, 'Coral', '301-701-002'),
(265, 'Coral', '301-701-061'),
(266, 'Coral', '301-701-074'),
(267, 'Coral', '331-701-009'),
(268, 'Coral', '331-701-003'),
(269, 'Coral', '331-701-061'),
(270, 'Coral', '305-701-019'),
(271, 'Coral', '305-701-061'),
(272, 'Coral', '305-701-076');

-- --------------------------------------------------------

--
-- Table structure for table `production_shiftreport`
--

CREATE TABLE IF NOT EXISTS `production_shiftreport` (
  `id` int(11) NOT NULL,
  `shift` varchar(45) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `base_ut` varchar(20) DEFAULT '0',
  `base_mt` varchar(20) DEFAULT '0',
  `base_ot` varchar(20) DEFAULT '0',
  `print_film` varchar(20) DEFAULT '0',
  `CT` varchar(20) DEFAULT '0',
  `output` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production_shiftreport`
--

INSERT INTO `production_shiftreport` (`id`, `shift`, `date`, `brand`, `color`, `base_ut`, `base_mt`, `base_ot`, `print_film`, `CT`, `output`) VALUES
(1, 'A', '2072-04-03', 'Galaxy', '212-701-082', '3150', '0', '0', '3080', '3130', '2629'),
(2, 'A', '2072-04-03', 'Galaxy', '405-701-005', '2100', '0', '0', '2050', '2050', '1761'),
(3, 'B', '2072-04-03', 'Galaxy', '405-701-005', '1420', '0', '0', '1380', '1380', '1174'),
(4, 'B', '2072-04-03', 'Galaxy', '405-701-066', '1240', '0', '0', '1200', '1200', '1039'),
(5, 'B', '2072-04-03', 'Galaxy', '406-701-003', '4600', '0', '0', '4450', '4450', '3812'),
(6, 'A', '2072-04-04', 'Galaxy', '406-701-003', '2010', '0', '0', '1950', '1950', '1686'),
(7, 'A', '2072-04-04', 'Galaxy', '314-701-060', '1270', '0', '0', '1240', '1240', '1052'),
(8, 'A', '2072-04-07', 'Galaxy', '314-701-060', '1370', '0', '0', '1300', '1350', '1119'),
(9, 'A', '2072-04-07', 'Galaxy', '206-701-045', '1580', '0', '0', '1480', '1480', '1271'),
(10, 'A', '2072-04-07', 'Galaxy', '212-701-001', '3940', '0', '0', '3850', '3850', '3313'),
(11, 'B', '2072-04-07', 'Calio Max', '319-701-003', '1200', '1200', '0', '1150', '1200', '936'),
(12, 'B', '2072-04-07', 'Calio Max', '319-701-022', '1200', '1200', '0', '1160', '1160', '961'),
(13, 'B', '2072-04-07', 'Calio Max', '321-701-082', '560', '560', '0', '530', '530', '439'),
(14, 'A', '2072-04-10', 'Calio', '307-701-075', '1250', '1250', '0', '1215', '1250', '1010'),
(15, 'A', '2072-04-10', 'Calio', '501-701-007', '980', '980', '0', '950', '950', '780'),
(16, 'A', '2072-04-10', 'Calio', '306-701-060', '270', '270', '0', '260', '260', '218'),
(17, 'A', '2072-04-10', 'Calio', '304-701-082', '800', '800', '0', '780', '780', '648'),
(18, 'A', '2072-04-10', 'Galaxy', '405-701-066', '400', '0', '0', '350', '400', '300'),
(19, 'B', '2072-04-10', 'Galaxy', '405-701-066', '2650', '0', '0', '2570', '2570', '2143'),
(20, 'B', '2072-04-10', 'Galaxy', '209-701-045', '2750', '0', '0', '2680', '2680', '2279'),
(21, 'B', '2072-04-10', 'Galaxy', '314-701-019', '700', '0', '0', '670', '670', '578'),
(22, 'A', '2072-04-11', 'M-Calio', '313-701-061', '1430', '0', '0', '1390', '1420', '1186'),
(23, 'A', '2072-04-11', 'M-Calio', '205-701-061', '530', '0', '0', '510', '510', '437'),
(24, 'B', '2072-04-11', 'Galaxy', '209-701-045', '2210', '0', '0', '2130', '2170', '1824'),
(25, 'A', '2072-04-11', 'M-Calio', '320-071-061', '970', '0', '0', '940', '940', '801'),
(26, 'A', '2072-04-11', 'M-Calio', '320-701-067', '900', '0', '0', '865', '865', '731'),
(27, 'A', '2072-04-11', 'M-Calio', '320-071-009', '600', '0', '0', '580', '580', '495'),
(28, 'A', '2072-04-11', 'M-Calio', '103-071-002', '1230', '0', '0', '1200', '1200', '1023'),
(29, 'A', '2072-04-12', 'Galaxy', '209-701-045', '400', '0', '0', '380', '380', '321'),
(30, 'A', '2072-04-12', 'Galaxy', '212-701-082', '2650', '0', '0', '2580', '2580', '2202'),
(31, 'A', '2072-04-12', 'Galaxy', '314-701-019', '400', '0', '0', '370', '370', '318'),
(32, 'B', '2072-04-12', 'Galaxy', '314-701-019', '1150', '0', '0', '1100', '1150', '946'),
(33, 'A', '2072-04-13', 'Galaxy', '314-701-019', '1350', '0', '0', '1300', '1300', '1117'),
(34, 'A', '2072-04-13', 'Galaxy', '309-701-061', '570', '0', '0', '550', '550', '474'),
(35, 'A', '2072-04-13', 'M-Calio', '205-701-062', '1720', '0', '0', '1680', '1730', '1440'),
(36, 'A', '2072-04-13', 'M-Calio', '310-701-009', '1990', '0', '0', '1960', '1960', '1662'),
(37, 'A', '2072-04-13', 'M-Calio', '407-701-007', '540', '0', '0', '520', '520', '446'),
(38, 'B', '2072-04-13', 'M-Calio', '407-701-007', '460', '0', '0', '450', '450', '382'),
(39, 'B', '2072-04-13', 'M-Calio', '325-701-082', '710', '0', '0', '680', '680', '576'),
(40, 'B', '2072-04-13', 'M-Calio', '325-701-061', '460', '0', '0', '450', '450', '383'),
(41, 'B', '2072-04-13', 'M-Calio', '329-701-082', '1070', '0', '0', '1050', '1050', '910'),
(42, 'B', '2072-04-13', 'M-Calio', '205-701-067', '320', '0', '0', '310', '310', '263'),
(43, 'B', '2072-04-13', 'Galaxy', '309-701-009', '1850', '0', '0', '1780', '1820', '1543'),
(44, 'B', '2072-04-13', 'Galaxy', '309-701-061', '1180', '0', '0', '1150', '1150', '978'),
(45, 'B', '2072-04-13', 'Galaxy', '314-701-060', '200', '0', '0', '180', '180', '150'),
(46, 'A', '2072-04-14', 'Galaxy', '314-701-060', '1750', '0', '0', '1700', '1700', '1453'),
(47, 'A', '2072-04-14', 'Galaxy', '309-701-061', '330', '0', '0', '305', '305', '262'),
(48, 'A', '2072-04-14', 'Galaxy', '209-701-008', '860', '0', '0', '840', '840', '718'),
(49, 'A', '2072-04-14', 'Galaxy', '312-701-067', '740', '0', '0', '700', '700', '598'),
(50, 'A', '2072-04-14', 'Galaxy', '212-701-001', '2110', '0', '0', '2060', '2060', '1775'),
(51, 'A', '2072-04-14', 'Galaxy', '309-701-009', '370', '0', '0', '350', '350', '295'),
(52, 'A', '2072-04-14', 'Galaxy', '312-701-062', '1390', '0', '0', '1350', '1350', '1165'),
(53, 'B', '2072-04-14', 'Galaxy', '312-701-062', '4620', '0', '0', '4500', '4500', '3855'),
(54, 'B', '2072-04-14', 'Galaxy', '312-701-067', '3130', '0', '0', '3050', '3050', '2614'),
(55, 'B', '2072-04-14', 'Galaxy', '206-701-045', '570', '0', '0', '550', '550', '474'),
(56, 'A', '2072-04-15', 'Galaxy', '206-701-045', '3650', '0', '0', '3580', '3580', '3035'),
(57, 'A', '2072-04-15', 'Galaxy', '212-701-061', '1700', '0', '0', '1650', '1650', '1405'),
(58, 'A', '2072-04-15', 'Galaxy', '209-701-008', '2460', '0', '0', '2400', '2400', '2066'),
(59, 'A', '2072-04-15', 'Galaxy', '405-701-005', '1140', '0', '0', '1090', '1090', '928'),
(60, 'A', '2072-04-15', 'Galaxy', '312-701-062', '510', '0', '0', '490', '490', '420'),
(61, 'A', '2072-04-15', 'Galaxy', '312-701-067', '250', '0', '0', '245', '245', '210'),
(62, 'B', '2072-04-15', 'Galaxy', '309-701-009', '1700', '0', '0', '1650', '1650', '1414'),
(63, 'B', '2072-04-15', 'Galaxy', '309-701-061', '60', '0', '0', '60', '60', '44'),
(64, 'B', '2072-04-15', 'M-Calio', '308-701-061', '1050', '0', '0', '1000', '1030', '856'),
(65, 'B', '2072-04-15', 'M-Calio', '308-071-001', '710', '0', '0', '680', '680', '571'),
(66, 'B', '2072-04-15', 'M-Calio', '320-701-067', '850', '0', '0', '820', '820', '710'),
(67, 'B', '2072-04-15', 'M-Calio', '320-071-061', '540', '0', '0', '520', '520', '442'),
(68, 'B', '2072-04-15', 'M-Calio', '320-071-009', '1070', '0', '0', '1030', '1030', '890'),
(69, 'A', '2072-04-16', 'M-Calio', '320-071-009', '170', '0', '0', '165', '165', '142'),
(70, 'A', '2072-04-16', 'M-Calio', '310-701-066', '930', '0', '0', '910', '910', '779'),
(72, 'A', '2072-04-16', 'M-Calio', '308-071-009', '1230', '0', '0', '1195', '1195', '1015'),
(73, 'A', '2072-04-16', 'M-Calio', '103-701-045', '1135', '0', '0', '1100', '1100', '951'),
(74, 'A', '2072-04-16', 'M-Calio', '308-701-082', '490', '0', '0', '475', '475', '407'),
(75, 'A', '2072-04-16', 'M-Calio', '205-701-061', '730', '0', '0', '710', '710', '609'),
(76, 'A', '2072-04-16', 'M-Calio', '103-701-002', '790', '0', '0', '770', '770', '660'),
(77, 'A', '2072-04-16', 'M-Calio', '407-701-007', '730', '0', '0', '710', '710', '601'),
(78, 'B', '2072-04-16', 'M-Calio', '308-701-082', '950', '0', '0', '920', '920', '783'),
(79, 'B', '2072-04-16', 'M-Calio', '310-701-066', '950', '0', '0', '930', '930', '790'),
(80, 'B', '2072-04-16', 'M-Calio', '308-701-009', '640', '0', '0', '620', '620', '527'),
(81, 'B', '2072-04-16', 'M-Calio', '308-701-061', '180', '0', '0', '170', '170', '140'),
(82, 'B', '2072-04-16', 'M-Calio', '407-701-007', '470', '0', '0', '460', '460', '398'),
(83, 'B', '2072-04-16', 'Galaxy', '404-701-011', '5350', '0', '0', '5200', '5250', '4477'),
(85, 'A', '2072-04-17', 'Galaxy', '404-701-002', '3270', '0', '0', '3200', '3200', '2751'),
(86, 'A', '2072-04-17', 'Galaxy', '309-701-061', '500', '0', '0', '470', '470', '406'),
(87, 'A', '2072-04-17', 'Galaxy', '309-701-009', '200', '0', '0', '170', '170', '145'),
(88, 'A', '2072-04-17', 'Galaxy', '314-701-019', '1150', '0', '0', '1100', '1100', '949'),
(89, 'A', '2072-04-17', 'Galaxy', '314-701-060', '270', '0', '0', '250', '250', '207'),
(90, 'A', '2072-04-17', 'Galaxy', '401-701-057', '200', '0', '0', '180', '180', '150'),
(91, 'A', '2072-04-17', 'Galaxy', '404-701-011', '1140', '0', '0', '1100', '1100', '952'),
(92, 'A', '2072-04-17', 'M-Calio', '205-701-062', '680', '0', '0', '650', '680', '553'),
(93, 'B', '2072-04-17', 'M-Calio', '205-701-062', '800', '0', '0', '770', '770', '659'),
(94, 'B', '2072-04-17', 'M-Calio', '329-701-067', '1480', '0', '0', '1450', '1450', '1235'),
(95, 'B', '2072-04-17', 'M-Calio', '205-701-061', '380', '0', '0', '370', '370', '314'),
(96, 'B', '2072-04-17', 'Calio', '305-701-061', '440', '440', '0', '400', '420', '320'),
(97, 'B', '2072-04-17', 'Calio', '501-701-007', '640', '640', '0', '620', '620', '498'),
(98, 'B', '2072-04-17', 'Calio', '501-701-004', '310', '310', '0', '300', '300', '227');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `purchase_id` int(11) NOT NULL,
  `material_id` varchar(50) DEFAULT NULL,
  `vender_id` varchar(50) DEFAULT NULL,
  `category_id` varchar(50) DEFAULT NULL,
  `quantity` varchar(10) DEFAULT NULL,
  `purchase_date` varchar(20) DEFAULT NULL,
  `purchase_user` varchar(100) DEFAULT NULL,
  `purchase_price` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchase_id`, `material_id`, `vender_id`, `category_id`, `quantity`, `purchase_date`, `purchase_user`, `purchase_price`) VALUES
(99, 'material 1', 'some vendor', 'category 1', '111', '24-06-15', 'niroj', '2000'),
(100, 'material 1123', 'some vendor', 'category 1', '111', '28-06-15', 'review', '121'),
(101, 'material 1123', 'some vendor', 'category 1', '22', '28-06-15', 'niroj', '222');

-- --------------------------------------------------------

--
-- Table structure for table `purchasestock`
--

CREATE TABLE IF NOT EXISTS `purchasestock` (
  `stock_id` int(11) NOT NULL,
  `material_id` varchar(50) DEFAULT NULL,
  `vender_id` varchar(50) DEFAULT NULL,
  `category_id` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `purchase_date` varchar(20) DEFAULT NULL,
  `purchase_price` decimal(10,0) DEFAULT NULL,
  `Reorder_level` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasestock`
--

INSERT INTO `purchasestock` (`stock_id`, `material_id`, `vender_id`, `category_id`, `quantity`, `purchase_date`, `purchase_price`, `Reorder_level`) VALUES
(70, 'material 1', NULL, NULL, 4, '24-06-15', NULL, 0),
(71, 'material 1123', NULL, NULL, 17, '28-06-15', NULL, 0),
(72, 'tauline', NULL, NULL, 0, '02-07-15', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quality`
--

CREATE TABLE IF NOT EXISTS `quality` (
  `quality_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quality`
--

INSERT INTO `quality` (`quality_id`, `name`, `dimension`) VALUES
(1, 'galexy', '123*123'),
(2, 'calio', '123*123'),
(3, 'super Calio ', '123*234'),
(4, 'sdfsdf', 'sdfsdf'),
(5, 'sdfsdf', 'sdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `reasons`
--

CREATE TABLE IF NOT EXISTS `reasons` (
  `id` int(11) NOT NULL,
  `reasons` varchar(45) DEFAULT NULL,
  `department_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reasons`
--

INSERT INTO `reasons` (`id`, `reasons`, `department_id`) VALUES
(1, 'mtr joint', '1'),
(2, 'mtr color', '1'),
(3, 'mtr', 'printing'),
(4, 'mtr', 'printing'),
(5, 'break hours', 'bh'),
(6, 'loss time', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `remarks`
--

CREATE TABLE IF NOT EXISTS `remarks` (
  `remarks_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `request_id` int(11) NOT NULL,
  `department_id` varchar(45) DEFAULT NULL,
  `material_id` varchar(11) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `department_id`, `material_id`, `quantity`, `remarks`, `user_id`, `date`) VALUES
(24, 'store', 'm3', '5000', 'by niroj', 'store', '23-06-2015'),
(26, 'store', 'material 1', '190', '190', 'store', '23-06-2015'),
(27, '1', 'material 11', '20', 'remartks', 'mixing', '28-06-2015'),
(28, '1', 'material 1', '22', 'remartks', 'mixing', '28-06-2015'),
(29, '1', 'material 11', '111', 'remartks', 'store', '28-06-2015'),
(30, '1', 'material 1', '123', 'remartks', 'store', '28-06-2015'),
(31, '1', 'material 11', '123', 'sdfsdf', 'mixing', '28-06-2015'),
(32, '1', 'material 1', '1212', 'zds', 'mixing', '28-06-2015'),
(33, 'mixing', 'material 11', '123', 'sdfsdf', 'mixing', '28-06-2015'),
(34, 'mixing', 'material 11', '111', '111', 'mixing', '2072-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `scrap_department`
--

CREATE TABLE IF NOT EXISTS `scrap_department` (
  `id` int(11) NOT NULL,
  `department_id` varchar(50) DEFAULT NULL,
  `shift` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `quality_brand` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scrap_department`
--

INSERT INTO `scrap_department` (`id`, `department_id`, `shift`, `date`, `quality_brand`, `quantity`) VALUES
(1, 'store', 'A', '2014-12-12 00:00:00', 'galexy', 123),
(2, 'calender', 'A', '0000-00-00 00:00:00', '12', 12),
(3, 'calender', 'A', '0000-00-00 00:00:00', 'calio ', 123),
(4, 'calender', 'A', '0000-00-00 00:00:00', '1', 34);

-- --------------------------------------------------------

--
-- Table structure for table `scrap_details`
--

CREATE TABLE IF NOT EXISTS `scrap_details` (
  `id` int(11) NOT NULL,
  `resuable` varchar(10) NOT NULL,
  `lumps_plates` varchar(10) NOT NULL,
  `total_scrap_generated` varchar(10) NOT NULL,
  `less_scrap_used` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `shift` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scrap_details`
--

INSERT INTO `scrap_details` (`id`, `resuable`, `lumps_plates`, `total_scrap_generated`, `less_scrap_used`, `date`, `shift`) VALUES
(1, '123', '22', '12', '12', '09-06-2015', 'A'),
(2, '123', '312', '123', '123', '213', '23'),
(3, 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `scrap_main`
--

CREATE TABLE IF NOT EXISTS `scrap_main` (
  `date` datetime DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `scap_quantity` int(11) DEFAULT NULL,
  `segregated_waste` int(11) DEFAULT NULL,
  `magnetic_waste` int(11) DEFAULT NULL,
  `scrap_out` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scrap_main`
--

INSERT INTO `scrap_main` (`date`, `type`, `scap_quantity`, `segregated_waste`, `magnetic_waste`, `scrap_out`, `id`) VALUES
('2015-12-12 00:00:00', 'galexy', 100, 5, 2, 93, 1),
('0000-00-00 00:00:00', 'calio', 90, 3, 7, 80, 2),
('0000-00-00 00:00:00', 'looj', 123, 12, 12, 12, 3),
('0000-00-00 00:00:00', 'da', 23, 21, 12, 21, 4),
('0000-00-00 00:00:00', 'laskd', 23, 55, 6, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL,
  `material_id` varchar(24) NOT NULL,
  `qty` varchar(24) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `material_id`, `qty`) VALUES
(2, 'asdasd', '0'),
(4, 'polychem', '0'),
(6, 'polychem', '0'),
(7, 'polychem', '0'),
(8, 'polychem', '0'),
(9, 'polychem', '0'),
(10, 'pvc resin', '0'),
(11, 'polychem', '0'),
(12, 'polychem', '0'),
(13, 'polychem', '0'),
(14, 'material 1', '0'),
(15, 'material 1\\', '0'),
(16, 'material 1\\', '0'),
(17, 'material 2', '0'),
(18, 'material 2', '0'),
(19, 'material 2', '0'),
(20, 'material 2', '0'),
(21, 'material 2', '0'),
(22, 'material 2', '0'),
(23, 'material 2', '0'),
(24, 'material 1', '0'),
(25, 'material 3', '0'),
(26, 'material 3', '0'),
(27, 'material 3', '0'),
(28, 'material 3', '0'),
(29, 'material 1', '0'),
(30, 'material 1123', '0'),
(31, 'tauline', '0');

-- --------------------------------------------------------

--
-- Table structure for table `timeloss_reason`
--

CREATE TABLE IF NOT EXISTS `timeloss_reason` (
  `id` int(11) NOT NULL COMMENT '	',
  `type` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeloss_reason`
--

INSERT INTO `timeloss_reason` (`id`, `type`, `reason`, `department`) VALUES
(1, 'BreakDown', 'Mechanical - Emboss Roll Change', 'laminating'),
(2, 'Breakdown', 'Mechanical - Emboss Rubber Roll Change', 'laminating'),
(3, 'BreakDown', 'Mechanical - Count Rubber Roll Change', 'laminating'),
(4, 'Breakdown', 'Electrical - Electrical Heater Problem', 'laminating'),
(5, 'BreakDown', 'Electrical - Water Heater Problem', 'laminating'),
(6, 'Breakdown', 'Electrical - Expander Roll Change', 'laminating'),
(7, 'BreakDown', 'Electrical - Problem in Motor or PIV', 'laminating'),
(8, 'Breakdown', 'Electrical - Temperature Issue', 'laminating'),
(9, 'BreakDown', 'Others', 'laminating'),
(10, 'LossHour', 'Program Change', 'laminating'),
(11, 'LossHour', 'Lack of Semi Finished Goods', 'laminating'),
(12, 'LossHour', 'Factory Shutdown', 'laminating'),
(13, 'LossHour', 'Strike', 'laminating'),
(14, 'LossHour', 'CT Shortage', 'laminating'),
(15, 'LossHour', 'Others', 'laminating'),
(16, 'BreakDown', 'Mechancial - Conveyor Belt Problem', 'calender'),
(17, 'BreakDown', 'Mechanical - Air Pressure Problem', 'calender'),
(18, 'BreakDown', 'Mechanical - Emboss Roll Change', 'calender'),
(19, 'BreakDown', 'Mechanical - Emboss Rubber Roll Change', 'calender'),
(20, 'BreakDown', 'Mechanical - Temperature Problem ', 'calender'),
(21, 'BreakDown', 'Mechanical - Rotary Problem ', 'calender'),
(22, 'BreakDown', 'Electrical - Power Failure', 'calender'),
(23, 'BreakDown', 'Electrical - Motor Tripping Problem', 'calender'),
(24, 'BreakDown', 'Electrical - Extruder Tripping Problem', 'calender'),
(25, 'BreakDown', 'Electrical - Winder Tripping Problem', 'calender'),
(26, 'BreakDown', 'Banbury - Hydraulic Problem', 'calender'),
(27, 'BreakDown', 'Banbury - Gate Open and Close Problem', 'calender'),
(28, 'BreakDown', 'Banbury - Air Pressure Problem', 'calender'),
(29, 'BreakDown', 'Others', 'calender'),
(30, 'LossHour', 'Calendar Roll Polishing', 'calender'),
(31, 'LossHour', 'Extruder Die Cleaning', 'calender'),
(32, 'LossHour', 'Gauge Setting', 'calender'),
(33, 'LossHour', 'Color Change', 'calender'),
(34, 'LossHour', 'Factory Shutdown', 'calender'),
(35, 'LossHour', 'Strike', 'calender'),
(36, 'LossHour', 'Raw Material Shortage', 'calender'),
(37, 'LossHour', 'Others', 'calender'),
(38, 'BreakDown', 'Mechanical - Rubber Roll Change', 'printing'),
(39, 'BreakDown', 'Mechanical - Air Pipe Leakage', 'printing'),
(40, 'BreakDown', 'Mechanical - Blade Pressure Problem', 'printing'),
(41, 'BreakDown', 'Mechanical - Main Motor Belt Change', 'printing'),
(42, 'BreakDown', 'Electrical - Power Failure', 'printing'),
(43, 'BreakDown', 'Electrical - Main Motor MCV Tripping', 'printing'),
(44, 'BreakDown', 'Electrical - Winder Tension Control Problem', 'printing'),
(45, 'BreakDown', 'Electrical - Unvwinder Tension Problem', 'printing'),
(46, 'BreakDown', 'Electrical - Unwinder Running Problem', 'printing'),
(47, 'BreakDown', 'Others', 'printing'),
(48, 'LossHour', 'Shortage of Print Film', 'printing'),
(49, 'LossHour', 'Design Fitting and Change', 'printing'),
(50, 'LossHour', 'Design Clearing and Packing', 'printing'),
(51, 'LossHour', 'Color Matching', 'printing'),
(52, 'LossHour', 'Blade Polish and Change', 'printing'),
(53, 'LossHour', 'Color Grinding and Filter Change', 'printing'),
(54, 'LossHour', 'Running Design Refitting', 'printing'),
(55, 'LossHour', 'Factory Shutdown', 'printing'),
(56, 'LossHour', 'Strike', 'printing'),
(57, 'LossHour', 'Others', 'printing'),
(58, 'LossHour ', 'Startup time after shutdown', 'laminating'),
(59, 'BreakDown', 'Electrical - Power Failure', 'laminating'),
(60, 'BreakDown', 'Boiler Issues', 'laminating'),
(61, 'LossHour', 'Mixing Setting', 'calender'),
(62, 'LossHour', 'Pimples', 'calender'),
(63, 'BreakDown', 'Electrical - Power Change Over', 'calender');

-- --------------------------------------------------------

--
-- Table structure for table `time_loss`
--

CREATE TABLE IF NOT EXISTS `time_loss` (
  `id` int(11) NOT NULL,
  `shift` varchar(100) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `department_id` varchar(50) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `time` varchar(10) NOT NULL DEFAULT '0.0',
  `wk_hrs` varchar(10) DEFAULT '0.0',
  `reasons` varchar(100) DEFAULT NULL,
  `totalloss` varchar(20) NOT NULL DEFAULT '0',
  `nepalidate` varchar(20) NOT NULL,
  `totalloss_sec` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_loss`
--

INSERT INTO `time_loss` (`id`, `shift`, `date`, `department_id`, `type`, `time`, `wk_hrs`, `reasons`, `totalloss`, `nepalidate`, `totalloss_sec`) VALUES
(1, 'A', NULL, 'printing', 'LossHour', '6.00', '6.20', 'Color Matching', '0.20', '2072-04-03', '1200'),
(2, 'A', NULL, 'printing', 'LossHour', '10.40', '11.30', 'Design Fitting and Change', '0.50', '2072-04-03', ''),
(3, 'A', NULL, 'printing', 'LossHour', '11.30', '11.50', 'Color Matching', '0.20', '2072-04-03', '1200'),
(7, 'A', NULL, 'printing', 'LossHour', '14.30', '15.00', 'Color Matching', '0.30', '2072-04-03', '1800'),
(8, 'A', NULL, 'printing', 'LossHour', '17.20', '18.00', 'Design Clearing and Packing', '0.40', '2072-04-03', '2400'),
(9, 'B', NULL, 'printing', 'LossHour', '18.00', '19.00', 'Design Fitting and Change', '1.00', '2072-04-03', '3600'),
(10, 'B', NULL, 'printing', 'LossHour', '19.00', '19.30', 'Color Matching', '0.30', '2072-04-03', '1800'),
(16, 'B', NULL, 'printing', 'LossHour', '21.15', '21.30', 'Color Grinding and Filter Change', '0.15', '2072-04-03', '900'),
(17, 'B', NULL, 'printing', 'LossHour', '0.15', '1.00', 'Design Clearing and Packing', '0.45', '2072-04-03', '2700'),
(18, 'B', NULL, 'printing', 'LossHour', '1.00', '2.00', 'Design Clearing and Packing', '1.00', '2072-04-03', '3600'),
(19, 'B', NULL, 'printing', 'LossHour', '2.00', '2.30', 'Color Matching', '0.30', '2072-04-03', '1800'),
(20, 'A', NULL, 'laminating', 'BreakDown', '6.00', '10.30', 'Electrical - Temperature Issue', '4.30', '2072-04-03', '16200'),
(21, 'B', NULL, 'laminating', 'BreakDown', '20.00', '21.00', 'Electrical - Temperature Issue', '1.0', '2072-04-03', '3600'),
(22, 'B', NULL, 'laminating', 'BreakDown', '21.10', '21.40', 'Others', '0.30', '2072-04-03', '1800'),
(23, 'B', NULL, 'laminating', 'LossHour', '22.00', '23.00', 'Lack of Semi Finished Goods', '1.0', '2072-04-03', '3600'),
(24, 'B', NULL, 'printing', 'LossHour', '19.30', '20.00', 'Others', '0.30', '2072-04-03', '1800'),
(27, 'A', NULL, 'laminating', 'LossHour', '10.00', '18.00', 'Strike', '8', '2072-04-04', ''),
(28, 'A', NULL, 'printing', 'LossHour', '12.00', '18.00', 'Strike', '6.00', '2072-04-04', '21600'),
(29, 'B', NULL, 'printing', 'LossHour', '18.00', '6.00', 'Strike', '12.00', '2072-04-04', '43200'),
(35, 'A', NULL, 'laminating', 'LossHour', '6.00', '7.15', 'Program Change', '1.15', '2072-04-07', '4500'),
(36, 'A', NULL, 'laminating', 'BreakDown', '16.00', '16.50', 'Mechanical - Emboss Roll Change', '0.5', '2072-04-07', '3000'),
(37, 'A', NULL, 'laminating', 'LossHour', '16.50', '17.10', 'Program Change', '0.2', '2072-04-07', '1200'),
(38, 'B', NULL, 'laminating', 'BreakDown', '4.30', '6.00', 'Mechanical - Emboss Rubber Roll Change', '1.3', '2072-04-07', '5400'),
(39, 'A', NULL, 'printing', 'LossHour', '6.00', '7.00', 'Design Fitting and Change', '1.00', '2072-04-07', '3600'),
(40, 'A', NULL, 'printing', 'LossHour', '7.00', '8.00', 'Color Matching', '1.00', '2072-04-07', '3600'),
(41, 'A', NULL, 'printing', 'LossHour', '10.00', '18.00', 'Others', '8.00', '2072-04-07', '14400'),
(42, 'B', NULL, 'printing', 'LossHour', '18.00', '6.00', 'Shortage of Print Film', '12.00', '2072-04-07', '43200'),
(43, 'A', NULL, 'laminating', 'LossHour', '06.00', '06.50', 'Startup time after shutdown', '0.5', '2072-04-10', '3000'),
(44, 'A', NULL, 'laminating', 'BreakDown', '15.40', '16.25', 'Mechanical - Emboss Roll Change', '0.45', '2072-04-10', '2700'),
(45, 'A', NULL, 'laminating', 'LossHour', '16.25', '16.40', 'Program Change', '0.15', '2072-04-10', '900'),
(48, 'B', NULL, 'printing', 'LossHour', '19.45', '20.20', 'Color Matching', '0..35', '2072-04-10', '2100'),
(49, 'B', NULL, 'printing', 'LossHour', '23.00', '23.30', 'Design Clearing and Packing', '0.30', '2072-04-10', '1800'),
(50, 'B', NULL, 'printing', 'LossHour', '23.30', '23.50', 'Blade Polish and Change', '0.20', '2072-04-10', '1200'),
(51, 'B', NULL, 'printing', 'BreakDown', '23.50', '00.10', 'Mechanical - Rubber Roll Change', '0.20', '2072-04-10', '1200'),
(52, 'B', NULL, 'printing', 'LossHour', '0.10', '1.00', 'Design Fitting and Change', '0.50', '2072-04-10', '40200'),
(53, 'B', NULL, 'printing', 'LossHour', '1.10', '1.40', 'Color Matching', '0.30', '2072-04-10', '1800'),
(60, 'B', NULL, 'laminating', 'BreakDown', '4.0', '4.45', 'Mechanical - Emboss Roll Change', '0.45', '2072-04-10', '2700'),
(61, 'B', NULL, 'laminating', 'LossHour', '4.45', '5.05', 'Program Change', '0.2', '2072-04-10', '1200'),
(78, 'B', NULL, 'printing', 'BreakDown', '18.00', '2.00', 'Electrical - Power Cut', '8.00', '2072-04-11', '0'),
(79, 'B', NULL, 'printing', 'LossHour', '2.00', '3.00', 'Color Grinding and Filter Change', '1.00', '2072-04-11', '1800'),
(80, 'B', NULL, 'printing', 'BreakDown', '3.00', '3.20', 'Mechanical - Rubber Roll Change', '0.20', '2072-04-11', '1200'),
(81, 'B', NULL, 'printing', 'LossHour', '3.20', '4.00', 'Color Matching', '0.40', '2072-04-11', '2400'),
(82, 'A', NULL, 'laminating', 'BreakDown', '17.15', '18.00', 'Mechanical - Emboss Roll Change', '0.45', '2072-04-11', '2700'),
(83, 'B', NULL, 'laminating', 'BreakDown', '18.00', '24.00', 'Electrical - Power Failure', '6.0', '2072-04-11', '52200'),
(93, 'A', NULL, 'laminating', 'BreakDown', '11.05', '18.00', 'Electrical - Power Failure', '6.55', '2072-04-12', '24900'),
(94, 'A', NULL, 'laminating', 'BreakDown', '9.00', '9.50', 'Electrical - Power Failure', '0.5', '2072-04-12', '3000'),
(96, 'A', NULL, 'printing', 'LossHour', '17.00', '18.00', 'Shortage of Print Film', '1.00', '2072-04-12', '3600'),
(97, 'A', NULL, 'printing', 'LossHour', '14.00', '15.00', 'Color Matching', '1.00', '', '3600'),
(98, 'A', NULL, 'printing', 'BreakDown', '11.00', '14.00', 'Electrical - Power Cut', '3.00', '2072-04-12', '10800'),
(100, 'B', NULL, 'printing', 'BreakDown', '18.00', '2.00', 'Electrical - Power Cut', '8.00', '2072-04-12', '57600'),
(101, 'B', NULL, 'printing', 'LossHour', '2.00', '6.00', 'Shortage of Print Film', '4.00', '2072-04-12', '14400'),
(111, 'A', NULL, 'printing', 'LossHour', '6.00', '7.00', 'Color Grinding and Filter Change', '1.00', '2072-04-12', '3600'),
(112, 'A', NULL, 'printing', 'LossHour', '7.00', '8.00', 'Color Matching', '1.00', '2072-04-12', '3600'),
(113, 'A', NULL, 'printing', 'BreakDown', '9.00', '10.30', 'Electrical - Power Cut', '1.30', '2072-04-12', '5400'),
(114, 'A', NULL, 'printing', 'LossHour', '17.00', '18.00', 'Shortage of Print Film', '1.00', '2072-04-12', '3600'),
(115, 'B', NULL, 'laminating', 'BreakDown', '18.00', '24.00', 'Electrical - Power Failure', '6.0', '2072-04-12', '48600'),
(116, 'A', NULL, 'laminating', 'BreakDown', '9.00', '9.40', 'Mechanical - Emboss Roll Change', '0.4', '2072-04-13', '2400'),
(117, 'A', NULL, 'laminating', 'LossHour', '9.40', '9.55', 'Program Change', '0.15', '2072-04-13', '900'),
(119, 'B', NULL, 'printing', 'LossHour', '5.30', '6.00', 'Color Matching', '0.30', '2072-04-11', '1800'),
(120, 'B', NULL, 'printing', 'LossHour', '18.00', '18.30', 'Design Fitting and Change', '0.30', '2072-04-13', '1800'),
(121, 'B', NULL, 'printing', 'BreakDown', '18.30', '19.10', 'Mechanical - Rubber Roll Change', '0.40', '2072-04-13', '1800'),
(122, 'B', NULL, 'printing', 'LossHour', '19.10', '19.50', 'Color Matching', '0.40', '2072-04-13', '2400'),
(123, 'B', NULL, 'printing', 'LossHour', '00.30', '1.00', 'Design Clearing and Packing', '0.30', '2072-04-13', '1800'),
(124, 'B', NULL, 'printing', 'LossHour', '1.00', '6.00', 'Shortage of Print Film', '5', '2072-04-13', '18000'),
(128, 'A', NULL, 'printing', 'LossHour', '6.00', '7.30', 'Shortage of Print Film', '1.3', '2072-04-14', '5400'),
(129, 'A', NULL, 'printing', 'LossHour', '7.30', '8.00', 'Color Matching', '0.3', '2072-04-14', '1800'),
(130, 'B', NULL, 'printing', 'LossHour', '3.30', '4.00', 'Color Matching', '0.3', '2072-04-10', '1800'),
(131, 'A', NULL, 'printing', 'LossHour', '6.00', '18.00', 'Shortage of Print Film', '12', '2072-04-13', '43200'),
(134, 'B', NULL, 'laminating', 'BreakDown', '0.30', '1.15', 'Mechanical - Emboss Roll Change', '0.45', '2072-04-13', '40500'),
(135, 'B', NULL, 'laminating', 'LossHour', '1.15', '1.35', 'Program Change', '0.2', '2072-04-13', '1200'),
(136, 'A', NULL, 'printing', 'LossHour', '11.00', '11.30', 'Color Matching', '0.3', '2072-04-14', '1800'),
(137, 'A', NULL, 'printing', 'LossHour', '12.00', '12.30', 'Color Grinding and Filter Change', '0.3', '2072-04-14', '1800'),
(138, 'A', NULL, 'printing', 'LossHour', '17.00', '18.00', 'Design Clearing and Packing', '1', '2072-04-14', '3600'),
(139, 'A', NULL, 'calender', 'LossHour', '6.00', '7.00', 'Calendar Roll Polishing', '1', '2072-04-03', '3600'),
(140, 'A', NULL, 'calender', 'LossHour', '7.00', '7.30', 'Mixing Setting', '0.3', '2072-04-03', '1800'),
(141, 'A', NULL, 'calender', 'BreakDown', '7.40', '8.15', 'Mechanical - Temperature Problem ', '0.35', '2072-04-03', '2100'),
(142, 'A', NULL, 'calender', 'BreakDown', '17.30', '18.00', 'Mechanical - Emboss Roll Change', '0.30', '2072-04-03', '1800'),
(143, 'B', NULL, 'calender', 'BreakDown', '18.00', '18.15', 'Electrical - Power Failure', '0.15', '2072-04-03', '900'),
(144, 'B', NULL, 'calender', 'BreakDown', '20.40', '21.05', 'Mechanical - Temperature Problem ', '0.25', '2072-04-03', '1500'),
(145, 'B', NULL, 'calender', 'BreakDown', '2.00', '2.15', 'Electrical - Power Change Over', '0.15', '2072-04-03', '900'),
(146, 'A', NULL, 'calender', 'LossHour', '9.15', '18.00', 'Strike', '8.45', '2072-04-04', '31500'),
(147, 'B', NULL, 'calender', 'LossHour', '18.00', '24.00', 'Strike', '6', '2072-04-04', '21600'),
(148, 'B', NULL, 'calender', 'LossHour', '0.00', '6.00', 'Strike', '6', '2072-04-04', '21600'),
(149, 'A', NULL, 'calender', 'LossHour', '6.00', '7.00', 'Others', '1', '2072-04-07', '3600'),
(150, 'A', NULL, 'calender', 'LossHour', '7.00', '7.25', 'Mixing Setting', '0.25', '2072-04-07', '1500'),
(151, 'A', NULL, 'calender', 'BreakDown', '7.40', '8.35', 'Electrical - Extruder Tripping Problem', '0.55', '2072-04-07', '3300'),
(152, 'A', NULL, 'calender', 'LossHour', '10.00', '10.35', 'Pimples', '0.35', '2072-04-07', '2100'),
(153, 'A', NULL, 'calender', 'BreakDown', '14.30', '15.05', 'Mechanical - Emboss Roll Change', '0.35', '2072-04-07', '2100'),
(154, 'A', NULL, 'calender', 'BreakDown', '16.05', '17.00', 'Others', '0.55', '2072-04-07', '3300'),
(155, 'B', NULL, 'calender', 'BreakDown', '18.00', '19.00', 'Others', '1', '2072-04-07', '3600'),
(156, 'B', NULL, 'calender', 'BreakDown', '3.30', '3.55', 'Mechanical - Emboss Roll Change', '0.25', '2072-04-07', '1500'),
(157, 'A', NULL, 'calender', 'BreakDown', '6.00', '6.30', 'Mechanical - Temperature Problem ', '0.3', '2072-04-10', '1800'),
(158, 'A', NULL, 'calender', 'LossHour', '6.30', '7.00', 'Mixing Setting', '0.3', '2072-04-10', '1800'),
(159, 'B', NULL, 'calender', 'BreakDown', '6.00', '6.13', 'Electrical - Power Failure', '0.13', '2072-04-10', '780'),
(160, 'B', NULL, 'calender', 'BreakDown', '18.20', '20.35', 'Electrical - Extruder Tripping Problem', '2.15', '2072-04-10', '8100'),
(161, 'B', NULL, 'calender', 'BreakDown', '20.40', '21.10', 'Electrical - Extruder Tripping Problem', '0.3', '2072-04-10', '1800'),
(162, 'A', NULL, 'calender', 'BreakDown', '21.35', '22.00', 'Mechanical - Emboss Roll Change', '0.25', '2072-04-10', '1500'),
(163, 'B', NULL, 'calender', 'LossHour', '22.00', '22.20', 'Mixing Setting', '0.2', '2072-04-10', '1200'),
(164, 'B', NULL, 'calender', 'BreakDown', '2.00', '2.10', 'Electrical - Power Change Over', '0.1', '2072-04-10', '600'),
(165, 'A', NULL, 'calender', 'LossHour', '8.00', '9.00', 'Pimples', '1', '2072-04-11', '3600'),
(166, 'A', NULL, 'calender', 'BreakDown', '13.00', '13.25', 'Mechanical - Emboss Roll Change', '0.25', '2072-04-11', '1500'),
(167, 'A', NULL, 'calender', 'LossHour', '13.25', '14.00', 'Pimples', '0.35', '2072-04-11', '2100'),
(168, 'B', NULL, 'calender', 'BreakDown', '18.00', '24.00', 'Electrical - Power Failure', '6', '2072-04-11', '21600'),
(169, 'B', NULL, 'calender', 'BreakDown', '0.00', '2.00', 'Electrical - Power Failure', '2', '2072-04-11', '7200'),
(170, 'A', NULL, 'calender', 'BreakDown', '9.00', '10.00', 'Electrical - Power Failure', '1', '2072-04-12', '3600'),
(171, 'A', NULL, 'calender', 'LossHour', '10.00', '10.25', 'Mixing Setting', '0.25', '2072-04-12', '1500'),
(172, 'A', NULL, 'calender', 'BreakDown', '11.00', '18.00', 'Electrical - Power Failure', '7', '2072-04-12', '25200'),
(173, 'B', NULL, 'calender', 'BreakDown', '18.00', '24.00', 'Electrical - Power Failure', '6', '2072-04-12', '21600'),
(174, 'B', NULL, 'calender', 'BreakDown', '0.00', '2.00', 'Electrical - Power Failure', '2', '2072-04-12', '7200'),
(175, 'B', NULL, 'calender', 'BreakDown', '2.00', '5.00', 'Mechanical - Temperature Problem ', '3', '2072-04-12', '10800'),
(176, 'B', NULL, 'calender', 'LossHour', '5.00', '6.00', 'Pimples', '1', '2072-04-12', '3600'),
(177, 'B', NULL, 'printing', 'LossHour', '18.00', '1900', 'Design Fitting and Change', '1', '2072-04-14', '3600'),
(178, 'B', NULL, 'printing', 'LossHour', '19.00', '20.00', 'Color Grinding and Filter Change', '1', '2072-04-14', '3600'),
(179, 'B', NULL, 'calender', 'BreakDown', '18.00', '18.35', 'Mechanical - Emboss Roll Change', '0.35', '2072-04-13', '2100'),
(180, 'B', NULL, 'calender', 'LossHour', '23.00', '24.00', 'Pimples', '1', '2072-04-13', '3600'),
(181, 'B', NULL, 'calender', 'LossHour', '0.00', '2.00', 'Pimples', '2', '2072-04-13', '7200'),
(182, 'B', NULL, 'calender', 'BreakDown', '4.10', '5.20', 'Mechanical - Emboss Rubber Roll Change', '1.1', '2072-04-13', '4200'),
(183, 'B', NULL, 'calender', 'LossHour', '5.20', '5.45', 'Mixing Setting', '0.25', '2072-04-13', '1500'),
(184, 'B', NULL, 'printing', 'LossHour', '18.00', '6.00', 'Shortage of Print Film', '12', '2072-04-14', '43200'),
(185, 'B', NULL, 'printing', 'LossHour', '0.00', '0.10', 'Blade Polish and Change', '0.1', '2072-04-10', '600'),
(186, 'B', NULL, 'laminating', 'LossHour', '18.00', '24.00', 'Strike', '6', '2072-04-04', '21600'),
(187, 'B', NULL, 'laminating', 'LossHour', '0.00', '6.00', 'Strike', '6', '2072-04-04', '21600'),
(188, 'B', NULL, 'laminating', 'BreakDown', '0.00', '3.30', 'Electrical - Power Failure', '3.3', '2072-04-11', '12600'),
(189, 'A', NULL, 'laminating', 'BreakDown', '0.00', '4.30', 'Electrical - Power Failure', '4.3', '2072-04-12', '16200'),
(190, 'A', NULL, 'calender', 'BreakDown', '11.30', '11.55', 'Mechanical - Emboss Roll Change', '0.25', '2072-04-14', '1500'),
(193, 'A', NULL, 'calender', 'LossHour', '6.00', '6.10', 'Mixing Setting', '0.1', '2072-04-14', '600'),
(194, 'A', NULL, 'calender', 'BreakDown', '13.15', '13.25', 'Electrical - Power Failure', '0.1', '2072-04-14', '600'),
(195, 'A', NULL, 'calender', 'BreakDown', '13.35', '13.45', 'Electrical - Power Change Over', '0.1', '2072-04-14', '600'),
(196, 'B', NULL, 'calender', 'BreakDown', '18.59', '19.12', 'Electrical - Power Failure', '0.13', '2072-04-14', '780'),
(197, 'B', NULL, 'calender', 'BreakDown', '17.00', '17.30', 'Electrical - Motor Tripping Problem', '0.3', '2072-04-14', '1800'),
(198, 'B', NULL, 'calender', 'LossHour', '19.30', '21.00', 'Others', '1.3', '2072-04-14', '5400'),
(199, 'B', NULL, 'calender', 'BreakDown', '2.00', '2.05', 'Electrical - Power Change Over', '0.5', '2072-04-14', '300'),
(200, 'A', NULL, 'calender', 'LossHour', '12.00', '12.23', 'Gauge Setting', '0.23', '2072-04-14', '1380'),
(201, 'B', NULL, 'printing', 'LossHour', '18.00', '21.10', 'Shortage of Print Film', '3.1', '2072-04-15', '11400'),
(202, 'B', NULL, 'printing', 'BreakDown', '21.10', '21.30', 'Mechanical - Rubber Roll Change', '0.2', '2072-04-15', '1200'),
(203, 'B', NULL, 'printing', 'LossHour', '21.30', '22.00', 'Color Matching', '0.3', '2072-04-15', '1800'),
(204, 'B', NULL, 'printing', 'BreakDown', '22.20', '22.40', 'Mechanical - Rubber Roll Change', '0.2', '2072-04-15', '1200'),
(205, 'B', NULL, 'printing', 'LossHour', '00.10', '00.40', 'Design Clearing and Packing', '0.3', '2072-04-15', '1800'),
(206, 'B', NULL, 'printing', 'LossHour', '00.40', '1.00', 'Color Matching', '0.2', '2072-04-15', '1200'),
(207, 'B', NULL, 'printing', 'LossHour', '2.30', '3.15', 'Design Clearing and Packing', '0.45', '2072-04-15', '2700'),
(208, 'B', NULL, 'printing', 'LossHour', '3.15', '3.40', 'Color Matching', '0.25', '2072-04-15', '1500'),
(209, 'B', NULL, 'printing', 'LossHour', '5.10', '5.30', 'Color Matching', '0.2', '2072-04-15', '1200'),
(210, 'A', NULL, 'calender', 'BreakDown', '8.34', '8.55', 'Mechanical - Emboss Roll Change', '0.21', '2072-04-15', '1260'),
(211, 'A', NULL, 'calender', 'LossHour', '8.55', '9.15', 'Mixing Setting', '0.2', '2072-04-15', '1200'),
(212, 'A', NULL, 'calender', 'BreakDown', '12.35', '12.50', 'Electrical - Power Failure', '0.15', '2072-04-15', '900'),
(213, 'A', NULL, 'calender', 'BreakDown', '13.15', '13.25', 'Electrical - Power Change Over', '0.1', '2072-04-15', '600'),
(214, 'B', NULL, 'calender', 'BreakDown', '18.00', '18.30', 'Mechanical - Emboss Roll Change', '0.3', '2072-04-15', '1800'),
(215, 'B', NULL, 'calender', 'LossHour', '18.30', '19.30', 'Calendar Roll Polishing', '1', '2072-04-15', '3600'),
(216, 'B', NULL, 'calender', 'LossHour', '19.30', '20.00', 'Mixing Setting', '0.3', '2072-04-15', '1800'),
(217, 'B', NULL, 'calender', 'BreakDown', '2.00', '2.15', 'Electrical - Power Change Over', '0.15', '2072-04-15', '900'),
(218, 'B', NULL, 'printing', 'LossHour', '6.00', '18.00', 'Shortage of Print Film', '12', '2072-04-15', '43200'),
(219, 'B', NULL, 'laminating', 'BreakDown', '21.15', '22.45', 'Mechanical - Emboss Roll Change', '1.3', '2072-04-15', '5400'),
(220, 'B', NULL, 'laminating', 'LossHour', '22.45', '22.55', 'Program Change', '0.1', '2072-04-15', '600'),
(222, 'A', NULL, 'printing', 'LossHour', '7.00', '8.00', 'Color Grinding and Filter Change', '1', '2072-04-16', '3600'),
(223, 'A', NULL, 'printing', 'LossHour', '8.00', '8.30', 'Color Matching', '0.3', '2072-04-16', '1800'),
(224, 'A', NULL, 'printing', 'LossHour', '10.06', '10.30', 'Design Clearing and Packing', '0.24', '2072-04-16', '1440'),
(225, 'A', NULL, 'printing', 'BreakDown', '10.30', '10.50', 'Mechanical - Rubber Roll Change', '0.2', '2072-04-16', '1200'),
(226, 'A', NULL, 'printing', 'LossHour', '10.50', '11.20', 'Color Matching', '0.3', '2072-04-16', '1800'),
(227, 'A', NULL, 'printing', 'LossHour', '14.00', '14.15', 'Color Matching', '0.15', '2072-04-16', '900'),
(228, 'A', NULL, 'printing', 'LossHour', '15.15', '16.15', 'Design Fitting and Change', '1', '2072-04-16', '3600'),
(230, 'A', NULL, 'printing', 'LossHour', '16.15', '16.30', 'Color Matching', '0.15', '2072-04-16', '900'),
(231, 'B', NULL, 'laminating', 'BreakDown', '23.20', '24.00', 'Mechanical - Emboss Roll Change', '0.4', '2072-04-16', '2400'),
(232, 'B', NULL, 'laminating', 'LossHour', '00.00', '00.15', 'Program Change', '0.15', '2072-04-16', '900'),
(233, 'A', NULL, 'calender', 'BreakDown', '7.30', '7.50', 'Mechanical - Emboss Roll Change', '0.20', '2072-04-16', '1200'),
(235, 'A', NULL, 'calender', 'LossHour', '7.50a.m', '8.10', 'Mixing Setting', '0.20', '2072-04-16', '1200'),
(236, 'A', NULL, 'calender', 'BreakDown', '16.10', '16.20', 'Electrical - Power Failure', '0.10', '2072-04-16', '600'),
(237, 'B', NULL, 'printing', 'LossHour', '19.30', '20.00', 'Color Matching', '0.3', '2072-04-16', '1800'),
(241, 'B', NULL, 'printing', 'LossHour', '23.00', '24.00', 'Design Clearing and Packing', '1.0', '2072-04-16', '3600'),
(242, 'B', NULL, 'calender', 'BreakDown', '19.10', '19.25', 'Mechanical - Emboss Roll Change', '0.15', '2072-04-16', '900'),
(244, 'B', NULL, 'calender', 'LossHour', '19.25', '19.40', 'Gauge Setting', '0.15', '2072-04-16', '900'),
(246, 'B', NULL, 'calender', 'BreakDown', '19.00', '19..25', 'Mechanical - Emboss Roll Change', '0.25', '2072-04-16', '1800'),
(248, 'B', NULL, 'calender', 'LossHour', '3.00', '3.20', 'Gauge Setting', '0.20', '2072-04-16', '1200'),
(249, 'B', NULL, 'printing', 'LossHour', '0.00', '0.30', 'Color Matching', '0.3', '2072-04-16', '1800'),
(250, 'B', NULL, 'printing', 'LossHour', '1.00', '4.30', 'Shortage of Print Film', '3.3', '2072-04-16', '12600'),
(252, 'B', NULL, 'calender', 'BreakDown', '18.00', '18..10', 'Electrical - Power Failure', '0.10', '2072-04-16', '600'),
(254, 'A', NULL, 'calender', 'BreakDown', '14.10', '14.20', 'Electrical - Power Failure', '0.10', '2072-04-16', ''),
(255, 'A', NULL, 'laminating', 'BreakDown', '14.50', '15.30', 'Mechanical - Emboss Roll Change', '0.4', '2072-04-17', '2400'),
(256, 'A', NULL, 'laminating', 'LossHour', '15.30', '15.45', 'Program Change', '0.15', '2072-04-17', '900'),
(263, 'B', NULL, 'printing', 'LossHour', '18.00', '18.35', 'Color Matching', '0.35', '2072-04-17', '2100'),
(264, 'B', NULL, 'printing', 'BreakDown', '19.00', '21.10', 'Others', '2.1', '2072-04-17', '7800'),
(265, 'B', NULL, 'printing', 'BreakDown', '21.30', '21.50', 'Mechanical - Rubber Roll Change', '0.2', '2072-04-17', '1200'),
(266, 'B', NULL, 'printing', 'LossHour', '21.50', '22.20', 'Color Matching', '0.3', '2072-04-17', '1800'),
(269, 'B', NULL, 'printing', 'LossHour', '1.00', '1.30', 'Design Fitting and Change', '0.3', '2072-04-17', '1800'),
(270, 'B', NULL, 'printing', 'LossHour', '1.30', '2.00', 'Color Matching', '0.3', '2072-04-17', '1800'),
(271, 'B', NULL, 'printing', 'LossHour', '3.50', '4.25', 'Color Matching', '0.35', '2072-04-17', '2100'),
(272, 'B', NULL, 'printing', 'LossHour', '5.20', '6.00', 'Design Clearing and Packing', '0.4', '2072-04-17', '2400'),
(282, 'A', NULL, 'printing', 'BreakDown', '9.00', '11.00', 'Others', '2', '2072-04-17', '7200'),
(283, 'A', NULL, 'printing', 'BreakDown', '11.00', '11.30', 'Mechanical - Rubber Roll Change', '0.3', '2072-04-17', '1800'),
(284, 'A', NULL, 'printing', 'LossHour', '11.30', '12.30', 'Design Fitting and Change', '1', '2072-04-17', '3600'),
(285, 'A', NULL, 'printing', 'LossHour', '12.30', '13.00', 'Color Matching', '0.3', '2072-04-17', '1800'),
(286, 'A', NULL, 'printing', 'BreakDown', '15.30', '16.00', 'Electrical - Power Failure', '0.3', '2072-04-17', '1800'),
(287, 'A', NULL, 'printing', 'LossHour', '16.30', '17.00', 'Design Clearing and Packing', '0.3', '2072-04-17', '1800'),
(288, 'A', NULL, 'printing', 'LossHour', '17.00', '18.00', 'Design Fitting and Change', '1', '2072-04-17', '3600'),
(289, 'A', NULL, 'calender', 'BreakDown', '11.15', '11.25', 'Electrical - Power Failure', '0.10', '2072-04-17', '600'),
(290, 'A', NULL, 'calender', 'BreakDown', '11.40', '11.50', 'Electrical - Power Change Over', '0.10', '2072-04-17', '600'),
(291, 'A', NULL, 'calender', 'BreakDown', '13.00', '13.10', 'Electrical - Power Failure', '0.10', '2072-04-17', '600'),
(293, 'A', NULL, 'calender', 'BreakDown', '13.50', '14.00', 'Electrical - Power Change Over', '0.10', '2072-04-17', '600'),
(296, 'B', NULL, 'calender', 'BreakDown', '18.00', '18.13', 'Electrical - Power Failure', '0.13', '2072-04-17', '1800'),
(298, 'B', NULL, 'calender', 'BreakDown', '24.30', '24.55', 'Mechanical - Emboss Roll Change', '0.25', '2072-04-17', '1500'),
(299, 'B', NULL, 'calender', 'BreakDown', '1.55am', '2.10am', 'Electrical - Power Change Over', '0.15', '2072-04-17', '900'),
(303, 'B', NULL, 'printing', 'LossHour', '18.00', '18.30', 'Color Matching', '0.3', '2072-04-17', '1800'),
(304, 'B', NULL, 'calender', 'LossHour', '2.00a.m', '2.50a.m', 'Calendar Roll Polishing', '0.5', '2072-04-16', '3000'),
(306, 'A', NULL, 'calender', 'BreakDown', '14.00', '14.30', 'Mechanical - Emboss Roll Change', '0.3', '2072-04-17', '1800'),
(307, 'B', NULL, 'printing', 'BreakDown', '23.10', '24.10', 'Electrical - Unvwinder Tension Problem', '1.0', '2072-04-17', '82800'),
(308, 'A', NULL, 'printing', 'LossHour', '6.00', '6.30', 'Color Matching', '0.3', '2072-04-17', '1800'),
(310, 'B', NULL, 'laminating', 'BreakDown', '18.00', '19.15', 'Mechanical - Emboss Rubber Roll Change', '1.15', '2072-04-17', '4500'),
(311, 'B', NULL, 'laminating', 'LossHour', '1.00', '1.30', 'Program Change', '0.3', '2072-04-17', '1800');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `hash_change_password` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `role`, `hash_change_password`, `created`, `modified`) VALUES
(1, 'admin', 'afebb4a30fffa1f413fd3045a5646d1fad3bd17a', 'admin@admin.com', NULL, 'admin', NULL, '2015-05-24 10:22:57', '2015-05-24 10:22:57'),
(4, 'store', 'afebb4a30fffa1f413fd3045a5646d1fad3bd17a', 'store@gmail.com', NULL, 'store', NULL, '2015-05-24 12:30:51', '2015-05-24 12:30:51'),
(5, 'mixing', 'afebb4a30fffa1f413fd3045a5646d1fad3bd17a', 'mixing@gmail.com', NULL, 'mixing', NULL, '2015-05-24 13:10:11', '2015-05-24 13:10:11'),
(6, 'lokesh todi', 'afebb4a30fffa1f413fd3045a5646d1fad3bd17a', 'scrap@gmail.com', NULL, 'scrap', NULL, '2015-05-24 13:18:23', '2015-05-24 13:18:23'),
(8, 'calender', 'afebb4a30fffa1f413fd3045a5646d1fad3bd17a', 'calender@gmail.com', NULL, 'calender', NULL, '2015-05-26 11:15:38', '2015-05-26 11:15:38'),
(9, 'printing', 'afebb4a30fffa1f413fd3045a5646d1fad3bd17a', 'printing@gmail.com', NULL, 'printing', NULL, '2015-05-26 11:27:42', '2015-05-26 11:27:42'),
(10, 'laminating', 'afebb4a30fffa1f413fd3045a5646d1fad3bd17a', 'laminating@gmail.com', NULL, 'laminating', NULL, '2015-05-26 11:47:33', '2015-05-26 11:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `vender_details`
--

CREATE TABLE IF NOT EXISTS `vender_details` (
  `vender_id` int(11) NOT NULL,
  `vender_name` varchar(50) DEFAULT NULL,
  `vender_phone` varchar(50) DEFAULT NULL,
  `vender_location` varchar(50) DEFAULT NULL,
  `vender_mobile` varchar(50) DEFAULT NULL,
  `vender_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vender_details`
--

INSERT INTO `vender_details` (`vender_id`, `vender_name`, `vender_phone`, `vender_location`, `vender_mobile`, `vender_email`) VALUES
(5, 'some vendor', '9803541889', 'ktm', '023945', 'you@mailcom.com'),
(6, 'form style', 'form', 'form', 'form', 'forrm@fom.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basecolor`
--
ALTER TABLE `basecolor`
  ADD PRIMARY KEY (`basecolor_id`);

--
-- Indexes for table `baseemboss`
--
ALTER TABLE `baseemboss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calender_cpr`
--
ALTER TABLE `calender_cpr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calender_input`
--
ALTER TABLE `calender_input`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `calender_irr`
--
ALTER TABLE `calender_irr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calender_program`
--
ALTER TABLE `calender_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calender_scrap`
--
ALTER TABLE `calender_scrap`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `date` (`date`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `composition`
--
ALTER TABLE `composition`
  ADD PRIMARY KEY (`composition_id`);

--
-- Indexes for table `consumption_stock`
--
ALTER TABLE `consumption_stock`
  ADD PRIMARY KEY (`consumption_id`);

--
-- Indexes for table `dailyrawmaterialprinting_report`
--
ALTER TABLE `dailyrawmaterialprinting_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_stock`
--
ALTER TABLE `department_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dimension`
--
ALTER TABLE `dimension`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `factory_halt`
--
ALTER TABLE `factory_halt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `input_output`
--
ALTER TABLE `input_output`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `laminating_reason`
--
ALTER TABLE `laminating_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laminating_reason_other`
--
ALTER TABLE `laminating_reason_other`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leminating_colorcode`
--
ALTER TABLE `leminating_colorcode`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `machine_loss`
--
ALTER TABLE `machine_loss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`material_id`), ADD UNIQUE KEY `material_name` (`material_name`);

--
-- Indexes for table `mixing_base`
--
ALTER TABLE `mixing_base`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `mixing_cpar`
--
ALTER TABLE `mixing_cpar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mixing_materials`
--
ALTER TABLE `mixing_materials`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `mixing_product`
--
ALTER TABLE `mixing_product`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `patterns`
--
ALTER TABLE `patterns`
  ADD PRIMARY KEY (`pattern_id`);

--
-- Indexes for table `printing_data`
--
ALTER TABLE `printing_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printing_issue`
--
ALTER TABLE `printing_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printing_pattern`
--
ALTER TABLE `printing_pattern`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `printing_rawmaterial`
--
ALTER TABLE `printing_rawmaterial`
  ADD PRIMARY KEY (`printing_rawmaterialid`), ADD UNIQUE KEY `idprinting_rawmaterial_UNIQUE` (`printing_rawmaterialid`);

--
-- Indexes for table `printing_shiftreport`
--
ALTER TABLE `printing_shiftreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printing_stock`
--
ALTER TABLE `printing_stock`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `printng_opening`
--
ALTER TABLE `printng_opening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_base_code`
--
ALTER TABLE `print_base_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_shiftreport`
--
ALTER TABLE `production_shiftreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `purchasestock`
--
ALTER TABLE `purchasestock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `quality`
--
ALTER TABLE `quality`
  ADD PRIMARY KEY (`quality_id`);

--
-- Indexes for table `reasons`
--
ALTER TABLE `reasons`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `remarks`
--
ALTER TABLE `remarks`
  ADD PRIMARY KEY (`remarks_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `scrap_department`
--
ALTER TABLE `scrap_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scrap_details`
--
ALTER TABLE `scrap_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scrap_main`
--
ALTER TABLE `scrap_main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeloss_reason`
--
ALTER TABLE `timeloss_reason`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `time_loss`
--
ALTER TABLE `time_loss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vender_details`
--
ALTER TABLE `vender_details`
  ADD PRIMARY KEY (`vender_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `base`
--
ALTER TABLE `base`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `basecolor`
--
ALTER TABLE `basecolor`
  MODIFY `basecolor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `baseemboss`
--
ALTER TABLE `baseemboss`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=409;
--
-- AUTO_INCREMENT for table `calender_cpr`
--
ALTER TABLE `calender_cpr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `calender_input`
--
ALTER TABLE `calender_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	';
--
-- AUTO_INCREMENT for table `calender_irr`
--
ALTER TABLE `calender_irr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `calender_program`
--
ALTER TABLE `calender_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `calender_scrap`
--
ALTER TABLE `calender_scrap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `composition`
--
ALTER TABLE `composition`
  MODIFY `composition_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `consumption_stock`
--
ALTER TABLE `consumption_stock`
  MODIFY `consumption_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=324;
--
-- AUTO_INCREMENT for table `dailyrawmaterialprinting_report`
--
ALTER TABLE `dailyrawmaterialprinting_report`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `department_stock`
--
ALTER TABLE `department_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `dimension`
--
ALTER TABLE `dimension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `factory_halt`
--
ALTER TABLE `factory_halt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `input_output`
--
ALTER TABLE `input_output`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `issue_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laminating_reason`
--
ALTER TABLE `laminating_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `laminating_reason_other`
--
ALTER TABLE `laminating_reason_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `leminating_colorcode`
--
ALTER TABLE `leminating_colorcode`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `machine_loss`
--
ALTER TABLE `machine_loss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `mixing_base`
--
ALTER TABLE `mixing_base`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mixing_cpar`
--
ALTER TABLE `mixing_cpar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mixing_materials`
--
ALTER TABLE `mixing_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	',AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `mixing_product`
--
ALTER TABLE `mixing_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	';
--
-- AUTO_INCREMENT for table `patterns`
--
ALTER TABLE `patterns`
  MODIFY `pattern_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `printing_data`
--
ALTER TABLE `printing_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `printing_issue`
--
ALTER TABLE `printing_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `printing_pattern`
--
ALTER TABLE `printing_pattern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `printing_rawmaterial`
--
ALTER TABLE `printing_rawmaterial`
  MODIFY `printing_rawmaterialid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `printing_shiftreport`
--
ALTER TABLE `printing_shiftreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `printing_stock`
--
ALTER TABLE `printing_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	',AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `printng_opening`
--
ALTER TABLE `printng_opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `print_base_code`
--
ALTER TABLE `print_base_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT for table `production_shiftreport`
--
ALTER TABLE `production_shiftreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `purchasestock`
--
ALTER TABLE `purchasestock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `quality`
--
ALTER TABLE `quality`
  MODIFY `quality_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `reasons`
--
ALTER TABLE `reasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `remarks`
--
ALTER TABLE `remarks`
  MODIFY `remarks_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `scrap_department`
--
ALTER TABLE `scrap_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `scrap_details`
--
ALTER TABLE `scrap_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `scrap_main`
--
ALTER TABLE `scrap_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `timeloss_reason`
--
ALTER TABLE `timeloss_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	',AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `time_loss`
--
ALTER TABLE `time_loss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=312;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `vender_details`
--
ALTER TABLE `vender_details`
  MODIFY `vender_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
