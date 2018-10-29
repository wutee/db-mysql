-- phpMyAdmin SQL Dump
-- version home.pl
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 29 Paź 2018, 19:16
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

INSERT INTO `foodInMenus` VALUES(7, 3, 16);
INSERT INTO `foodInMenus` VALUES(8, 6, 12);
INSERT INTO `foodInMenus` VALUES(1, 8, 8);
INSERT INTO `foodInMenus` VALUES(1, 9, 10);
INSERT INTO `foodInMenus` VALUES(1, 10, 15);
INSERT INTO `foodInMenus` VALUES(1, 11, 16);
INSERT INTO `foodInMenus` VALUES(4, 12, 12);
INSERT INTO `foodInMenus` VALUES(3, 13, 20);
INSERT INTO `foodInMenus` VALUES(3, 14, 18);
INSERT INTO `foodInMenus` VALUES(4, 15, 6);
INSERT INTO `foodInMenus` VALUES(4, 16, 25);
INSERT INTO `foodInMenus` VALUES(4, 17, 5);
INSERT INTO `foodInMenus` VALUES(5, 18, 19);
INSERT INTO `foodInMenus` VALUES(6, 19, 12);
INSERT INTO `foodInMenus` VALUES(5, 20, 12);

--
-- Zrzut danych tabeli `foods`
--

INSERT INTO `foods` VALUES(1, 'Spicy Chicken', NULL, 2000, 1, 0, NULL, NULL);
INSERT INTO `foods` VALUES(2, 'Chicken with wegetables', NULL, 1500, 0, 0, NULL, NULL);
INSERT INTO `foods` VALUES(3, 'Chicken Kebab', NULL, 1200, 1, 0, NULL, NULL);
INSERT INTO `foods` VALUES(4, 'Chicken Kebab with cheese', NULL, 1300, 1, 0, NULL, NULL);
INSERT INTO `foods` VALUES(5, 'Spicy Chicken XXL', NULL, 1800, 1, 0, NULL, NULL);
INSERT INTO `foods` VALUES(6, 'Vege Kebab', NULL, 800, 0, 1, NULL, NULL);
INSERT INTO `foods` VALUES(7, 'Rice with Chicken', NULL, 1300, 0, 0, NULL, NULL);
INSERT INTO `foods` VALUES(8, 'Pho Ga', NULL, 900, 0, 0, NULL, NULL);
INSERT INTO `foods` VALUES(9, 'Tom Kha Gai', NULL, 1100, 1, 1, NULL, NULL);
INSERT INTO `foods` VALUES(10, 'Spaghetti with Chicken', NULL, 1400, 0, 1, NULL, NULL);
INSERT INTO `foods` VALUES(11, 'Binh Minh Chicken', NULL, 1300, 1, 0, NULL, NULL);
INSERT INTO `foods` VALUES(12, 'Shoarma junior', NULL, 700, 0, 1, NULL, NULL);
INSERT INTO `foods` VALUES(13, 'Amrit Boxter', NULL, 2200, 1, 1, NULL, NULL);
INSERT INTO `foods` VALUES(14, 'Arab Corn Flakes', NULL, 1600, 0, 0, NULL, NULL);
INSERT INTO `foods` VALUES(15, 'Dulma', NULL, 300, 0, 1, NULL, NULL);
INSERT INTO `foods` VALUES(16, 'Amrit Sweets', NULL, 1500, 0, 1, NULL, NULL);
INSERT INTO `foods` VALUES(17, 'Kadaief', NULL, 200, 1, 1, NULL, NULL);
INSERT INTO `foods` VALUES(18, 'Deep fried chicken liver', NULL, 2000, 0, 0, NULL, NULL);
INSERT INTO `foods` VALUES(19, 'Dried bean stick', NULL, 800, 1, 0, NULL, NULL);
INSERT INTO `foods` VALUES(20, 'Korean pickles', NULL, 600, 1, 0, NULL, NULL);

--
-- Zrzut danych tabeli `menus`
--

INSERT INTO `menus` VALUES(1, 1, 'Bihn Minh Main Menu');
INSERT INTO `menus` VALUES(2, 1, 'Binh Minh Vege Menu');
INSERT INTO `menus` VALUES(3, 2, 'Amrit Main Menu');
INSERT INTO `menus` VALUES(4, 2, 'Amrit Vege Menu');
INSERT INTO `menus` VALUES(5, 3, 'Chicken');
INSERT INTO `menus` VALUES(6, 3, 'Beef');
INSERT INTO `menus` VALUES(7, 4, 'Amrit Main');
INSERT INTO `menus` VALUES(8, 4, 'Amrit Vege');

--
-- Zrzut danych tabeli `restaurants`
--

INSERT INTO `restaurants` VALUES(1, 'BinhMinh', 'Stanisława Noakowskiego 7, 00-666 Warszawa', 1);
INSERT INTO `restaurants` VALUES(2, 'Amrit Oriental Food', 'Grójecka 20C, 02-301 Warszawa', 2);
INSERT INTO `restaurants` VALUES(3, 'China Town', 'al. Jerozolimskie 87, 02-001 Warszawa', 1);
INSERT INTO `restaurants` VALUES(4, 'Amrit Kebab', 'Warecka 8, 05-077 Warszawa', 2);

--
-- Zrzut danych tabeli `restaurantWorkers`
--

INSERT INTO `restaurantWorkers` VALUES(1, 'Barbara', 'Kowalska', 'employed', 1);
INSERT INTO `restaurantWorkers` VALUES(2, 'Samui', 'Korou', 'employed', 1);
INSERT INTO `restaurantWorkers` VALUES(3, 'Suriy', 'Makal', ' unemployed', 3);
INSERT INTO `restaurantWorkers` VALUES(4, 'Klemano', 'Tuiry', 'employed', 4);

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` VALUES(1, 'tester', 'test@wp.pl', 1, 'tester', NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES(2, 'klient', 'klient@gmail.com', 1, 'klient', NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES(3, 'owner', 'owner@gmail.com', 2, 'owner', NULL, NULL, NULL, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
