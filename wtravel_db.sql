-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2019. Máj 10. 09:24
-- Kiszolgáló verziója: 5.7.24
-- PHP verzió: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `wtravel_db`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `megnevezes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bevezeto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `leiras` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mettol` date NOT NULL,
  `meddig` date NOT NULL,
  `letszam` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `blogs`
--

INSERT INTO `blogs` (`id`, `megnevezes`, `bevezeto`, `leiras`, `mettol`, `meddig`, `letszam`, `image`, `created_at`, `updated_at`) VALUES
(1, 'EFOTT', 'Velence mellett', 'Ma az EFOTT 110 ezres létszámával az egyik legjelentősebb fesztivál a fiatalok körében és Magyarország legnagyobb hallgatói eseménye. Azonban az EFOTT nem csak buli, hiszen a fesztivál szervezői évek óta nagy hangsúlyt fektetnek a zenei események mellett a fiatalok sport-, gasztro- és kulturális életének fellendítésére is. Ezeknek köszönhetően a napközbeni programok szinte évről-évre bővülnek, nem csak létszámuk, de színvonaluk tekintetében is.\r\n\r\n2019-ben a Velencei-tó strandján, Velencén kerül megrendezésre Július 9-15. között a fesztivál, ahol a szervezők elmondásai szerint nagyobb parti lesz, mint valaha! Strand, koncert, gasztro, civil tér, strandfoci, mozi és több, mint 100 magyar fellépő egy helyen.', '2019-07-09', '2019-07-15', 200, '/storage/Mg6HIIqGC1P2AABqQ2YZQtcXJ2RCMOvwtHO9xec7.png', '2019-05-10 07:18:23', '2019-05-10 07:18:23'),
(2, 'Barcelona és Camp Nou', 'A Barcelona El Prat repülőtér a városközponttól 13 km távolságra található.\r\n\r\nPartnerünk, a rentalcars.com jóvoltából most minden eddiginél egyszerűbben foglalhatja le teljes körű autókölcsönzési csomagját magánjellegű vagy üzleti útjaira! \r\nAutókölcsönzés már 8 €/nap áron.', 'A Wizz Air, Közép- és Kelet-Európa legnagyobb diszkont légitársasága Barcelona El Prat repteréről induló és oda érkező járataira olcsó jegyeket kínál Bulgáriába, Lengyelországba, Lettországba, Litvániába, Macedóniába, Magyarországra és Romániába. A repülőjegyét bármikor kiegészítheti további utazási szolgáltatásokkal, például repülőtéri buszos transzferszolgáltatásunkkal, hogy kényelmesebbé tegye utazását. Szállodai és autókölcsönző partnereink olcsó hotelek és autókölcsönzési lehetőségek széles választékával teszik teljessé utazását.', '2019-07-13', '2019-07-18', 5, '/storage/SYJjwT2cUdBD2pAG92dLkmz8RjRq9U8cEcQwwbKO.jpeg', '2019-05-10 07:21:47', '2019-05-10 07:21:47'),
(3, 'Debreceni kiruccanás', 'A repülőtér Debrecen városközpontjától 5 km távolságra található.\r\n\r\nPartnerünk, a rentalcars.com jóvoltából most minden eddiginél egyszerűbben foglalhatja le teljes körű autókölcsönzési csomagját magánjellegű vagy üzleti útjaira! \r\nAutókölcsönzés már 8 €/nap áron.', 'Kiindulási repülőtér\r\nKIINDULÁSI REPÜLŐTÉR\r\nDebrecen DEB\r\nDebrecen\r\nÚTI CÉL\r\n\r\n2019. máj 11.\r\nINDULÁS\r\nEgyirányú\r\nVISSZAÚT\r\n\r\n1 felnőtt UTASOK\r\nDebrecen bemutatása\r\nA Wizz Air, Közép- és Kelet-Európa legnagyobb diszkont légitársasága a debreceni repülőtérről induló és oda érkező járataira olcsó jegyeket kínál Franciaországba, Olaszországba, Németországba, Hollandiába, Svédországba és az Egyesült Királyságba. Szállodai és autókölcsönző partnereink olcsó hotelek és autókölcsönzési lehetőségek széles választékával teszik teljessé utazását.', '2019-06-07', '2019-06-10', 40, '/storage/sWwY7gUvVWA7o87oGXq7tB64QZAQyBmBZzus0bVb.jpeg', '2019-05-10 07:23:09', '2019-05-10 07:23:09');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_09_151526_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
