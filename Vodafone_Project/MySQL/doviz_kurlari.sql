-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 May 2023, 21:13:10
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `doviz_kurlari`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tumkurlar`
--

CREATE TABLE `tumkurlar` (
  `id` int(11) NOT NULL,
  `para` text NOT NULL,
  `alis` float NOT NULL,
  `satis` float NOT NULL,
  `degisim` float NOT NULL,
  `tarih` date NOT NULL DEFAULT current_timestamp(),
  `saat` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Tablo döküm verisi `tumkurlar`
--

INSERT INTO `tumkurlar` (`id`, `para`, `alis`, `satis`, `degisim`, `tarih`, `saat`) VALUES
(1, 'USD', 19.9346, 19.9402, 0.23, '2023-05-25', '22:12:26'),
(2, 'EUR', 21.4083, 21.4544, 0.3, '2023-05-25', '22:12:26'),
(3, 'GBP', 24.5856, 24.6703, -0.16, '2023-05-25', '22:12:26'),
(4, 'GA', 1245.41, 1245.62, -0.5, '2023-05-25', '22:12:26'),
(5, 'C', 2017.19, 2049.44, -0.5, '2023-05-25', '22:12:26'),
(6, 'GAG', 14.5918, 14.6118, -1.03, '2023-05-25', '22:12:26'),
(7, 'BTC', 26354.4, 26354.4, -0.18, '2023-05-25', '22:12:26'),
(8, 'ETH', 1805.23, 1805.23, 0.05, '2023-05-25', '22:12:26'),
(9, 'XU100', 4427.99, 4427.99, 0.2, '2023-05-25', '22:12:26');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tumkurlar`
--
ALTER TABLE `tumkurlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tumkurlar`
--
ALTER TABLE `tumkurlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
