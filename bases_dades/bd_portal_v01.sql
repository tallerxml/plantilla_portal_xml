-- phpMyAdmin SQL Dump
-- version 4.2.9.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 23-11-2014 a les 20:16:53
-- Versió del servidor: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `taller_xml`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `calendari_acb`
--

CREATE TABLE IF NOT EXISTS `calendari_acb` (
  `jornada` int(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `equip_local` varchar(28) DEFAULT NULL,
  `equip_visitant` varchar(23) DEFAULT NULL,
  `punts_local` int(2) DEFAULT NULL,
  `punts_visitant` int(2) DEFAULT NULL,
  `redactor` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `calendari_acb`
--

INSERT INTO `calendari_acb` (`jornada`, `data`, `equip_local`, `equip_visitant`, `punts_local`, `punts_visitant`, `redactor`) VALUES
(1, '2005-06-14', 'UCAM Murcia CB ', 'Valencia Basket Club ', 85, 76, 'Ferran Mas '),
(1, '2005-06-14', 'Baloncesto Sevilla ', 'Iberostar Tenerife ', 87, 96, 'Ferran Mas '),
(1, '2005-06-14', 'CAI Zaragoza ', 'FIATC Joventut ', 74, 79, 'Ferran Mas '),
(1, '2005-06-14', 'Tuenti Móvil Estudiantes ', 'Gipuzkoa Basket ', 91, 74, 'Ferran Mas '),
(1, '2005-06-14', 'Real Madrid ', 'Herbalife Gran Canaria ', 70, 57, 'Ferran Mas '),
(1, '2005-06-14', 'Rio Natura Monbus Obradoiro ', 'La Bruixa d''Or Manresa ', 88, 64, 'Ferran Mas '),
(1, '2005-06-14', 'FC Barcelona ', 'Laboral Kutxa Baskonia ', 87, 65, 'Ferran Mas '),
(1, '2005-06-14', 'Unicaja ', 'MoraBanc Andorra ', 83, 69, 'Ferran Mas '),
(1, '2005-06-14', 'Bilbao Basket ', 'Montakit Fuenlabrada ', 73, 54, 'Ferran Mas ');

-- --------------------------------------------------------

--
-- Estructura de la taula `calendari_acb2`
--

CREATE TABLE IF NOT EXISTS `calendari_acb2` (
  `jornada` int(1) DEFAULT NULL,
  `data` varchar(8) DEFAULT NULL,
  `equip_local` varchar(23) DEFAULT NULL,
  `equip_visitant` varchar(29) DEFAULT NULL,
  `punts_local` int(2) DEFAULT NULL,
  `punts_visitant` int(2) DEFAULT NULL,
  `redactor` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `calendari_acb2`
--

INSERT INTO `calendari_acb2` (`jornada`, `data`, `equip_local`, `equip_visitant`, `punts_local`, `punts_visitant`, `redactor`) VALUES
(4, '26/10/14', 'La Bruixa d''Or Manresa ', ' MoraBanc Andorra ', 88, 80, 'name,firstname'),
(4, '26/10/14', 'Herbalife Gran Canaria ', ' Unicaja ', 67, 74, 'name,firstname'),
(4, '26/10/14', 'Gipuzkoa Basket ', ' FC Barcelona ', 43, 57, 'name,firstname'),
(4, '26/10/14', 'FIATC Joventut ', ' Rio Natura Monbus Obradoiro ', 72, 78, 'name,firstname'),
(4, '26/10/14', 'Iberostar Tenerife ', ' Real Madrid ', 82, 93, 'name,firstname'),
(4, '26/10/14', 'Valencia Basket Club ', ' Tuenti Móvil Estudiantes ', 84, 67, 'name,firstname'),
(4, '26/10/14', 'Montakit Fuenlabrada ', ' CAI Zaragoza ', 67, 69, 'name,firstname'),
(4, '26/10/14', 'UCAM Murcia CB ', ' Baloncesto Sevilla ', 98, 68, 'name,firstname'),
(4, '26/10/14', 'Laboral Kutxa Baskonia ', ' Bilbao Basket ', 86, 74, 'name,firstname');

-- --------------------------------------------------------

--
-- Estructura de la taula `comarques`
--

CREATE TABLE IF NOT EXISTS `comarques` (
  `Comarca` varchar(19) DEFAULT NULL,
  `Codi Alfabètic` varchar(3) DEFAULT NULL,
  `Codi territorial` int(2) DEFAULT NULL,
  `Habitants` int(7) DEFAULT NULL,
  `Superficies` varchar(7) DEFAULT NULL,
  `Capital` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `comarques`
--

INSERT INTO `comarques` (`Comarca`, `Codi Alfabètic`, `Codi territorial`, `Habitants`, `Superficies`, `Capital`) VALUES
('Alt Camp ', 'AC ', 1, 44771, '538,01', 'Valls'),
('Alt Empordà ', 'AE ', 2, 141351, '1357,53', 'Figueres'),
('Alt Penedès ', 'AP ', 3, 106242, '592,77', 'Vilafranca del Penedès'),
('Alt Urgell ', 'AU ', 4, 21128, '1447,48', 'la Seu d''Urgell'),
('Alta Ribagorça ', 'AG ', 5, 4097, '426,86', 'el Pont de Suert'),
('Anoia ', 'AI ', 6, 118467, '866,28', 'Igualada'),
('Bages ', 'BG ', 7, 185718, '1295,08', 'Manresa'),
('Baix Camp ', 'BC ', 8, 193455, '697,07', 'Reus'),
('Baix Ebre ', 'BB ', 9, 81514, '1002,72', 'Tortosa'),
('Baix Empordà ', 'BM ', 10, 133787, '701,69', 'la Bisbal d''Empordà'),
('Baix Llobregat ', 'BT ', 11, 808644, '485,7', 'Sant Feliu de Llobregat'),
('Baix Penedès ', 'BP ', 12, 101100, '296,24', 'el Vendrell'),
('Barcelonès ', 'BR ', 13, 2240437, '144,72', 'Barcelona'),
('Berguedà ', 'BD ', 14, 40555, '1184,89', 'Berga'),
('Baixa Cerdanya', 'CD ', 15, 18630, '546,57', 'Puigcerdà'),
('Conca de Barberà ', 'CB ', 16, 20992, '650,24', 'Montblanc'),
('Garraf ', 'GF ', 17, 146609, '185,28', 'Vilanova i la Geltrú'),
('Garrigues ', 'GG ', 18, 20058, '797,61', 'les Borges Blanques'),
('Garrotxa ', 'GX ', 19, 56106, '735,39', 'Olot'),
('Gironès ', 'GN ', 20, 185085, '575,4', 'Girona'),
('Maresme ', 'MM ', 21, 437431, '398,91', 'Mataró'),
('Montsià ', 'MT ', 22, 71577, '735,37', 'Amposta'),
('Noguera ', 'NG ', 23, 39828, '1784,06', 'Balaguer'),
('Osona ', 'OS ', 24, 155069, '1260,12', 'Vic'),
('Pallars Jussà ', 'PJ ', 25, 13607, '1343,08', 'Tremp'),
('Pallars Sobirà ', 'PS ', 26, 7330, '1377,92', 'Sort'),
('Pla de l''Estany ', 'PE ', 27, 31325, '262,83', 'Banyoles'),
('Pla d''Urgell ', 'PU ', 28, 37249, '305,13', 'Mollerussa'),
('Priorat ', 'PR ', 29, 9756, '498,6', 'Falset'),
('Ribera d''Ebre ', 'RE ', 30, 23477, '827,31', 'Móra d''Ebre'),
('Ripollès ', 'RI ', 31, 25955, '956,24', 'Ripoll'),
('Segarra ', 'SR ', 32, 22971, '722,67', 'Cervera'),
('Segrià ', 'SI ', 33, 210141, '1396,65', 'Lleida'),
('Selva ', 'SV ', 34, 173128, '995,11', 'Santa Coloma de Farners'),
('Solsonès ', 'SL ', 35, 13621, '1001,21', 'Solsona'),
('Tarragonès ', 'TR ', 36, 251226, '318,86', 'Tarragona'),
('Terra Alta ', 'TT ', 37, 12310, '743,36', 'Gandesa'),
('Urgell ', 'UR ', 38, 36863, '579,73', 'Tàrrega'),
('Vall d''Aran ', 'VN ', 39, 10090, '633,6', 'Vielha'),
('Vallès Occidental ', 'VC ', 40, 898921, '583,17', 'Sabadell i Terrassa'),
('Vallès Oriental ', 'VR ', 41, 402989, '850,99', 'Granollers');

-- --------------------------------------------------------

--
-- Estructura de la taula `jugadors`
--

CREATE TABLE IF NOT EXISTS `jugadors` (
  `equip` varchar(16) DEFAULT NULL,
  `dorsal` int(2) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `posicio` varchar(2) DEFAULT NULL,
  `nacionalitat` varchar(4) DEFAULT NULL,
  `tipus_llicencia` varchar(4) DEFAULT NULL,
  `altura` varchar(4) DEFAULT NULL,
  `edat` int(2) DEFAULT NULL,
  `temporades` int(1) DEFAULT NULL,
  `foto` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `jugadors`
--

INSERT INTO `jugadors` (`equip`, `dorsal`, `nombre`, `posicio`, `nacionalitat`, `tipus_llicencia`, `altura`, `edat`, `temporades`, `foto`) VALUES
('MoraBanc Andorra', 5, 'Schreiner, Thomas ', 'B ', 'AUT ', 'EUR ', '1,95', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/J2A3LACB59.jpg'),
('MoraBanc Andorra', 7, 'Sada, Víctor ', 'B ', 'ESP ', 'JFL ', '1,93', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JB2QLACB59.jpg'),
('MoraBanc Andorra', 8, 'Trias, Jordi ', 'F ', 'ESP ', 'JFL ', '2,06', 33, 1, 'http://www.acb.com/fotos_cara/jugadores/JA4ELACB59.jpg'),
('MoraBanc Andorra', 10, 'Zengotitabengoa, A. ', 'A ', 'ESP ', 'JFL ', '2,01', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/JY18LACB59.jpg'),
('MoraBanc Andorra', 11, 'Gomes, Betinho ', 'A ', 'PRT ', 'EUR ', '2,01', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L8LACB59.jpg'),
('MoraBanc Andorra', 13, 'Bogris, Georgios ', 'P ', 'GRC ', 'EUR ', '2,1', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LCLACB59.jpg'),
('MoraBanc Andorra', 15, 'Navarro, David ', 'E ', 'ESP ', 'JFL ', '1,9', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JB8LLACB59.jpg'),
('MoraBanc Andorra', 21, 'Green, Shaun ', 'F ', 'USA ', 'EXT ', '2,03', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/J2A1LACB59.jpg'),
('MoraBanc Andorra', 30, 'Martínez, Román ', 'A ', 'USA ', 'EXT ', '2,01', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J169LACB59.jpg'),
('MoraBanc Andorra', 31, 'Blanch, Marc ', 'E ', 'ESP ', 'JFL ', '1,95', 32, 1, 'http://www.acb.com/fotos_cara/jugadores/JBK5LACB59.jpg'),
('MoraBanc Andorra', 55, 'Ivanov, Kaloyan ', 'F ', 'BGR ', 'EUR ', '2,05', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/JBC4LACB59.jpg'),
('MoraBanc Andorra', 32, 'Knezevic, Filip ', 'P ', 'MNE ', 'JFL ', '2,05', 20, 1, 'http://media.acb.com/web/fotos/4/4_2_08511_2.jpg');

-- --------------------------------------------------------

--
-- Estructura de la taula `jugadors_acb`
--

CREATE TABLE IF NOT EXISTS `jugadors_acb` (
  `equip` varchar(15) DEFAULT NULL,
  `dorsal` int(2) DEFAULT NULL,
  `nombre` varchar(19) DEFAULT NULL,
  `posición` varchar(1) DEFAULT NULL,
  `nacionalitat` varchar(4) DEFAULT NULL,
  `llicencia` varchar(3) DEFAULT NULL,
  `alçada` varchar(4) DEFAULT NULL,
  `edat` int(2) DEFAULT NULL,
  `temporades` int(1) DEFAULT NULL,
  `foto` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `jugadors_acb`
--

INSERT INTO `jugadors_acb` (`equip`, `dorsal`, `nombre`, `posición`, `nacionalitat`, `llicencia`, `alçada`, `edat`, `temporades`, `foto`) VALUES
('Gipuzkoa Basket', 5, 'Dean, Taquan', 'E', 'USA', 'EXT', '1,93', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JBFYLACB59.jpg'),
('Gipuzkoa Basket', 9, 'Motos, Mikel', 'E', 'ESP', 'JFL', '1,93', 21, 4, 'http://www.acb.com/fotos_cara/jugadores/J163LACB59.jpg'),
('Gipuzkoa Basket', 10, 'Jordan, Jared', 'B', 'USA', 'EXT', '1,85', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LOLACB59.jpg'),
('Gipuzkoa Basket', 11, 'Hanley, Will', 'F', 'IRL ', 'EUR', '2,01', 24, 2, 'http://www.acb.com/fotos_cara/jugadores/J10CLACB59.jpg'),
('Gipuzkoa Basket', 12, 'Huskic, Goran', 'P', 'SRB', 'EUR', '2,1', 22, 2, 'http://www.acb.com/fotos_cara/jugadores/JH05LACB59.jpg'),
('Gipuzkoa Basket', 13, 'Doblas, David', 'P', 'ESP', 'JFL', '2,06', 33, 8, 'http://www.acb.com/fotos_cara/jugadores/JB1FLACB59.jpg'),
('Gipuzkoa Basket', 14, 'Olaizola, Julen', 'F', 'ESP', 'JFL', '2,02', 21, 4, 'http://www.acb.com/fotos_cara/jugadores/JT86LACB59.jpg'),
('Gipuzkoa Basket', 20, 'Larochevitch, Loann', 'F', 'BEL', 'EUR', '2,07', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JA9KLACB59.jpg'),
('Gipuzkoa Basket', 22, 'Grimau, Jordi', 'E', 'ESP', 'JFL', '1,96', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JY79LACB59.jpg'),
('Gipuzkoa Basket', 30, 'Franch, Josep', 'B', 'ESP', 'JFL', '1,92', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/JY79LACB59.jpg'),
('Gipuzkoa Basket', 33, 'Diez, Daniel', 'A', 'ESP', 'JFL', '2,01', 21, 2, 'http://www.acb.com/fotos_cara/jugadores/JBLOLACB59.jpg'),
('Gipuzkoa Basket', 7, 'Oroz, Xabi', 'A', 'ESP', 'JFL', '1,92', 18, 1, 'http://www.acb.com/fotos_cara/jugadores/JXDPLACB59.jpg');

-- --------------------------------------------------------

--
-- Estructura de la taula `jugadors_acb0`
--

CREATE TABLE IF NOT EXISTS `jugadors_acb0` (
  `equip` varchar(31) DEFAULT NULL,
  `dorsal` int(2) DEFAULT NULL,
  `nombre` varchar(21) DEFAULT NULL,
  `posición` varchar(2) DEFAULT NULL,
  `nacionalitat` varchar(4) DEFAULT NULL,
  `llicencia` varchar(4) DEFAULT NULL,
  `alçada` varchar(4) DEFAULT NULL,
  `edat` int(2) DEFAULT NULL,
  `temporades` int(2) DEFAULT NULL,
  `foto` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `jugadors_acb0`
--

INSERT INTO `jugadors_acb0` (`equip`, `dorsal`, `nombre`, `posición`, `nacionalitat`, `llicencia`, `alçada`, `edat`, `temporades`, `foto`) VALUES
('Baloncesto Sevilla ', 0, 'Pullen, Jacob ', 'B ', 'GEO ', 'EUR ', '1,82', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JH23LACB59.jpg'),
('Baloncesto Sevilla ', 1, 'Byars, Derrick ', 'A ', 'USA ', 'EXT ', '2,1', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LSLACB59.jpg'),
('Baloncesto Sevilla ', 2, 'Thames, Xavier ', 'B ', 'USA ', 'EXT ', '1,91', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LDLACB59.jpg'),
('Baloncesto Sevilla ', 3, 'Urtasun, Alex ', 'E ', 'ESP ', 'JFL ', '1,93', 30, 2, 'http://www.acb.com/fotos_cara/jugadores/JBA3LACB59.jpg'),
('Baloncesto Sevilla ', 4, 'Radicevic, Nikola ', 'B ', 'SRB ', 'EUR ', '1,97', 20, 3, 'http://www.acb.com/fotos_cara/jugadores/J263LACB59.jpg'),
('Baloncesto Sevilla ', 6, 'Porzingis, Kristaps ', 'F ', 'LVA ', 'JFL ', '2,16', 19, 3, 'http://www.acb.com/fotos_cara/jugadores/J259LACB59.jpg'),
('Baloncesto Sevilla ', 12, 'Balvin, Ondrej ', 'P ', 'CZE ', 'EUR ', '2,17', 22, 5, 'http://www.acb.com/fotos_cara/jugadores/JBLELACB59.jpg'),
('Baloncesto Sevilla ', 14, 'Hernangómez, Willy ', 'P ', 'ESP ', 'JFL ', '2,1', 20, 2, 'http://www.acb.com/fotos_cara/jugadores/JSFPLACB59.jpg'),
('Baloncesto Sevilla ', 18, 'Oriola, Pierre ', 'F ', 'ESP ', 'JFL ', '2,06', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/JBIQLACB59.jpg'),
('Baloncesto Sevilla ', 41, 'Rodríguez, Berni ', 'E ', 'ESP ', 'JFL ', '1,97', 34, 1, 'http://www.acb.com/fotos_cara/jugadores/JA3JLACB59.jpg'),
('Baloncesto Sevilla ', 11, 'Gallardo, Diego ', 'E ', 'ESP ', 'JFL ', '1,91', 18, 1, 'http://www.acb.com/fotos_cara/jugadores/JXFQLACB59.jpg'),
('La Bruixa d''or Manresa', 3, 'Hall, Mike ', 'F ', 'IRL ', 'EUR ', '2,03', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/J80HLACB59.jpg'),
('La Bruixa d''or Manresa', 4, 'Ogilvy, AJ ', 'P ', 'IRL ', 'EUR ', '2,11', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J132LACB59.jpg'),
('La Bruixa d''or Manresa', 6, 'Bivià, Carles ', 'B ', 'ESP ', 'JFL ', '1,89', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/JBA8LACB59.jpg'),
('La Bruixa d''or Manresa', 8, 'Poeta, Giuseppe ', 'B ', 'ITA ', 'EUR ', '1,91', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J10JLACB59.jpg'),
('La Bruixa d''or Manresa', 11, 'Hernández, Alex ', 'B ', 'ESP ', 'JFL ', '1,89', 24, 5, 'http://www.acb.com/fotos_cara/jugadores/JY7GLACB59.jpg'),
('La Bruixa d''or Manresa', 12, 'Dewar, Ben ', 'A ', 'FRA ', 'EUR ', '1,96', 33, 1, 'http://www.acb.com/fotos_cara/jugadores/JY7GLACB59.jpg'),
('La Bruixa d''or Manresa', 13, 'Grigonis, Marius ', 'A ', 'LTU ', 'EUR ', '1,98', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LKLACB59.jpg'),
('La Bruixa d''or Manresa', 16, 'Garcia, Marc ', 'E ', 'ESP ', 'JFL ', '1,97', 18, 1, 'http://www.acb.com/fotos_cara/jugadores/JUADLACB59.jpg'),
('La Bruixa d''or Manresa', 32, 'Samuels, Jamar ', 'F ', 'USA ', 'EXT ', '2', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LZLACB59.jpg'),
('La Bruixa d''or Manresa', 44, 'Grimau, Roger ', 'B ', 'ESP ', 'JFL ', '1,96', 36, 1, 'http://www.acb.com/fotos_cara/jugadores/JAZFLACB59.jpg'),
('La Bruixa d''or Manresa', 45, 'Haritopoulos, D. ', 'F ', 'GRC ', 'EUR ', '2,05', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JH45LACB59.jpg'),
('Real Madrid', 4, 'Rivers, K. C.', 'A', 'GNB', 'COT', '1,96', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LELACB59.jpg'),
('Real Madrid', 5, 'Fernández, Rudy', 'A', 'ESP', 'JFL', '1,96', 29, 4, 'http://www.acb.com/fotos_cara/jugadores/JB0XLACB59.jpg'),
('Real Madrid', 6, 'Nocioni, Andrés', 'F', 'ITA', 'EUR', '2,03', 34, 1, 'http://www.acb.com/fotos_cara/jugadores/JA4CLACB59.jpg'),
('Real Madrid', 7, 'Campazzo, Facundo', 'B', 'ARG', 'EXT', '1,79', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LULACB59.jpg'),
('Real Madrid', 8, 'Maciulis, Jonas', 'A', 'LTU', 'EUR', '1,98', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L9LACB59.jpg'),
('Real Madrid', 9, 'Reyes, Felipe', 'F', 'ESP', 'JFL', '2,04', 34, 11, 'http://www.acb.com/fotos_cara/jugadores/JA1MLACB59.jpg'),
('Real Madrid', 13, 'Rodríguez, Sergio', 'B', 'ESP', 'JFL', '1,91', 28, 5, 'http://www.acb.com/fotos_cara/jugadores/JB68LACB59.jpg'),
('Real Madrid', 14, 'Ayón, Gustavo', 'F', 'MEX', 'EXT', '2,06', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J113LACB59.jpg'),
('Real Madrid', 20, 'Carroll, Jaycee', 'E', 'AZE', 'EUR', '1,88', 31, 4, 'http://www.acb.com/fotos_cara/jugadores/JBGZLACB59.jpg'),
('Real Madrid', 23, 'Llull, Sergio', 'B', 'ESP', 'JFL', '1,9', 26, 9, 'http://www.acb.com/fotos_cara/jugadores/JB7GLACB59.jpg'),
('Real Madrid', 30, 'Bourousis, Ioannis', 'P', 'GRC', 'EUR', '2,1', 30, 2, 'http://www.acb.com/fotos_cara/jugadores/JBBHLACB59.jpg'),
('Real Madrid', 50, 'Mejri, Salah', 'P', 'TUN', 'JTA', '2,17', 28, 2, 'http://www.acb.com/fotos_cara/jugadores/J246LACB59.jpg'),
('BILBAO BASKET', 8, 'Borg, Tobias', 'E', 'SWE', 'EUR', '1,84', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LWLACB59.jpg'),
('BILBAO BASKET', 9, 'Bertans, Dairis', 'E', 'LVA', 'EUR', '1,93', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JH01LACB59.jpg'),
('BILBAO BASKET', 10, 'Colom, Quino', 'B', 'ESP', 'JFL', '1,88', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JBFWLACB59.jpg'),
('BILBAO BASKET', 11, 'Todorovic, Marko', 'F', 'MNE', 'JFL', '2,08', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/J765LACB59.jpg'),
('BILBAO BASKET', 12, 'Gabriel, Germán', 'P', 'ESP', 'JFL', '2,07', 33, 3, 'http://www.acb.com/fotos_cara/jugadores/JA1OLACB58.jpg'),
('BILBAO BASKET', 15, 'Mumbrú, Álex', 'A', 'ESP', 'JFL', '2,02', 35, 6, 'http://www.acb.com/fotos_cara/jugadores/JA46LACB59.jpg'),
('BILBAO BASKET', 17, 'Hervelle, Axel', 'F', 'BEL', 'EUR', '2,05', 31, 6, 'http://www.acb.com/fotos_cara/jugadores/JB6QLACB59.jpg'),
('BILBAO BASKET', 20, 'Todorovic, Dejan', 'A', 'SRB', 'JFL', '1,96', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/J10DLACB59.jpg'),
('BILBAO BASKET', 21, 'Williams, Latavious', 'P', 'USA', 'EXT', '2,02', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J153LACB59.jpg'),
('BILBAO BASKET', 31, 'López, Raül', 'B', 'ESP', 'JFL', '1,82', 34, 4, 'http://www.acb.com/fotos_cara/jugadores/JA98LACB59.jpg'),
('BILBAO BASKET', 33, 'Andjusic, Danilo', 'E', 'SRB', 'EUR', '1,95', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J182LACB59.jpg'),
('BILBAO BASKET', 34, 'Wragge, Ethan', 'F', 'USA', 'EXT', '2,01', 24, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LRLACB59.jpg'),
('BILBAO BASKET', 7, 'Mendía, Borja', 'A', 'ESP', 'JFL', '1,99', 19, 2, 'http://www.acb.com/fotos_cara/jugadores/J11ZLACB59.jpg'),
('Laboral Kutxa Baskonia', 4, 'Iverson, Colton', 'P', 'GNB', 'COT', '2,13', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LHLACB59.jpg'),
('Laboral Kutxa Baskonia', 5, 'Causeur, Fabien', 'E', 'FRA', 'EUR', '1,95', 27, 3, 'http://www.acb.com/fotos_cara/jugadores/J218LACB59.jpg'),
('Laboral Kutxa Baskonia', 6, 'Gomes, Ryan', 'F', 'CPV', 'COT', '2,01', 32, 1, 'http://www.acb.com/fotos_cara/jugadores/J1M0LACB59.jpg'),
('Laboral Kutxa Baskonia', 7, 'Shengelia, Tornike', 'A', 'GEO', 'JFL', '2,03', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J105LACB59.jpg'),
('Laboral Kutxa Baskonia', 8, 'Perkins, Doron', 'B', 'CIV', 'COT', '1,91', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LYLACB59.jpg'),
('Laboral Kutxa Baskonia', 10, 'Diop, Mamadou', 'F', 'ESP', 'JFL', '2,04', 21, 1, 'http://www.acb.com/fotos_cara/jugadores/JT01LACB59.jpg'),
('Laboral Kutxa Baskonia', 12, 'Diop, Ilimane', 'P', 'ESP', 'JFL', '2,1', 19, 2, 'http://www.acb.com/fotos_cara/jugadores/J800LACB59.jpg'),
('Laboral Kutxa Baskonia', 14, 'Tillie, Kim', 'P', 'FRA', 'EUR', '2,11', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J227LACB59.jpg'),
('Laboral Kutxa Baskonia', 19, 'San Emeterio, F.', 'E', 'ESP', 'JFL', '1,99', 30, 8, 'http://www.acb.com/fotos_cara/jugadores/JA8TLACB59.jpg'),
('Laboral Kutxa Baskonia', 22, 'Heurtel, Thomas', 'B', 'FRA', 'EUR', '1,89', 25, 4, 'http://www.acb.com/fotos_cara/jugadores/JBJPLACB59.jpg'),
('Laboral Kutxa Baskonia', 33, 'Johnson, Orlando', 'E', 'USA', 'EXT', '1,96', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LLLACB59.jpg'),
('Laboral Kutxa Baskonia', 42, 'Bertans, Davis', 'A', 'LVA', 'EUR', '2,06', 21, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L1LACB59.jpg'),
('Gipuzkoa Basket', 5, 'Dean, Taquan', 'E', 'USA', 'EXT', '1,93', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JBFYLACB59.jpg'),
('Gipuzkoa Basket', 9, 'Motos, Mikel', 'E', 'ESP', 'JFL', '1,93', 21, 4, 'http://www.acb.com/fotos_cara/jugadores/J163LACB59.jpg'),
('Gipuzkoa Basket', 10, 'Jordan, Jared', 'B', 'USA', 'EXT', '1,85', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LOLACB59.jpg'),
('Gipuzkoa Basket', 11, 'Hanley, Will', 'F', 'IRL ', 'EUR', '2,01', 24, 2, 'http://www.acb.com/fotos_cara/jugadores/J10CLACB59.jpg'),
('Gipuzkoa Basket', 12, 'Huskic, Goran', 'P', 'SRB', 'EUR', '2,1', 22, 2, 'http://www.acb.com/fotos_cara/jugadores/JH05LACB59.jpg'),
('Gipuzkoa Basket', 13, 'Doblas, David', 'P', 'ESP', 'JFL', '2,06', 33, 8, 'http://www.acb.com/fotos_cara/jugadores/JB1FLACB59.jpg'),
('Gipuzkoa Basket', 14, 'Olaizola, Julen', 'F', 'ESP', 'JFL', '2,02', 21, 4, 'http://www.acb.com/fotos_cara/jugadores/JT86LACB59.jpg'),
('Gipuzkoa Basket', 20, 'Larochevitch, Loann', 'F', 'BEL', 'EUR', '2,07', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JA9KLACB59.jpg'),
('Gipuzkoa Basket', 22, 'Grimau, Jordi', 'E', 'ESP', 'JFL', '1,96', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JY79LACB59.jpg'),
('Gipuzkoa Basket', 30, 'Franch, Josep', 'B', 'ESP', 'JFL', '1,92', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/JY79LACB59.jpg'),
('Gipuzkoa Basket', 33, 'Diez, Daniel', 'A', 'ESP', 'JFL', '2,01', 21, 2, 'http://www.acb.com/fotos_cara/jugadores/JBLOLACB59.jpg'),
('Gipuzkoa Basket', 7, 'Oroz, Xabi', 'A', 'ESP', 'JFL', '1,92', 18, 1, 'http://www.acb.com/fotos_cara/jugadores/JXDPLACB59.jpg'),
('FC Barcelona', 5, 'Doellman, Justin', 'F', 'USA', 'EXT', '2,04', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/JBJXLACB59.jpg'),
('FC Barcelona', 9, 'Huertas, Marcelinho', 'B', 'ITA', 'EUR', '1,91', 31, 4, 'http://www.acb.com/fotos_cara/jugadores/JB72LACB59.jpg'),
('FC Barcelona', 10, 'Abrines, Álex', 'A', 'ESP', 'JFL', '1,98', 21, 3, 'http://www.acb.com/fotos_cara/jugadores/JSHDLACB59.jpg'),
('FC Barcelona', 11, 'Navarro, Juan Carlos', 'E', 'ESP', 'JFL', '1,92', 34, 17, 'http://www.acb.com/fotos_cara/jugadores/JA62LACB59.jpg'),
('FC Barcelona', 13, 'Satoransky, Tomas', 'B', 'CZE', 'EUR', '2,01', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/JBIPLACB59.jpg'),
('FC Barcelona', 21, 'Pleiss, Tibor', 'P', 'DEU', 'EUR', '2,18', 24, 1, 'http://www.acb.com/fotos_cara/jugadores/J219LACB59.jpg'),
('FC Barcelona', 23, 'Thomas, DeShaun', 'A', 'USA', 'EXT', '2,01', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LVLACB59.jpg'),
('FC Barcelona', 24, 'Oleson, Brad', 'E', 'ESP', 'JFL', '1,89', 31, 3, 'http://www.acb.com/fotos_cara/jugadores/JBGOLACB59.jpg'),
('FC Barcelona', 30, 'Lampe, Maciej', 'F', 'POL', 'JFL', '2,11', 29, 2, 'http://www.acb.com/fotos_cara/jugadores/JB0RLACB59.jpg'),
('FC Barcelona', 34, 'Nachbar, Bostjan', 'F', 'SVN', 'EUR', '2,05', 34, 2, 'http://www.acb.com/fotos_cara/jugadores/JH12LACB59.jpg'),
('FC Barcelona', 44, 'Tomic, Ante', 'P', 'HRV', 'EUR', '2,17', 27, 3, 'http://www.acb.com/fotos_cara/jugadores/JBIYLACB59.jpg'),
('FC Barcelona', 6, 'Hakanson, Ludde', 'B', 'SWE', 'JFL', '1,9', 18, 1, 'http://www.acb.com/fotos_cara/jugadores/JUAELACB59.jpg'),
('FC Barcelona', 8, 'Hezonja, Mario', 'A', 'HRV', 'EUR', '2,02', 19, 3, 'http://www.acb.com/fotos_cara/jugadores/JUAHLACB59.jpg'),
('FC Barcelona', 20, 'Eriksson, Marcus', 'A', 'SWE', 'JFL', '2', 20, 2, 'http://www.acb.com/fotos_cara/jugadores/J118LACB59.jpg'),
('FC Barcelona', 22, 'Sulejmanovic, Emir', 'P', 'FIN', 'EUR', '2,04', 19, 1, 'http://www.acb.com/fotos_cara/jugadores/J1BELACB59.jpg'),
('FIATC JOVENTUT', 0, 'Mallet, Demond', 'B', 'USA', 'EXT', '1,82', 36, 3, 'http://www.acb.com/fotos_cara/jugadores/JBEKLACB59.jpg'),
('FIATC JOVENTUT', 6, 'Vidal, Sergi', 'E', 'ESP', 'JFL', '1,98', 33, 2, 'http://www.acb.com/fotos_cara/jugadores/JA4BLACB59.jpg'),
('FIATC JOVENTUT', 9, 'Llovet, Nacho', 'P', 'ESP', 'JFL', '2,01', 23, 5, 'http://www.acb.com/fotos_cara/jugadores/JY7OLACB59.jpg'),
('FIATC JOVENTUT', 10, 'Miralles, Albert', 'P', 'ESP', 'JFL', '2,06', 32, 4, 'http://www.acb.com/fotos_cara/jugadores/JA3VLACB59.jpg'),
('FIATC JOVENTUT', 11, 'Hannah, Clevin', 'B', 'USA', 'EXT', '1,79', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LQLACB59.jpg'),
('FIATC JOVENTUT', 12, 'Suton, Goran', 'F', 'HRV', 'EUR', '2,08', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LMLACB59.jpg'),
('FIATC JOVENTUT', 14, 'Ventura, Albert', 'E', 'ESP', 'JFL', '1,92', 22, 5, 'http://www.acb.com/fotos_cara/jugadores/J718LACB59.jpg'),
('FIATC JOVENTUT', 17, 'Savané, Sitapha', 'P', 'ESP', 'JFL', '2,01', 36, 3, 'http://www.acb.com/fotos_cara/jugadores/JB3MLACB59.jpg'),
('FIATC JOVENTUT', 21, 'Kirksay, Tariq', 'A', 'FRA', 'EUR', '1,99', 35, 2, 'http://www.acb.com/fotos_cara/jugadores/JBIELACB59.jpg'),
('FIATC JOVENTUT', 24, 'Barrera, Alex', 'E', 'ESP', 'JFL', '1,95', 22, 4, 'http://www.acb.com/fotos_cara/jugadores/J717LACB59.jpg'),
('FIATC JOVENTUT', 33, 'Suárez, Álex', 'F', 'ESP', 'JFL', '2,05', 21, 4, 'http://www.acb.com/fotos_cara/jugadores/JBLILACB59.jpg'),
('CAI Zaragoza', 10, 'Lisch, Kevin', 'B', 'ITA', 'EUR', '1,88', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/J1KXLACB59.jpg'),
('CAI Zaragoza', 12, 'Llompart, Pedro', 'B', 'ESP', 'JFL', '1,87', 32, 3, 'http://www.acb.com/fotos_cara/jugadores/JB4RLACB59.jpg'),
('CAI Zaragoza', 14, 'Katic, Rasko', 'P', 'SRB', 'EUR', '2,08', 33, 1, 'http://www.acb.com/fotos_cara/jugadores/J1M3LACB59.jpg'),
('CAI Zaragoza', 15, 'Sastre, Joan', 'A', 'ESP', 'JFL', '2', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/JY9OLACB59.jpg'),
('CAI Zaragoza', 19, 'Tomàs, Pere', 'A', 'ESP', 'JFL', '2', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JY3VLACB59.jpg'),
('CAI Zaragoza', 20, 'Robinson, Jason', 'A', 'USA', 'EXT', '1,97', 34, 1, 'http://www.acb.com/fotos_cara/jugadores/JBJVLACB59.jpg'),
('CAI Zaragoza', 24, 'Landry, Marcus', 'F', 'USA', 'EXT', '2,02', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/J168LACB59.jpg'),
('CAI Zaragoza', 25, 'Norel, Henk', 'P', 'NLD', 'EUR', '2,12', 27, 3, 'http://www.acb.com/fotos_cara/jugadores/JBA0LACB59.jpg'),
('CAI Zaragoza', 31, 'Fontet, Albert', 'P', 'ESP', 'JFL', '2,14', 28, 4, 'http://www.acb.com/fotos_cara/jugadores/JB6LLACB59.jpg'),
('CAI Zaragoza', 43, 'Goulding, Chris', 'E', 'ENG', 'EUR', '1,92', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L4LACB59.jpg'),
('CAI Zaragoza', 89, 'Jelovac, Stevan', 'P', 'SRB', 'EUR', '2,08', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L0LACB59.jpg'),
('HERBALIFE GRAN CANARIA', 4, 'Oliver, Albert', 'B', 'ESP', 'JFL', '1,87', 36, 2, 'http://www.acb.com/fotos_cara/jugadores/JA56LACB59.jpg'),
('HERBALIFE GRAN CANARIA', 8, 'Newley, Brad', 'A', 'AUS', 'EXT', '1,99', 29, 3, 'http://www.acb.com/fotos_cara/jugadores/J206LACB59.jpg'),
('HERBALIFE GRAN CANARIA', 10, 'Urtasun, Txemi', 'E', 'ESP', 'JFL', '1,93', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JB9KLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 11, 'Bellas, Tomás', 'B', 'ESP', 'JFL', '1,85', 27, 6, 'http://www.acb.com/fotos_cara/jugadores/JYEFLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 13, 'Báez, Eulis', 'F', 'ESP', 'EUR', '2,01', 32, 3, 'http://www.acb.com/fotos_cara/jugadores/JBIHLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 14, 'Kendall, Levon', 'F', 'IRL', 'EUR', '2,09', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JF1JLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 17, 'Santana, Fabio', 'B', 'ESP', 'JFL', '1,88', 22, 4, 'http://www.acb.com/fotos_cara/jugadores/JBLDLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 21, 'Paulí, Oriol', 'E', 'ESP', 'JFL', '2,01', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/JSCELACB59.jpg'),
('HERBALIFE GRAN CANARIA', 22, 'Tavares, Walter S.', 'P', 'CPV', 'JFL', '2,2', 22, 3, 'http://www.acb.com/fotos_cara/jugadores/JT2ZLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 24, 'Kuric, Kyle', 'E', 'SVQ', 'EUR', '1,93', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J241LACB59.jpg'),
('HERBALIFE GRAN CANARIA', 25, 'O''Leary, Ian', 'F', 'USA', 'EUR', '2,01', 28, 2, 'http://www.acb.com/fotos_cara/jugadores/J258LACB59.jpg'),
('HERBALIFE GRAN CANARIA', 35, 'Summers, DaJuan', 'F', 'USA', 'EXT', '2,03', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LILACB59.jpg'),
('VALENCIA BASKET ', 5, 'Ribas, Pau', 'E', 'ESP', 'JFL', '1,96', 27, 3, 'http://www.acb.com/fotos_cara/jugadores/JAF1LACB59.jpg'),
('VALENCIA BASKET ', 9, 'Van Rossom, Sam', 'B', 'BEL', 'EUR', '1,88', 28, 2, 'http://www.acb.com/fotos_cara/jugadores/JBK4LACB59.jpg'),
('VALENCIA BASKET ', 10, 'Sato, Romain', 'A', 'CAF', 'COT', '1,95', 33, 2, 'http://www.acb.com/fotos_cara/jugadores/JBBGLACB59.jpg'),
('VALENCIA BASKET ', 12, 'Lishchuk, Serhiy', 'P', 'UKR', 'EUR', '2,1', 32, 6, 'http://www.acb.com/fotos_cara/jugadores/JBHYLACB59.jpg'),
('VALENCIA BASKET ', 13, 'Lucic, Vladimir', 'A', 'SRB', 'EUR', '2,02', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JH02LACB59.jpg'),
('VALENCIA BASKET ', 14, 'Dubljevic, Bojan', 'P', 'MNE', 'EUR', '2,05', 23, 3, 'http://www.acb.com/fotos_cara/jugadores/J217LACB59.jpg'),
('VALENCIA BASKET ', 16, 'Vives, Guillem', 'B', 'ESP', 'JFL', '1,92', 21, 1, 'http://www.acb.com/fotos_cara/jugadores/JBLPLACB59.jpg'),
('VALENCIA BASKET ', 17, 'Martínez, Rafa', 'E', 'ESP', 'JFL', '1,9', 32, 7, 'http://www.acb.com/fotos_cara/jugadores/JA3WLACB59.jpg'),
('VALENCIA BASKET ', 23, 'Buycks, Dwight', 'E', 'USA', 'EXT', '1,91', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L7LACB59.jpg'),
('VALENCIA BASKET ', 25, 'Loncar, Kresimir', 'P', 'HRV', 'EUR', '2,1', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/J1KYLACB59.jpg'),
('VALENCIA BASKET ', 34, 'Aguilar, Pablo', 'F', 'ESP', 'JFL', '2,02', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JY49LACB59.jpg'),
('VALENCIA BASKET ', 44, 'Harangody, Luke', 'P', 'USA', 'EXT', '2,03', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L2LACB59.jpg'),
('MoraBanc Andorra', 5, 'Schreiner, Thomas ', 'B ', 'AUT ', 'EUR ', '1,95', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/J2A3LACB59.jpg'),
('MoraBanc Andorra', 7, 'Sada, Víctor ', 'B ', 'ESP ', 'JFL ', '1,93', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JB2QLACB59.jpg'),
('MoraBanc Andorra', 8, 'Trias, Jordi ', 'F ', 'ESP ', 'JFL ', '2,06', 33, 1, 'http://www.acb.com/fotos_cara/jugadores/JA4ELACB59.jpg'),
('MoraBanc Andorra', 10, 'Zengotitabengoa, A. ', 'A ', 'ESP ', 'JFL ', '2,01', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/JY18LACB59.jpg'),
('MoraBanc Andorra', 11, 'Gomes, Betinho ', 'A ', 'PRT ', 'EUR ', '2,01', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L8LACB59.jpg'),
('MoraBanc Andorra', 13, 'Bogris, Georgios ', 'P ', 'GRC ', 'EUR ', '2,1', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LCLACB59.jpg'),
('MoraBanc Andorra', 15, 'Navarro, David ', 'E ', 'ESP ', 'JFL ', '1,9', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JB8LLACB59.jpg'),
('MoraBanc Andorra', 21, 'Green, Shaun ', 'F ', 'USA ', 'EXT ', '2,03', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/J2A1LACB59.jpg'),
('MoraBanc Andorra', 30, 'Martínez, Román ', 'A ', 'USA ', 'EXT ', '2,01', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J169LACB59.jpg'),
('MoraBanc Andorra', 31, 'Blanch, Marc ', 'E ', 'ESP ', 'JFL ', '1,95', 32, 1, 'http://www.acb.com/fotos_cara/jugadores/JBK5LACB59.jpg'),
('MoraBanc Andorra', 55, 'Ivanov, Kaloyan ', 'F ', 'BGR ', 'EUR ', '2,05', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/JBC4LACB59.jpg'),
('MoraBanc Andorra', 32, 'Knezevic, Filip ', 'P ', 'MNE ', 'JFL ', '2,05', 20, 1, 'http://media.acb.com/web/fotos/4/4_2_08511_2.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 4, 'Van Lacke, Fede', 'E', 'ESP', 'EUR', '1,91', 34, 2, 'http://www.acb.com/fotos_cara/jugadores/JB3KLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 7, 'Fernández, Jaime', 'B', 'ESP', 'JFL', '1,86', 21, 5, 'http://www.acb.com/fotos_cara/jugadores/J117LACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 8, 'Bircevic, Stefan', 'F', 'SRB', 'EUR', '2,1', 24, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LPLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 11, 'Martín, Nacho', 'F', 'ESP', 'JFL', '2,03', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JB2HLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 14, 'Salgado, Javier', 'B', 'ESP', 'JFL', '1,8', 34, 1, 'http://www.acb.com/fotos_cara/jugadores/JB1RLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 20, 'Simpson, Diamon', 'F', 'USA', 'EXT', '2,01', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LXLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 21, 'Nunnally, James', 'E', 'USA', 'EXT', '1,99', 24, 1, 'http://www.acb.com/fotos_cara/jugadores/J1M1LACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 22, 'Rabaseda, Xavi', 'A', 'ESP', 'JFL', '1,96', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JY1FLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 41, 'Hernangómez, Juancho', 'A', 'ESP', 'JFL', '2,04', 19, 2, 'http://www.acb.com/fotos_cara/jugadores/JUAALACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 43, 'Ortega, Pep', 'F', 'ESP', 'JFL', '2,01', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JB01LACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 15, 'Martínez, Ander', 'A', 'ESP', 'JFL', '1,94', 19, 1, 'http://www.acb.com/fotos_cara/jugadores/JXD6LACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 19, 'Niang, Wally', 'F', 'SEN', '', '2,06', 18, 1, 'http://media.acb.com/web/fotos/4/4_2_08511_2.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 5, 'Miller, Daniel', 'P', 'USA', 'EXT', '2,11', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LGLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 6, 'Pumprla, Pavel', 'A', 'CZE', 'EUR', '1,98', 28, 3, 'http://www.acb.com/fotos_cara/jugadores/J235LACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 8, 'Triguero, Juan José', 'P', 'ESP', 'JFL', '2,08', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JBCCLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 14, 'Kleber, Maxi', 'F', 'DEU', 'EUR', '2,07', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/J1KZLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 21, 'Waczynski, Adam', 'A', 'POL', 'EUR', '1,99', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1KWLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 24, 'Cárdenas, Fran', 'B', 'ESP', 'JFL', '1,77', 24, 1, 'http://www.acb.com/fotos_cara/jugadores/JY6XLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 31, 'Giannopoulos, H.', 'A', 'GRC', 'EUR', '2', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JH39LACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 33, 'Corbacho, Alberto', 'A', 'ESP', 'JFL', '2', 30, 4, 'http://www.acb.com/fotos_cara/jugadores/JB5ELACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 42, 'Chagoyen, Jesús', 'P', 'ESP', 'JFL', '2,02', 37, 1, 'http://www.acb.com/fotos_cara/jugadores/JA05LACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 44, 'Pozas, Pepe', 'B', 'ESP', 'JFL', '1,83', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/J750LACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 52, 'Nankivil, Keaton', 'F', 'USA', 'EXT', '2,03', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LJLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 55, 'Luz, Rafa', 'B', 'ESP', 'JFL', '1,88', 22, 3, 'http://www.acb.com/fotos_cara/jugadores/J745LACB59.jpg'),
('UNICAJA', 4, 'Markovic, Stefan', 'B', 'SRB', 'EUR', '1,97', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J128LACB59.jpg'),
('UNICAJA', 7, 'Vasileiadis, Kostas', 'A', 'GRC', 'EUR', '2', 30, 3, 'http://www.acb.com/fotos_cara/jugadores/JBBELACB59.jpg'),
('UNICAJA', 9, 'Toolson, Ryan', 'E', 'USA', 'EXT', '1,93', 29, 2, 'http://www.acb.com/fotos_cara/jugadores/J225LACB59.jpg'),
('UNICAJA', 10, 'Thomas, Will', 'F', 'GEO', 'EUR', '2,03', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L5LACB59.jpg'),
('UNICAJA', 11, 'Nguirane, Maodo', 'P', 'SEN', 'JFL', '2,1', 20, 2, 'http://www.acb.com/fotos_cara/jugadores/JSHJLACB59.jpg'),
('UNICAJA', 12, 'Suárez, Carlos', 'A', 'ESP', 'JFL', '2,03', 28, 2, 'http://www.acb.com/fotos_cara/jugadores/JB79LACB59.jpg'),
('UNICAJA', 15, 'Granger, Jayson', 'B', 'ITA', 'JFL', '1,88', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JY6KLACB59.jpg'),
('UNICAJA', 17, 'Vázquez, Fran', 'P', 'ESP', 'JFL', '2,09', 31, 6, 'http://www.acb.com/fotos_cara/jugadores/JA9SLACB59.jpg'),
('UNICAJA', 19, 'Kuzminskas, M.', 'A', 'LTU', 'EUR', '2,05', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JH03LACB59.jpg'),
('UNICAJA', 20, 'Stefansson, Jon', 'E', 'ISL', 'EUR', '1,92', 32, 1, 'http://www.acb.com/fotos_cara/jugadores/JBBWLACB59.jpg'),
('UNICAJA', 30, 'Green, Caleb', 'F', 'USA', 'EXT', '2,03', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LBLACB59.jpg'),
('UNICAJA', 32, 'Golubovic, Vladimir', 'P', 'MNE', 'EUR', '2,12', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/J004LACB59.jpg'),
('Montakit Fuenlabrada', 4, 'Díaz, Alberto', 'B', 'ESP', 'JFL', '1,88', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/JSHGLACB59.jpg'),
('Montakit Fuenlabrada', 5, 'Pérez, Daniel', 'B', 'ESP', 'JFL', '1,88', 24, 2, 'http://www.acb.com/fotos_cara/jugadores/JY84LACB59.jpg'),
('Montakit Fuenlabrada', 7, 'Panko, Andy', 'F', 'USA ', 'EXT', '2,04', 36, 2, 'http://www.acb.com/fotos_cara/jugadores/JB4GLACB59.jpg'),
('Montakit Fuenlabrada', 8, 'Papamakarios, M.', 'E', 'GRC', 'EUR', '1,92', 34, 1, 'http://www.acb.com/fotos_cara/jugadores/J149LACB59.jpg'),
('Montakit Fuenlabrada', 9, 'Vega, Javier', 'F', 'ESP', 'JFL', '2,05', 26, 9, 'http://www.acb.com/fotos_cara/jugadores/JBA6LACB59.jpg'),
('Montakit Fuenlabrada', 10, 'Clark, Daniel', 'F', 'GBR', 'JFL', '2,1', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/JBB8LACB59.jpg'),
('Montakit Fuenlabrada', 11, 'Moungoro, Boubacar', 'A', 'MLI', 'COT', '1,96', 30, 2, 'http://www.acb.com/fotos_cara/jugadores/JH34LACB59.jpg'),
('Montakit Fuenlabrada', 12, 'Diagne, Moussa', 'P', 'SEN', 'JFL', '2,11', 20, 3, 'http://www.acb.com/fotos_cara/jugadores/J17TLACB59.jpg'),
('Montakit Fuenlabrada', 17, 'Akindele, Jeleel', 'P', 'NGA', 'COT', '2,16', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/J1KVLACB59.jpg'),
('Montakit Fuenlabrada', 20, 'Baron Jr., Jimmy', 'E', 'USA', 'EXT', '1,91', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/JBK2LACB59.jpg'),
('Montakit Fuenlabrada', 31, 'Miso, Andrés', 'E', 'ESP', 'JFL', '1,98', 31, 2, 'http://www.acb.com/fotos_cara/jugadores/JA9ALACB59.jpg'),
('Montakit Fuenlabrada', 13, 'Smits, Rolands', 'A', 'LVA', 'EUR', '2,07', 19, 3, 'http://www.acb.com/fotos_cara/jugadores/J862LACB59.jpg'),
('Montakit Fuenlabrada', 16, 'Spires, Nick', 'F', 'SWE', 'JFL', '2,09', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/JSCHLACB59.jpg'),
('Universidad Católica de Murcia', 4, 'Bamforth, Scott', 'E', 'USA', 'EXT', '1,88', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JH22LACB59.jpg'),
('Universidad Católica de Murcia', 5, 'Martín, Alberto', 'B', 'ESP', 'JFL', '1,8', 19, 1, 'http://www.acb.com/fotos_cara/jugadores/J858LACB59.jpg'),
('Universidad Católica de Murcia', 6, 'Antelo, José Angel', 'F', 'ESP', 'JFL', '2,07', 27, 3, 'http://www.acb.com/fotos_cara/jugadores/JB5LLACB59.jpg'),
('Universidad Católica de Murcia', 8, 'Neto, Raulzinho', 'B', 'ITA', 'EUR', '1,84', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/J148LACB59.jpg'),
('Universidad Católica de Murcia', 10, 'Cabezas, Carlos', 'B', 'ESP', 'JFL', '1,86', 33, 1, 'http://www.acb.com/fotos_cara/jugadores/JA3KLACB59.jpg'),
('Universidad Católica de Murcia', 11, 'Radovic, Nemanja', 'F', 'MNE', 'EUR', '2,08', 22, 2, 'http://www.acb.com/fotos_cara/jugadores/JH52LACB59.jpg'),
('Universidad Católica de Murcia', 15, 'Wood, Scott', 'E', 'USA', 'EXT', '1,98', 24, 2, 'http://www.acb.com/fotos_cara/jugadores/JH21LACB59.jpg'),
('Universidad Católica de Murcia', 22, 'Kelati, Thomas', 'A', 'POL', 'EUR', '1,95', 32, 2, 'http://www.acb.com/fotos_cara/jugadores/JBGLLACB59.jpg'),
('Universidad Católica de Murcia', 23, 'Lima, Augusto', 'F', 'ESP', 'EUR', '2,08', 23, 2, 'http://www.acb.com/fotos_cara/jugadores/J748LACB59.jpg'),
('Universidad Católica de Murcia', 27, 'Rojas, Sadiel', 'A', 'DOM', 'COT', '1,93', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L3LACB59.jpg'),
('Universidad Católica de Murcia', 35, 'Arteaga, Víctor', 'F', 'ESP', 'JFL', '2,13', 22, 2, 'http://www.acb.com/fotos_cara/jugadores/J768LACB59.jpg'),
('Iberostar Tenerife', 0, 'San Miguel, Rodrigo', 'B', 'ESP', 'JFL', '1,86', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/JB86LACB59.jpg'),
('Iberostar Tenerife', 5, 'Richotti, Nicolás', 'E', 'ITA', 'EUR', '1,83', 28, 3, 'http://www.acb.com/fotos_cara/jugadores/JT78LACB59.jpg'),
('Iberostar Tenerife', 6, 'Úriz, Ricardo', 'B', 'ESP', 'JFL', '1,88', 34, 3, 'http://www.acb.com/fotos_cara/jugadores/JA1XLACB59.jpg'),
('Iberostar Tenerife', 9, 'Sekulic, Blagota', 'P', 'MNE', 'EUR', '2,1', 32, 3, 'http://www.acb.com/fotos_cara/jugadores/JBD8LACB59.jpg'),
('Iberostar Tenerife', 10, 'Tsairelis, Mihalis', 'P', 'GRC', 'EUR', '2,06', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L6LACB59.jpg'),
('Iberostar Tenerife', 11, 'Heras, Jaime', 'E', 'ESP', 'JFL', '1,92', 32, 3, 'http://www.acb.com/fotos_cara/jugadores/JLDSLACB59.jpg'),
('Iberostar Tenerife', 19, 'Lampropoulos, Fotios', 'P', 'GRC', 'EUR', '2,06', 31, 3, 'http://www.acb.com/fotos_cara/jugadores/JB98LACB59.jpg'),
('Iberostar Tenerife', 21, 'Blanco, Saúl', 'A', 'ESP', 'JFL', '1,96', 29, 3, 'http://www.acb.com/fotos_cara/jugadores/JB8TLACB59.jpg'),
('Iberostar Tenerife', 33, 'Beirán, Javier', 'A', 'ESP', 'JFL', '2', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/JBB2LACB59.jpg'),
('Iberostar Tenerife', 34, 'Rost, Levi', 'A', 'USA', 'EXT', '2,02', 31, 3, 'http://www.acb.com/fotos_cara/jugadores/J245LACB59.jpg'),
('Iberostar Tenerife', 43, 'Sikma, Luke', 'F', 'USA', 'EXT', '2,03', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JH14LACB59.jpg');

-- --------------------------------------------------------

--
-- Estructura de la taula `jugadors_acb2`
--

CREATE TABLE IF NOT EXISTS `jugadors_acb2` (
  `equip` varchar(19) DEFAULT NULL,
  `dorsal` int(2) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `posicio` varchar(2) DEFAULT NULL,
  `nac.` varchar(4) DEFAULT NULL,
  `lic.` varchar(4) DEFAULT NULL,
  `alt.` varchar(5) DEFAULT NULL,
  `ed.` int(2) DEFAULT NULL,
  `t.` int(1) DEFAULT NULL,
  `foto` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `jugadors_acb2`
--

INSERT INTO `jugadors_acb2` (`equip`, `dorsal`, `nombre`, `posicio`, `nac.`, `lic.`, `alt.`, `ed.`, `t.`, `foto`) VALUES
('Baloncesto Sevilla ', 0, 'Pullen, Jacob ', 'B ', 'GEO ', 'EUR ', '1.82 ', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JH23LACB59.jpg'),
('Baloncesto Sevilla ', 1, 'Byars, Derrick ', 'A ', 'USA ', 'EXT ', '2.01 ', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LSLACB59.jpg'),
('Baloncesto Sevilla ', 2, 'Thames, Xavier ', 'B ', 'USA ', 'EXT ', '1.91 ', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LDLACB59.jpg'),
('Baloncesto Sevilla ', 3, 'Urtasun, Alex ', 'E ', 'ESP ', 'JFL ', '1.93 ', 30, 2, 'http://www.acb.com/fotos_cara/jugadores/JBA3LACB59.jpg'),
('Baloncesto Sevilla ', 4, 'Radicevic, Nikola ', 'B ', 'SRB ', 'EUR ', '1.97 ', 20, 3, 'http://www.acb.com/fotos_cara/jugadores/J263LACB59.jpg'),
('Baloncesto Sevilla ', 6, 'Porzingis, Kristaps ', 'F ', 'LVA ', 'JFL ', '2.16 ', 19, 3, 'http://www.acb.com/fotos_cara/jugadores/J259LACB59.jpg'),
('Baloncesto Sevilla ', 12, 'Balvin, Ondrej ', 'P ', 'CZE ', 'EUR ', '2.17 ', 22, 5, 'http://www.acb.com/fotos_cara/jugadores/JBLELACB59.jpg'),
('Baloncesto Sevilla ', 14, 'Hernangómez, Willy ', 'P ', 'ESP ', 'JFL ', '2.10 ', 20, 2, 'http://www.acb.com/fotos_cara/jugadores/JSFPLACB59.jpg'),
('Baloncesto Sevilla ', 18, 'Oriola, Pierre ', 'F ', 'ESP ', 'JFL ', '2.06 ', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/JBIQLACB59.jpg'),
('Baloncesto Sevilla ', 41, 'Rodríguez, Berni ', 'E ', 'ESP ', 'JFL ', '1.97 ', 34, 1, 'http://www.acb.com/fotos_cara/jugadores/JA3JLACB59.jpg'),
('Baloncesto Sevilla ', 11, 'Gallardo, Diego ', 'E ', 'ESP ', 'JFL ', '1.91 ', 18, 1, 'http://www.acb.com/fotos_cara/jugadores/JXFQLACB59.jpg'),
('equip', 0, 'nombre', 'po', 'naci', 'llic', 'alçad', 0, 0, 'foto'),
('Gipuzkoa Basket', 5, 'Dean, Taquan', 'E', 'USA', 'EXT', '1,93', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JBFYLACB59.jpg'),
('Gipuzkoa Basket', 9, 'Motos, Mikel', 'E', 'ESP', 'JFL', '1,93', 21, 4, 'http://www.acb.com/fotos_cara/jugadores/J163LACB59.jpg'),
('Gipuzkoa Basket', 10, 'Jordan, Jared', 'B', 'USA', 'EXT', '1,85', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LOLACB59.jpg'),
('Gipuzkoa Basket', 11, 'Hanley, Will', 'F', 'IRL ', 'EUR', '2,01', 24, 2, 'http://www.acb.com/fotos_cara/jugadores/J10CLACB59.jpg'),
('Gipuzkoa Basket', 12, 'Huskic, Goran', 'P', 'SRB', 'EUR', '2,1', 22, 2, 'http://www.acb.com/fotos_cara/jugadores/JH05LACB59.jpg'),
('Gipuzkoa Basket', 13, 'Doblas, David', 'P', 'ESP', 'JFL', '2,06', 33, 8, 'http://www.acb.com/fotos_cara/jugadores/JB1FLACB59.jpg'),
('Gipuzkoa Basket', 14, 'Olaizola, Julen', 'F', 'ESP', 'JFL', '2,02', 21, 4, 'http://www.acb.com/fotos_cara/jugadores/JT86LACB59.jpg'),
('Gipuzkoa Basket', 20, 'Larochevitch, Loann', 'F', 'BEL', 'EUR', '2,07', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JA9KLACB59.jpg'),
('Gipuzkoa Basket', 22, 'Grimau, Jordi', 'E', 'ESP', 'JFL', '1,96', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JY79LACB59.jpg'),
('Gipuzkoa Basket', 30, 'Franch, Josep', 'B', 'ESP', 'JFL', '1,92', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/JY79LACB59.jpg'),
('Gipuzkoa Basket', 33, 'Diez, Daniel', 'A', 'ESP', 'JFL', '2,01', 21, 2, 'http://www.acb.com/fotos_cara/jugadores/JBLOLACB59.jpg'),
('Gipuzkoa Basket', 7, 'Oroz, Xabi', 'A', 'ESP', 'JFL', '1,92', 18, 1, 'http://www.acb.com/fotos_cara/jugadores/JXDPLACB59.jpg');

-- --------------------------------------------------------

--
-- Estructura de la taula `jugadors_total`
--

CREATE TABLE IF NOT EXISTS `jugadors_total` (
  `equip` varchar(31) DEFAULT NULL,
  `dorsal` int(2) DEFAULT NULL,
  `nombre` varchar(21) DEFAULT NULL,
  `posición` varchar(2) DEFAULT NULL,
  `nacionalitat` varchar(4) DEFAULT NULL,
  `llicencia` varchar(4) DEFAULT NULL,
  `alçada` varchar(4) DEFAULT NULL,
  `edat` int(2) DEFAULT NULL,
  `temporades` int(2) DEFAULT NULL,
  `foto` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `jugadors_total`
--

INSERT INTO `jugadors_total` (`equip`, `dorsal`, `nombre`, `posición`, `nacionalitat`, `llicencia`, `alçada`, `edat`, `temporades`, `foto`) VALUES
('Baloncesto Sevilla ', 0, 'Pullen, Jacob ', 'B ', 'GEO ', 'EUR ', '1,82', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JH23LACB59.jpg'),
('Baloncesto Sevilla ', 1, 'Byars, Derrick ', 'A ', 'USA ', 'EXT ', '2,1', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LSLACB59.jpg'),
('Baloncesto Sevilla ', 2, 'Thames, Xavier ', 'B ', 'USA ', 'EXT ', '1,91', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LDLACB59.jpg'),
('Baloncesto Sevilla ', 3, 'Urtasun, Alex ', 'E ', 'ESP ', 'JFL ', '1,93', 30, 2, 'http://www.acb.com/fotos_cara/jugadores/JBA3LACB59.jpg'),
('Baloncesto Sevilla ', 4, 'Radicevic, Nikola ', 'B ', 'SRB ', 'EUR ', '1,97', 20, 3, 'http://www.acb.com/fotos_cara/jugadores/J263LACB59.jpg'),
('Baloncesto Sevilla ', 6, 'Porzingis, Kristaps ', 'F ', 'LVA ', 'JFL ', '2,16', 19, 3, 'http://www.acb.com/fotos_cara/jugadores/J259LACB59.jpg'),
('Baloncesto Sevilla ', 12, 'Balvin, Ondrej ', 'P ', 'CZE ', 'EUR ', '2,17', 22, 5, 'http://www.acb.com/fotos_cara/jugadores/JBLELACB59.jpg'),
('Baloncesto Sevilla ', 14, 'Hernangómez, Willy ', 'P ', 'ESP ', 'JFL ', '2,1', 20, 2, 'http://www.acb.com/fotos_cara/jugadores/JSFPLACB59.jpg'),
('Baloncesto Sevilla ', 18, 'Oriola, Pierre ', 'F ', 'ESP ', 'JFL ', '2,06', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/JBIQLACB59.jpg'),
('Baloncesto Sevilla ', 41, 'Rodríguez, Berni ', 'E ', 'ESP ', 'JFL ', '1,97', 34, 1, 'http://www.acb.com/fotos_cara/jugadores/JA3JLACB59.jpg'),
('Baloncesto Sevilla ', 11, 'Gallardo, Diego ', 'E ', 'ESP ', 'JFL ', '1,91', 18, 1, 'http://www.acb.com/fotos_cara/jugadores/JXFQLACB59.jpg'),
('La Bruixa d''or Manresa', 3, 'Hall, Mike ', 'F ', 'IRL ', 'EUR ', '2,03', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/J80HLACB59.jpg'),
('La Bruixa d''or Manresa', 4, 'Ogilvy, AJ ', 'P ', 'IRL ', 'EUR ', '2,11', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J132LACB59.jpg'),
('La Bruixa d''or Manresa', 6, 'Bivià, Carles ', 'B ', 'ESP ', 'JFL ', '1,89', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/JBA8LACB59.jpg'),
('La Bruixa d''or Manresa', 8, 'Poeta, Giuseppe ', 'B ', 'ITA ', 'EUR ', '1,91', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J10JLACB59.jpg'),
('La Bruixa d''or Manresa', 11, 'Hernández, Alex ', 'B ', 'ESP ', 'JFL ', '1,89', 24, 5, 'http://www.acb.com/fotos_cara/jugadores/JY7GLACB59.jpg'),
('La Bruixa d''or Manresa', 12, 'Dewar, Ben ', 'A ', 'FRA ', 'EUR ', '1,96', 33, 1, 'http://www.acb.com/fotos_cara/jugadores/JY7GLACB59.jpg'),
('La Bruixa d''or Manresa', 13, 'Grigonis, Marius ', 'A ', 'LTU ', 'EUR ', '1,98', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LKLACB59.jpg'),
('La Bruixa d''or Manresa', 16, 'Garcia, Marc ', 'E ', 'ESP ', 'JFL ', '1,97', 18, 1, 'http://www.acb.com/fotos_cara/jugadores/JUADLACB59.jpg'),
('La Bruixa d''or Manresa', 32, 'Samuels, Jamar ', 'F ', 'USA ', 'EXT ', '2', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LZLACB59.jpg'),
('La Bruixa d''or Manresa', 44, 'Grimau, Roger ', 'B ', 'ESP ', 'JFL ', '1,96', 36, 1, 'http://www.acb.com/fotos_cara/jugadores/JAZFLACB59.jpg'),
('La Bruixa d''or Manresa', 45, 'Haritopoulos, D. ', 'F ', 'GRC ', 'EUR ', '2,05', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JH45LACB59.jpg'),
('Real Madrid', 4, 'Rivers, K. C.', 'A', 'GNB', 'COT', '1,96', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LELACB59.jpg'),
('Real Madrid', 5, 'Fernández, Rudy', 'A', 'ESP', 'JFL', '1,96', 29, 4, 'http://www.acb.com/fotos_cara/jugadores/JB0XLACB59.jpg'),
('Real Madrid', 6, 'Nocioni, Andrés', 'F', 'ITA', 'EUR', '2,03', 34, 1, 'http://www.acb.com/fotos_cara/jugadores/JA4CLACB59.jpg'),
('Real Madrid', 7, 'Campazzo, Facundo', 'B', 'ARG', 'EXT', '1,79', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LULACB59.jpg'),
('Real Madrid', 8, 'Maciulis, Jonas', 'A', 'LTU', 'EUR', '1,98', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L9LACB59.jpg'),
('Real Madrid', 9, 'Reyes, Felipe', 'F', 'ESP', 'JFL', '2,04', 34, 11, 'http://www.acb.com/fotos_cara/jugadores/JA1MLACB59.jpg'),
('Real Madrid', 13, 'Rodríguez, Sergio', 'B', 'ESP', 'JFL', '1,91', 28, 5, 'http://www.acb.com/fotos_cara/jugadores/JB68LACB59.jpg'),
('Real Madrid', 14, 'Ayón, Gustavo', 'F', 'MEX', 'EXT', '2,06', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J113LACB59.jpg'),
('Real Madrid', 20, 'Carroll, Jaycee', 'E', 'AZE', 'EUR', '1,88', 31, 4, 'http://www.acb.com/fotos_cara/jugadores/JBGZLACB59.jpg'),
('Real Madrid', 23, 'Llull, Sergio', 'B', 'ESP', 'JFL', '1,9', 26, 9, 'http://www.acb.com/fotos_cara/jugadores/JB7GLACB59.jpg'),
('Real Madrid', 30, 'Bourousis, Ioannis', 'P', 'GRC', 'EUR', '2,1', 30, 2, 'http://www.acb.com/fotos_cara/jugadores/JBBHLACB59.jpg'),
('Real Madrid', 50, 'Mejri, Salah', 'P', 'TUN', 'JTA', '2,17', 28, 2, 'http://www.acb.com/fotos_cara/jugadores/J246LACB59.jpg'),
('BILBAO BASKET', 8, 'Borg, Tobias', 'E', 'SWE', 'EUR', '1,84', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LWLACB59.jpg'),
('BILBAO BASKET', 9, 'Bertans, Dairis', 'E', 'LVA', 'EUR', '1,93', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JH01LACB59.jpg'),
('BILBAO BASKET', 10, 'Colom, Quino', 'B', 'ESP', 'JFL', '1,88', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JBFWLACB59.jpg'),
('BILBAO BASKET', 11, 'Todorovic, Marko', 'F', 'MNE', 'JFL', '2,08', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/J765LACB59.jpg'),
('BILBAO BASKET', 12, 'Gabriel, Germán', 'P', 'ESP', 'JFL', '2,07', 33, 3, 'http://www.acb.com/fotos_cara/jugadores/JA1OLACB58.jpg'),
('BILBAO BASKET', 15, 'Mumbrú, Álex', 'A', 'ESP', 'JFL', '2,02', 35, 6, 'http://www.acb.com/fotos_cara/jugadores/JA46LACB59.jpg'),
('BILBAO BASKET', 17, 'Hervelle, Axel', 'F', 'BEL', 'EUR', '2,05', 31, 6, 'http://www.acb.com/fotos_cara/jugadores/JB6QLACB59.jpg'),
('BILBAO BASKET', 20, 'Todorovic, Dejan', 'A', 'SRB', 'JFL', '1,96', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/J10DLACB59.jpg'),
('BILBAO BASKET', 21, 'Williams, Latavious', 'P', 'USA', 'EXT', '2,02', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J153LACB59.jpg'),
('BILBAO BASKET', 31, 'López, Raül', 'B', 'ESP', 'JFL', '1,82', 34, 4, 'http://www.acb.com/fotos_cara/jugadores/JA98LACB59.jpg'),
('BILBAO BASKET', 33, 'Andjusic, Danilo', 'E', 'SRB', 'EUR', '1,95', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J182LACB59.jpg'),
('BILBAO BASKET', 34, 'Wragge, Ethan', 'F', 'USA', 'EXT', '2,01', 24, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LRLACB59.jpg'),
('BILBAO BASKET', 7, 'Mendía, Borja', 'A', 'ESP', 'JFL', '1,99', 19, 2, 'http://www.acb.com/fotos_cara/jugadores/J11ZLACB59.jpg'),
('Laboral Kutxa Baskonia', 4, 'Iverson, Colton', 'P', 'GNB', 'COT', '2,13', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LHLACB59.jpg'),
('Laboral Kutxa Baskonia', 5, 'Causeur, Fabien', 'E', 'FRA', 'EUR', '1,95', 27, 3, 'http://www.acb.com/fotos_cara/jugadores/J218LACB59.jpg'),
('Laboral Kutxa Baskonia', 6, 'Gomes, Ryan', 'F', 'CPV', 'COT', '2,01', 32, 1, 'http://www.acb.com/fotos_cara/jugadores/J1M0LACB59.jpg'),
('Laboral Kutxa Baskonia', 7, 'Shengelia, Tornike', 'A', 'GEO', 'JFL', '2,03', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J105LACB59.jpg'),
('Laboral Kutxa Baskonia', 8, 'Perkins, Doron', 'B', 'CIV', 'COT', '1,91', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LYLACB59.jpg'),
('Laboral Kutxa Baskonia', 10, 'Diop, Mamadou', 'F', 'ESP', 'JFL', '2,04', 21, 1, 'http://www.acb.com/fotos_cara/jugadores/JT01LACB59.jpg'),
('Laboral Kutxa Baskonia', 12, 'Diop, Ilimane', 'P', 'ESP', 'JFL', '2,1', 19, 2, 'http://www.acb.com/fotos_cara/jugadores/J800LACB59.jpg'),
('Laboral Kutxa Baskonia', 14, 'Tillie, Kim', 'P', 'FRA', 'EUR', '2,11', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J227LACB59.jpg'),
('Laboral Kutxa Baskonia', 19, 'San Emeterio, F.', 'E', 'ESP', 'JFL', '1,99', 30, 8, 'http://www.acb.com/fotos_cara/jugadores/JA8TLACB59.jpg'),
('Laboral Kutxa Baskonia', 22, 'Heurtel, Thomas', 'B', 'FRA', 'EUR', '1,89', 25, 4, 'http://www.acb.com/fotos_cara/jugadores/JBJPLACB59.jpg'),
('Laboral Kutxa Baskonia', 33, 'Johnson, Orlando', 'E', 'USA', 'EXT', '1,96', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LLLACB59.jpg'),
('Laboral Kutxa Baskonia', 42, 'Bertans, Davis', 'A', 'LVA', 'EUR', '2,06', 21, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L1LACB59.jpg'),
('Gipuzkoa Basket', 5, 'Dean, Taquan', 'E', 'USA', 'EXT', '1,93', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JBFYLACB59.jpg'),
('Gipuzkoa Basket', 9, 'Motos, Mikel', 'E', 'ESP', 'JFL', '1,93', 21, 4, 'http://www.acb.com/fotos_cara/jugadores/J163LACB59.jpg'),
('Gipuzkoa Basket', 10, 'Jordan, Jared', 'B', 'USA', 'EXT', '1,85', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LOLACB59.jpg'),
('Gipuzkoa Basket', 11, 'Hanley, Will', 'F', 'IRL ', 'EUR', '2,01', 24, 2, 'http://www.acb.com/fotos_cara/jugadores/J10CLACB59.jpg'),
('Gipuzkoa Basket', 12, 'Huskic, Goran', 'P', 'SRB', 'EUR', '2,1', 22, 2, 'http://www.acb.com/fotos_cara/jugadores/JH05LACB59.jpg'),
('Gipuzkoa Basket', 13, 'Doblas, David', 'P', 'ESP', 'JFL', '2,06', 33, 8, 'http://www.acb.com/fotos_cara/jugadores/JB1FLACB59.jpg'),
('Gipuzkoa Basket', 14, 'Olaizola, Julen', 'F', 'ESP', 'JFL', '2,02', 21, 4, 'http://www.acb.com/fotos_cara/jugadores/JT86LACB59.jpg'),
('Gipuzkoa Basket', 20, 'Larochevitch, Loann', 'F', 'BEL', 'EUR', '2,07', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JA9KLACB59.jpg'),
('Gipuzkoa Basket', 22, 'Grimau, Jordi', 'E', 'ESP', 'JFL', '1,96', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JY79LACB59.jpg'),
('Gipuzkoa Basket', 30, 'Franch, Josep', 'B', 'ESP', 'JFL', '1,92', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/JY79LACB59.jpg'),
('Gipuzkoa Basket', 33, 'Diez, Daniel', 'A', 'ESP', 'JFL', '2,01', 21, 2, 'http://www.acb.com/fotos_cara/jugadores/JBLOLACB59.jpg'),
('Gipuzkoa Basket', 7, 'Oroz, Xabi', 'A', 'ESP', 'JFL', '1,92', 18, 1, 'http://www.acb.com/fotos_cara/jugadores/JXDPLACB59.jpg'),
('FC Barcelona', 5, 'Doellman, Justin', 'F', 'USA', 'EXT', '2,04', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/JBJXLACB59.jpg'),
('FC Barcelona', 9, 'Huertas, Marcelinho', 'B', 'ITA', 'EUR', '1,91', 31, 4, 'http://www.acb.com/fotos_cara/jugadores/JB72LACB59.jpg'),
('FC Barcelona', 10, 'Abrines, Álex', 'A', 'ESP', 'JFL', '1,98', 21, 3, 'http://www.acb.com/fotos_cara/jugadores/JSHDLACB59.jpg'),
('FC Barcelona', 11, 'Navarro, Juan Carlos', 'E', 'ESP', 'JFL', '1,92', 34, 17, 'http://www.acb.com/fotos_cara/jugadores/JA62LACB59.jpg'),
('FC Barcelona', 13, 'Satoransky, Tomas', 'B', 'CZE', 'EUR', '2,01', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/JBIPLACB59.jpg'),
('FC Barcelona', 21, 'Pleiss, Tibor', 'P', 'DEU', 'EUR', '2,18', 24, 1, 'http://www.acb.com/fotos_cara/jugadores/J219LACB59.jpg'),
('FC Barcelona', 23, 'Thomas, DeShaun', 'A', 'USA', 'EXT', '2,01', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LVLACB59.jpg'),
('FC Barcelona', 24, 'Oleson, Brad', 'E', 'ESP', 'JFL', '1,89', 31, 3, 'http://www.acb.com/fotos_cara/jugadores/JBGOLACB59.jpg'),
('FC Barcelona', 30, 'Lampe, Maciej', 'F', 'POL', 'JFL', '2,11', 29, 2, 'http://www.acb.com/fotos_cara/jugadores/JB0RLACB59.jpg'),
('FC Barcelona', 34, 'Nachbar, Bostjan', 'F', 'SVN', 'EUR', '2,05', 34, 2, 'http://www.acb.com/fotos_cara/jugadores/JH12LACB59.jpg'),
('FC Barcelona', 44, 'Tomic, Ante', 'P', 'HRV', 'EUR', '2,17', 27, 3, 'http://www.acb.com/fotos_cara/jugadores/JBIYLACB59.jpg'),
('FC Barcelona', 6, 'Hakanson, Ludde', 'B', 'SWE', 'JFL', '1,9', 18, 1, 'http://www.acb.com/fotos_cara/jugadores/JUAELACB59.jpg'),
('FC Barcelona', 8, 'Hezonja, Mario', 'A', 'HRV', 'EUR', '2,02', 19, 3, 'http://www.acb.com/fotos_cara/jugadores/JUAHLACB59.jpg'),
('FC Barcelona', 20, 'Eriksson, Marcus', 'A', 'SWE', 'JFL', '2', 20, 2, 'http://www.acb.com/fotos_cara/jugadores/J118LACB59.jpg'),
('FC Barcelona', 22, 'Sulejmanovic, Emir', 'P', 'FIN', 'EUR', '2,04', 19, 1, 'http://www.acb.com/fotos_cara/jugadores/J1BELACB59.jpg'),
('FIATC JOVENTUT', 0, 'Mallet, Demond', 'B', 'USA', 'EXT', '1,82', 36, 3, 'http://www.acb.com/fotos_cara/jugadores/JBEKLACB59.jpg'),
('FIATC JOVENTUT', 6, 'Vidal, Sergi', 'E', 'ESP', 'JFL', '1,98', 33, 2, 'http://www.acb.com/fotos_cara/jugadores/JA4BLACB59.jpg'),
('FIATC JOVENTUT', 9, 'Llovet, Nacho', 'P', 'ESP', 'JFL', '2,01', 23, 5, 'http://www.acb.com/fotos_cara/jugadores/JY7OLACB59.jpg'),
('FIATC JOVENTUT', 10, 'Miralles, Albert', 'P', 'ESP', 'JFL', '2,06', 32, 4, 'http://www.acb.com/fotos_cara/jugadores/JA3VLACB59.jpg'),
('FIATC JOVENTUT', 11, 'Hannah, Clevin', 'B', 'USA', 'EXT', '1,79', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LQLACB59.jpg'),
('FIATC JOVENTUT', 12, 'Suton, Goran', 'F', 'HRV', 'EUR', '2,08', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LMLACB59.jpg'),
('FIATC JOVENTUT', 14, 'Ventura, Albert', 'E', 'ESP', 'JFL', '1,92', 22, 5, 'http://www.acb.com/fotos_cara/jugadores/J718LACB59.jpg'),
('FIATC JOVENTUT', 17, 'Savané, Sitapha', 'P', 'ESP', 'JFL', '2,01', 36, 3, 'http://www.acb.com/fotos_cara/jugadores/JB3MLACB59.jpg'),
('FIATC JOVENTUT', 21, 'Kirksay, Tariq', 'A', 'FRA', 'EUR', '1,99', 35, 2, 'http://www.acb.com/fotos_cara/jugadores/JBIELACB59.jpg'),
('FIATC JOVENTUT', 24, 'Barrera, Alex', 'E', 'ESP', 'JFL', '1,95', 22, 4, 'http://www.acb.com/fotos_cara/jugadores/J717LACB59.jpg'),
('FIATC JOVENTUT', 33, 'Suárez, Álex', 'F', 'ESP', 'JFL', '2,05', 21, 4, 'http://www.acb.com/fotos_cara/jugadores/JBLILACB59.jpg'),
('CAI Zaragoza', 10, 'Lisch, Kevin', 'B', 'ITA', 'EUR', '1,88', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/J1KXLACB59.jpg'),
('CAI Zaragoza', 12, 'Llompart, Pedro', 'B', 'ESP', 'JFL', '1,87', 32, 3, 'http://www.acb.com/fotos_cara/jugadores/JB4RLACB59.jpg'),
('CAI Zaragoza', 14, 'Katic, Rasko', 'P', 'SRB', 'EUR', '2,08', 33, 1, 'http://www.acb.com/fotos_cara/jugadores/J1M3LACB59.jpg'),
('CAI Zaragoza', 15, 'Sastre, Joan', 'A', 'ESP', 'JFL', '2', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/JY9OLACB59.jpg'),
('CAI Zaragoza', 19, 'Tomàs, Pere', 'A', 'ESP', 'JFL', '2', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JY3VLACB59.jpg'),
('CAI Zaragoza', 20, 'Robinson, Jason', 'A', 'USA', 'EXT', '1,97', 34, 1, 'http://www.acb.com/fotos_cara/jugadores/JBJVLACB59.jpg'),
('CAI Zaragoza', 24, 'Landry, Marcus', 'F', 'USA', 'EXT', '2,02', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/J168LACB59.jpg'),
('CAI Zaragoza', 25, 'Norel, Henk', 'P', 'NLD', 'EUR', '2,12', 27, 3, 'http://www.acb.com/fotos_cara/jugadores/JBA0LACB59.jpg'),
('CAI Zaragoza', 31, 'Fontet, Albert', 'P', 'ESP', 'JFL', '2,14', 28, 4, 'http://www.acb.com/fotos_cara/jugadores/JB6LLACB59.jpg'),
('CAI Zaragoza', 43, 'Goulding, Chris', 'E', 'ENG', 'EUR', '1,92', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L4LACB59.jpg'),
('CAI Zaragoza', 89, 'Jelovac, Stevan', 'P', 'SRB', 'EUR', '2,08', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L0LACB59.jpg'),
('HERBALIFE GRAN CANARIA', 4, 'Oliver, Albert', 'B', 'ESP', 'JFL', '1,87', 36, 2, 'http://www.acb.com/fotos_cara/jugadores/JA56LACB59.jpg'),
('HERBALIFE GRAN CANARIA', 8, 'Newley, Brad', 'A', 'AUS', 'EXT', '1,99', 29, 3, 'http://www.acb.com/fotos_cara/jugadores/J206LACB59.jpg'),
('HERBALIFE GRAN CANARIA', 10, 'Urtasun, Txemi', 'E', 'ESP', 'JFL', '1,93', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JB9KLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 11, 'Bellas, Tomás', 'B', 'ESP', 'JFL', '1,85', 27, 6, 'http://www.acb.com/fotos_cara/jugadores/JYEFLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 13, 'Báez, Eulis', 'F', 'ESP', 'EUR', '2,01', 32, 3, 'http://www.acb.com/fotos_cara/jugadores/JBIHLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 14, 'Kendall, Levon', 'F', 'IRL', 'EUR', '2,09', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JF1JLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 17, 'Santana, Fabio', 'B', 'ESP', 'JFL', '1,88', 22, 4, 'http://www.acb.com/fotos_cara/jugadores/JBLDLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 21, 'Paulí, Oriol', 'E', 'ESP', 'JFL', '2,01', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/JSCELACB59.jpg'),
('HERBALIFE GRAN CANARIA', 22, 'Tavares, Walter S.', 'P', 'CPV', 'JFL', '2,2', 22, 3, 'http://www.acb.com/fotos_cara/jugadores/JT2ZLACB59.jpg'),
('HERBALIFE GRAN CANARIA', 24, 'Kuric, Kyle', 'E', 'SVQ', 'EUR', '1,93', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J241LACB59.jpg'),
('HERBALIFE GRAN CANARIA', 25, 'O''Leary, Ian', 'F', 'USA', 'EUR', '2,01', 28, 2, 'http://www.acb.com/fotos_cara/jugadores/J258LACB59.jpg'),
('HERBALIFE GRAN CANARIA', 35, 'Summers, DaJuan', 'F', 'USA', 'EXT', '2,03', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LILACB59.jpg'),
('VALENCIA BASKET ', 5, 'Ribas, Pau', 'E', 'ESP', 'JFL', '1,96', 27, 3, 'http://www.acb.com/fotos_cara/jugadores/JAF1LACB59.jpg'),
('VALENCIA BASKET ', 9, 'Van Rossom, Sam', 'B', 'BEL', 'EUR', '1,88', 28, 2, 'http://www.acb.com/fotos_cara/jugadores/JBK4LACB59.jpg'),
('VALENCIA BASKET ', 10, 'Sato, Romain', 'A', 'CAF', 'COT', '1,95', 33, 2, 'http://www.acb.com/fotos_cara/jugadores/JBBGLACB59.jpg'),
('VALENCIA BASKET ', 12, 'Lishchuk, Serhiy', 'P', 'UKR', 'EUR', '2,1', 32, 6, 'http://www.acb.com/fotos_cara/jugadores/JBHYLACB59.jpg'),
('VALENCIA BASKET ', 13, 'Lucic, Vladimir', 'A', 'SRB', 'EUR', '2,02', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JH02LACB59.jpg'),
('VALENCIA BASKET ', 14, 'Dubljevic, Bojan', 'P', 'MNE', 'EUR', '2,05', 23, 3, 'http://www.acb.com/fotos_cara/jugadores/J217LACB59.jpg'),
('VALENCIA BASKET ', 16, 'Vives, Guillem', 'B', 'ESP', 'JFL', '1,92', 21, 1, 'http://www.acb.com/fotos_cara/jugadores/JBLPLACB59.jpg'),
('VALENCIA BASKET ', 17, 'Martínez, Rafa', 'E', 'ESP', 'JFL', '1,9', 32, 7, 'http://www.acb.com/fotos_cara/jugadores/JA3WLACB59.jpg'),
('VALENCIA BASKET ', 23, 'Buycks, Dwight', 'E', 'USA', 'EXT', '1,91', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L7LACB59.jpg'),
('VALENCIA BASKET ', 25, 'Loncar, Kresimir', 'P', 'HRV', 'EUR', '2,1', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/J1KYLACB59.jpg'),
('VALENCIA BASKET ', 34, 'Aguilar, Pablo', 'F', 'ESP', 'JFL', '2,02', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JY49LACB59.jpg'),
('VALENCIA BASKET ', 44, 'Harangody, Luke', 'P', 'USA', 'EXT', '2,03', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L2LACB59.jpg'),
('MoraBanc Andorra', 5, 'Schreiner, Thomas ', 'B ', 'AUT ', 'EUR ', '1,95', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/J2A3LACB59.jpg'),
('MoraBanc Andorra', 7, 'Sada, Víctor ', 'B ', 'ESP ', 'JFL ', '1,93', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JB2QLACB59.jpg'),
('MoraBanc Andorra', 8, 'Trias, Jordi ', 'F ', 'ESP ', 'JFL ', '2,06', 33, 1, 'http://www.acb.com/fotos_cara/jugadores/JA4ELACB59.jpg'),
('MoraBanc Andorra', 10, 'Zengotitabengoa, A. ', 'A ', 'ESP ', 'JFL ', '2,01', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/JY18LACB59.jpg'),
('MoraBanc Andorra', 11, 'Gomes, Betinho ', 'A ', 'PRT ', 'EUR ', '2,01', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L8LACB59.jpg'),
('MoraBanc Andorra', 13, 'Bogris, Georgios ', 'P ', 'GRC ', 'EUR ', '2,1', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LCLACB59.jpg'),
('MoraBanc Andorra', 15, 'Navarro, David ', 'E ', 'ESP ', 'JFL ', '1,9', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JB8LLACB59.jpg'),
('MoraBanc Andorra', 21, 'Green, Shaun ', 'F ', 'USA ', 'EXT ', '2,03', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/J2A1LACB59.jpg'),
('MoraBanc Andorra', 30, 'Martínez, Román ', 'A ', 'USA ', 'EXT ', '2,01', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J169LACB59.jpg'),
('MoraBanc Andorra', 31, 'Blanch, Marc ', 'E ', 'ESP ', 'JFL ', '1,95', 32, 1, 'http://www.acb.com/fotos_cara/jugadores/JBK5LACB59.jpg'),
('MoraBanc Andorra', 55, 'Ivanov, Kaloyan ', 'F ', 'BGR ', 'EUR ', '2,05', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/JBC4LACB59.jpg'),
('MoraBanc Andorra', 32, 'Knezevic, Filip ', 'P ', 'MNE ', 'JFL ', '2,05', 20, 1, 'http://media.acb.com/web/fotos/4/4_2_08511_2.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 4, 'Van Lacke, Fede', 'E', 'ESP', 'EUR', '1,91', 34, 2, 'http://www.acb.com/fotos_cara/jugadores/JB3KLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 7, 'Fernández, Jaime', 'B', 'ESP', 'JFL', '1,86', 21, 5, 'http://www.acb.com/fotos_cara/jugadores/J117LACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 8, 'Bircevic, Stefan', 'F', 'SRB', 'EUR', '2,1', 24, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LPLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 11, 'Martín, Nacho', 'F', 'ESP', 'JFL', '2,03', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/JB2HLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 14, 'Salgado, Javier', 'B', 'ESP', 'JFL', '1,8', 34, 1, 'http://www.acb.com/fotos_cara/jugadores/JB1RLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 20, 'Simpson, Diamon', 'F', 'USA', 'EXT', '2,01', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LXLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 21, 'Nunnally, James', 'E', 'USA', 'EXT', '1,99', 24, 1, 'http://www.acb.com/fotos_cara/jugadores/J1M1LACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 22, 'Rabaseda, Xavi', 'A', 'ESP', 'JFL', '1,96', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JY1FLACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 41, 'Hernangómez, Juancho', 'A', 'ESP', 'JFL', '2,04', 19, 2, 'http://www.acb.com/fotos_cara/jugadores/JUAALACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 43, 'Ortega, Pep', 'F', 'ESP', 'JFL', '2,01', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JB01LACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 15, 'Martínez, Ander', 'A', 'ESP', 'JFL', '1,94', 19, 1, 'http://www.acb.com/fotos_cara/jugadores/JXD6LACB59.jpg'),
('TUENTI MÓVIL ESTUDIANTES', 19, 'Niang, Wally', 'F', 'SEN', '', '2,06', 18, 1, 'http://media.acb.com/web/fotos/4/4_2_08511_2.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 5, 'Miller, Daniel', 'P', 'USA', 'EXT', '2,11', 23, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LGLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 6, 'Pumprla, Pavel', 'A', 'CZE', 'EUR', '1,98', 28, 3, 'http://www.acb.com/fotos_cara/jugadores/J235LACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 8, 'Triguero, Juan José', 'P', 'ESP', 'JFL', '2,08', 30, 1, 'http://www.acb.com/fotos_cara/jugadores/JBCCLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 14, 'Kleber, Maxi', 'F', 'DEU', 'EUR', '2,07', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/J1KZLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 21, 'Waczynski, Adam', 'A', 'POL', 'EUR', '1,99', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1KWLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 24, 'Cárdenas, Fran', 'B', 'ESP', 'JFL', '1,77', 24, 1, 'http://www.acb.com/fotos_cara/jugadores/JY6XLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 31, 'Giannopoulos, H.', 'A', 'GRC', 'EUR', '2', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JH39LACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 33, 'Corbacho, Alberto', 'A', 'ESP', 'JFL', '2', 30, 4, 'http://www.acb.com/fotos_cara/jugadores/JB5ELACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 42, 'Chagoyen, Jesús', 'P', 'ESP', 'JFL', '2,02', 37, 1, 'http://www.acb.com/fotos_cara/jugadores/JA05LACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 44, 'Pozas, Pepe', 'B', 'ESP', 'JFL', '1,83', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/J750LACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 52, 'Nankivil, Keaton', 'F', 'USA', 'EXT', '2,03', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LJLACB59.jpg'),
('RIO NATURA MONBUS OBRADOIRO', 55, 'Luz, Rafa', 'B', 'ESP', 'JFL', '1,88', 22, 3, 'http://www.acb.com/fotos_cara/jugadores/J745LACB59.jpg'),
('UNICAJA', 4, 'Markovic, Stefan', 'B', 'SRB', 'EUR', '1,97', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J128LACB59.jpg'),
('UNICAJA', 7, 'Vasileiadis, Kostas', 'A', 'GRC', 'EUR', '2', 30, 3, 'http://www.acb.com/fotos_cara/jugadores/JBBELACB59.jpg'),
('UNICAJA', 9, 'Toolson, Ryan', 'E', 'USA', 'EXT', '1,93', 29, 2, 'http://www.acb.com/fotos_cara/jugadores/J225LACB59.jpg'),
('UNICAJA', 10, 'Thomas, Will', 'F', 'GEO', 'EUR', '2,03', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L5LACB59.jpg'),
('UNICAJA', 11, 'Nguirane, Maodo', 'P', 'SEN', 'JFL', '2,1', 20, 2, 'http://www.acb.com/fotos_cara/jugadores/JSHJLACB59.jpg'),
('UNICAJA', 12, 'Suárez, Carlos', 'A', 'ESP', 'JFL', '2,03', 28, 2, 'http://www.acb.com/fotos_cara/jugadores/JB79LACB59.jpg'),
('UNICAJA', 15, 'Granger, Jayson', 'B', 'ITA', 'JFL', '1,88', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JY6KLACB59.jpg'),
('UNICAJA', 17, 'Vázquez, Fran', 'P', 'ESP', 'JFL', '2,09', 31, 6, 'http://www.acb.com/fotos_cara/jugadores/JA9SLACB59.jpg'),
('UNICAJA', 19, 'Kuzminskas, M.', 'A', 'LTU', 'EUR', '2,05', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JH03LACB59.jpg'),
('UNICAJA', 20, 'Stefansson, Jon', 'E', 'ISL', 'EUR', '1,92', 32, 1, 'http://www.acb.com/fotos_cara/jugadores/JBBWLACB59.jpg'),
('UNICAJA', 30, 'Green, Caleb', 'F', 'USA', 'EXT', '2,03', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/J1LBLACB59.jpg'),
('UNICAJA', 32, 'Golubovic, Vladimir', 'P', 'MNE', 'EUR', '2,12', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/J004LACB59.jpg'),
('Montakit Fuenlabrada', 4, 'Díaz, Alberto', 'B', 'ESP', 'JFL', '1,88', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/JSHGLACB59.jpg'),
('Montakit Fuenlabrada', 5, 'Pérez, Daniel', 'B', 'ESP', 'JFL', '1,88', 24, 2, 'http://www.acb.com/fotos_cara/jugadores/JY84LACB59.jpg'),
('Montakit Fuenlabrada', 7, 'Panko, Andy', 'F', 'USA ', 'EXT', '2,04', 36, 2, 'http://www.acb.com/fotos_cara/jugadores/JB4GLACB59.jpg'),
('Montakit Fuenlabrada', 8, 'Papamakarios, M.', 'E', 'GRC', 'EUR', '1,92', 34, 1, 'http://www.acb.com/fotos_cara/jugadores/J149LACB59.jpg'),
('Montakit Fuenlabrada', 9, 'Vega, Javier', 'F', 'ESP', 'JFL', '2,05', 26, 9, 'http://www.acb.com/fotos_cara/jugadores/JBA6LACB59.jpg'),
('Montakit Fuenlabrada', 10, 'Clark, Daniel', 'F', 'GBR', 'JFL', '2,1', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/JBB8LACB59.jpg'),
('Montakit Fuenlabrada', 11, 'Moungoro, Boubacar', 'A', 'MLI', 'COT', '1,96', 30, 2, 'http://www.acb.com/fotos_cara/jugadores/JH34LACB59.jpg'),
('Montakit Fuenlabrada', 12, 'Diagne, Moussa', 'P', 'SEN', 'JFL', '2,11', 20, 3, 'http://www.acb.com/fotos_cara/jugadores/J17TLACB59.jpg'),
('Montakit Fuenlabrada', 17, 'Akindele, Jeleel', 'P', 'NGA', 'COT', '2,16', 31, 1, 'http://www.acb.com/fotos_cara/jugadores/J1KVLACB59.jpg'),
('Montakit Fuenlabrada', 20, 'Baron Jr., Jimmy', 'E', 'USA', 'EXT', '1,91', 28, 1, 'http://www.acb.com/fotos_cara/jugadores/JBK2LACB59.jpg'),
('Montakit Fuenlabrada', 31, 'Miso, Andrés', 'E', 'ESP', 'JFL', '1,98', 31, 2, 'http://www.acb.com/fotos_cara/jugadores/JA9ALACB59.jpg'),
('Montakit Fuenlabrada', 13, 'Smits, Rolands', 'A', 'LVA', 'EUR', '2,07', 19, 3, 'http://www.acb.com/fotos_cara/jugadores/J862LACB59.jpg'),
('Montakit Fuenlabrada', 16, 'Spires, Nick', 'F', 'SWE', 'JFL', '2,09', 20, 1, 'http://www.acb.com/fotos_cara/jugadores/JSCHLACB59.jpg'),
('Universidad Católica de Murcia', 4, 'Bamforth, Scott', 'E', 'USA', 'EXT', '1,88', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/JH22LACB59.jpg'),
('Universidad Católica de Murcia', 5, 'Martín, Alberto', 'B', 'ESP', 'JFL', '1,8', 19, 1, 'http://www.acb.com/fotos_cara/jugadores/J858LACB59.jpg'),
('Universidad Católica de Murcia', 6, 'Antelo, José Angel', 'F', 'ESP', 'JFL', '2,07', 27, 3, 'http://www.acb.com/fotos_cara/jugadores/JB5LLACB59.jpg'),
('Universidad Católica de Murcia', 8, 'Neto, Raulzinho', 'B', 'ITA', 'EUR', '1,84', 22, 1, 'http://www.acb.com/fotos_cara/jugadores/J148LACB59.jpg'),
('Universidad Católica de Murcia', 10, 'Cabezas, Carlos', 'B', 'ESP', 'JFL', '1,86', 33, 1, 'http://www.acb.com/fotos_cara/jugadores/JA3KLACB59.jpg'),
('Universidad Católica de Murcia', 11, 'Radovic, Nemanja', 'F', 'MNE', 'EUR', '2,08', 22, 2, 'http://www.acb.com/fotos_cara/jugadores/JH52LACB59.jpg'),
('Universidad Católica de Murcia', 15, 'Wood, Scott', 'E', 'USA', 'EXT', '1,98', 24, 2, 'http://www.acb.com/fotos_cara/jugadores/JH21LACB59.jpg'),
('Universidad Católica de Murcia', 22, 'Kelati, Thomas', 'A', 'POL', 'EUR', '1,95', 32, 2, 'http://www.acb.com/fotos_cara/jugadores/JBGLLACB59.jpg'),
('Universidad Católica de Murcia', 23, 'Lima, Augusto', 'F', 'ESP', 'EUR', '2,08', 23, 2, 'http://www.acb.com/fotos_cara/jugadores/J748LACB59.jpg'),
('Universidad Católica de Murcia', 27, 'Rojas, Sadiel', 'A', 'DOM', 'COT', '1,93', 25, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L3LACB59.jpg'),
('Universidad Católica de Murcia', 35, 'Arteaga, Víctor', 'F', 'ESP', 'JFL', '2,13', 22, 2, 'http://www.acb.com/fotos_cara/jugadores/J768LACB59.jpg'),
('Iberostar Tenerife', 0, 'San Miguel, Rodrigo', 'B', 'ESP', 'JFL', '1,86', 29, 1, 'http://www.acb.com/fotos_cara/jugadores/JB86LACB59.jpg'),
('Iberostar Tenerife', 5, 'Richotti, Nicolás', 'E', 'ITA', 'EUR', '1,83', 28, 3, 'http://www.acb.com/fotos_cara/jugadores/JT78LACB59.jpg'),
('Iberostar Tenerife', 6, 'Úriz, Ricardo', 'B', 'ESP', 'JFL', '1,88', 34, 3, 'http://www.acb.com/fotos_cara/jugadores/JA1XLACB59.jpg'),
('Iberostar Tenerife', 9, 'Sekulic, Blagota', 'P', 'MNE', 'EUR', '2,1', 32, 3, 'http://www.acb.com/fotos_cara/jugadores/JBD8LACB59.jpg'),
('Iberostar Tenerife', 10, 'Tsairelis, Mihalis', 'P', 'GRC', 'EUR', '2,06', 26, 1, 'http://www.acb.com/fotos_cara/jugadores/J1L6LACB59.jpg'),
('Iberostar Tenerife', 11, 'Heras, Jaime', 'E', 'ESP', 'JFL', '1,92', 32, 3, 'http://www.acb.com/fotos_cara/jugadores/JLDSLACB59.jpg'),
('Iberostar Tenerife', 19, 'Lampropoulos, Fotios', 'P', 'GRC', 'EUR', '2,06', 31, 3, 'http://www.acb.com/fotos_cara/jugadores/JB98LACB59.jpg'),
('Iberostar Tenerife', 21, 'Blanco, Saúl', 'A', 'ESP', 'JFL', '1,96', 29, 3, 'http://www.acb.com/fotos_cara/jugadores/JB8TLACB59.jpg'),
('Iberostar Tenerife', 33, 'Beirán, Javier', 'A', 'ESP', 'JFL', '2', 27, 1, 'http://www.acb.com/fotos_cara/jugadores/JBB2LACB59.jpg'),
('Iberostar Tenerife', 34, 'Rost, Levi', 'A', 'USA', 'EXT', '2,02', 31, 3, 'http://www.acb.com/fotos_cara/jugadores/J245LACB59.jpg'),
('Iberostar Tenerife', 43, 'Sikma, Luke', 'F', 'USA', 'EXT', '2,03', 25, 2, 'http://www.acb.com/fotos_cara/jugadores/JH14LACB59.jpg');

-- --------------------------------------------------------

--
-- Estructura de la taula `minerals`
--

CREATE TABLE IF NOT EXISTS `minerals` (
  `Id` varchar(2) DEFAULT NULL,
  `nom` varchar(19) DEFAULT NULL,
  `duressa` varchar(7) DEFAULT NULL,
  `densitat` varchar(10) DEFAULT NULL,
  `composicio` varchar(50) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `grup` varchar(26) DEFAULT NULL,
  `foto` varchar(37) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Bolcant dades de la taula `minerals`
--

INSERT INTO `minerals` (`Id`, `nom`, `duressa`, `densitat`, `composicio`, `color`, `grup`, `foto`) VALUES
('1', 'AERINITA', '3', '2,5', 'Silicat de composició i estructura poc definides.', 'blau cel, blau fosc', 'Silicat', 'http://www.xtec.es/~fmas/mine/m60.jpg'),
('2', 'ALBITA', '6', '2,6', 'NaAlSi3O8', 'Blanc', 'Tectosilicat', 'http://www.xtec.es/~fmas/mine/m72.jpg'),
('3', 'ALMANDINA', '6,5-7,5', '4,2', 'Fe3Al2(SiO4)3', 'vermell fosc-vermell marró', 'Neosilicat (granat)', 'http://www.xtec.es/~fmas/mine/m76.jpg'),
('4', 'ANAPAÏTA', '3,5', '2,8', '(Ca,Fe)3P2O8.4H2O', 'Verd-oliva', '', 'http://www.xtec.es/~fmas/mine/m57.jpg'),
('5', 'ANATASA', '5,5-6', '3,9', 'TiO2', 'Blau, gris, vermell, blau-fosc', 'Òxids', 'http://www.xtec.es/~fmas/mine/m68.jpg'),
('6', 'ANDALUSITA', '7,5', '3,2', 'Al2(SiO4)O', 'gris, marró, rosa, verd', 'Neosilicat', 'http://www.xtec.es/~fmas/mine/m83.jpg'),
('7', 'ANDRADITA', '6,5-7,5', '3,9', 'Mg3Al2(SiO4)3', 'gris verdós-marró negrós', 'Neosilicat (granat)', 'http://www.xtec.es/~fmas/mine/m79.jpg'),
('8', 'ANGLESITA', '3', '6,3', 'PbSO4', 'incolor, blanc', 'Sulfats', 'http://www.xtec.es/~fmas/mine/m50.jpg'),
('9', 'ANKERITA', '3,5', '3', 'CaFe(CO3)2', 'Gris, marrò clar, beige, rosa.', '', 'http://www.xtec.es/~fmas/mine/m54.jpg'),
('10', 'ARAGONITA', '3,5 a 4', '2,95', 'Ca CO3', 'variat o incolor', 'Carbonats', 'http://www.xtec.es/~fmas/mine/m55.jpg'),
('11', 'ARGENT', '2,5-3', '10,5', 'Ag', 'Blanc plata', 'Nadius', 'http://www.xtec.es/~fmas/mine/m11.jpg'),
('12', 'ARGENTITA', '1-1,5', '2,3', 'Ag2S', 'negre', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m03.jpg'),
('13', 'ARSENOPIRITA', '5-5,5', '6,1', 'FeAsS', 'gris argent', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m24.jpg'),
('14', 'ATZURITA', '3,5 i 4', '3,7 i 3,8', 'Cu3 (OH (CO)3 )2', 'Blau', 'Carbonats', 'http://www.xtec.es/~fmas/mine/m40.jpg'),
('15', 'AUGITA', '6', '3,4', '(CaMgFeTiAl)2 (SiAl)2 O6', 'Verd fosc i negre', 'Inosilicats', 'http://www.xtec.es/~fmas/mine/m65.jpg'),
('16', 'AURICALCITA', '2,5', '2,5', '(Zn, Cu)5(CO3)2(OH)3', 'blau fort', 'Carbonats', 'http://www.xtec.es/~fmas/mine/m36.jpg'),
('17', 'BARITINA', '3 i 3,5', '4,5', 'Ba SO4', 'blanc, transparent', 'Sulfats', 'http://www.xtec.es/~fmas/mine/m51.jpg'),
('18', 'BIOTITA', '2,5 a 3', '2,8 a 3,2', '[K(MgFeMn)3(OHF)2AlSi3O10]', 'Negre, verd fosc', 'Filosilicats', ''),
('19', 'BISMUT', '2-2,5', '9,8', 'Bi', 'Blanc plata rosat', 'Nadius', 'http://www.xtec.es/~fmas/mine/m08.jpg'),
('20', 'CALCITA', '2,5 i 3', '2,71', 'Ca CO3', 'Blanc o incolor', 'Carbonats', 'http://www.xtec.es/~fmas/mine/m49.jpg'),
('21', 'CALCOPIRITA', '3,5 a 4', '4,1 a 4,3', 'Cu Fe S2', 'Dorat, irisacions', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m16.jpg'),
('22', 'CALCOSINA', '2,5-3', '5,5-5,8', 'Cu2S', 'gris, plom, fosc', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m12.jpg'),
('23', 'CAOLINITA', '1,5', '2,6', 'Al4(Si4O10)(OH)8', 'blanc', 'Fil.losilicats', 'http://www.xtec.es/~fmas/mine/m42.jpg'),
('24', 'CASSITERITA', '7', '7', 'SnO2', 'marró fosc', 'Òxids', 'http://www.xtec.es/~fmas/mine/m30.jpg'),
('25', 'CELESTINA', '3-3,5', '4', 'SrSO4', 'incolor, blanc, blau, vermell', 'Sulfats', 'http://www.xtec.es/~fmas/mine/m52.jpg'),
('26', 'CERUSITA', '3-3,5', '6,5', 'PbCO3', 'incolor, blanc, blau', 'Carbonats', 'http://www.xtec.es/~fmas/mine/m53.jpg'),
('27', 'CERVANTINITA', '1-2,5', '5', 'Sb2O3', 'gris', 'Òxids', 'http://www.xtec.es/~fmas/mine/m32.jpg'),
('28', 'CINABRI', '2,5', '8,09', 'Hg S', 'vermell intens', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m06.jpg'),
('29', 'COURE', '2,5-3', '8,9', 'Cu', 'vermell-marró', 'Nadius', 'http://www.xtec.es/~fmas/mine/m10.jpg'),
('30', 'CRISOTIL.LE', '3', '2,6', 'Mg6(Si4O10)(OH)8', 'Gris, verd ,vermell', '', 'http://www.xtec.es/~fmas/mine/m56.jpg'),
('31', 'CUPRITA', '3,5-4', '6', 'Cu2O', 'vermell grisós, vermell marró', 'Òxids', 'http://www.xtec.es/~fmas/mine/m17.jpg'),
('32', 'DIÒPSID', '5-6', '3,2', 'CaMgSi2O6', 'Verd, verd-negre, gris', 'Inosilicats', 'http://www.xtec.es/~fmas/mine/m64.jpg'),
('33', 'EPIDOT', '6-7', '3,4', 'Ca2Al2O(OH)(Al, Fe)(Si2O7)', 'verd oliva-gris verdós', 'Sorosilicat', 'http://www.xtec.es/~fmas/mine/m74.jpg'),
('34', 'ERITRITA', '1-2,5', '3', 'Co3(AsO4)28H2O', 'vermell carmí', 'Aseniurs', 'http://www.xtec.es/~fmas/mine/m34.jpg'),
('35', 'ESCORODITA', '3,5-4', '3,2', 'Fe(AsO4).2H2O', 'verd grisós', 'Arseniur', 'http://www.xtec.es/~fmas/mine/m37.jpg'),
('36', 'ESFALERITA (blenda)', '3,5 a 4', '3,9 a 4,2', 'Zn S', 'Groc, vermell, marró', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m15.jpg'),
('37', 'ESTIBINA', '2', '4,5', 'Sb2S3', 'gris-plom', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m04.jpg'),
('38', 'FLUORITA', '4', '3,18', 'Ca F2', 'incolora, verda,', 'Halurs', 'http://www.xtec.es/~fmas/mine/m58.jpg'),
('39', 'GAHNITA', '7,5-8', '4-4,6', 'ZnAl2O4', 'Blau verdós', 'Espinella', 'http://www.xtec.es/~fmas/mine/m84.jpg'),
('40', 'GALENA', '2,5 a 3', '7,2 a 7,6', 'Pb S', 'Gris plom', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m09.jpg'),
('41', 'GOETHITA', '4-5,5', '4,2', 'FeO OH', 'Marró fosc, negre', 'Hidròxids', 'http://www.xtec.es/~fmas/mine/m21.jpg'),
('42', 'GRANAT', '7 a 7,5', '3,5 a 4,3', '', 'Variat', 'Neosilicats', 'http://www.xtec.es/~fmas/mine/m78.jpg'),
('43', 'GREENOCKITA', '1-2,5', '5', 'CdS', 'gris viu', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m33.jpg'),
('44', 'GUIX', '1,5 - 2', '2,3', 'CaSO4.2H2O', 'Blanc', 'Sulfats', 'http://www.xtec.es/~fmas/mine/m43.jpg'),
('45', 'HALITA', '2', '2,1 a 2,2', 'Na Cl', 'Blanca o incolora', 'Halogenurs', 'http://www.xtec.es/~fmas/mine/m44.jpg'),
('46', 'HEMATITES (Oligist)', '6,5', '5,26', 'Fe2 O3', 'Castany negre roig', 'Òxids', ''),
('47', 'HEXAHIDRITA', '2-2,5', '1,7', 'MgSO4.6H2O', 'blanc, gris, verd, vermell, rosa', '', 'http://www.xtec.es/~fmas/mine/m47.jpg'),
('48', 'HORNBLENDA', '5-6', '3,1', 'Ca2Na(Mg,Fe)4(Al,Fe)((Si,Al)4O11)2(OH)2', 'Verd-fosc, marró i negre', 'Inosilicats', 'http://www.xtec.es/~fmas/mine/m67.jpg'),
('49', 'MAGHEMITA', '4-5,5', '4,7', 'Fe2O3', 'gris vermellós', 'Òxids', 'http://www.xtec.es/~fmas/mine/m22.jpg'),
('50', 'MAGNETITA', '5,5 - 6', '5,18', 'Fe (OH)3', 'Negre ferro', 'Òxids', 'http://www.xtec.es/~fmas/mine/m25.jpg'),
('51', 'MALAQUITA', '3,5 a 4', '3,9 a 4,03', 'Cu2 (OH)2 (CO3)2', 'verd-clar, fosc', 'Carbonats', 'http://www.xtec.es/~fmas/mine/m39.jpg'),
('52', 'MARCASSITA', '6-6,5', '4,9', 'FeS2', 'gris llautó clar', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m28.jpg'),
('53', 'MELANTERITA', '1-2', '-', 'FeSO4 7H2O', 'gris verdós', '', 'http://www.xtec.es/~fmas/mine/m31.jpg'),
('54', 'MICROCLINA', '6', '2,6', 'KAlSi3O8', 'Blanc, verd, blau cel', 'tectosilicat', 'http://www.xtec.es/~fmas/mine/m70.jpg'),
('55', 'MIL.LERITA', '3-3,5', '5,5', 'NiS', 'gris llautó clar', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m14.jpg'),
('56', 'MOLIBDENITA', '1-1,5', '3,5', 'MoS2', 'gris-plom', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m05.jpg'),
('57', 'MOSCOVITA', '2,5', '2,76 a 2,9', '[KAl (OHF)2 AlSi3O10]', 'Blanc, gris, verdós', 'Filosilicats', 'http://www.xtec.es/~fmas/mine/m48.jpg'),
('58', 'NIQUELINA', '5,5', '7,8', 'NiAs', 'vermell coure pàl.lid', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m20.jpg'),
('59', 'OLIVINA', '6,5 a 7', '3,27 a 4,2', '[(Mg Fe)2 Si O4]', 'verd oliva, gris', 'Neossilicat', 'http://www.xtec.es/~fmas/mine/m75.jpg'),
('60', 'ÒPAL', '5-6', '2,1', 'SiO2.nH2O', 'Incolor, blanc, groc', 'Òxids', 'http://www.xtec.es/~fmas/mine/m61.jpg'),
('61', 'ORTOSA', '6 a 6,5', '2,55 a 2,6', '[K (Al Si3 O8)]', 'Variat, incolor', 'Tectosilicats (feldespats)', 'http://www.xtec.es/~fmas/mine/m71.jpg'),
('62', 'PIRITA', '6 a 6,5', '5,02', 'Fe S2', 'Groc', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m27.jpg'),
('63', 'PIROLUSITA', '1-2,5', '4,7', 'MnO2', 'negre', 'Òxids', 'http://www.xtec.es/~fmas/mine/m01.jpg'),
('64', 'PIROMORFITA', '3,5-4', '7', 'Pb5(PO4)3Cl', 'verd-gris, marró', 'Fosfats', 'http://www.xtec.es/~fmas/mine/m38.jpg'),
('65', 'PIROXMANGUITA', '5,5-6', '3,9', '(Mn,Fe)SiO3', 'Rosa, vermell, vermell i marró', 'Inocilicats', 'http://www.xtec.es/~fmas/mine/m69.jpg'),
('66', 'PIRROTINA', '4-4,5', '4,6', 'FeS', 'Clar vermellós', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m19.jpg'),
('67', 'PREHNITA', '6-6,5', '2,9', 'Ca2Al(AlSiO3O10)(OH)2', 'verd clar-blau-gris', 'Fil.losilicats', 'http://www.xtec.es/~fmas/mine/m73.jpg'),
('68', 'QUARS', '7', '2,65', 'Si O2', 'Molt variat', 'Òxids', 'http://www.xtec.es/~fmas/mine/m80.jpg'),
('69', 'RÚTIL', '6-6,5', '4,2', 'TiO2', 'marró negrós', 'Òxids', 'http://www.xtec.es/~fmas/mine/m29.jpg'),
('70', 'SIDERITA', '3,5-4,5', '3,9', 'FeCo3', 'Marró fosc', 'Carbonats', 'http://www.xtec.es/~fmas/mine/m18.jpg'),
('71', 'SILVINA', '2', '1,99', 'Cl K', 'Blanc vermellós', 'Halurs', 'http://www.xtec.es/~fmas/mine/m45.jpg'),
('72', 'SMITHSONITA', '4-5', '4,4', 'ZnCO3', 'Blau,verd, blau, rosa, marró', '', 'http://www.xtec.es/~fmas/mine/m59.jpg'),
('73', 'SOFRE', '1,5 a 2', '1,9 a 2,2', 'S (sofre, és un element)', 'Groc', 'Elements', 'http://www.xtec.es/~fmas/mine/m35.jpg'),
('74', 'TALC', '1', '2,82', 'Mg3 Si4 010 (OH)2', 'verd blanc gris', 'Filosilicats', 'http://www.xtec.es/~fmas/mine/m41.jpg'),
('75', 'TETRAEDRITA', '3-3,5', '4,9', 'Cu3SbS3,25', 'gris acer', 'Sulfurs', 'http://www.xtec.es/~fmas/mine/m13.jpg'),
('76', 'TURMALINA', '7 a 7,5', '3 a 3,25', '', 'Negre, verd, rosa', 'Ciclosilicats', ''),
('77', 'URANINITA', '5,5', '7-10', 'UO2', 'negre', 'Òxids', 'http://www.xtec.es/~fmas/mine/m23.jpg'),
('78', 'WOL.LASTONITA', '5-5,5', '2,9', 'CaSiO3', 'Blanc, groc, gris', 'Silicat', 'http://www.xtec.es/~fmas/mine/m63.jpg'),
(NULL, 'ESTAULORITA', '7-7,5', '3,75', 'Silicat d''Alumini i Ferro.', 'Bru sovint tirant a negr\\''f2s', 'Silicat', 'http://www2.montes.upm.es/Dptos/DptoS'),
(NULL, 'HORNBLENDA', '5-6', '2,9 a 3,5', 'Silicat d''Alumini amb una xarxa amb estructura hex', 'De verd clar fins a quasi negre', 'Silicat', 'http://www2.montes.upm.es/Dptos/DptoS'),
(NULL, 'CARNALITA', '1-2', '1,6', 'KCl ', 'Color carn, per\\''f2 tamb\\''e9 inc', 'Halogenurs', 'http://www2.montes.upm.es/Dptos/DptoS'),
(NULL, 'ESTAULORITA', '7-7,5', '3,75', 'Silicat d''Alumini i Ferro.', 'Bru sovint tirant a negr\\''f2s', 'Silicat', 'http://www2.montes.upm.es/Dptos/DptoS'),
(NULL, 'HORNBLENDA', '5-6', '2,9 a 3,5', 'Silicat d''Alumini amb una xarxa amb estructura hex', 'De verd clar fins a quasi negre', 'Silicat', 'http://www2.montes.upm.es/Dptos/DptoS'),
(NULL, 'CARNALITA', '1-2', '1,6', 'KCl ', 'Color carn, per\\''f2 tamb\\''e9 inc', 'Halogenurs', 'http://www2.montes.upm.es/Dptos/DptoS'),
(NULL, 'ESTAULORITA', '7-7,5', '3,75', 'Silicat d''Alumini i Ferro.', 'Bru sovint tirant a negr\\''f2s', 'Silicat', 'http://www2.montes.upm.es/Dptos/DptoS'),
(NULL, 'HORNBLENDA', '5-6', '2,9 a 3,5', 'Silicat d''Alumini amb una xarxa amb estructura hex', 'De verd clar fins a quasi negre', 'Silicat', 'http://www2.montes.upm.es/Dptos/DptoS'),
(NULL, 'CARNALITA', '1-2', '1,6', 'KCl ', 'Color carn, per\\''f2 tamb\\''e9 inc', 'Halogenurs', 'http://www2.montes.upm.es/Dptos/DptoS'),
(NULL, 'ESTAULORITA', '7-7,5', '3,75', 'Silicat d''Alumini i Ferro.', 'Bru sovint tirant a negr\\''f2s', 'Silicat', 'http://www2.montes.upm.es/Dptos/DptoS'),
(NULL, 'HORNBLENDA', '5-6', '2,9 a 3,5', 'Silicat d''Alumini amb una xarxa amb estructura hex', 'De verd clar fins a quasi negre', 'Silicat', 'http://www2.montes.upm.es/Dptos/DptoS'),
(NULL, 'CARNALITA', '1-2', '1,6', 'KCl ', 'Color carn, per\\''f2 tamb\\''e9 inc', 'Halogenurs', 'http://www2.montes.upm.es/Dptos/DptoS');

-- --------------------------------------------------------

--
-- Estructura de la taula `pavellons`
--

CREATE TABLE IF NOT EXISTS `pavellons` (
`id` int(2) NOT NULL,
  `club` varchar(33) DEFAULT NULL,
  `pavello` varchar(50) DEFAULT NULL,
  `ciutat` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `coordenades` varchar(50) DEFAULT NULL,
  `descripcio` text
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `pavellons`
--

INSERT INTO `pavellons` (`id`, `club`, `pavello`, `ciutat`, `provincia`, `coordenades`, `descripcio`) VALUES
(1, '  Baloncesto Sevilla', '', '', '', '', ''),
(2, '  Bilbao Basket', '', '', '', '', ''),
(3, '  CAI Zaragoza', '', '', '', '', ''),
(4, '  FC Barcelona', 'Palau Blaugrana', 'Barcelona', 'Barcelona', ' 41.380018,   2.120052 ', '<a href="http://www.fcbarcelona.com/basketball"><img src=http://media1.fcbarcelona.com/media/asset_publics/resources/000/069/392/size_320x250/1314_BAR_equip__0_copia.v1384185029.jpg"></a>'),
(5, '  FIATC Joventut', '', '', '', '', ''),
(6, '  Gipuzkoa Basket', '', '', '', '', ''),
(7, '  Herbalife Gran Canaria', '', '', '', '', ''),
(8, '  Iberostar Tenerife', '', '', '', '', ''),
(9, '  Laboral Kutxa Baskonia', '', '', '', '', ''),
(10, '  La Bruixa d''Or Manresa', 'El Nou Congost', 'Manresa', 'Barcfelona', ' 41.725350 ,1.809582', 'Partit de lliga ACB: <br>\r\n<a href="http://www.basquetmanresa.com/?lang=es">\r\n<img src="http://www.basquetmanresa.com/wp-content/uploads/2014/10/MG_9629-620x330.jpg"> </a>'),
(11, '  Montakit Fuenlabrada', '', '', '', '', ''),
(12, '  MoraBanc Andorra', '', '', '', '', ''),
(13, '  Real Madrid', '', '', '', '', ''),
(14, '  Rio Natura Monbus Obradoiro', '', '', '', '', ''),
(15, '  Tuenti Móvil Estudiantes', '', '', '', '', ''),
(16, '  Unicaja', '', '', '', '', ''),
(17, '  Universidad Católica de Murcia', '', '', '', '', ''),
(18, '  Valencia Basket', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de la taula `table 3`
--

CREATE TABLE IF NOT EXISTS `table 3` (
  `Comarca` varchar(23) DEFAULT NULL,
  `Codi Alfabètic` varchar(3) DEFAULT NULL,
  `Codi territorial` int(2) DEFAULT NULL,
  `Habitants` int(7) DEFAULT NULL,
  `Superficies` varchar(7) DEFAULT NULL,
  `Capital` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `table 3`
--

INSERT INTO `table 3` (`Comarca`, `Codi Alfabètic`, `Codi territorial`, `Habitants`, `Superficies`, `Capital`) VALUES
('Alt Camp ', 'AC ', 1, 44771, '538,01', 'Valls'),
('Alt Empordà ', 'AE ', 2, 141351, '1357,53', 'Figueres'),
('Alt Penedès ', 'AP ', 3, 106242, '592,77', 'Vilafranca del Penedès'),
('Alt Urgell ', 'AU ', 4, 21128, '1447,48', 'la Seu d''Urgell'),
('Alta Ribagorça ', 'AG ', 5, 4097, '426,86', 'el Pont de Suert'),
('Anoia ', 'AI ', 6, 118467, '866,28', 'Igualada'),
('Bages ', 'BG ', 7, 185718, '1295,08', 'Manresa'),
('Baix Camp ', 'BC ', 8, 193455, '697,07', 'Reus'),
('Baix Ebre ', 'BB ', 9, 81514, '1002,72', 'Tortosa'),
('Baix Empordà ', 'BM ', 10, 133787, '701,69', 'la Bisbal d''Empordà'),
('Baix Llobregat ', 'BT ', 11, 808644, '485,7', 'Sant Feliu de Llobregat'),
('Baix Penedès ', 'BP ', 12, 101100, '296,24', 'el Vendrell'),
('Barcelonès ', 'BR ', 13, 2240437, '144,72', 'Barcelona'),
('Berguedà ', 'BD ', 14, 40555, '1184,89', 'Berga'),
('Baixa Cerdanya[nota 1] ', 'CD ', 15, 18630, '546,57', 'Puigcerdà'),
('Conca de Barberà ', 'CB ', 16, 20992, '650,24', 'Montblanc'),
('Garraf ', 'GF ', 17, 146609, '185,28', 'Vilanova i la Geltrú'),
('Garrigues ', 'GG ', 18, 20058, '797,61', 'les Borges Blanques'),
('Garrotxa ', 'GX ', 19, 56106, '735,39', 'Olot'),
('Gironès ', 'GN ', 20, 185085, '575,4', 'Girona'),
('Maresme ', 'MM ', 21, 437431, '398,91', 'Mataró'),
('Montsià ', 'MT ', 22, 71577, '735,37', 'Amposta'),
('Noguera ', 'NG ', 23, 39828, '1784,06', 'Balaguer'),
('Osona ', 'OS ', 24, 155069, '1260,12', 'Vic'),
('Pallars Jussà ', 'PJ ', 25, 13607, '1343,08', 'Tremp'),
('Pallars Sobirà ', 'PS ', 26, 7330, '1377,92', 'Sort'),
('Pla de l''Estany ', 'PE ', 27, 31325, '262,83', 'Banyoles'),
('Pla d''Urgell ', 'PU ', 28, 37249, '305,13', 'Mollerussa'),
('Priorat ', 'PR ', 29, 9756, '498,6', 'Falset'),
('Ribera d''Ebre ', 'RE ', 30, 23477, '827,31', 'Móra d''Ebre'),
('Ripollès ', 'RI ', 31, 25955, '956,24', 'Ripoll'),
('Segarra ', 'SR ', 32, 22971, '722,67', 'Cervera'),
('Segrià ', 'SI ', 33, 210141, '1396,65', 'Lleida'),
('Selva ', 'SV ', 34, 173128, '995,11', 'Santa Coloma de Farners'),
('Solsonès ', 'SL ', 35, 13621, '1001,21', 'Solsona'),
('Tarragonès ', 'TR ', 36, 251226, '318,86', 'Tarragona'),
('Terra Alta ', 'TT ', 37, 12310, '743,36', 'Gandesa'),
('Urgell ', 'UR ', 38, 36863, '579,73', 'Tàrrega'),
('Vall d''Aran ', 'VN ', 39, 10090, '633,6', 'Vielha'),
('Vallès Occidental ', 'VC ', 40, 898921, '583,17', 'Sabadell i Terrassa'),
('Vallès Oriental ', 'VR ', 41, 402989, '850,99', 'Granollers');

-- --------------------------------------------------------

--
-- Estructura de la taula `table 5`
--

CREATE TABLE IF NOT EXISTS `table 5` (
`id` int(2) NOT NULL,
  `club` varchar(33) DEFAULT NULL,
  `pavello` varchar(50) DEFAULT NULL,
  `ciutat` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `coordenades` varchar(50) DEFAULT NULL,
  `descripcio` text
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `table 5`
--

INSERT INTO `table 5` (`id`, `club`, `pavello`, `ciutat`, `provincia`, `coordenades`, `descripcio`) VALUES
(1, '  Baloncesto Sevilla', '', '', '', '', ''),
(2, '  Bilbao Basket', '', '', '', '', ''),
(3, '  CAI Zaragoza', '', '', '', '', ''),
(4, '  FC Barcelona', 'Palau Blaugrana', 'Barcelona', 'Barcelona', ' 41.380018,   2.120052 ', '<a href="http://www.fcbarcelona.com/basketball"><img src=http://media1.fcbarcelona.com/media/asset_publics/resources/000/069/392/size_320x250/1314_BAR_equip__0_copia.v1384185029.jpg"></a>'),
(5, '  FIATC Joventut', '', '', '', '', ''),
(6, '  Gipuzkoa Basket', '', '', '', '', ''),
(7, '  Herbalife Gran Canaria', '', '', '', '', ''),
(8, '  Iberostar Tenerife', '', '', '', '', ''),
(9, '  Laboral Kutxa Baskonia', '', '', '', '', ''),
(10, '  La Bruixa d''Or Manresa', 'El Nou Congost', 'Manresa', 'Barcfelona', ' 41.725350 ,1.809582', 'Partit de lliga ACB: <br>\r\n<a href="http://www.basquetmanresa.com/?lang=es">\r\n<img src="http://www.basquetmanresa.com/wp-content/uploads/2014/10/MG_9629-620x330.jpg"> </a>'),
(11, '  Montakit Fuenlabrada', '', '', '', '', ''),
(12, '  MoraBanc Andorra', '', '', '', '', ''),
(13, '  Real Madrid', '', '', '', '', ''),
(14, '  Rio Natura Monbus Obradoiro', '', '', '', '', ''),
(15, '  Tuenti Móvil Estudiantes', '', '', '', '', ''),
(16, '  Unicaja', '', '', '', '', ''),
(17, '  Universidad Católica de Murcia', '', '', '', '', ''),
(18, '  Valencia Basket', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de la taula `table 13`
--

CREATE TABLE IF NOT EXISTS `table 13` (
  `num_jornada` int(1) DEFAULT NULL,
  `data_jornada` varchar(10) DEFAULT NULL,
  `equip_local` varchar(23) DEFAULT NULL,
  `equip_visitant` varchar(29) DEFAULT NULL,
  `punts_local` int(2) DEFAULT NULL,
  `punts_visitant` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcant dades de la taula `table 13`
--

INSERT INTO `table 13` (`num_jornada`, `data_jornada`, `equip_local`, `equip_visitant`, `punts_local`, `punts_visitant`) VALUES
(2, '12/10/2014', 'Laboral Kutxa Baskonia ', ' Unicaja ', 79, 88),
(2, '12/10/2014', 'La Bruixa d''Or Manresa ', ' FC Barcelona ', 69, 88),
(2, '12/10/2014', 'Herbalife Gran Canaria ', ' Rio Natura Monbus Obradoiro ', 72, 57),
(2, '12/10/2014', 'Gipuzkoa Basket ', ' Real Madrid ', 76, 90),
(2, '12/10/2014', 'FIATC Joventut ', ' Tuenti Móvil Estudiantes ', 65, 60),
(2, '12/10/2014', 'Iberostar Tenerife ', ' CAI Zaragoza ', 66, 67),
(2, '12/10/2014', 'Valencia Basket Club ', ' Baloncesto Sevilla ', 96, 73),
(2, '12/10/2014', 'Montakit Fuenlabrada ', ' UCAM Murcia CB ', 66, 71),
(2, '12/10/2014', 'MoraBanc Andorra ', ' Bilbao Basket ', 75, 76);

-- --------------------------------------------------------

--
-- Estructura de la taula `usuaris`
--

CREATE TABLE IF NOT EXISTS `usuaris` (
`id` int(5) NOT NULL,
  `usuari` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nom` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `cognoms` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `contrasenya` varchar(32) COLLATE utf8_spanish2_ci NOT NULL,
  `permis` int(1) NOT NULL,
  `darrer_acces` datetime NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Bolcant dades de la taula `usuaris`
--

INSERT INTO `usuaris` (`id`, `usuari`, `nom`, `cognoms`, `contrasenya`, `permis`, `darrer_acces`, `email`) VALUES
(1, 'admin', 'Administrador', 'Portal', '21232f297a57a5a743894a0e4a801fc3', 10, '0000-00-00 00:00:00', 'admin@correu.cat'),
(2, 'user', 'Usuari', 'General ', '827ccb0eea8a706c4c34a16891f84e7b', 5, '0000-00-00 00:00:00', 'usuari@correu.cat');

-- --------------------------------------------------------

--
-- Estructura de la taula `visites`
--

CREATE TABLE IF NOT EXISTS `visites` (
`id` int(6) NOT NULL,
  `data` datetime NOT NULL,
  `ip` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `pais` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `ciutat` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `idioma` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `SO` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `navegador` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pavellons`
--
ALTER TABLE `pavellons`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table 5`
--
ALTER TABLE `table 5`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuaris`
--
ALTER TABLE `usuaris`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visites`
--
ALTER TABLE `visites`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pavellons`
--
ALTER TABLE `pavellons`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `table 5`
--
ALTER TABLE `table 5`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `usuaris`
--
ALTER TABLE `usuaris`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `visites`
--
ALTER TABLE `visites`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
