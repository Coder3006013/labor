-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 09 2020 г., 07:34
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `labaratory`
--

-- --------------------------------------------------------

--
-- Структура таблицы `analizlar`
--

CREATE TABLE `analizlar` (
  `id` int(11) NOT NULL,
  `bemor_id` int(11) NOT NULL,
  `analiz` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bemor`
--

CREATE TABLE `bemor` (
  `id` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `tugilgan_kun` date NOT NULL,
  `manzil` text NOT NULL,
  `tel` varchar(255) NOT NULL,
  `servislar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `doktor_id` int(11) NOT NULL,
  `kassir` varchar(255) NOT NULL,
  `summa` varchar(200) NOT NULL,
  `sana` date NOT NULL,
  `aktiv` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `doktorlar`
--

CREATE TABLE `doktorlar` (
  `id` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `manzil` text NOT NULL,
  `summa` int(11) NOT NULL DEFAULT 0,
  `foiz` int(11) NOT NULL,
  `sana` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `servislar`
--

CREATE TABLE `servislar` (
  `id` int(11) NOT NULL,
  `nomi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `verification_token` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password_hash`, `password_reset_token`, `verification_token`, `email`, `auth_key`, `status`, `created_at`, `updated_at`) VALUES
(5, 'admin', '$2y$13$yUOkCoywNJjY0Ck3CMtOTeQyckvhoxpR9x/t0APlYBudo9oN3ri5K', NULL, 'Kex6unHh5HA_qQWqujMAKKefmDLWAxHQ_1599457678', 'adminemail@example.uz', '0HjzzB8weznrgzvX1dgRla_da09JYiP4', 10, 1599457678, 1599457678);

-- --------------------------------------------------------

--
-- Структура таблицы `variantlar`
--

CREATE TABLE `variantlar` (
  `id` int(11) NOT NULL,
  `servis_id` int(11) NOT NULL,
  `nomi` text NOT NULL,
  `narxi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `analizlar`
--
ALTER TABLE `analizlar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bemor_id` (`bemor_id`);

--
-- Индексы таблицы `bemor`
--
ALTER TABLE `bemor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doktor_id` (`doktor_id`);

--
-- Индексы таблицы `doktorlar`
--
ALTER TABLE `doktorlar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `servislar`
--
ALTER TABLE `servislar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `variantlar`
--
ALTER TABLE `variantlar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servis_id` (`servis_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `analizlar`
--
ALTER TABLE `analizlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bemor`
--
ALTER TABLE `bemor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `doktorlar`
--
ALTER TABLE `doktorlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `servislar`
--
ALTER TABLE `servislar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `variantlar`
--
ALTER TABLE `variantlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
