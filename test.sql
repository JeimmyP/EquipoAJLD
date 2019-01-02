-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-01-2019 a las 12:00:56
-- Versión del servidor: 5.7.24-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address`
--

CREATE TABLE `address` (
  `address_id` int(11) UNSIGNED NOT NULL,
  `state_id` int(11) UNSIGNED NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `neighborhood` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `zip_code` varchar(15) NOT NULL,
  `status` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `country_id` int(11) UNSIGNED NOT NULL,
  `code` varchar(100) CHARACTER SET latin1 NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `status` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`country_id`, `code`, `name`, `status`, `created_at`, `modified_at`) VALUES
(1, 'AFG', 'Afganistán', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(2, 'ALA', 'Islas Åland', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(3, 'ALB', 'Albania', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(4, 'DEU', 'Alemania', 0, '2017-11-27 00:46:12', '2018-08-02 16:23:36'),
(5, 'AND', 'Andorra', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(6, 'AGO', 'Angola', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(7, 'AIA', 'Anguila', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(8, 'ATA', 'Antártida', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(9, 'ATG', 'Antigua y Barbuda', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(10, 'SAU', 'Arabia Saudita', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(11, 'DZA', 'Argelia', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(12, 'ARG', 'Argentina', 0, '2017-11-27 00:46:12', '2018-08-02 16:23:36'),
(13, 'ARM', 'Armenia', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(14, 'ABW', 'Aruba', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(15, 'AUS', 'Australia', 0, '2017-11-27 00:46:12', '2018-08-02 16:23:36'),
(16, 'AUT', 'Austria', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(17, 'AZE', 'Azerbaiyán', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(18, 'BHS', 'Bahamas (las)', 0, '2017-11-27 00:46:12', '2017-12-14 17:13:15'),
(19, 'BGD', 'Bangladés', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(20, 'BRB', 'Barbados', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(21, 'BHR', 'Baréin', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(22, 'BEL', 'Bélgica', 0, '2017-11-27 00:46:13', '2018-08-02 16:23:36'),
(23, 'BLZ', 'Belice', 0, '2017-11-27 00:46:13', '2018-08-02 16:23:36'),
(24, 'BEN', 'Benín', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(25, 'BMU', 'Bermudas', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(26, 'BLR', 'Bielorrusia', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(27, 'MMR', 'Myanmar', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(28, 'BOL', 'Bolivia, Estado Plurinacional de', 0, '2017-11-27 00:46:13', '2018-08-02 16:23:36'),
(29, 'BIH', 'Bosnia y Herzegovina', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(30, 'BWA', 'Botsuana', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(31, 'BRA', 'Brasil', 0, '2017-11-27 00:46:13', '2018-08-02 16:23:36'),
(32, 'BRN', 'Brunéi Darussalam', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(33, 'BGR', 'Bulgaria', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(34, 'BFA', 'Burkina Faso', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(35, 'BDI', 'Burundi', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(36, 'BTN', 'Bután', 0, '2017-11-27 00:46:13', '2017-12-14 17:13:15'),
(37, 'CPV', 'Cabo Verde', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(38, 'KHM', 'Camboya', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(39, 'CMR', 'Camerún', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(40, 'CAN', 'Canadá', 0, '2017-11-27 00:46:14', '2018-08-02 16:23:36'),
(41, 'QAT', 'Catar', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(42, 'BES', 'Bonaire, San Eustaquio y Saba', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(43, 'TCD', 'Chad', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(44, 'CHL', 'Chile', 0, '2017-11-27 00:46:14', '2018-08-02 16:23:36'),
(45, 'CHN', 'China', 0, '2017-11-27 00:46:14', '2018-08-02 16:23:36'),
(46, 'CYP', 'Chipre', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(47, 'COL', 'Colombia', 0, '2017-11-27 00:46:14', '2018-08-02 16:23:36'),
(48, 'COM', 'Comoras', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(49, 'PRK', 'Corea (la República Democrática Popular de)', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(50, 'KOR', 'Corea (la República de)', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(51, 'CIV', 'Côte d\'Ivoire', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(52, 'CRI', 'Costa Rica', 0, '2017-11-27 00:46:14', '2018-08-02 16:23:36'),
(53, 'HRV', 'Croacia', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(54, 'CUB', 'Cuba', 0, '2017-11-27 00:46:14', '2018-08-02 16:23:36'),
(55, 'CUW', 'Curaçao', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(56, 'DNK', 'Dinamarca', 0, '2017-11-27 00:46:14', '2017-12-14 17:13:15'),
(57, 'DMA', 'Dominica', 0, '2017-11-27 00:46:14', '2018-08-02 16:23:36'),
(58, 'ECU', 'Ecuador', 0, '2017-11-27 00:46:14', '2018-08-02 16:23:36'),
(59, 'EGY', 'Egipto', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(60, 'SLV', 'El Salvador', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(61, 'ARE', 'Emiratos Árabes Unidos (Los)', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(62, 'ERI', 'Eritrea', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(63, 'SVK', 'Eslovaquia', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(64, 'SVN', 'Eslovenia', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(65, 'ESP', 'España', 0, '2017-11-27 00:46:15', '2018-08-02 16:23:36'),
(66, 'USA', 'Estados Unidos', 0, '2017-11-27 00:46:15', '2018-08-02 16:24:00'),
(67, 'EST', 'Estonia', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(68, 'ETH', 'Etiopía', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(69, 'PHL', 'Filipinas (las)', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(70, 'FIN', 'Finlandia', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(71, 'FJI', 'Fiyi', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(72, 'FRA', 'Francia', 0, '2017-11-27 00:46:15', '2018-08-02 16:23:36'),
(73, 'GAB', 'Gabón', 0, '2017-11-27 00:46:15', '2017-12-14 17:13:15'),
(74, 'GMB', 'Gambia (La)', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(75, 'GEO', 'Georgia', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(76, 'GHA', 'Ghana', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(77, 'GIB', 'Gibraltar', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(78, 'GRD', 'Granada', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(79, 'GRC', 'Grecia', 0, '2017-11-27 00:46:16', '2018-08-02 16:23:36'),
(80, 'GRL', 'Groenlandia', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(81, 'GLP', 'Guadalupe', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(82, 'GUM', 'Guam', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(83, 'GTM', 'Guatemala', 0, '2017-11-27 00:46:16', '2018-08-02 16:23:36'),
(84, 'GUF', 'Guayana Francesa', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(85, 'GGY', 'Guernsey', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(86, 'GIN', 'Guinea', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(87, 'GNB', 'Guinea-Bisáu', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(88, 'GNQ', 'Guinea Ecuatorial', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(89, 'GUY', 'Guyana', 0, '2017-11-27 00:46:16', '2017-12-14 17:13:15'),
(90, 'HTI', 'Haití', 0, '2017-11-27 00:46:16', '2018-08-02 16:23:36'),
(91, 'HND', 'Honduras', 0, '2017-11-27 00:46:16', '2018-08-02 16:23:36'),
(92, 'HKG', 'Hong Kong', 0, '2017-11-27 00:46:17', '2018-08-02 16:23:36'),
(93, 'HUN', 'Hungría', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(94, 'IND', 'India', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(95, 'IDN', 'Indonesia', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(96, 'IRQ', 'Irak', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(97, 'IRN', 'Irán (la República Islámica de)', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(98, 'IRL', 'Irlanda', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(99, 'BVT', 'Isla Bouvet', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(100, 'IMN', 'Isla de Man', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(101, 'CXR', 'Isla de Navidad', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(102, 'NFK', 'Isla Norfolk', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(103, 'ISL', 'Islandia', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(104, 'CYM', 'Islas Caimán (las)', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(105, 'CCK', 'Islas Cocos (Keeling)', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(106, 'COK', 'Islas Cook (las)', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(107, 'FRO', 'Islas Feroe (las)', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(108, 'SGS', 'Georgia del sur y las islas sandwich del sur', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(109, 'HMD', 'Isla Heard e Islas McDonald', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(110, 'FLK', 'Islas Malvinas [Falkland] (las)', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(111, 'MNP', 'Islas Marianas del Norte (las)', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(112, 'MHL', 'Islas Marshall (las)', 0, '2017-11-27 00:46:17', '2017-12-14 17:13:15'),
(113, 'PCN', 'Pitcairn', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(114, 'SLB', 'Islas Salomón (las)', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(115, 'TCA', 'Islas Turcas y Caicos (las)', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(116, 'UMI', 'Islas de Ultramar Menores de Estados Unidos (las)', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(117, 'VGB', 'Islas Vírgenes (Británicas)', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(118, 'VIR', 'Islas Vírgenes (EE.UU.)', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(119, 'ISR', 'Israel', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(120, 'ITA', 'Italia', 0, '2017-11-27 00:46:18', '2018-08-02 16:23:36'),
(121, 'JAM', 'Jamaica', 0, '2017-11-27 00:46:18', '2018-08-02 16:23:36'),
(122, 'JPN', 'Japón', 0, '2017-11-27 00:46:18', '2018-08-02 16:23:36'),
(123, 'JEY', 'Jersey', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(124, 'JOR', 'Jordania', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(125, 'KAZ', 'Kazajistán', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(126, 'KEN', 'Kenia', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(127, 'KGZ', 'Kirguistán', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(128, 'KIR', 'Kiribati', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(129, 'KWT', 'Kuwait', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(130, 'LAO', 'Lao, (la) República Democrática Popular', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(131, 'LSO', 'Lesoto', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(132, 'LVA', 'Letonia', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(133, 'LBN', 'Líbano', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(134, 'LBR', 'Liberia', 0, '2017-11-27 00:46:18', '2017-12-14 17:13:15'),
(135, 'LBY', 'Libia', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(136, 'LIE', 'Liechtenstein', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(137, 'LTU', 'Lituania', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(138, 'LUX', 'Luxemburgo', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(139, 'MAC', 'Macao', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(140, 'MDG', 'Madagascar', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(141, 'MYS', 'Malasia', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(142, 'MWI', 'Malaui', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(143, 'MDV', 'Maldivas', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(144, 'MLI', 'Malí', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(145, 'MLT', 'Malta', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(146, 'MAR', 'Marruecos', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(147, 'MTQ', 'Martinica', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(148, 'MUS', 'Mauricio', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(149, 'MRT', 'Mauritania', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(150, 'MYT', 'Mayotte', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(151, 'MEX', 'México', 2, '2017-11-27 00:46:19', '2018-08-02 16:24:24'),
(152, 'FSM', 'Micronesia (los Estados Federados de)', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(153, 'MDA', 'Moldavia (la República de)', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(154, 'MCO', 'Mónaco', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(155, 'MNG', 'Mongolia', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(156, 'MNE', 'Montenegro', 0, '2017-11-27 00:46:19', '2017-12-14 17:13:15'),
(157, 'MSR', 'Montserrat', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(158, 'MOZ', 'Mozambique', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(159, 'NAM', 'Namibia', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(160, 'NRU', 'Nauru', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(161, 'NPL', 'Nepal', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(162, 'NIC', 'Nicaragua', 0, '2017-11-27 00:46:20', '2018-08-02 16:23:36'),
(163, 'NER', 'Níger (el)', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(164, 'NGA', 'Nigeria', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(165, 'NIU', 'Niue', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(166, 'NOR', 'Noruega', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(167, 'NCL', 'Nueva Caledonia', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(168, 'NZL', 'Nueva Zelanda', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(169, 'OMN', 'Omán', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(170, 'NLD', 'Países Bajos (los)', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(171, 'PAK', 'Pakistán', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(172, 'PLW', 'Palaos', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(173, 'PSE', 'Palestina, Estado de', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(174, 'PAN', 'Panamá', 0, '2017-11-27 00:46:20', '2018-08-02 16:23:36'),
(175, 'PNG', 'Papúa Nueva Guinea', 0, '2017-11-27 00:46:20', '2017-12-14 17:13:15'),
(176, 'PRY', 'Paraguay', 0, '2017-11-27 00:46:20', '2018-08-02 16:23:36'),
(177, 'PER', 'Perú', 0, '2017-11-27 00:46:21', '2018-08-02 16:23:36'),
(178, 'PYF', 'Polinesia Francesa', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(179, 'POL', 'Polonia', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(180, 'PRT', 'Portugal', 0, '2017-11-27 00:46:21', '2018-08-02 16:23:36'),
(181, 'PRI', 'Puerto Rico', 0, '2017-11-27 00:46:21', '2018-08-02 16:23:36'),
(182, 'GBR', 'Reino Unido (el)', 0, '2017-11-27 00:46:21', '2018-08-02 16:23:36'),
(183, 'CAF', 'República Centroafricana (la)', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(184, 'CZE', 'República Checa (la)', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(185, 'MKD', 'Macedonia (la antigua República Yugoslava de)', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(186, 'COG', 'Congo', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(187, 'COD', 'Congo (la República Democrática del)', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(188, 'DOM', 'República Dominicana (la)', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(189, 'REU', 'Reunión', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(190, 'RWA', 'Ruanda', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(191, 'ROU', 'Rumania', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(192, 'RUS', 'Rusia, (la) Federación de', 0, '2017-11-27 00:46:21', '2018-08-02 16:23:36'),
(193, 'ESH', 'Sahara Occidental', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(194, 'WSM', 'Samoa', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(195, 'ASM', 'Samoa Americana', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(196, 'BLM', 'San Bartolomé', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(197, 'KNA', 'San Cristóbal y Nieves', 0, '2017-11-27 00:46:21', '2017-12-14 17:13:15'),
(198, 'SMR', 'San Marino', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(199, 'MAF', 'San Martín (parte francesa)', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(200, 'SPM', 'San Pedro y Miquelón', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(201, 'VCT', 'San Vicente y las Granadinas', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(202, 'SHN', 'Santa Helena, Ascensión y Tristán de Acuña', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(203, 'LCA', 'Santa Lucía', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(204, 'STP', 'Santo Tomé y Príncipe', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(205, 'SEN', 'Senegal', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(206, 'SRB', 'Serbia', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(207, 'SYC', 'Seychelles', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(208, 'SLE', 'Sierra leona', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(209, 'SGP', 'Singapur', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(210, 'SXM', 'Sint Maarten (parte holandesa)', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(211, 'SYR', 'Siria, (la) República Árabe', 0, '2017-11-27 00:46:22', '2017-12-14 17:13:15'),
(212, 'SOM', 'Somalia', 0, '2017-11-27 00:46:23', '2017-12-14 17:13:15'),
(213, 'LKA', 'Sri Lanka', 0, '2017-11-27 00:46:23', '2017-12-14 17:13:15'),
(214, 'SWZ', 'Suazilandia', 0, '2017-11-27 00:46:23', '2017-12-14 17:13:15'),
(215, 'ZAF', 'Sudáfrica', 0, '2017-11-27 00:46:23', '2017-12-14 17:13:15'),
(216, 'SDN', 'Sudán (el)', 0, '2017-11-27 00:46:23', '2017-12-14 17:13:15'),
(217, 'SSD', 'Sudán del Sur', 0, '2017-11-27 00:46:23', '2017-12-14 17:13:15'),
(218, 'SWE', 'Suecia', 0, '2017-11-27 00:46:23', '2018-08-02 16:23:36'),
(219, 'CHE', 'Suiza', 0, '2017-11-27 00:46:23', '2018-08-02 16:23:36'),
(220, 'SUR', 'Surinam', 0, '2017-11-27 00:46:23', '2017-12-14 17:13:15'),
(221, 'SJM', 'Svalbard y Jan Mayen', 0, '2017-11-27 00:46:23', '2017-12-14 17:13:15'),
(222, 'THA', 'Tailandia', 0, '2017-11-27 00:46:23', '2017-12-14 17:13:15'),
(223, 'TWN', 'Taiwán (Provincia de China)', 0, '2017-11-27 00:46:23', '2018-08-02 16:23:36'),
(224, 'TZA', 'Tanzania, República Unida de', 0, '2017-11-27 00:46:23', '2017-12-14 17:13:15'),
(225, 'TJK', 'Tayikistán', 0, '2017-11-27 00:46:23', '2017-12-14 17:13:15'),
(226, 'IOT', 'Territorio Británico del Océano Índico (el)', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(227, 'ATF', 'Territorios Australes Franceses (los)', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(228, 'TLS', 'Timor-Leste', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(229, 'TGO', 'Togo', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(230, 'TKL', 'Tokelau', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(231, 'TON', 'Tonga', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(232, 'TTO', 'Trinidad y Tobago', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(233, 'TUN', 'Túnez', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(234, 'TKM', 'Turkmenistán', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(235, 'TUR', 'Turquía', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(236, 'TUV', 'Tuvalu', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(237, 'UKR', 'Ucrania', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(238, 'UGA', 'Uganda', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(239, 'URY', 'Uruguay', 0, '2017-11-27 00:46:24', '2018-08-02 16:23:36'),
(240, 'UZB', 'Uzbekistán', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(241, 'VUT', 'Vanuatu', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(242, 'VAT', 'Santa Sede[Estado de la Ciudad del Vaticano] (la)', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(243, 'VEN', 'Venezuela, República Bolivariana de', 0, '2017-11-27 00:46:24', '2017-12-14 17:13:15'),
(244, 'VNM', 'Viet Nam', 0, '2017-11-27 00:46:25', '2017-12-14 17:13:15'),
(245, 'WLF', 'Wallis y Futuna', 0, '2017-11-27 00:46:25', '2017-12-14 17:13:15'),
(246, 'YEM', 'Yemen', 0, '2017-11-27 00:46:25', '2017-12-14 17:13:15'),
(247, 'DJI', 'Yibuti', 0, '2017-11-27 00:46:25', '2017-12-14 17:13:15'),
(248, 'ZMB', 'Zambia', 0, '2017-11-27 00:46:25', '2017-12-14 17:13:15'),
(249, 'ZWE', 'Zimbabue', 0, '2017-11-27 00:46:25', '2017-12-14 17:13:15'),
(250, 'ZZZ', 'Países no declarados', 0, '2017-11-27 00:46:25', '2018-08-02 16:23:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email`
--

CREATE TABLE `email` (
  `email_id` int(11) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone`
--

CREATE TABLE `phone` (
  `phone_id` int(11) UNSIGNED NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `school`
--

CREATE TABLE `school` (
  `school_id` int(10) NOT NULL,
  `address_id` int(11) UNSIGNED NOT NULL,
  `phone_id` int(11) UNSIGNED NOT NULL,
  `email_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `state`
--

CREATE TABLE `state` (
  `state_id` int(11) UNSIGNED NOT NULL,
  `country_id` int(11) UNSIGNED NOT NULL,
  `code` varchar(16) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Estados de la República Mexicana';

--
-- Volcado de datos para la tabla `state`
--

INSERT INTO `state` (`state_id`, `country_id`, `code`, `name`, `status`, `created_at`, `modified_at`) VALUES
(1, 151, 'Ags.', 'Aguascalientes', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(2, 151, 'BC', 'Baja California', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(3, 151, 'BCS', 'Baja California Sur', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(4, 151, 'Camp.', 'Campeche', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(5, 151, 'Coah.', 'Coahuila', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(6, 151, 'Col.', 'Colima', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(7, 151, 'Chis.', 'Chiapas', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(8, 151, 'Chih.', 'Chihuahua', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(9, 151, 'DF', 'Distrito Federal', 0, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(10, 151, 'Dgo.', 'Durango', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(11, 151, 'Gto.', 'Guanajuato', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(12, 151, 'Gro.', 'Guerrero', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(13, 151, 'Hgo.', 'Hidalgo', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(14, 151, 'Jal.', 'Jalisco', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(15, 151, 'Cd. MX', 'Ciudad de México', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(16, 151, 'Mich.', 'Michoacán', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(17, 151, 'Mor.', 'Morelos', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(18, 151, 'Nay.', 'Nayarit', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(19, 151, 'NL', 'Nuevo León', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(20, 151, 'Oax.', 'Oaxaca', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(21, 151, 'Pue.', 'Puebla', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(22, 151, 'Qro.', 'Querétaro', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(23, 151, 'Q. Roo', 'Quintana Roo', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(24, 151, 'SLP', 'San Luis Potosí', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(25, 151, 'Sin.', 'Sinaloa', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(26, 151, 'Son.', 'Sonora', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(27, 151, 'Tab.', 'Tabasco', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(28, 151, 'Tamps.', 'Tamaulipas', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(29, 151, 'Tlax.', 'Tlaxcala', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(30, 151, 'Ver.', 'Veracruz', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(31, 151, 'Yuc.', 'Yucatán', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34'),
(32, 151, 'Zac.', 'Zacatecas', 2, '2018-08-02 16:37:34', '2018-08-02 16:37:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `task`, `status`, `created_at`) VALUES
(1, 'Find bugs', 1, '2016-04-10 23:50:40'),
(2, 'Review code', 1, '2016-04-10 23:50:40'),
(3, 'Fix bugs', 1, '2016-04-10 23:50:40'),
(4, 'Refactor Code', 1, '2016-04-10 23:50:40'),
(5, 'Push to prod', 1, '2016-04-10 23:50:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK_address_state` (`state_id`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indices de la tabla `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indices de la tabla `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phone_id`);

--
-- Indices de la tabla `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`),
  ADD KEY `fk_school_phone` (`phone_id`),
  ADD KEY `fk_school_email` (`email_id`),
  ADD KEY `fk_school_address` (`address_id`);

--
-- Indices de la tabla `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `FK_state_country` (`country_id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT de la tabla `email`
--
ALTER TABLE `email`
  MODIFY `email_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `phone`
--
ALTER TABLE `phone`
  MODIFY `phone_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_address_state` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `fk_school_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_school_email` FOREIGN KEY (`email_id`) REFERENCES `email` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_school_phone` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `FK_state_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
