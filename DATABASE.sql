-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 11. Feb 2018 um 01:51
-- Server Version: 5.5.59-0+deb8u1
-- PHP-Version: 5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `lakeMTADB`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `achievments`
--

CREATE TABLE IF NOT EXISTS `achievments` (
  `Name` varchar(50) NOT NULL,
  `SchlaflosInSA` varchar(50) NOT NULL DEFAULT '0',
  `Waffenschieber` varchar(50) NOT NULL DEFAULT '0',
  `Angler` varchar(50) NOT NULL DEFAULT '0',
  `Lizensen` varchar(50) NOT NULL DEFAULT '0',
  `Fahrzeugwahn` varchar(50) NOT NULL DEFAULT '0',
  `EigeneFueße` varchar(50) NOT NULL DEFAULT '0',
  `KingOfTheHill` varchar(50) NOT NULL DEFAULT '0',
  `ReallifeWTF` varchar(50) NOT NULL DEFAULT '0',
  `DerSammler` varchar(50) NOT NULL DEFAULT '0',
  `TheTruthIsOutThere` varchar(50) NOT NULL DEFAULT '0',
  `SilentAssasin` varchar(50) NOT NULL DEFAULT '0',
  `HighwayToHell` varchar(50) NOT NULL DEFAULT '0',
  `LookoutsA` varchar(20) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|',
  `Hufeisen` varchar(50) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|',
  `Revolverheld` int(1) NOT NULL DEFAULT '0',
  `ChickenDinner` int(1) NOT NULL DEFAULT '0',
  `NichtGehtMehr` int(1) NOT NULL DEFAULT '0',
  `highscore` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ban`
--

CREATE TABLE IF NOT EXISTS `ban` (
  `Name` varchar(50) NOT NULL,
  `Admin` varchar(50) NOT NULL,
  `Grund` varchar(50) NOT NULL,
  `Datum` varchar(50) NOT NULL,
  `IP` varchar(50) NOT NULL DEFAULT '0',
  `Serial` varchar(50) NOT NULL,
  `Eintragsdatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `betakeys`
--

CREATE TABLE IF NOT EXISTS `betakeys` (
  `Betakey` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `biz`
--

CREATE TABLE IF NOT EXISTS `biz` (
  `Biz` varchar(50) NOT NULL,
  `Inhaber` varchar(50) NOT NULL,
  `Kasse` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Preis` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `biz`
--

INSERT INTO `biz` (`Biz`, `Inhaber`, `Kasse`, `Name`, `Preis`) VALUES
('MistysBar', 'none', 0, 'Mistys Bar', 350000),
('Sprunk', 'none', 2, 'Sprunk Fabrik', 160000),
('WellStackedPizza', 'none', 3290, 'Well Stacked Pizza Co.', 500000),
('TankstellePine', 'none', 327, 'Tankstelle Pine', 280000),
('TankstelleNord', 'none', 1173, 'Tankstelle North', 280000),
('PaynSprayJuniper', 'Florivn', 90, 'Pay n Spray', 280000),
('TankstelleSued', 'German-Elite', 8412, 'Tankstelle South', 280000),
('PaynSprayWangcars', 'Florivn', 90, 'Pay n Spray', 320000),
('TuningSF', 'Elite-Killer', 10000, 'TransFender SF', 800000),
('ZIPShopSA', 'none', 0, 'Kleidungsgeschaefft', 340000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `blacklist`
--

CREATE TABLE IF NOT EXISTS `blacklist` (
  `Name` varchar(50) NOT NULL DEFAULT '',
  `Eintraeger` varchar(50) NOT NULL DEFAULT '',
  `Fraktion` int(2) NOT NULL,
  `Eintragungsdatum` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `blocks`
--

CREATE TABLE IF NOT EXISTS `blocks` (
  `Name` varchar(50) NOT NULL,
  `Punkte` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bonustable`
--

CREATE TABLE IF NOT EXISTS `bonustable` (
  `Name` varchar(50) NOT NULL,
  `Lungenvolumen` varchar(50) NOT NULL,
  `Muskeln` varchar(50) NOT NULL,
  `Kondition` varchar(50) NOT NULL,
  `Boxen` varchar(50) NOT NULL,
  `KungFu` varchar(50) NOT NULL,
  `Streetfighting` varchar(50) NOT NULL,
  `CurStyle` varchar(50) NOT NULL,
  `PistolenSkill` varchar(50) NOT NULL,
  `DeagleSkill` varchar(50) NOT NULL,
  `ShotgunSkill` varchar(50) NOT NULL,
  `AssaultSkill` varchar(50) NOT NULL,
  `Vortex` varchar(50) NOT NULL DEFAULT 'none',
  `MP5Skills` varchar(50) NOT NULL DEFAULT 'none',
  `Quad` varchar(50) NOT NULL DEFAULT 'none',
  `CarslotUpgrades` varchar(50) NOT NULL DEFAULT 'none',
  `PremiumUntilDay` int(50) NOT NULL DEFAULT '0',
  `PremiumUntilYear` varchar(50) NOT NULL DEFAULT '0',
  `BonusSkin1` varchar(50) NOT NULL DEFAULT 'none',
  `CarslotUpdate2` int(11) NOT NULL DEFAULT '0',
  `CarslotUpdate3` int(11) NOT NULL DEFAULT '0',
  `Skimmer` int(1) NOT NULL DEFAULT '0',
  `Leichenwagen` int(1) NOT NULL DEFAULT '0',
  `Schach` tinyint(1) NOT NULL DEFAULT '0',
  `Caddy` tinyint(1) NOT NULL DEFAULT '0',
  `fglass` tinyint(1) NOT NULL DEFAULT '0',
  `uzi` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `buyit`
--

CREATE TABLE IF NOT EXISTS `buyit` (
  `ID` int(50) NOT NULL,
  `Typ` varchar(50) NOT NULL,
  `Anbieter` varchar(50) NOT NULL,
  `Hoechstbietender` varchar(50) NOT NULL,
  `Hoechstgebot` int(50) NOT NULL,
  `LaeuftBis` int(50) NOT NULL,
  `Beschreibung` varchar(200) NOT NULL DEFAULT '',
  `OptischesDatum` varchar(50) NOT NULL,
  `Anzahl` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `carhouses_icons`
--

CREATE TABLE IF NOT EXISTS `carhouses_icons` (
  `Name` varchar(50) NOT NULL,
  `ID` int(3) NOT NULL,
  `X` double NOT NULL,
  `Y` double NOT NULL,
  `Z` double NOT NULL,
  `SpawnX` float NOT NULL,
  `SpawnY` float NOT NULL,
  `SpawnZ` float NOT NULL,
  `SpawnRX` float NOT NULL,
  `SpawnRY` float NOT NULL,
  `SpawnRZ` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `carhouses_icons`
--

INSERT INTO `carhouses_icons` (`Name`, `ID`, `X`, `Y`, `Z`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnRX`, `SpawnRY`, `SpawnRZ`) VALUES
('Grotti', 1, 546.6, -1276.6, 0, 563.8, -1271.8, 17.3, 0, 0, 0),
('CouttAndSchutz', 2, 2125.1, -1122, 0, 2142.4, -1131.5, 26.1, 0, 0, 0),
('Bikeshop', 3, 616.2, -1512.5, 0, 598.9, -1494.4, 15.8, 0, 0, 270);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `carhouses_vehicles`
--

CREATE TABLE IF NOT EXISTS `carhouses_vehicles` (
  `AutohausID` int(50) NOT NULL,
  `X` double NOT NULL,
  `Y` double NOT NULL,
  `Z` double NOT NULL,
  `RX` double NOT NULL,
  `RY` double NOT NULL,
  `RZ` double NOT NULL,
  `Preis` int(11) NOT NULL,
  `Typ` int(50) NOT NULL,
  `Info` varchar(50) NOT NULL,
  `Comment` varchar(999) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `carhouses_vehicles`
--

INSERT INTO `carhouses_vehicles` (`AutohausID`, `X`, `Y`, `Z`, `RX`, `RY`, `RZ`, `Preis`, `Typ`, `Info`, `Comment`) VALUES
(1, 563.8, -1291.5, 17.9, 340, 0, 0, 190000, 411, 'Auto', 'Grotti'),
(1, 560.8, -1291.5, 17.9, 340, 0, 0, 100000, 415, 'Auto', 'Grotti'),
(1, 557.7, -1291.5, 17.9, 340, 0, 0, 75000, 402, 'Auto', 'Grotti'),
(1, 554.5, -1291.5, 17.9, 340, 0, 0, 240000, 451, 'Auto', 'Grotti'),
(1, 551.4, -1291.5, 17.9, 340, 0, 0, 180000, 541, 'Auto', 'Grotti'),
(1, 548.4, -1291.5, 17.9, 340, 0, 0, 75000, 560, 'Auto', 'Grotti'),
(1, 545.3, -1291.5, 17.9, 340, 0, 0, 64000, 562, 'Auto', 'Grotti'),
(1, 542.4, -1291.5, 17.9, 340, 0, 0, 110000, 602, 'Auto', 'Grotti'),
(1, 539.4, -1291.5, 17.9, 340, 0, 0, 85000, 429, 'Auto', 'Grotti'),
(1, 536.5, -1291.5, 17.9, 340, 0, 0, 80000, 506, 'Auto', 'Grotti'),
(2, 2119.5, -1122.1, 25.1, 0, 0, 245, 1500, 549, 'Auto', 'CouttAndSchutz'),
(2, 2119.3, -1125.6, 25.1, 0, 0, 245, 1500, 542, 'Auto', 'CouttAndSchutz'),
(2, 2119.1, -1129.4, 25, 0, 0, 245, 19000, 426, 'Auto', 'CouttAndSchutz'),
(2, 2119.1, -1133.3, 25.2, 0, 0, 245, 21000, 445, 'Auto', 'CouttAndSchutz'),
(2, 2119, -1137.3, 24.9, 0, 0, 245, 27000, 492, 'Auto', 'CouttAndSchutz'),
(2, 2118.7, -1141, 24.5, 0, 0, 245, 23000, 547, 'Auto', 'CouttAndSchutz'),
(2, 2118.4, -1144.5, 24.4, 356, 0, 245, 36000, 534, 'Auto', 'CouttAndSchutz'),
(2, 2118.3, -1148, 24.1, -7, 0, 245, 18000, 475, 'Auto', 'CouttAndSchutz'),
(3, 614, -1499.1, 14.4, 0, 0, 160, 85000, 461, 'Bike', 'Bikeshop'),
(3, 611.7, -1499.1, 14.5, 0, 0, 160, 26000, 468, 'Bike', 'Bikeshop'),
(3, 609, -1499.1, 14.4, 0, 0, 160, 65000, 521, 'Bike', 'Bikeshop'),
(3, 606.2, -1499.1, 14.4, 0, 0, 160, 90000, 522, 'Bike', 'Bikeshop'),
(3, 603.2, -1499.1, 14.4, 0, 0, 160, 10000, 581, 'Bike', 'Bikeshop'),
(3, 599.5, -1499.1, 14.4, 0, 0, 160, 50000, 586, 'Bike', 'Bikeshop');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `Empfaenger` varchar(50) NOT NULL,
  `Text` varchar(500) NOT NULL,
  `Yearday` int(11) NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fraktionen`
--

CREATE TABLE IF NOT EXISTS `fraktionen` (
  `Name` varchar(50) NOT NULL,
  `ID` int(50) NOT NULL,
  `FKasse` varchar(50) NOT NULL,
  `DepotGeld` varchar(50) NOT NULL DEFAULT '0',
  `DepotDrogen` varchar(50) NOT NULL DEFAULT '0',
  `DepotMaterials` varchar(50) NOT NULL DEFAULT '0',
  `DepotKokain` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `fraktionen`
--

INSERT INTO `fraktionen` (`Name`, `ID`, `FKasse`, `DepotGeld`, `DepotDrogen`, `DepotMaterials`, `DepotKokain`) VALUES
('SAPD', 1, '0', '264176', '0', '2500', '0'),
('Mafia', 2, '0', '30000', '0', '909', '0'),
('Yakuza', 3, '0', '5005', '2', '1746', '0'),
('Terroristen', 4, '0', '1', '0', '0', '0'),
('Reporter', 5, '0', '0', '282', '0', '0'),
('FIB', 6, '0', '0', '0', '0', '0'),
('Aztecas', 7, '0', '33548', '1248', '5853', '9'),
('Biker', 9, '0', '1002', '626', '76330', '86'),
('Feuerwehr', 11, '0', '22222', '0', '0', '0'),
('Anonymous', 12, '0', '222222', '0', '0', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gangs`
--

CREATE TABLE IF NOT EXISTS `gangs` (
  `ID` int(2) NOT NULL,
  `X1` varchar(50) NOT NULL,
  `Y1` varchar(50) NOT NULL,
  `X2` varchar(50) NOT NULL,
  `Y2` varchar(50) NOT NULL,
  `X3` varchar(50) NOT NULL,
  `Y3` varchar(50) NOT NULL,
  `Z3` varchar(50) NOT NULL,
  `BesitzerFraktion` int(2) NOT NULL,
  `Einnahmen` int(5) NOT NULL,
  `Name` text NOT NULL,
  `Aktiviert` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `gangs`
--

INSERT INTO `gangs` (`ID`, `X1`, `Y1`, `X2`, `Y2`, `X3`, `Y3`, `Z3`, `BesitzerFraktion`, `Einnahmen`, `Name`, `Aktiviert`) VALUES
(1, '-2758.99', '1310.52', '-2573.75', '1528.54', '-2631.68', '1357.41', '6.75', 9, 10, 'Jizzys', 1),
(2, '743.70001220703', '-1684.5', '862.59997558594', '-1574.4000244141', '786.09997558594', '-1632.4000244141', '13.39999961853', 9, 8, 'Burgershot LS', 1),
(3, '-2201.72', '-280.57', '-2096.76', '-80.93', '-2136.24', '-181.63', '34.96', 3, 1, 'Drogenlabor', 1),
(4, '-2215.40', '-950.06', '-2025', '-700', '-2115.4033203125', '-893.06', '31.67', 9, 7, 'SF Uni', 1),
(5, '-2811.12', '-413.97', '-2634.36', '-261.18', '-2719.86', '-317.43', '7.5', 2, 8, 'Tennisplatz', 1),
(6, '-2293.56', '2226.63', '-2237.42', '2473.87', '-2261.91', '2317.41', '4.46', 9, 4, 'Bayside', 1),
(7, '-87.404563903809', '2420.3674316406', '458.44122314453', '2575.6437988281', '317.39999389648', '2437.6999511719', '16.5', 9, 7, 'Flugzeugfriedhof', 1),
(10, '111.78970', '1336.29541', '287.11746', '1484.41968', '191.09195', '1434.08276', '10.58594', 2, 4, 'Raffinerie', 1),
(11, '974.55304', '948.50726', '1177.29517', '1166.17798', '1087.21240', '1074.30579', '10.83816', 3, 6, 'LV Uni', 1),
(12, '1577.68152', '943.66669', '1756.69226', '1122.69128', '1667.1455078125', '1013.2158203125', '10.8203125', 3, 5, 'Depot', 1),
(13, '1300.3671875', '2102.9736328125', '1397.1962890625', '2198.951171875', '1358.8984375', '2160.513671875', '11.015625', 3, 4, 'Baseballstadion', 1),
(14, '-624.1655273438', '-564.07165527344', '-467.08432006836', '-467.08432006836', '-485.64794921875', '-505.75033569336', '25.517845153809', 3, 4, 'SF Lagerhalle', 1),
(15, '2437.3999023438', '1083.1999511719', '2597.3999023438', '1183.3000488281', '2527.3999023438', '1137.0999755859', '10.699999809265', 2, 9, 'Streets', 1),
(16, '-593.20001220703', '-200.19999694824', '-422.29998779297', '-31.700000762939', '-511.39999389648', '-85.300003051758', '62.200000762939', 9, 10, 'Holzfaeller', 1),
(17, '1860.7937011719', '-1452.2199707031', '1979.2247314453', '-1350.2930908203', '1918.2982177734', '-1400.6328125', '13.5703125', 7, 5, 'Skaterpark', 1),
(18, '807.40002441406', '-1130.0999755859', '952.59997558594', '-1055.5999755859', '862.70001220703', '-1101.9000244141', '24.299999237061', 2, 10, 'Friedhof', 1),
(19, '2371.8000488281', '1783.1999511719', '2497.3999023438', '1963.1999511719', '2420.3000488281', '1925.6999511719', '6', 2, 6, 'Baustelle', 1),
(20, '2497.1999511719', '2617.1000976563', '2749.1999511719', '2857.6000976563', '2554.8999023438', '2753.3000488281', '10.800000190735', 2, 7, 'Pissgebiet', 1),
(21, '2127.1000976563', '-2345', '2267.8000488281', '-2218.8999023438', '2167.1000976563', '-2274.3999023438', '13.39999961853', 9, 6, 'LS Lagerhalle', 1),
(8, '2558.8000488281', '2242.6999511719', '2677.3000488281', '2474.5', '2606', '2302.8999023438', '10.800000190735', 7, 10, 'Rock Hotel', 0),
(9, '2777.1000976563', '833.29998779297', '2895.1000976563', '1023.299987793', '2862.1999511719', '919.09997558594', '10.800000190735', 3, 9, 'Linden Side', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gang_basic`
--

CREATE TABLE IF NOT EXISTS `gang_basic` (
  `Name` varchar(50) NOT NULL DEFAULT 'Def. Gang',
  `LeaderMSG` varchar(50) NOT NULL DEFAULT '',
  `Waffe` int(2) NOT NULL DEFAULT '0',
  `Skin` int(3) NOT NULL DEFAULT '7',
  `HausID` int(4) NOT NULL DEFAULT '0',
  `Rang1` varchar(50) NOT NULL DEFAULT 'Anfaenger',
  `Rang2` varchar(50) NOT NULL DEFAULT 'Mitglied',
  `Rang3` varchar(50) NOT NULL DEFAULT 'Anfuehrer',
  `MaxMembers` int(4) NOT NULL DEFAULT '8',
  `Drugs` int(10) NOT NULL DEFAULT '0',
  `Mats` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gang_members`
--

CREATE TABLE IF NOT EXISTS `gang_members` (
  `Name` varchar(50) NOT NULL,
  `Gang` int(4) NOT NULL DEFAULT '0',
  `Rang` int(2) NOT NULL DEFAULT '1',
  `Founder` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gang_vehicles`
--

CREATE TABLE IF NOT EXISTS `gang_vehicles` (
  `GangID` int(4) NOT NULL,
  `Typ` int(3) NOT NULL DEFAULT '500',
  `Tuning` varchar(50) NOT NULL DEFAULT '|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|',
  `Spawnpos_X` double NOT NULL DEFAULT '0',
  `Spawnpos_Y` double NOT NULL DEFAULT '0',
  `Spawnpos_Z` double NOT NULL DEFAULT '0',
  `Spawnrot_X` double NOT NULL DEFAULT '0',
  `Spawnrot_Y` double NOT NULL DEFAULT '0',
  `Spawnrot_Z` double NOT NULL DEFAULT '0',
  `Farbe` varchar(50) NOT NULL DEFAULT '|0|0|0|0|',
  `Paintjob` int(4) NOT NULL DEFAULT '0',
  `Lights` varchar(13) NOT NULL DEFAULT '|255|255|255|'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gunlicense`
--

CREATE TABLE IF NOT EXISTS `gunlicense` (
  `Name` varchar(50) NOT NULL,
  `Time` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
  `ID` int(11) NOT NULL,
  `SymbolX` double NOT NULL,
  `SymbolY` double NOT NULL,
  `SymbolZ` double NOT NULL,
  `Besitzer` varchar(50) NOT NULL,
  `Preis` int(11) NOT NULL,
  `Mindestzeit` int(11) NOT NULL,
  `CurrentInterior` int(11) NOT NULL,
  `Kasse` int(11) NOT NULL,
  `Miete` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `idcounter`
--

CREATE TABLE IF NOT EXISTS `idcounter` (
  `id` int(50) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `idcounter`
--

INSERT INTO `idcounter` (`id`) VALUES
(66);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `inventar`
--

CREATE TABLE IF NOT EXISTS `inventar` (
  `Name` varchar(50) NOT NULL,
  `Wuerfel` tinyint(1) NOT NULL DEFAULT '0',
  `Blumensamen` int(11) NOT NULL DEFAULT '0',
  `Lottoschein` varchar(50) NOT NULL DEFAULT '0|0|0|0|0|0',
  `Kokain` int(11) NOT NULL DEFAULT '0',
  `Essensslot1` int(2) NOT NULL DEFAULT '0',
  `Essensslot2` int(2) NOT NULL DEFAULT '0',
  `Essensslot3` int(2) NOT NULL DEFAULT '0',
  `Essensslot4` int(2) NOT NULL DEFAULT '0',
  `Essensslot5` int(2) NOT NULL DEFAULT '0',
  `Waffenslot1` varchar(50) NOT NULL DEFAULT '0|0',
  `Waffenslot2` varchar(50) NOT NULL DEFAULT '0|0',
  `Waffenslot3` varchar(50) NOT NULL DEFAULT '0|0',
  `Zigaretten` int(5) NOT NULL DEFAULT '0',
  `Materials` int(10) NOT NULL DEFAULT '0',
  `Benzinkanister` int(10) NOT NULL DEFAULT '0',
  `FruitNotebook` tinyint(1) NOT NULL DEFAULT '0',
  `Gameboy` int(1) NOT NULL DEFAULT '0',
  `Objekt` int(10) NOT NULL DEFAULT '0',
  `Chips` int(50) NOT NULL DEFAULT '0',
  `Geschenke` int(50) NOT NULL DEFAULT '0',
  `fishing` varchar(39) NOT NULL DEFAULT '0|0|0|0;0|0;0|0;0',
  `fglass` tinyint(1) NOT NULL DEFAULT '0',
  `eggs` int(10) NOT NULL DEFAULT '0',
  `Spezial` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `loggedin`
--

CREATE TABLE IF NOT EXISTS `loggedin` (
  `Name` varchar(50) NOT NULL,
  `Serial` varchar(32) NOT NULL DEFAULT 'ABCD1234ABCD1234',
  `IP` varchar(50) NOT NULL DEFAULT '0.0.0.0',
  `Loggedin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logout`
--

CREATE TABLE IF NOT EXISTS `logout` (
  `Position` varchar(50) NOT NULL,
  `Waffen` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lotto`
--

CREATE TABLE IF NOT EXISTS `lotto` (
`id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `z1` int(2) NOT NULL DEFAULT '0',
  `z2` int(2) NOT NULL DEFAULT '0',
  `z3` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `marry`
--

CREATE TABLE IF NOT EXISTS `marry` (
  `pl1` text NOT NULL,
  `pl2` text NOT NULL,
  `nachname` text NOT NULL,
  `car1` int(1) NOT NULL DEFAULT '0',
  `car2` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `marry`
--

INSERT INTO `marry` (`pl1`, `pl2`, `nachname`, `car1`, `car2`) VALUES
('Lorenzo', 'KHAX360', 'Lakeside', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `object`
--

CREATE TABLE IF NOT EXISTS `object` (
`id` int(10) NOT NULL,
  `model` int(6) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `taken` tinyint(1) NOT NULL DEFAULT '0',
  `placer` varchar(50) NOT NULL,
  `deleteTime` int(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `Name` varchar(50) NOT NULL,
  `Paket1` int(11) NOT NULL,
  `Paket2` int(11) NOT NULL,
  `Paket3` int(11) NOT NULL,
  `Paket4` int(11) NOT NULL,
  `Paket5` int(11) NOT NULL,
  `Paket6` int(11) NOT NULL,
  `Paket7` int(11) NOT NULL,
  `Paket8` int(11) NOT NULL,
  `Paket9` int(11) NOT NULL,
  `Paket10` int(11) NOT NULL,
  `Paket11` int(11) NOT NULL,
  `Paket12` int(11) NOT NULL,
  `Paket13` int(11) NOT NULL,
  `Paket14` int(11) NOT NULL,
  `Paket15` int(11) NOT NULL,
  `Paket16` int(11) NOT NULL,
  `Paket17` int(11) NOT NULL,
  `Paket18` int(11) NOT NULL,
  `Paket19` int(11) NOT NULL,
  `Paket20` int(11) NOT NULL,
  `Paket21` int(11) NOT NULL,
  `Paket22` int(11) NOT NULL,
  `Paket23` int(11) NOT NULL,
  `Paket24` int(11) NOT NULL,
  `Paket25` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `IP` varchar(50) NOT NULL,
  `Last_login` varchar(50) NOT NULL,
  `Geburtsdatum_Tag` int(11) NOT NULL,
  `Geburtsdatum_Monat` int(11) NOT NULL,
  `Geburtsdatum_Jahr` int(4) NOT NULL,
  `Passwort` varchar(32) NOT NULL,
  `Geschlecht` int(50) NOT NULL,
  `RegisterDatum` varchar(50) NOT NULL,
  `Salt` varchar(20) NOT NULL DEFAULT '',
  `LastLogin` int(50) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `playingtime`
--

CREATE TABLE IF NOT EXISTS `playingtime` (
  `Name` varchar(50) NOT NULL,
  `Time` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `playingtime`
--

INSERT INTO `playingtime` (`Name`, `Time`) VALUES
('Lorenzo', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pm`
--

CREATE TABLE IF NOT EXISTS `pm` (
  `Sender` varchar(50) NOT NULL,
  `Empfaenger` varchar(50) NOT NULL,
  `Text` varchar(500) NOT NULL,
  `Datum` varchar(50) NOT NULL,
`ids` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `prestige`
--

CREATE TABLE IF NOT EXISTS `prestige` (
  `ID` int(10) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Besitzer` varchar(50) NOT NULL,
  `Preis` int(7) NOT NULL,
  `Beschreibung` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `prestige`
--

INSERT INTO `prestige` (`ID`, `X`, `Y`, `Z`, `Besitzer`, `Preis`, `Beschreibung`) VALUES
(1, -2154.5, 461.22, 34.82, 'none', 250000, 'Glockenturm'),
(2, -1494.54, 920.17, 6.83, 'none', 500000, 'Glockenturm-Geb?ude ( SFPD )'),
(3, -1937.04, 883.32, 38.16, 'none', 100000, 'Statue'),
(4, -1989.04, 1117.92, 54.12, 'none', 250000, 'Kirche'),
(5, -2520.94, -623.43, 132.42, 'none', 175000, 'EWerk'),
(6, -2157.94, -399.43, 34.98, 'none', 75000, 'Football'),
(7, -2594.15, -41.08, 3.97, 'none', 300000, 'Gedenkstaette'),
(8, -2818.16, 1145.8, 20.01, 'none', 250000, 'Park'),
(9, -1503.91, 1373.92, 3.43, 'none', 250000, 'Insel'),
(10, -2533.16, 1221.05, 37.07, 'none', 125000, 'Diner'),
(11, 2000.82, 1523.16, 16.71, 'none', 245000, 'Piratenschiff'),
(12, 2226.35, 1838.65, 10.46, 'none', 150000, 'Clown-Casino'),
(13, -236.84, 2656.15, 62.29, 'none', 75000, 'Riesenhuehnchen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `racing`
--

CREATE TABLE IF NOT EXISTS `racing` (
  `Name` varchar(50) NOT NULL,
  `MilliSekunden` int(1) NOT NULL,
  `Sekunden` int(2) NOT NULL,
  `Minuten` int(5) NOT NULL,
  `Platz` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `racing`
--

INSERT INTO `racing` (`Name`, `MilliSekunden`, `Sekunden`, `Minuten`, `Platz`) VALUES
('DarkSoul1901', 0, 34, 2, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `fishing` int(5) NOT NULL DEFAULT '0',
  `repair` int(5) NOT NULL DEFAULT '0',
  `gamble` int(10) NOT NULL DEFAULT '0',
  `cook` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `state_files`
--

CREATE TABLE IF NOT EXISTS `state_files` (
  `name` varchar(50) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `editor` varchar(50) NOT NULL,
  `faction` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `towing`
--

CREATE TABLE IF NOT EXISTS `towing` (
  `Name` varchar(32) NOT NULL,
  `Slot` int(11) NOT NULL,
  `VehId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Geld` double NOT NULL DEFAULT '350',
  `Coins` int(11) NOT NULL DEFAULT '0',
  `Spawnpos_X` varchar(50) NOT NULL DEFAULT '-2458.288085',
  `Spawnpos_Y` varchar(50) NOT NULL DEFAULT '774.354492',
  `Spawnpos_Z` varchar(50) NOT NULL DEFAULT '35.171875',
  `Spawnrot_X` varchar(50) NOT NULL DEFAULT '52.94',
  `SpawnInterior` double NOT NULL DEFAULT '0',
  `SpawnDimension` double NOT NULL DEFAULT '0',
  `Fraktion` double NOT NULL DEFAULT '0',
  `FraktionsRang` double NOT NULL DEFAULT '0',
  `Adminlevel` int(10) NOT NULL DEFAULT '0',
  `Spielzeit` double NOT NULL DEFAULT '0',
  `CurrentCars` double NOT NULL DEFAULT '0',
  `MaximumCars` double NOT NULL DEFAULT '3',
  `Tode` double NOT NULL DEFAULT '0',
  `Kills` double NOT NULL DEFAULT '0',
  `ep` double NOT NULL DEFAULT '0',
  `lvl` double NOT NULL DEFAULT '0',
  `Knastzeit` double NOT NULL DEFAULT '0',
  `Himmelszeit` double NOT NULL DEFAULT '0',
  `Hausschluessel` int(50) NOT NULL DEFAULT '0',
  `Bizschluessel` int(50) NOT NULL DEFAULT '0',
  `Bankgeld` double NOT NULL DEFAULT '1500',
  `Drogen` double NOT NULL DEFAULT '0',
  `Kokain` double NOT NULL DEFAULT '0',
  `Skinid` int(3) NOT NULL DEFAULT '0',
  `Autofuehrerschein` int(1) NOT NULL DEFAULT '0',
  `Motorradtfuehrerschein` int(1) NOT NULL DEFAULT '0',
  `LKWfuehrerschein` int(1) NOT NULL DEFAULT '0',
  `Helikopterfuehrerschein` int(1) NOT NULL DEFAULT '0',
  `FlugscheinKlasseA` int(1) NOT NULL DEFAULT '0',
  `FlugscheinKlasseB` int(1) NOT NULL DEFAULT '0',
  `Motorbootschein` int(1) NOT NULL DEFAULT '0',
  `Segelschein` int(1) NOT NULL DEFAULT '0',
  `Angelschein` int(1) NOT NULL DEFAULT '0',
  `Wanteds` int(1) NOT NULL DEFAULT '0',
  `StvoPunkte` int(2) NOT NULL DEFAULT '0',
  `Waffenschein` int(1) NOT NULL DEFAULT '0',
  `Perso` int(1) NOT NULL DEFAULT '0',
  `IncomePayday` float NOT NULL DEFAULT '2500',
  `Boni` double NOT NULL DEFAULT '0',
  `PdayIncome` double NOT NULL DEFAULT '0',
  `PdayKosten` double NOT NULL DEFAULT '0',
  `Telefonnr` varchar(50) NOT NULL DEFAULT '0',
  `Warns` int(50) NOT NULL DEFAULT '0',
  `Gunbox1` varchar(50) NOT NULL DEFAULT '0|0',
  `Gunbox2` varchar(50) NOT NULL DEFAULT '0|0',
  `Gunbox3` varchar(50) NOT NULL DEFAULT '0|0',
  `Job` varchar(50) NOT NULL DEFAULT 'none',
  `Jobtime` double NOT NULL DEFAULT '0',
  `Club` varchar(50) NOT NULL DEFAULT 'none',
  `FavRadio` varchar(50) NOT NULL DEFAULT '0',
  `Bonuspunkte` int(11) NOT NULL DEFAULT '0',
  `Truckerskill` varchar(50) NOT NULL DEFAULT 'none',
  `AirportLevel` varchar(50) NOT NULL DEFAULT '1',
  `farmerLVL` int(10) NOT NULL DEFAULT '0',
  `bauarbeiterLVL` int(10) NOT NULL DEFAULT '0',
  `Contract` int(7) NOT NULL DEFAULT '0',
  `ArmyPermissions` varchar(50) NOT NULL DEFAULT '|0|0|0|0|0|0|0|0|0|',
  `SocialState` varchar(50) NOT NULL DEFAULT 'Obdachloser',
  `LastFactionChange` varchar(50) NOT NULL DEFAULT '-',
  `StreetCleanPoints` int(11) NOT NULL DEFAULT '0',
  `Handy` varchar(50) NOT NULL DEFAULT '|1|0|',
  `Rausch` varchar(50) NOT NULL DEFAULT '0|0|0|',
  `Sucht` varchar(50) NOT NULL DEFAULT '0|0|0|',
  `pred` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Ob das Promt-Fenster gelesen wurde',
  `fversicherung` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
`id` int(11) NOT NULL,
  `Kofferraum` varchar(50) NOT NULL DEFAULT '0|0|0|0|',
  `Besitzer` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Typ` int(11) NOT NULL,
  `Tuning` varchar(255) NOT NULL,
  `Spawnpos_X` varchar(50) NOT NULL,
  `Spawnpos_Y` varchar(50) NOT NULL,
  `Spawnpos_Z` varchar(50) NOT NULL,
  `Spawnrot_X` varchar(50) NOT NULL,
  `Spawnrot_Y` varchar(50) NOT NULL,
  `Spawnrot_Z` varchar(50) NOT NULL,
  `NewTuningTL` int(1) NOT NULL DEFAULT '0',
  `NewTuningMU` int(1) NOT NULL DEFAULT '0',
  `Farbe` varchar(50) NOT NULL,
  `Paintjob` varchar(50) NOT NULL,
  `Benzin` varchar(50) NOT NULL,
  `Oile` varchar(50) NOT NULL,
  `Slot` float NOT NULL,
  `Special` int(11) NOT NULL DEFAULT '0',
  `Lights` varchar(50) NOT NULL DEFAULT '|255|255|255|',
  `Distance` double NOT NULL DEFAULT '0',
  `STuning` varchar(50) NOT NULL DEFAULT '0|0|0|0|0|0|',
  `AuktionsID` int(10) NOT NULL DEFAULT '0',
  `Sportmotor` int(11) NOT NULL DEFAULT '0',
  `GangVehicle` tinyint(1) NOT NULL DEFAULT '0',
  `rc` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `warns`
--

CREATE TABLE IF NOT EXISTS `warns` (
`id` int(11) NOT NULL,
  `player` varchar(35) NOT NULL,
  `admin` varchar(35) NOT NULL,
  `reason` text NOT NULL,
  `extends` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `extends_o` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `weed`
--

CREATE TABLE IF NOT EXISTS `weed` (
`id` int(11) NOT NULL,
  `x` int(20) NOT NULL,
  `y` int(20) NOT NULL,
  `z` int(20) NOT NULL,
  `time` int(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `achievments`
--
ALTER TABLE `achievments`
 ADD PRIMARY KEY (`Name`), ADD KEY `Name` (`Name`);

--
-- Indizes für die Tabelle `ban`
--
ALTER TABLE `ban`
 ADD PRIMARY KEY (`Name`), ADD KEY `Name` (`Name`), ADD KEY `IP` (`IP`), ADD KEY `Serial` (`Serial`), ADD KEY `STime` (`STime`);

--
-- Indizes für die Tabelle `biz`
--
ALTER TABLE `biz`
 ADD PRIMARY KEY (`Biz`);

--
-- Indizes für die Tabelle `bonustable`
--
ALTER TABLE `bonustable`
 ADD PRIMARY KEY (`Name`), ADD KEY `Name` (`Name`);

--
-- Indizes für die Tabelle `carhouses_icons`
--
ALTER TABLE `carhouses_icons`
 ADD PRIMARY KEY (`Name`);

--
-- Indizes für die Tabelle `email`
--
ALTER TABLE `email`
 ADD KEY `Empfaenger` (`Empfaenger`);

--
-- Indizes für die Tabelle `fraktionen`
--
ALTER TABLE `fraktionen`
 ADD PRIMARY KEY (`Name`);

--
-- Indizes für die Tabelle `gangs`
--
ALTER TABLE `gangs`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nummer` (`ID`);

--
-- Indizes für die Tabelle `gang_basic`
--
ALTER TABLE `gang_basic`
 ADD PRIMARY KEY (`Name`);

--
-- Indizes für die Tabelle `gang_members`
--
ALTER TABLE `gang_members`
 ADD PRIMARY KEY (`Name`);

--
-- Indizes für die Tabelle `houses`
--
ALTER TABLE `houses`
 ADD PRIMARY KEY (`ID`), ADD KEY `Besitzer` (`Besitzer`);

--
-- Indizes für die Tabelle `idcounter`
--
ALTER TABLE `idcounter`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `inventar`
--
ALTER TABLE `inventar`
 ADD PRIMARY KEY (`Name`), ADD KEY `Name` (`Name`);

--
-- Indizes für die Tabelle `logout`
--
ALTER TABLE `logout`
 ADD PRIMARY KEY (`Position`), ADD KEY `Name` (`Name`);

--
-- Indizes für die Tabelle `lotto`
--
ALTER TABLE `lotto`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `marry`
--
ALTER TABLE `marry`
 ADD PRIMARY KEY (`car1`);

--
-- Indizes für die Tabelle `object`
--
ALTER TABLE `object`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `packages`
--
ALTER TABLE `packages`
 ADD PRIMARY KEY (`Name`), ADD KEY `Name` (`Name`);

--
-- Indizes für die Tabelle `players`
--
ALTER TABLE `players`
 ADD PRIMARY KEY (`Name`);

--
-- Indizes für die Tabelle `playingtime`
--
ALTER TABLE `playingtime`
 ADD PRIMARY KEY (`Name`), ADD KEY `Name` (`Name`);

--
-- Indizes für die Tabelle `pm`
--
ALTER TABLE `pm`
 ADD PRIMARY KEY (`ids`), ADD KEY `Empfaenger` (`Empfaenger`);

--
-- Indizes für die Tabelle `prestige`
--
ALTER TABLE `prestige`
 ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `skills`
--
ALTER TABLE `skills`
 ADD KEY `id` (`id`), ADD KEY `Name` (`Name`);

--
-- Indizes für die Tabelle `state_files`
--
ALTER TABLE `state_files`
 ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `userdata`
--
ALTER TABLE `userdata`
 ADD PRIMARY KEY (`Name`), ADD KEY `Name` (`Name`);

--
-- Indizes für die Tabelle `vehicles`
--
ALTER TABLE `vehicles`
 ADD PRIMARY KEY (`id`), ADD KEY `Besitzer` (`Besitzer`);

--
-- Indizes für die Tabelle `warns`
--
ALTER TABLE `warns`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `weed`
--
ALTER TABLE `weed`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `lotto`
--
ALTER TABLE `lotto`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT für Tabelle `object`
--
ALTER TABLE `object`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `pm`
--
ALTER TABLE `pm`
MODIFY `ids` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `vehicles`
--
ALTER TABLE `vehicles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `warns`
--
ALTER TABLE `warns`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `weed`
--
ALTER TABLE `weed`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
