-- phpMyAdmin SQL Dump
-- version home.pl
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 25 Paź 2018, 00:06
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

--
-- Zrzut danych tabeli `foodInMenus`
--

INSERT INTO `foodInMenus` (`menuId`, `foodId`, `price`) VALUES
(7, 3, 16),
(8, 6, 12);

--
-- Zrzut danych tabeli `foods`
--

INSERT INTO `foods` (`foodId`, `foodName`, `foodDescription`, `calories`, `isSpicy`, `isVege`, `isGlutenFree`, `photoLocation`) VALUES
(1, 'Spicy Chicken', NULL, 2000, 1, 0, NULL, NULL),
(2, 'Chicken with wegetables', NULL, 1500, 0, 0, NULL, NULL),
(3, 'Chicken Kebab', NULL, 1200, NULL, NULL, NULL, NULL),
(4, 'Chicken Kebab with cheese', NULL, 1300, NULL, NULL, NULL, NULL),
(5, 'Spicy Chicken XXL', NULL, 1800, NULL, NULL, NULL, NULL),
(6, 'Vege Kebab', NULL, 800, NULL, 1, NULL, NULL);

--
-- Zrzut danych tabeli `menus`
--

INSERT INTO `menus` (`menuId`, `restaurantId`, `menuName`) VALUES
(1, 1, 'Main Menu'),
(2, 1, 'Vege Menu'),
(3, 2, 'Main Menu'),
(4, 2, 'Main Menu'),
(5, 3, 'Chicken'),
(6, 3, 'Beef'),
(7, 4, 'Main Menu'),
(8, 4, 'Vege Menu');

--
-- Zrzut danych tabeli `restaurants`
--

INSERT INTO `restaurants` (`restaurantId`, `restaurantName`, `adress`, `ownerId`) VALUES
(1, 'BinhMinh', 'Stanisława Noakowskiego 7, 00-666 Warszawa', 1),
(2, 'Amrit Oriental Food', 'Grójecka 20C, 02-301 Warszawa', 2),
(3, 'China Town', 'al. Jerozolimskie 87, 02-001 Warszawa', 1),
(4, 'Amrit Kebab', 'Warecka 8, 05-077 Warszawa', 2);

--
-- Zrzut danych tabeli `restaurantWorkers`
--

INSERT INTO `restaurantWorkers` (`workerId`, `workerName`, `workerSurname`, `workingStatus`, `restaurantId`) VALUES
(1, 'Barbara', 'Kowalska', 'employed', 1),
(2, 'Samui', 'Korou', 'employed', 1),
(3, 'Suriy', 'Makal', ' unemployed', 3),
(4, 'Klemano', 'Tuiry', 'employed', 4);

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`userId`, `name`, `mail`, `role`, `password`, `adress`, `city`, `phone`, `loyaltyPoints`) VALUES
(1, 'tester', 'test@wp.pl', 1, 'tester', NULL, NULL, NULL, 0),
(2, 'klient', 'klient@gmail.com', 1, 'klient', NULL, NULL, NULL, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
