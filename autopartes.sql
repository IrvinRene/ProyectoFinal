-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2016 a las 18:25:48
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `autopartes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agnos`
--

CREATE TABLE IF NOT EXISTS `agnos` (
  `id` int(5) NOT NULL,
  `agno` int(4) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  `updated_at` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `agnos`
--

INSERT INTO `agnos` (`id`, `agno`, `created_at`, `updated_at`) VALUES
(1, 2015, '', ''),
(2, 2014, '', ''),
(3, 2013, '', ''),
(4, 2012, '', ''),
(5, 2011, '', ''),
(6, 2010, '', ''),
(7, 2009, '', ''),
(8, 2008, '', ''),
(9, 2007, '', ''),
(10, 2006, '', ''),
(11, 2005, '', ''),
(12, 2004, '', ''),
(13, 2003, '', ''),
(14, 2002, '', ''),
(15, 2001, '', ''),
(16, 2000, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluaciones`
--

CREATE TABLE IF NOT EXISTS `evaluaciones` (
  `id` int(5) NOT NULL,
  `comentario` varchar(45) NOT NULL,
  `idopcion` int(5) NOT NULL,
  `idsucursal` int(5) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  `updated_at` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE IF NOT EXISTS `marcas` (
  `id` int(5) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  `updated_at` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `marca`, `created_at`, `updated_at`) VALUES
(1, 'Audi', '', ''),
(2, 'Bmw', '', ''),
(3, 'Cadillac', '', ''),
(4, 'Chevrolet', '', ''),
(5, 'Dodge', '', ''),
(6, 'Ferrari', '', ''),
(7, 'Fiat', '', ''),
(8, 'Ford', '', ''),
(9, 'Honda', '', ''),
(10, 'Hyundai', '', ''),
(11, 'jeep', '', ''),
(12, 'Kia', '', ''),
(13, 'Mazda', '', ''),
(14, 'Mercedes-benz', '', ''),
(15, 'Mitsubishi', '', ''),
(16, 'Nissan', '', ''),
(17, 'Peugeot', '', ''),
(18, 'Subaru', '', ''),
(19, 'Suzuki', '', ''),
(20, 'Toyota', '', ''),
(21, 'Volkswagen', '', ''),
(22, 'Volvo', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE IF NOT EXISTS `modelos` (
  `id` int(5) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `idmarca` int(5) NOT NULL,
  `idagno` int(5) NOT NULL,
  `idmotor` int(5) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  `updated_at` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `modelo`, `idmarca`, `idagno`, `idmotor`, `created_at`, `updated_at`) VALUES
(1, 'A1', 1, 1, 1, '', ''),
(2, 'A3', 1, 1, 2, '', ''),
(3, 'A3 Quattro', 1, 1, 3, '', ''),
(4, 'A4', 1, 1, 3, '', ''),
(5, 'A4 Allroad', 1, 1, 3, '', ''),
(6, 'A4 Quattro', 1, 1, 3, '', ''),
(7, 'A5', 1, 1, 4, '', ''),
(8, 'A5 Quattro', 1, 1, 3, '', ''),
(9, 'A6', 1, 1, 3, '', ''),
(10, 'A6 Quattro', 1, 1, 3, '', ''),
(11, 'A7 Quattro', 1, 1, 4, '', ''),
(12, 'A8', 1, 1, 5, '', ''),
(13, 'A8 Quattro', 1, 1, 5, '', ''),
(14, 'Allroad', 1, 1, 3, '', ''),
(15, 'Q3', 1, 1, 3, '', ''),
(16, 'Q3 Quattro', 1, 1, 3, '', ''),
(17, 'Q5', 1, 1, 3, '', ''),
(18, 'Q7', 1, 1, 7, '', ''),
(19, 'R8', 1, 1, 9, '', ''),
(20, 'Rs5', 1, 1, 8, '', ''),
(21, 'Rs7', 1, 1, 6, '', ''),
(22, 'S3', 1, 1, 3, '', ''),
(23, 'S4', 1, 1, 4, '', ''),
(24, 'S5', 1, 1, 4, '', ''),
(25, 'S6', 1, 1, 6, '', ''),
(26, 'S7', 1, 1, 6, '', ''),
(27, 'S8', 1, 1, 6, '', ''),
(28, 'Sq5', 1, 1, 4, '', ''),
(29, 'Tt Quattro', 1, 1, 3, '', ''),
(30, 'A1', 1, 2, 1, '', ''),
(31, 'A3', 1, 2, 2, '', ''),
(32, 'A4', 1, 2, 3, '', ''),
(33, 'A4 Allroad', 1, 2, 3, '', ''),
(34, 'A4 Quattro', 1, 2, 3, '', ''),
(35, 'A5', 1, 2, 4, '', ''),
(36, 'A5 Quattro', 1, 2, 3, '', ''),
(37, 'A6', 1, 2, 3, '', ''),
(38, 'A6 Quattro', 1, 2, 3, '', ''),
(39, 'A7 Quattro', 1, 2, 4, '', ''),
(40, 'A8 Quattro', 1, 2, 5, '', ''),
(41, 'Allroad', 1, 2, 3, '', ''),
(42, 'Q3', 1, 2, 3, '', ''),
(43, 'Q5', 1, 2, 3, '', ''),
(44, 'Q7', 1, 2, 7, '', ''),
(45, 'R8', 1, 2, 9, '', ''),
(46, 'Rs5', 1, 2, 8, '', ''),
(47, 'Rs7', 1, 2, 6, '', ''),
(48, 'S4', 1, 2, 4, '', ''),
(49, 'S5', 1, 2, 4, '', ''),
(50, 'S6', 1, 2, 6, '', ''),
(51, 'S7', 1, 2, 6, '', ''),
(52, 'S8', 1, 2, 6, '', ''),
(53, 'Sq5', 1, 2, 4, '', ''),
(54, 'Tt', 1, 2, 3, '', ''),
(55, 'Tt Quattro', 1, 2, 3, '', ''),
(81, 'A1', 1, 3, 1, '', ''),
(82, 'A3', 1, 3, 2, '', ''),
(83, 'A3 Quattro', 1, 3, 3, '', ''),
(84, 'A4', 1, 3, 3, '', ''),
(85, 'A4 Allroad', 1, 3, 3, '', ''),
(86, 'A4 Quattro', 1, 3, 3, '', ''),
(87, 'A5', 1, 3, 4, '', ''),
(88, 'A5 Quattro', 1, 3, 3, '', ''),
(89, 'A6', 1, 3, 3, '', ''),
(90, 'A6 Quattro', 1, 3, 3, '', ''),
(91, 'A7 Quattro', 1, 3, 4, '', ''),
(92, 'A8 Quattro', 1, 3, 5, '', ''),
(93, 'Allroad', 1, 3, 3, '', ''),
(94, 'Allroad Quattro', 1, 3, 3, '', ''),
(95, 'Q3', 1, 3, 3, '', ''),
(96, 'Q5', 1, 3, 3, '', ''),
(97, 'Q7', 1, 3, 7, '', ''),
(98, 'Rs5', 1, 3, 8, '', ''),
(99, 'S4', 1, 3, 4, '', ''),
(100, 'S5', 1, 3, 4, '', ''),
(101, 'S6', 1, 3, 6, '', ''),
(102, 'S7', 1, 3, 6, '', ''),
(103, 'S8', 1, 3, 6, '', ''),
(104, 'Tt', 1, 3, 3, '', ''),
(105, 'Tt Quattro', 1, 3, 3, '', ''),
(106, 'A1', 1, 4, 1, '', ''),
(107, 'A3', 1, 4, 2, '', ''),
(108, 'A3 Quattro', 1, 4, 3, '', ''),
(109, 'A4', 1, 4, 3, '', ''),
(110, 'A4 Quattro', 1, 4, 3, '', ''),
(111, 'A5', 1, 4, 4, '', ''),
(112, 'A5 Quattro', 1, 4, 3, '', ''),
(113, 'A6', 1, 4, 3, '', ''),
(114, 'A6 Quattro', 1, 4, 3, '', ''),
(115, 'A7 Quattro', 1, 4, 4, '', ''),
(116, 'A8 Quattro', 1, 4, 5, '', ''),
(117, 'Q5', 1, 4, 3, '', ''),
(118, 'Q7', 1, 4, 7, '', ''),
(119, 'S3', 1, 4, 3, '', ''),
(120, 'S4', 1, 4, 4, '', ''),
(121, 'S5', 1, 4, 4, '', ''),
(122, 'Tt', 1, 4, 3, '', ''),
(123, 'Tt Quattro', 1, 4, 3, '', ''),
(124, 'A1', 1, 5, 1, '', ''),
(125, 'A3', 1, 5, 2, '', ''),
(126, 'A3 Quattro', 1, 5, 3, '', ''),
(127, 'A4', 1, 5, 3, '', ''),
(128, 'A4 Quattro', 1, 5, 3, '', ''),
(129, 'A5', 1, 5, 4, '', ''),
(130, 'A5 Quattro', 1, 5, 3, '', ''),
(131, 'A6', 1, 5, 3, '', ''),
(132, 'A6 Quattro', 1, 5, 3, '', ''),
(133, 'A8 Quattro', 1, 5, 5, '', ''),
(134, 'Q5', 1, 5, 3, '', ''),
(135, 'Q7', 1, 5, 7, '', ''),
(136, 'R8', 1, 5, 8, '', ''),
(137, 'Rs5', 1, 5, 8, '', ''),
(138, 'S3', 1, 5, 3, '', ''),
(139, 'S4', 1, 5, 4, '', ''),
(140, 'S5', 1, 5, 4, '', ''),
(141, 'S6', 1, 5, 9, '', ''),
(142, 'Tt', 1, 5, 3, '', ''),
(143, 'Tt Quattro', 1, 5, 3, '', ''),
(144, 'A3', 1, 6, 2, '', ''),
(145, 'A3 Quattro', 1, 6, 3, '', ''),
(146, 'A4', 1, 6, 3, '', ''),
(147, 'A4 Quattro', 1, 6, 3, '', ''),
(148, 'A5', 1, 6, 4, '', ''),
(149, 'A5 Quattro', 1, 6, 3, '', ''),
(150, 'A6', 1, 6, 3, '', ''),
(151, 'A6 Quattro', 1, 6, 3, '', ''),
(152, 'A8 Quattro', 1, 6, 5, '', ''),
(153, 'Q5', 1, 6, 3, '', ''),
(154, 'Q7', 1, 6, 7, '', ''),
(155, 'R8', 1, 6, 8, '', ''),
(168, 'Rs6', 1, 6, 64, '', ''),
(169, 'S3', 1, 6, 3, '', ''),
(170, 'S4', 1, 6, 4, '', ''),
(171, 'S5', 1, 6, 4, '', ''),
(172, 'S6', 1, 6, 9, '', ''),
(173, 'S8', 1, 6, 9, '', ''),
(174, 'Tt', 1, 6, 3, '', ''),
(175, 'Tt Quattro', 1, 6, 3, '', ''),
(176, 'Ats', 3, 1, 3, '', ''),
(177, 'Cts', 3, 1, 16, '', ''),
(178, 'Elr', 3, 1, 1, '', ''),
(179, 'Ats', 3, 1, 3, '', ''),
(180, 'Cts', 3, 1, 16, '', ''),
(181, 'Elr', 3, 1, 1, '', ''),
(182, 'Escalade', 3, 1, 17, '', ''),
(183, 'Escalade Esv', 3, 1, 17, '', ''),
(184, 'Srx', 3, 1, 16, '', ''),
(185, 'Xts', 3, 1, 16, '', ''),
(186, 'Ats', 3, 2, 3, '', ''),
(187, 'Cts', 3, 2, 16, '', ''),
(188, 'Elr', 3, 2, 1, '', ''),
(189, 'Escalade', 3, 2, 17, '', ''),
(190, 'Escalade Esv', 3, 2, 17, '', ''),
(191, 'Srx', 3, 2, 16, '', ''),
(192, 'Xts', 3, 2, 16, '', ''),
(193, 'Ats', 3, 3, 3, '', ''),
(194, 'Cts', 3, 3, 16, '', ''),
(195, 'Escalade', 3, 3, 17, '', ''),
(196, 'Escalade Esv', 3, 3, 17, '', ''),
(197, 'Escalade Ext', 3, 3, 17, '', ''),
(198, 'Srx', 3, 3, 16, '', ''),
(199, 'Xts', 3, 3, 16, '', ''),
(200, 'Cts', 3, 4, 16, '', ''),
(201, 'Escalade', 3, 4, 17, '', ''),
(202, 'Escalade Esv', 3, 4, 17, '', ''),
(203, 'Escalade Ext', 3, 4, 17, '', ''),
(204, 'Srx', 3, 4, 16, '', ''),
(205, 'Cts', 3, 5, 16, '', ''),
(206, 'Dts', 3, 5, 50, '', ''),
(207, 'Escalade', 3, 5, 17, '', ''),
(208, 'Escalade Esv', 3, 5, 17, '', ''),
(209, 'Escalade Ext', 3, 5, 17, '', ''),
(210, 'Srx', 3, 5, 62, '', ''),
(211, 'Sts', 3, 5, 16, '', ''),
(212, 'Cts', 3, 6, 16, '', ''),
(213, 'Dts', 3, 6, 50, '', ''),
(214, 'Escalade', 3, 6, 17, '', ''),
(215, 'Escalade Esv', 3, 6, 17, '', ''),
(216, 'Escalade Ext', 3, 6, 17, '', ''),
(217, 'Srx', 3, 6, 62, '', ''),
(218, 'Sts', 3, 6, 16, '', ''),
(219, 'Challenger', 5, 1, 16, '', ''),
(220, 'Charger', 5, 1, 16, '', ''),
(221, 'Dart', 5, 1, 1, '', ''),
(222, 'Durango', 5, 1, 27, '', ''),
(223, 'Grand Caravan', 5, 1, 16, '', ''),
(224, 'Journey', 5, 1, 20, '', ''),
(225, 'Viper', 5, 1, 29, '', ''),
(226, 'Attitude', 5, 2, 10, '', ''),
(227, 'Avenger', 5, 2, 16, '', ''),
(228, 'Challenger', 5, 2, 16, '', ''),
(229, 'Charger', 5, 2, 16, '', ''),
(230, 'Dart', 5, 2, 1, '', ''),
(231, 'Durango', 5, 2, 27, '', ''),
(232, 'Grand Caravan', 5, 2, 16, '', ''),
(247, 'I10', 5, 2, 65, '', ''),
(248, 'Journey', 5, 2, 20, '', ''),
(249, 'Attitude', 5, 3, 10, '', ''),
(250, 'Avenger', 5, 3, 16, '', ''),
(251, 'Challenger', 5, 3, 16, '', ''),
(252, 'Charger', 5, 3, 16, '', ''),
(253, 'Dart', 5, 3, 1, '', ''),
(254, 'Durango', 5, 3, 27, '', ''),
(255, 'Grand Caravan', 5, 3, 16, '', ''),
(256, 'H100', 5, 3, 20, '', ''),
(257, 'I10', 5, 3, 65, '', ''),
(258, 'Journey', 5, 3, 20, '', ''),
(259, 'Attitude', 5, 4, 10, '', ''),
(260, 'Avenger', 5, 4, 16, '', ''),
(261, 'Caliber', 5, 4, 20, '', ''),
(262, 'Challenger', 5, 4, 16, '', ''),
(263, 'Charger', 5, 4, 16, '', ''),
(264, 'Dart', 5, 4, 1, '', ''),
(265, 'Durango', 5, 4, 27, '', ''),
(266, 'Grand Caravan', 5, 4, 16, '', ''),
(267, 'H100', 5, 4, 20, '', ''),
(268, 'I10', 5, 4, 65, '', ''),
(269, 'Journey', 5, 4, 20, '', ''),
(270, 'Nitro', 5, 4, 41, '', ''),
(271, 'Cadenza', 12, 1, 45, '', ''),
(272, 'Forte', 12, 1, 10, '', ''),
(273, 'Forte Koup', 12, 1, 10, '', ''),
(274, 'K900', 12, 1, 36, '', ''),
(275, 'Optima', 12, 1, 20, '', ''),
(276, 'Rio', 12, 1, 10, '', ''),
(277, 'Rondo', 12, 1, 3, '', ''),
(278, 'Sedona', 12, 1, 45, '', ''),
(279, 'Sorento', 12, 1, 20, '', ''),
(280, 'Soul', 12, 1, 10, '', ''),
(281, 'Sportage', 12, 1, 20, '', ''),
(282, 'Cadenza', 12, 2, 45, '', ''),
(283, 'Forte', 12, 2, 10, '', ''),
(284, 'Forte Koup', 12, 2, 10, '', ''),
(285, 'Optima', 12, 2, 20, '', ''),
(286, 'Rio', 12, 2, 10, '', ''),
(287, 'Rondo', 12, 2, 3, '', ''),
(288, 'Sedona', 12, 2, 45, '', ''),
(289, 'Sorento', 12, 2, 20, '', ''),
(290, 'Soul', 12, 2, 10, '', ''),
(291, 'Sportage', 12, 2, 20, '', ''),
(292, 'Forte', 12, 3, 10, '', ''),
(293, 'Forte Koup', 12, 3, 10, '', ''),
(294, 'Forte5', 12, 3, 20, '', ''),
(295, 'Optima', 12, 3, 20, '', ''),
(296, 'Rio', 12, 3, 10, '', ''),
(297, 'Sedona', 12, 3, 45, '', ''),
(298, 'Sorento', 12, 3, 20, '', ''),
(299, 'Soul', 12, 3, 10, '', ''),
(300, 'Sportage', 12, 3, 20, '', ''),
(301, 'Forte', 12, 4, 10, '', ''),
(302, 'Forte Koup', 12, 4, 10, '', ''),
(303, 'Forte5', 12, 4, 20, '', ''),
(304, 'Optima', 12, 4, 20, '', ''),
(305, 'Rio', 12, 4, 10, '', ''),
(306, 'Rio5', 12, 4, 10, '', ''),
(307, 'Rondo', 12, 4, 20, '', ''),
(308, 'Sedona', 12, 4, 45, '', ''),
(309, 'Sorento', 12, 4, 20, '', ''),
(310, 'Soul', 12, 4, 10, '', ''),
(311, 'Sportage', 12, 4, 20, '', ''),
(312, '4runner', 20, 1, 56, '', ''),
(313, 'Avalon', 20, 1, 15, '', ''),
(314, 'Avanza', 20, 1, 48, '', ''),
(315, 'Camry', 20, 1, 15, '', ''),
(316, 'Corolla', 20, 1, 2, '', ''),
(317, 'Highlander', 20, 1, 58, '', ''),
(318, 'Hilux', 20, 1, 58, '', ''),
(319, 'Land Cruiser', 20, 1, 27, '', ''),
(320, 'Prius', 20, 1, 2, '', ''),
(321, 'Prius C', 20, 1, 48, '', ''),
(322, 'Prius V', 20, 1, 2, '', ''),
(323, 'Rav4', 20, 1, 15, '', ''),
(324, 'Sequoia', 20, 1, 27, '', ''),
(325, 'Sienna', 20, 1, 35, '', ''),
(326, 'Tacoma', 20, 1, 58, '', ''),
(327, 'Tundra', 20, 1, 50, '', ''),
(328, 'Venza', 20, 1, 58, '', ''),
(329, 'Yaris', 20, 1, 48, '', ''),
(330, '4runner', 20, 2, 56, '', ''),
(331, 'Avalon', 20, 2, 15, '', ''),
(332, 'Avanza', 20, 2, 48, '', ''),
(333, 'Camry', 20, 2, 15, '', ''),
(334, 'Corolla', 20, 2, 2, '', ''),
(335, 'Fj Cruiser', 20, 2, 56, '', ''),
(336, 'Hiace', 20, 2, 58, '', ''),
(337, 'Highlander', 20, 2, 58, '', ''),
(338, 'Hilux', 20, 2, 58, '', ''),
(339, 'Land Cruiser', 20, 2, 27, '', ''),
(340, 'Matrix', 20, 2, 2, '', ''),
(341, 'Prius', 20, 2, 2, '', ''),
(342, 'Prius C', 20, 2, 48, '', ''),
(343, 'Prius V', 20, 2, 2, '', ''),
(344, 'Rav4', 20, 2, 15, '', ''),
(345, 'Sequoia', 20, 2, 27, '', ''),
(346, 'Sienna', 20, 2, 35, '', ''),
(347, 'Tacoma', 20, 2, 58, '', ''),
(348, 'Tundra', 20, 2, 50, '', ''),
(349, 'Venza', 20, 2, 58, '', ''),
(350, 'Yaris', 20, 2, 48, '', ''),
(351, '4runner', 20, 3, 56, '', ''),
(352, 'Avalon', 20, 3, 15, '', ''),
(353, 'Avanza', 20, 3, 48, '', ''),
(354, 'Camry', 20, 3, 15, '', ''),
(355, 'Corolla', 20, 3, 2, '', ''),
(356, 'Fj Cruiser', 20, 3, 56, '', ''),
(357, 'Hiace', 20, 3, 58, '', ''),
(358, 'Highlander', 20, 3, 58, '', ''),
(359, 'Hilux', 20, 3, 58, '', ''),
(360, 'Land Cruiser', 20, 3, 27, '', ''),
(361, 'Matrix', 20, 3, 2, '', ''),
(362, 'Prius', 20, 3, 2, '', ''),
(363, 'Prius C', 20, 3, 48, '', ''),
(364, 'Prius V', 20, 3, 2, '', ''),
(365, 'Rav4', 20, 3, 15, '', ''),
(366, 'Sequoia', 20, 3, 27, '', ''),
(367, 'Sienna', 20, 3, 35, '', ''),
(368, 'Tacoma', 20, 3, 58, '', ''),
(369, 'Tundra', 20, 3, 50, '', ''),
(370, 'Venza', 20, 3, 58, '', ''),
(371, 'Yaris', 20, 3, 48, '', ''),
(372, '4runner', 20, 4, 56, '', ''),
(373, 'Avalon', 20, 4, 15, '', ''),
(374, 'Avanza', 20, 4, 48, '', ''),
(375, 'Camry', 20, 4, 15, '', ''),
(376, 'Corolla', 20, 4, 2, '', ''),
(377, 'Fj Cruiser', 20, 4, 56, '', ''),
(378, 'Hiace', 20, 4, 58, '', ''),
(379, 'Highlander', 20, 4, 58, '', ''),
(380, 'Hilux', 20, 4, 58, '', ''),
(381, 'Matrix', 20, 4, 2, '', ''),
(382, 'Prius', 20, 4, 2, '', ''),
(383, 'Prius C', 20, 4, 48, '', ''),
(384, 'Prius V', 20, 4, 2, '', ''),
(385, 'Rav4', 20, 4, 15, '', ''),
(386, 'Sequoia', 20, 4, 27, '', ''),
(387, 'Sienna', 20, 4, 35, '', ''),
(388, 'Tacoma', 20, 4, 58, '', ''),
(389, 'Tundra', 20, 4, 50, '', ''),
(390, 'Venza', 20, 4, 58, '', ''),
(391, 'Yaris', 20, 4, 48, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motores`
--

CREATE TABLE IF NOT EXISTS `motores` (
  `id` int(5) NOT NULL,
  `motor` varchar(15) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  `updated_at` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `motores`
--

INSERT INTO `motores` (`id`, `motor`, `created_at`, `updated_at`) VALUES
(1, '4 Cil 1.4 lts', '', ''),
(2, '4 Cil 1.8 lts', '', ''),
(3, '4 Cil 2.0 lts', '', ''),
(4, '6 Cil 3.0 lts', '', ''),
(5, '12 Cil 6.3 lts', '', ''),
(6, '8 Cil 4.0 lts', '', ''),
(7, '8 Cil 4.1 lts', '', ''),
(8, '8 Cil 4.2 lts', '', ''),
(9, '10 Cil 5.2 lts', '', ''),
(10, '4 Cil 1.6 lts', '', ''),
(11, '8 Cil 4.4 lts', '', ''),
(12, '12 Cil 6.0 lts', '', ''),
(13, '2 Cil 0.6 lts', '', ''),
(14, '3 Cil 1.5 lts', '', ''),
(15, '4 Cil 2.5 lts ', '', ''),
(16, '6 Cil 3.6 lts', '', ''),
(17, '8 Cil 6.2 lts', '', ''),
(18, '8 Cil 7.0 lts', '', ''),
(19, '8 Cil 6.0 lts', '', ''),
(20, '4 Cil 2.4 lts', '', ''),
(21, '8 Cil 5.3 lts', '', ''),
(22, '8 Cil 4.8 lts', '', ''),
(23, '8 Cil 6.6 lts', '', ''),
(24, '4 Cil 1.0 lts', '', ''),
(25, '6 Cil 4.3 lts', '', ''),
(26, '4 Cil 1.2 lts', '', ''),
(27, '8 Cil 5.7 lts', '', ''),
(28, '8 Cil 6.4 lts', '', ''),
(29, '10 Cil 8.4 lts', '', ''),
(30, '8 Cil 4.5 lts', '', ''),
(31, '8 Cil 3.8 lts', '', ''),
(32, '8 Cil 5.4 lts', '', ''),
(33, '10 Cil 6.8 lts', '', ''),
(34, '6 Cil 2.7 lts', '', ''),
(35, '6 Cil 3.5 lts', '', ''),
(36, '8 Cil 5.0 lts', '', ''),
(37, '8 Cil 6.7 lts', '', ''),
(39, '3 Cil 1.0 lts', '', ''),
(40, '4 Cil 2.3 lts', '', ''),
(41, '6 Cil 3.7 lts', '', ''),
(42, '4 Cil 2.2 lts', '', ''),
(43, '5 Cil 3.2 lts', '', ''),
(44, '4 Cil 1.5', '', ''),
(45, '6 Cil 3.3 lts', '', ''),
(46, '6 Cil 3.8 lts', '', ''),
(47, '4 Cil 1.3 lts', '', ''),
(48, '4 Cil 1.5 lts', '', ''),
(49, '8 Cil 6.3 lts', '', ''),
(50, '8 Cil 4.6 lts', '', ''),
(51, '8 Cil 5.5 lts', '', ''),
(52, '4 Cil 2.1 lts', '', ''),
(53, '8 Cil 4.7 lts', '', ''),
(54, '3 Cil 1.2 lts', '', ''),
(55, '8 Cil 5.6 lts', '', ''),
(56, '6 Cil 4.0 lts', '', ''),
(57, '4 Cil 3.0 lts', '', ''),
(58, '4 Cil 2.7 lts', '', ''),
(59, '5 Cil 2.5 lts', '', ''),
(60, '5 Cil 2.0 lts', '', ''),
(61, '6 Cil 3.2 lts', '', ''),
(62, '6 Cil 2.8 lts', '', ''),
(64, '10 Cil 5.0 lts', '', ''),
(65, '4 Cil 1.1 lts', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
  `id` int(1) NOT NULL,
  `opcion` varchar(20) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  `updated_at` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `opcion`, `created_at`, `updated_at`) VALUES
(1, 'Muy Satisfecho', '', ''),
(2, 'Satisfecho', '', ''),
(3, 'Poco Satisfecho', '', ''),
(4, 'Insatisfecho', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piezas`
--

CREATE TABLE IF NOT EXISTS `piezas` (
  `id` int(5) NOT NULL,
  `pieza` varchar(40) NOT NULL,
  `serie` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `infoadicional` varchar(45) NOT NULL,
  `idsucursal` int(5) NOT NULL,
  `idmodelo` int(5) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  `updated_at` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `piezas`
--

INSERT INTO `piezas` (`id`, `pieza`, `serie`, `marca`, `infoadicional`, `idsucursal`, `idmodelo`, `created_at`, `updated_at`) VALUES
(1, 'Buje Horquilla', '191-407-182', 'SYD', 'Chico, Inferior', 2, 1, '', ''),
(2, 'Buje Horquilla', '1J0-407.181.A', 'SYD', 'Grande, Inferior', 2, 1, '', ''),
(3, 'Buje Horquilla', 'PHAK-4028', 'HUAT', 'grande, Inferior', 2, 1, '', ''),
(4, 'Disco Freno', 'BRR 3705 10', 'RUVILLE', 'Solido, Trasero', 2, 1, '', ''),
(5, 'Disco Freno', '2292', 'CANO BRAKE', '', 2, 1, '', ''),
(6, 'Filtro Aceite', 'OF-6103', 'INTERFIL', '', 2, 1, '', ''),
(7, 'Horquilla', '1526037', 'SYD', 'Inferior L', 2, 1, '', ''),
(8, 'Horquilla', '1526038', 'SYD', 'Inferior R', 2, 1, '', ''),
(9, 'Junta Homocinetica', 'CV-328', 'SYD', 'Ext 36 Int 27, Lado Rueda', 2, 1, '', ''),
(10, 'Kit Clutch', '602 0001 00', 'LUK', '', 2, 1, '', ''),
(11, 'Maza Rueda', '2326003', 'SYD', 'Trasera', 2, 1, '', ''),
(12, 'Maza Rueda', '2326001', 'SYD', 'Delantera', 2, 1, '', ''),
(13, 'Rótula', '1026008', 'SYD', 'Inferior R', 2, 1, '', ''),
(14, 'Rótula', '1026009', 'SYD', 'Inferior L', 2, 1, '', ''),
(15, 'Soporte Motor', '7058', 'DAI', 'Torsión', 2, 1, '', ''),
(16, 'Soporte Motor', '7057-H', 'DAI', 'Frontal Derecho', 2, 1, '', ''),
(17, 'Soporte Motor', '7060', 'DAI', 'Estándar Transmisión', 2, 1, '', ''),
(18, 'Soporte Motor', '1564', 'EAGLE BHP', 'Torsión', 2, 1, '', ''),
(19, 'Soporte Motor', '1565', 'EAGLE BHP', 'Estándar Transmisión', 2, 1, '', ''),
(20, 'Soporte Motor', '1330H', 'EAGLE BHP', 'Frontal Derecho', 2, 1, '', ''),
(21, 'Terminal Dirección', '6Q0-422-812', 'SYD', 'Exterior R', 2, 1, '', ''),
(22, 'Terminal Dirección', '6Q0-422-811', 'SYD', 'Exterior L', 2, 1, '', ''),
(23, 'Tornillo Estabilizador', '2126004', 'SYD', 'Delantero', 2, 1, '', ''),
(24, 'Tornillo Estabilizador', 'PHAK.3022', 'HUAT', 'Delantero', 2, 1, '', ''),
(25, 'Buje Horquilla', '191-407-182', 'SYD', 'Chico, Inferior', 5, 1, '', ''),
(26, 'Buje Horquilla', '1J0-407.181.A', 'SYD', 'Grande, Inferior', 3, 1, '', ''),
(27, 'Buje Horquilla', 'PHAK-4028', 'HUAT', 'grande, Inferior', 5, 1, '', ''),
(28, 'Disco Freno', 'BRR 3705 10', 'RUVILLE', 'Solido, Trasero', 3, 1, '', ''),
(29, 'Disco Freno', '2292', 'CANO BRAKE', '', 5, 1, '', ''),
(30, 'Filtro Aceite', 'OF-6103', 'INTERFIL', '', 3, 1, '', ''),
(31, 'Horquilla', '1526037', 'SYD', 'Inferior L', 5, 1, '', ''),
(32, 'Horquilla', '1526038', 'SYD', 'Inferior R', 3, 1, '', ''),
(33, 'Junta Homocinetica', 'CV-328', 'SYD', 'Ext 36 Int 27, Lado Rueda', 5, 1, '', ''),
(34, 'Kit Clutch', '602 0001 00', 'LUK', '', 3, 1, '', ''),
(35, 'Maza Rueda', '2326003', 'SYD', 'Trasera', 5, 1, '', ''),
(36, 'Maza Rueda', '2326001', 'SYD', 'Delantera', 3, 1, '', ''),
(37, 'Rótula', '1026008', 'SYD', 'Inferior R', 5, 1, '', ''),
(38, 'Rótula', '1026009', 'SYD', 'Inferior L', 3, 1, '', ''),
(39, 'Soporte Motor', '7058', 'DAI', 'Torsión', 5, 1, '', ''),
(40, 'Soporte Motor', '7057-H', 'DAI', 'Frontal Derecho', 5, 1, '', ''),
(41, 'Soporte Motor', '7060', 'DAI', 'Estándar Transmisión', 3, 1, '', ''),
(42, 'Soporte Motor', '1564', 'EAGLE BHP', 'Torsión', 5, 1, '', ''),
(43, 'Soporte Motor', '1565', 'EAGLE BHP', 'Estándar Transmisión', 3, 1, '', ''),
(44, 'Soporte Motor', '1330H', 'EAGLE BHP', 'Frontal Derecho', 5, 1, '', ''),
(45, 'Terminal Dirección', '6Q0-422-812', 'SYD', 'Exterior R', 3, 1, '', ''),
(46, 'Terminal Dirección', '6Q0-422-811', 'SYD', 'Exterior L', 5, 1, '', ''),
(47, 'Tornillo Estabilizador', '2126004', 'SYD', 'Delantero', 3, 1, '', ''),
(48, 'Tornillo Estabilizador', 'PHAK.3022', 'HUAT', 'Delantero', 5, 1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(5) NOT NULL,
  `rol` varchar(15) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  `updated_at` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '', ''),
(2, 'Colaborador', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE IF NOT EXISTS `sucursales` (
  `id` int(5) NOT NULL,
  `sucursal` varchar(30) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  `updated_at` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `sucursal`, `created_at`, `updated_at`) VALUES
(1, 'Chitré', '', ''),
(2, 'Las Tablas', '', ''),
(3, 'Boquete', '', ''),
(4, 'Bugaba', '', ''),
(5, 'Changuinola', '', ''),
(6, 'David', '', ''),
(7, 'Frontera', '', ''),
(8, 'Puerto Armuelles', '', ''),
(9, 'Volcán', '', ''),
(10, 'Colón', '', ''),
(11, 'La Chorrera', '', ''),
(12, 'Tumba Muerto', '', ''),
(13, 'San Francisco', '', ''),
(14, 'Santiago', '', ''),
(15, 'Aguadulce', '', ''),
(16, 'Chame', '', ''),
(17, 'Penonomé', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `contraseña` varchar(15) NOT NULL,
  `idsucursa` int(11) NOT NULL,
  `idrol` int(11) NOT NULL,
  `remember_token` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agnos`
--
ALTER TABLE `agnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `motores`
--
ALTER TABLE `motores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `piezas`
--
ALTER TABLE `piezas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agnos`
--
ALTER TABLE `agnos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=392;
--
-- AUTO_INCREMENT de la tabla `motores`
--
ALTER TABLE `motores`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `piezas`
--
ALTER TABLE `piezas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
hola