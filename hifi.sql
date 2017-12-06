-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 06. 12 2017 kl. 09:05:41
-- Serverversion: 10.1.26-MariaDB
-- PHP-version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hifi`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `accesstokens`
--

CREATE TABLE `accesstokens` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kategori`
--

CREATE TABLE `kategori` (
  `ID` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `kategori`
--

INSERT INTO `kategori` (`ID`, `kategori`) VALUES
(1, 'CD Afspillere'),
(2, 'DVD Afspillere'),
(3, 'Effektforstærkere'),
(4, 'Forforstærkere'),
(5, 'Højtalere'),
(6, 'Int. Forstærkere'),
(7, 'Pladespillere'),
(8, 'Rørforstærkere');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kontakt`
--

CREATE TABLE `kontakt` (
  `id` int(11) NOT NULL,
  `Fornavn` varchar(255) NOT NULL,
  `Efternavn` varchar(255) NOT NULL,
  `Besked` text NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `kontakt`
--

INSERT INTO `kontakt` (`id`, `Fornavn`, `Efternavn`, `Besked`, `Email`) VALUES
(3, 'emil', 'szymanski', 'hej\r\n', 'emilszyman@gmail.com');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `producent`
--

CREATE TABLE `producent` (
  `ID` int(11) NOT NULL,
  `producent` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `producent`
--

INSERT INTO `producent` (`ID`, `producent`) VALUES
(1, 'Creek Audio Ltd'),
(2, 'Exposure'),
(3, 'Parasound'),
(4, 'Manley'),
(5, 'Pro-ject Audio Systems'),
(6, 'Bösendorfer'),
(7, 'Epos Ltd'),
(8, 'Harbeth Loudspeakers'),
(9, 'Jolida');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` decimal(50,4) NOT NULL,
  `product_description` text NOT NULL,
  `product_kategori` varchar(255) NOT NULL,
  `product_producent` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_description`, `product_kategori`, `product_producent`, `product_image`) VALUES
(1, 'Creek Classic', '5.0000', 'En god klassiker ', 'CD Afspiller', 'Creek Audio Ltd', 'creek_classic_cd.jpg'),
(2, 'Creek Destiny', '6.0000', 'Med Creek Destiny er alt bare på toppen', 'CD Afspiller', 'Creek Audio Ltd', 'creek_Destiny_CD.jpg'),
(3, 'Creek Evo', '8.0000', 'Creek evo er helt i top og bare klar til en god hygge aften.', 'CD Afspiller', 'Creek Audio Ltd', 'creek_evo_cd.jpg'),
(4, 'Exp 2010S', '10.0000', 'En stabil CD afspiller', 'CD Afspiller', 'Creek Audio Ltd', 'Exp_2010S_CD.gif'),
(5, 'Creek Classic DVD', '5000.0000', 'den her sparker bare røv til hver en hygge aften', 'CD Afspiller', 'Creek Audio Ltd', 'creek_classic.jpg'),
(6, 'Exposure 2010S', '5000.0000', 'exposure er en god for hver en hygge spiller', 'DVD afspiller', 'Exposure', 'exposure_2010S.jpg'),
(11, 'Parasound D200', '3000.0000', 'parasound er bare god', 'DVD afspiller', 'Parasound', 'parasound_d200.jpg'),
(12, 'Parasound Halo p3', '6000.0000', 'Parasound halo p3 er noget god', 'DVD afspiller', 'Parasound', 'parasound_halop3.jpg'),
(13, 'Manley Mahi', '15000.0000', 'manley mahi er en af de bedste til prisen ', 'Effektforstærker', 'Manley', 'manley_mahi.jpg'),
(14, 'Manley Neoclassic 300b', '16000.0000', 'Neoclassic er den bedste til prisen', 'Effektforstærker', 'Manley', 'manley_neoclassic300b.jpg'),
(15, 'Manley Snapper', '20000.0000', 'Snapper er bare fed', 'Effektforstærker', 'Manley', 'manley_snapper.jpg'),
(16, 'Parasound Haloa 23', '10000.0000', 'Parasound haloa 23 er en af de lidt billigere, men den gør det stadig meget godt', 'Effektforstærker', 'Parasound', 'parasound_haloa23.jpg'),
(17, 'Creek OBH 22 Passive Preamp', '4000.0000', 'Creek obh er god til prisen', 'CD Afspiller', 'Creek Audio Ltd', 'Creek_OBH_22_Passive_Preamp.jpg'),
(18, 'Parasound Classic 7100', '7000.0000', 'Parasound classic 7100 er god til prisen', 'Forforstærkere', 'Parasound', 'parasound_classic7100.jpg'),
(19, 'parasound halo d3', '7500.0000', 'Parasound halo d3 er god til prisen', 'Forforstærkere', 'Parasound', 'parasound_halod3.jpg'),
(20, 'Project Prebox', '6300.0000', 'Project Prebox er bare god til prisen', 'Forforstærkere', 'Pro-ject Audio System', 'Project_prebox.jpg'),
(21, 'Boesendorfer Vcs  Wall', '6000.0000', 'de spiller sinds til prisen', 'Højtalere', 'Bösendorfer', 'boesendorfer_vcs_wall.gif'),
(22, 'Epos m5', '7000.0000', 'Epos kan bare sparke gang i festen', 'Højtalere', 'Epos Ltd', 'epos_m5.gif'),
(23, 'Harbeth Hl7es2', '7250.0000', 'Harbeth gir bare den lyd man vil have', 'Højtalere', 'Harbeth Loudspeaker', 'harbeth_hl7es2.jpg'),
(24, 'harbeth monitor30', '4300.0000', 'harbeth 30 sparker bare gang i den fest!!', 'Højtalere', 'Harbeth Loudspeaker', 'harbeth_monitor30.jpg'),
(25, 'Harbeth P3es2', '6000.0000', 'Harbeth P3es2 er bare vild', 'Højtalere', 'Harbeth Loudspeaker', 'harbeth_p3es2.jpg'),
(26, 'Creek A50I', '7000.0000', 'Creek A50l er god til prisen', 'CD Afspiller', 'Creek Audio Ltd', 'creek_a50I.jpg'),
(27, 'Creek Classic 5350SE', '9250.0000', 'Creek 5350SE er bare god til prisen', 'CD Afspiller', 'Creek Audio Ltd', 'creek_classic5350SE.jpg'),
(30, 'Creek Destiny  Amp', '5250.0000', 'Den gør bare det den skal!', 'CD Afspiller', 'Creek Audio Ltd', 'creek_Destiny_CD.jpg'),
(31, 'Manley Snapper int._forstaerkere', '2525.0000', 'Manley snapper er god til prisen', 'int. Forstærkere', 'Manley', 'manley_neoclassic300b.jpg'),
(32, 'Manley Stingray', '6500.0000', 'Den er bare god', 'int. Forstærkere', 'Manley', 'Manley_Stingray.jpg'),
(33, 'Pro Ject Debut 3 BL', '4005.0000', 'Den spiller godt', 'pladespillere', 'Pro-ject Audio System', 'Pro_ject_Debut_3_bl.jpg'),
(34, 'Pro ject Debut III red 1', '3000.0000', 'Når damen skal have en god aften så køb den her!!', 'pladespillere', 'Pro-ject Audio System', 'Pro_ject_Debut_III_red_1.jpg'),
(35, 'Pro ject Debut III yellow 1', '3152.0000', 'Er god til prisen', 'pladespillere', 'Pro-ject Audio System', 'Pro_ject_Debut_III_yellow_1.jpg'),
(36, 'Pro ject rpm 5', '6010.0000', 'den er bare vild', 'pladespillere', 'Pro-ject Audio System', 'Pro_ject_rpm_5.jpg'),
(37, 'Pro Ject rpm10', '4010.0000', 'den spiller bare godt', 'pladespillere', 'Pro-ject Audio System', 'Pro_ject_rpm10.jpg'),
(38, 'Jolida JD102b', '4500.0000', 'Jolida er god til prisen', 'Rørforstærkere', 'Jolida', 'jolida_JD102b.jpg'),
(39, 'Jolida JD202a', '6000.0000', 'den virker godt', 'Rørforstærkere', 'Jolida', 'jolida_JD202a.jpg'),
(40, 'Jolida JD300b', '16500.0000', 'den er alt værd', 'Rørforstærkere', 'Jolida', 'jolida_JD300b.jpg'),
(41, 'Jolida JD302b', '5250.0000', 'den er skide god og billig', 'Rørforstærkere', 'Jolida', 'jolida_JD302b.jpg'),
(42, 'Jolida JD502b', '1111.0000', 'Den her er billig, men god', 'Rørforstærkere', 'Jolida', 'jolida_JD502b.jpg'),
(43, 'kniv', '500.0000', 'en kniv', '', '', '');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `accesstokens`
--
ALTER TABLE `accesstokens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indeks for tabel `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indeks for tabel `producent`
--
ALTER TABLE `producent`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks for tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `navn` (`product_name`),
  ADD KEY `fk_kategori_id` (`product_kategori`),
  ADD KEY `fk_producent` (`product_producent`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `accesstokens`
--
ALTER TABLE `accesstokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tilføj AUTO_INCREMENT i tabel `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tilføj AUTO_INCREMENT i tabel `producent`
--
ALTER TABLE `producent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Tilføj AUTO_INCREMENT i tabel `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
