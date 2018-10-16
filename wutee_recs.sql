-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Paź 2018, 18:28
-- Wersja serwera: 10.1.26-MariaDB
-- Wersja PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wutee_recs`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `deliverymans`
--

CREATE TABLE `deliverymans` (
  `deliveryManId` int(8) NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `foodinmenus`
--

CREATE TABLE `foodinmenus` (
  `menuId` int(8) NOT NULL,
  `foodId` int(8) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `foodinorders`
--

CREATE TABLE `foodinorders` (
  `foodInOrderId` int(8) NOT NULL,
  `orderId` int(8) NOT NULL,
  `foodId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `foods`
--

CREATE TABLE `foods` (
  `foodId` int(8) NOT NULL,
  `foodName` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `foodDescription` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `calories` float DEFAULT NULL,
  `isSpicy` int(8) DEFAULT NULL,
  `isVege` int(8) DEFAULT NULL,
  `isGlutenFree` int(8) DEFAULT NULL,
  `photoLocation` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ingredients`
--

CREATE TABLE `ingredients` (
  `ingredientId` int(8) NOT NULL,
  `ingredientName` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `photoLocation` varchar(100) COLLATE utf8_polish_ci DEFAULT NULL,
  `ingredientDescription` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ingredientsiningredientsorder`
--

CREATE TABLE `ingredientsiningredientsorder` (
  `ingredientOrderId` int(8) NOT NULL,
  `ingredientId` int(8) NOT NULL,
  `quantity` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ingredientsorders`
--

CREATE TABLE `ingredientsorders` (
  `ingredientsOrderId` int(8) NOT NULL,
  `date` date DEFAULT NULL,
  `comment` varchar(400) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `languages`
--

CREATE TABLE `languages` (
  `languageId` int(8) NOT NULL,
  `phrase` varchar(200) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `menus`
--

CREATE TABLE `menus` (
  `menuId` int(8) NOT NULL,
  `menuName` varchar(100) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `orderId` int(8) NOT NULL,
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
  `loyaltyPoints` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `methodId` int(8) NOT NULL,
  `paymentName` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `payments`
--

CREATE TABLE `payments` (
  `paymentId` int(8) NOT NULL,
  `methodId` int(8) NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurantId` int(8) NOT NULL,
  `nameSlug` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `adress` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `ownerId` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `restaurantworkers`
--

CREATE TABLE `restaurantworkers` (
  `workerId` int(8) NOT NULL,
  `workerName` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `workerSurname` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `workingStatus` varchar(20) COLLATE utf8_polish_ci NOT NULL DEFAULT ' unemployed',
  `restaurantId` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `translations`
--

CREATE TABLE `translations` (
  `slug` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `languageId` int(8) NOT NULL,
  `translation` varchar(200) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `userId` int(8) NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `role` int(8) NOT NULL,
  `password` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `adress` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `loyaltyPoints` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `deliverymans`
--
ALTER TABLE `deliverymans`
  ADD PRIMARY KEY (`deliveryManId`),
  ADD KEY `orderId` (`orderId`);

--
-- Indexes for table `foodinmenus`
--
ALTER TABLE `foodinmenus`
  ADD PRIMARY KEY (`foodId`),
  ADD KEY `menuId` (`menuId`);

--
-- Indexes for table `foodinorders`
--
ALTER TABLE `foodinorders`
  ADD PRIMARY KEY (`foodInOrderId`),
  ADD KEY `orderId` (`orderId`),
  ADD KEY `foodId` (`foodId`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`foodId`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`ingredientId`);

--
-- Indexes for table `ingredientsiningredientsorder`
--
ALTER TABLE `ingredientsiningredientsorder`
  ADD PRIMARY KEY (`ingredientOrderId`),
  ADD KEY `ingredientId` (`ingredientId`);

--
-- Indexes for table `ingredientsorders`
--
ALTER TABLE `ingredientsorders`
  ADD PRIMARY KEY (`ingredientsOrderId`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languageId`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menuId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `deliveryManId` (`deliveryManId`),
  ADD KEY `restauranId` (`restauranId`);

--
-- Indexes for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`methodId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentId`),
  ADD KEY `methodId` (`methodId`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`restaurantId`),
  ADD KEY `ownerId` (`ownerId`);

--
-- Indexes for table `restaurantworkers`
--
ALTER TABLE `restaurantworkers`
  ADD PRIMARY KEY (`workerId`),
  ADD KEY `restaurantId` (`restaurantId`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`slug`),
  ADD KEY `languageId` (`languageId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `deliverymans`
--
ALTER TABLE `deliverymans`
  MODIFY `deliveryManId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `foodinmenus`
--
ALTER TABLE `foodinmenus`
  MODIFY `foodId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `foodinorders`
--
ALTER TABLE `foodinorders`
  MODIFY `foodInOrderId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `foods`
--
ALTER TABLE `foods`
  MODIFY `foodId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `ingredientId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ingredientsiningredientsorder`
--
ALTER TABLE `ingredientsiningredientsorder`
  MODIFY `ingredientOrderId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ingredientsorders`
--
ALTER TABLE `ingredientsorders`
  MODIFY `ingredientsOrderId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `languages`
--
ALTER TABLE `languages`
  MODIFY `languageId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `menus`
--
ALTER TABLE `menus`
  MODIFY `menuId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `methodId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `restaurantId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `restaurantworkers`
--
ALTER TABLE `restaurantworkers`
  MODIFY `workerId` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(8) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
