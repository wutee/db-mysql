-- phpMyAdmin SQL Dump
-- version home.pl
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 17 Paź 2018, 18:58
-- Wersja serwera: 5.7.22-22-log
-- Wersja PHP: 7.1.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `07500260_propsy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `deliveries`
--

CREATE TABLE IF NOT EXISTS `deliveries` (
  `deliveryId` int(8) NOT NULL AUTO_INCREMENT,
  `userId` int(8) NOT NULL,
  `orderId` int(8) NOT NULL,
  PRIMARY KEY (`deliveryId`),
  KEY `userId` (`userId`,`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `deliveryMans`
--

CREATE TABLE IF NOT EXISTS `deliveryMans` (
  `deliveryManId` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`deliveryManId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `foodInMenus`
--

CREATE TABLE IF NOT EXISTS `foodInMenus` (
  `menuId` int(8) NOT NULL,
  `foodId` int(8) NOT NULL AUTO_INCREMENT,
  `price` float NOT NULL,
  PRIMARY KEY (`foodId`),
  KEY `menuId` (`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `foodInOrders`
--

CREATE TABLE IF NOT EXISTS `foodInOrders` (
  `foodInOrderId` int(8) NOT NULL AUTO_INCREMENT,
  `orderId` int(8) NOT NULL,
  `foodId` int(11) NOT NULL,
  PRIMARY KEY (`foodInOrderId`),
  KEY `orderId` (`orderId`),
  KEY `foodId` (`foodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `foods`
--

CREATE TABLE IF NOT EXISTS `foods` (
  `foodId` int(8) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `foodDescription` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `calories` float DEFAULT NULL,
  `isSpicy` tinyint(1) DEFAULT NULL,
  `isVege` tinyint(1) DEFAULT NULL,
  `isGlutenFree` tinyint(1) DEFAULT NULL,
  `photoLocation` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`foodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ingredients`
--

CREATE TABLE IF NOT EXISTS `ingredients` (
  `ingredientId` int(8) NOT NULL AUTO_INCREMENT,
  `ingredientName` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `photoLocation` varchar(100) COLLATE utf8_polish_ci DEFAULT NULL,
  `ingredientDescription` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`ingredientId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ingredientsOrders`
--

CREATE TABLE IF NOT EXISTS `ingredientsOrders` (
  `ingredientsOrderId` int(8) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `comment` varchar(400) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`ingredientsOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ingredientsToOrder`
--

CREATE TABLE IF NOT EXISTS `ingredientsToOrder` (
  `ingredientOrderId` int(8) NOT NULL AUTO_INCREMENT,
  `ingredientId` int(8) NOT NULL,
  `quantity` int(8) NOT NULL,
  PRIMARY KEY (`ingredientOrderId`),
  KEY `ingredientId` (`ingredientId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `languageId` int(8) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`languageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `menuId` int(8) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderId` int(8) NOT NULL AUTO_INCREMENT,
  `userId` int(8) NOT NULL,
  `deliveryManId` int(8) NOT NULL,
  `restauranId` int(8) NOT NULL,
  `date` date NOT NULL,
  `lastUpadtedDate` date DEFAULT NULL,
  `status` int(8) NOT NULL,
  `price` float NOT NULL,
  `userOpinion` varchar(400) COLLATE utf8_polish_ci DEFAULT NULL,
  `userComment` varchar(400) COLLATE utf8_polish_ci DEFAULT NULL,
  `deliveryManComment` varchar(400) COLLATE utf8_polish_ci DEFAULT NULL,
  `loyaltyPoints` int(8) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `userId` (`userId`),
  KEY `deliveryManId` (`deliveryManId`),
  KEY `restauranId` (`restauranId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `paymentMethods`
--

CREATE TABLE IF NOT EXISTS `paymentMethods` (
  `methodId` int(8) NOT NULL AUTO_INCREMENT,
  `paymentName` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`methodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `paymentId` int(8) NOT NULL AUTO_INCREMENT,
  `methodId` int(8) NOT NULL,
  `status` int(8) NOT NULL,
  PRIMARY KEY (`paymentId`),
  KEY `methodId` (`methodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `restaurants`
--

CREATE TABLE IF NOT EXISTS `restaurants` (
  `restaurantId` int(8) NOT NULL AUTO_INCREMENT,
  `restaurantName` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `adress` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `ownerId` int(8) NOT NULL,
  PRIMARY KEY (`restaurantId`),
  KEY `ownerId` (`ownerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `restaurantWorkers`
--

CREATE TABLE IF NOT EXISTS `restaurantWorkers` (
  `workerId` int(8) NOT NULL AUTO_INCREMENT,
  `workerName` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `workerSurname` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `workingStatus` varchar(20) COLLATE utf8_polish_ci NOT NULL DEFAULT ' unemployed',
  `restaurantId` int(8) NOT NULL,
  PRIMARY KEY (`workerId`),
  KEY `restaurantId` (`restaurantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `translations`
--

CREATE TABLE IF NOT EXISTS `translations` (
  `slug` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `languageId` int(8) NOT NULL,
  `translation` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`slug`),
  KEY `languageId` (`languageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `role` int(8) NOT NULL,
  `password` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `adress` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `loyaltyPoints` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
