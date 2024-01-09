-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 09 2024 г., 15:15
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_news`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about_info`
--

CREATE TABLE `about_info` (
  `b_id` int(11) NOT NULL,
  `b_title` longtext NOT NULL,
  `b_description` longtext NOT NULL,
  `b_date` varchar(255) NOT NULL,
  `b_category` varchar(255) NOT NULL,
  `b_status` varchar(255) NOT NULL,
  `b_img` varchar(255) NOT NULL,
  `b_img_ext` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `about_info`
--

INSERT INTO `about_info` (`b_id`, `b_title`, `b_description`, `b_date`, `b_category`, `b_status`, `b_img`, `b_img_ext`) VALUES
(8, '{\"en\":\"efwqfewf\",\"ru\":\"ddds\",\"az\":\"dd\"}', '{\"en\":\"fewfe\",\"ru\":\"fewfew\",\"az\":\"fewfw\"}', '2024-01-25', 'Video Editing', '0', '', ''),
(9, '{\"en\":\"Online course IT engineer\",\"ru\":\"\\u041e\\u043d\\u043b\\u0430\\u0439\\u043d-\\u043a\\u0443\\u0440\\u0441 \\u0418\\u0422-\\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\",\"az\":\"Onlayn kurs \\u0130T m\\u00fch\\u0259ndisi\"}', '{\"en\":\"Become an IT engineer and get one of the most in-demand professions. You will learn programming fundamentals and core concepts in computer science, digital technologies, software, operating systems, databases, analytics systems, programming languages and much more.\",\"ru\":\"<span xss=removed>\\u0421\\u0442\\u0430\\u043d\\u044c\\u0442\\u0435 \\u0418\\u0422-\\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043e\\u043c \\u0438 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u043e\\u0434\\u043d\\u0443 \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u0439. \\u0412\\u044b \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442\\u0435 \\u043e\\u0441\\u043d\\u043e\\u0432\\u044b \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043d\\u044b\\u0445 \\u043d\\u0430\\u0443\\u043a, \\u0446\\u0438\\u0444\\u0440\\u043e\\u0432\\u044b\\u0435 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438, \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435, \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0435 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b, \\u0431\\u0430\\u0437\\u044b \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445, \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b \\u0430\\u043d\\u0430\\u043b\\u0438\\u0442\\u0438\\u043a\\u0438, \\u044f\\u0437\\u044b\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0438 \\u043c\\u043d\\u043e\\u0433\\u043e\\u0435 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0435.<\\/span>\",\"az\":\"\\u0130T m&uuml;h\\u0259ndisi olun v\\u0259 \\u0259n &ccedil;ox t\\u0259l\\u0259b olunan pe\\u015f\\u0259l\\u0259rd\\u0259n birini \\u0259ld\\u0259 edin. Siz komp&uuml;ter elml\\u0259ri, r\\u0259q\\u0259msal texnologiyalar, proqram t\\u0259minat\\u0131, \\u0259m\\u0259liyyat sisteml\\u0259ri, veril\\u0259nl\\u0259r bazas\\u0131, analitik sisteml\\u0259r, proqramla\\u015fd\\u0131rma dill\\u0259ri v\\u0259 daha &ccedil;ox sah\\u0259d\\u0259 proqramla\\u015fd\\u0131rma \\u0259saslar\\u0131n\\u0131 v\\u0259 \\u0259sas anlay\\u0131\\u015flar\\u0131n\\u0131 &ouml;yr\\u0259n\\u0259c\\u0259ksiniz.\"}', '2024-02-23', 'Web Desing', '0', '', ''),
(10, '{\"en\":\"Online courses \\u0130T m\\u00fch\\u0259ndisi\",\"ru\":\"\\u041e\\u043d\\u043b\\u0430\\u0439\\u043d \\u043a\\u0443\\u0440\\u0441 IT-\\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\",\"az\":\"Onlayn kurs \\u0130T m\\u00fch\\u0259ndisi\"}', '{\"en\":\"Become an IT engineer and get one of the most in-demand professions. You will learn programming fundamentals and fundamental concepts in computer science, digital technologies, software, operating systems, databases, analytical systems, programming languages, and more. You will also be introduced to testing and system analysis. information technologies. During the program, you will be able to make an informed choice about specialties and technologies, and improve yourself in the direction of your choice.\",\"ru\":\"\\u0421\\u0442\\u0430\\u043d\\u044c\\u0442\\u0435 \\u0418\\u0422-\\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043e\\u043c \\u0438 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u043e\\u0434\\u043d\\u0443 \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u0439. \\u0412\\u044b \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442\\u0435 \\u043e\\u0441\\u043d\\u043e\\u0432\\u044b \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0438 \\u0444\\u0443\\u043d\\u0434\\u0430\\u043c\\u0435\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u0438 \\u0432 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438 \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0442\\u0438\\u043a\\u0438, \\u0446\\u0438\\u0444\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0439, \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c, \\u0431\\u0430\\u0437 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445, \\u0430\\u043d\\u0430\\u043b\\u0438\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c, \\u044f\\u0437\\u044b\\u043a\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0438 \\u043c\\u043d\\u043e\\u0433\\u043e\\u0433\\u043e \\u0434\\u0440\\u0443\\u0433\\u043e\\u0433\\u043e. \\u0412\\u044b \\u0442\\u0430\\u043a\\u0436\\u0435 \\u043f\\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u0442\\u0435\\u0441\\u044c \\u0441 \\u0442\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043d\\u044b\\u043c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u043c. \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0435 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438. \\u0412 \\u0445\\u043e\\u0434\\u0435 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b \\u0432\\u044b \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043e\\u0441\\u043e\\u0437\\u043d\\u0430\\u043d\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0435\\u0439 \\u0438 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0439, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0435\\u043d\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f \\u0432 \\u0432\\u044b\\u0431\\u0440\\u0430\\u043d\\u043d\\u043e\\u043c \\u0432\\u0430\\u043c\\u0438 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0438.\",\"az\":\"\\u0130T m&uuml;h\\u0259ndisi olun v\\u0259 \\u0259n &ccedil;ox t\\u0259l\\u0259b olunan pe\\u015f\\u0259l\\u0259rd\\u0259n birini \\u0259ld\\u0259 edin. Siz komp&uuml;ter elml\\u0259ri, r\\u0259q\\u0259msal texnologiyalar, proqram t\\u0259minat\\u0131, \\u0259m\\u0259liyyat sisteml\\u0259ri, veril\\u0259nl\\u0259r bazas\\u0131, analitik sisteml\\u0259r, proqramla\\u015fd\\u0131rma dill\\u0259ri v\\u0259 daha &ccedil;ox sah\\u0259d\\u0259 proqramla\\u015fd\\u0131rma \\u0259saslar\\u0131n\\u0131 v\\u0259 \\u0259sas anlay\\u0131\\u015flar\\u0131n\\u0131 &ouml;yr\\u0259n\\u0259c\\u0259ksiniz. Siz h\\u0259m&ccedil;inin s\\u0131naq v\\u0259 sistem t\\u0259hlili il\\u0259 tan\\u0131\\u015f olacaqs\\u0131n\\u0131z. informasiya texnologiyalar\\u0131. Proqram \\u0259rzind\\u0259 siz ixtisas v\\u0259 texnologiyalar haqq\\u0131nda m\\u0259lumatl\\u0131 se&ccedil;im ed\\u0259, se&ccedil;diyiniz istiqam\\u0259td\\u0259 &ouml;z&uuml;n&uuml;z&uuml; t\\u0259kmill\\u0259\\u015fdir\\u0259 bil\\u0259c\\u0259ksiniz.\"}', '2024-01-19', 'Craphic', 'Active', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `category`) VALUES
(10, 'vaqif', 'vako', 'fcea920f7412b5da7be0cf42b8c93759', ''),
(11, 'vusal', 'vusal', '25f9e794323b453885f5181f1b624d0b', ''),
(12, 'resad', 'resad', '20eabe5d64b0e216796e834f52d61fd0b70332fc', ''),
(13, 'cavid', 'cavid', '827ccb0eea8a706c4c34a16891f84e7b', '');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`c_id`, `c_name`) VALUES
(1, 'Web Design'),
(2, 'Graphic Design'),
(3, 'Video Editing'),
(4, 'Online Marketing');

-- --------------------------------------------------------

--
-- Структура таблицы `d_ci_sessions`
--

CREATE TABLE `d_ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `d_ci_sessions`
--

INSERT INTO `d_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('97b4d5caac181409bc9b5cdb33005dee8983a2e6', '197.163.39.183', 1449676827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434393637363832373b6c616e677c733a323a226172223b);

-- --------------------------------------------------------

--
-- Структура таблицы `experts`
--

CREATE TABLE `experts` (
  `e_id` int(11) NOT NULL,
  `e_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`e_title`)),
  `e_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`e_description`)),
  `e_date` varchar(255) NOT NULL,
  `e_category` varchar(255) NOT NULL,
  `e_status` varchar(255) NOT NULL,
  `e_img` varchar(255) NOT NULL,
  `e_img_ext` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Дамп данных таблицы `experts`
--

INSERT INTO `experts` (`e_id`, `e_title`, `e_description`, `e_date`, `e_category`, `e_status`, `e_img`, `e_img_ext`) VALUES
(10, '{\"en\":\"Rza Talibov\",\"ru\":\"Rza Talibov\",\"az\":\"Rza Talibovee\"}', '{\"en\":\"The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work.\",\"ru\":\"\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430. \\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430. \\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439.\",\"az\":\"Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur. Veb t\\u0259rtibat&ccedil;\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur. Veb t\\u0259rtibat&ccedil;\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir.\"}', '2024-01-11', 'Web', 'Active', 'team-11.jpg', ''),
(11, '{\"en\":\"Vaqif\",\"ru\":\"Vaqif\",\"az\":\"Vaqif\"}', '{\"en\":\"The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.\",\"ru\":\"\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\",\"az\":\"Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur.Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur.Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur.\"}', '2024-01-31', 'Craphic', 'Active', 'team-31.jpg', ''),
(12, '{\"en\":\"Teacher\",\"ru\":\"\\u0423\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0438\\u0446\\u0430\",\"az\":\"Muellime\"}', '{\"en\":\"The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.\",\"ru\":\"\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\",\"az\":\"Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur.Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur.Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur.Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur.\"}', '2024-02-23', 'Craphic Desig', 'Active', 'team-41.jpg', ''),
(13, '{\"en\":\"Teacher2\",\"ru\":\"\\u0423\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0438\\u0446\\u04302\",\"az\":\"Muellime2\"}', '{\"en\":\"The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.The web developer profession, that is, a web developer, has many narrow specializations. In this article we look at the types of webmasters by type of activity, as well as the characteristic features of their work. The issues of necessary knowledge and employment are touched upon.\",\"ru\":\"\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u044f \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0442\\u043e \\u0435\\u0441\\u0442\\u044c \\u0432\\u0435\\u0431-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430, \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0443\\u0437\\u043a\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439. \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0435 \\u043c\\u044b \\u0440\\u0430\\u0441\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u043c \\u0442\\u0438\\u043f\\u044b \\u0432\\u0435\\u0431-\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0440\\u043e\\u0434\\u0443 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b. \\u0417\\u0430\\u0442\\u0440\\u043e\\u043d\\u0443\\u0442\\u044b \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0445 \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439 \\u0438 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\",\"az\":\"Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur.Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur.Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur.Veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 pe\\u015f\\u0259si, y\\u0259ni veb t\\u0259rtibat&ccedil;\\u0131s\\u0131 bir &ccedil;ox dar ixtisaslara malikdir. Bu yaz\\u0131da f\\u0259aliyy\\u0259t n&ouml;v&uuml;n\\u0259 g&ouml;r\\u0259 veb ustalar\\u0131n\\u0131n n&ouml;vl\\u0259rin\\u0259, el\\u0259c\\u0259 d\\u0259 i\\u015fl\\u0259rinin xarakterik x&uuml;susiyy\\u0259tl\\u0259rin\\u0259 bax\\u0131r\\u0131q. Laz\\u0131mi bilik v\\u0259 m\\u0259\\u015f\\u011fulluq m\\u0259s\\u0259l\\u0259l\\u0259rin\\u0259 toxunulur.\"}', '2024-02-23', 'Online Marketing', 'Active', 'team-21.jpg', '');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `n_id` int(11) NOT NULL,
  `n_title` longtext NOT NULL,
  `n_created` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `n_description` longtext NOT NULL,
  `n_date` varchar(255) NOT NULL,
  `n_category` varchar(255) NOT NULL,
  `n_status` varchar(255) NOT NULL,
  `n_img` varchar(255) NOT NULL,
  `n_img_ext` varchar(255) NOT NULL,
  `n_creater_id` int(11) NOT NULL,
  `n_creater_date` varchar(255) NOT NULL,
  `n_updater_id` varchar(255) NOT NULL,
  `n_update_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`n_id`, `n_title`, `n_created`, `content`, `n_description`, `n_date`, `n_category`, `n_status`, `n_img`, `n_img_ext`, `n_creater_id`, `n_creater_date`, `n_updater_id`, `n_update_date`) VALUES
(88, '{\"en\":\"ftr\",\"ru\":\"ftr\",\"az\":\"ftr\"}', '', '', '{\"en\":\"Lessons are conducted online\",\"ru\":\"\\u0423\\u0440\\u043e\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d\",\"az\":\"Online dersler\"}', '2024-01-24', 'Web', '0', 'Без_названия.jpg', '', 0, '', '', ''),
(91, '{\"en\":\"Education\",\"ru\":\"\\u041e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\",\"az\":\"T\\u0259hsil\"}', '', '', '{\"en\":\"Reimagining Education\",\"ru\":\"\\u041d\\u043e\\u0432\\u0430\\u044f \\u0438\\u0434\\u0435\\u044f \\u043e\\u0431 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438\",\"az\":\"T\\u0259hsilin yenid\\u0259n t\\u0259s\\u0259vv&uuml;r edilm\\u0259si\"}', '2024-01-24', 'Video Editing', '0', 'reflection-of-building-and-city-lights-on-the-sea-in-the-city-taken-with-long-exposure-wallpaper-6000x2000_109.jpg', '', 0, '', '', ''),
(92, '{\"en\":\"Online Lessons\",\"ru\":\"\\u041e\\u043d\\u043b\\u0430\\u0439\\u043d \\u0423\\u0440\\u043e\\u043a\\u0438\",\"az\":\"Online dersler\"}', '', '', '{\"en\":\"Training in English\",\"ru\":\"\\u041e\\u0431\\u0443\\u0447\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0430 \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u043c\",\"az\":\"Azerbaycanda dilinde dersler\"}', '2024-02-23', 'Web Desing', '0', 'modern-website-design-examples4.jpg', '', 0, '', '', ''),
(95, '{\"en\":\"\\u0410\\u043d\\u0433\\u043b\\u0438\\u0439\\u0441\\u043a\\u0438\\u0439\",\"ru\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\",\"az\":\"Azerbaijan title\"}', '', '', '{\"en\":\"New lessons\",\"ru\":\"\\u041d\\u043e\\u0432\\u044b\\u0435 \\u0443\\u0440\\u043e\\u043a\\u0438\",\"az\":\"Yeni dersler\"}', '2024-01-26', 'Web Desing', '0', '2.jpg', '', 0, '', '', ''),
(96, '{\"en\":\"Ne Lessons\",\"ru\":\"\\u041d\\u043e\\u0432\\u044b\\u0435 \\u0423\\u0440\\u043e\\u043a\\u0438\",\"az\":\"Yeni dersler\"}', '', '', '{\"en\":\"learning php from scratch\",\"ru\":\"\\u043e\\u0431\\u0443\\u0447\\u0435\\u043d\\u0438\\u0435 php \\u0441 \\u043d\\u0443\\u043b\\u044f\",\"az\":\"php-ni s\\u0131f\\u0131rdan &ouml;yr\\u0259nm\\u0259k\"}', '2024-03-27', 'Web', '', 'Без_названия2.jpg', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `news2`
--

CREATE TABLE `news2` (
  `n_id` int(11) NOT NULL,
  `n_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`n_title`)),
  `n_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`n_desc`)),
  `n_category` varchar(256) NOT NULL,
  `n_img` varchar(256) NOT NULL,
  `n_status` tinyint(1) NOT NULL,
  `n_date` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Дамп данных таблицы `news2`
--

INSERT INTO `news2` (`n_id`, `n_title`, `n_desc`, `n_category`, `n_img`, `n_status`, `n_date`) VALUES
(1, '{\n    \"ru\": \"russian title\",\n    \"az\": \"azerbaijan title\",\n    \"en\": \"english title\"\n}', '{\n    \"ru\": \"russian desc\",\n    \"az\": \"azerbaijan desc\",\n    \"en\": \"english desc\"\n}', '', '', 0, ''),
(2, '{\"en\":\"dfgh\",\"ru\":\"dfgh\",\"az\":\"sdfgh\"}', '{\"en\":\"sdfg\",\"ru\":\"df\",\"az\":\"sdfg\"}', 'Craphic Design', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_information`
--

CREATE TABLE `personal_information` (
  `pinfo_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `pob` varchar(100) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `cstatus` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `photo` text NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `personal_information`
--

INSERT INTO `personal_information` (`pinfo_id`, `user_id`, `dob`, `pob`, `gender`, `cstatus`, `email`, `contact_no`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 42, '', '', '', '', '', '', 'avatar-1295397_12801.png', 'active', '2023-09-07 21:10:58', '2023-09-07 22:53:24'),
(2, 43, '', '', '', '', '', '', 'avatar-1295397_12807.png', 'active', '2023-09-07 22:53:46', '2023-09-07 22:53:54'),
(3, 44, '', '', '', '', '', '', 'pexels-piccinng-307599311.jpg', 'active', '2023-09-07 22:54:33', '2023-09-07 22:54:37'),
(4, 3, '2023-09-27', 'sheki', 'Male', 'Single', 'vako_95@inbox.ru', '0506732059', 'avatar-1295397_12801.png', 'active', '2023-09-07 22:55:06', '2023-09-08 00:26:45'),
(5, 45, '2023-09-01', '4r4', '4r4', '4r4', '4r4', '4', 'avatar-659651_640.png', 'active', '2023-09-11 09:59:27', '2023-09-11 23:43:12'),
(6, 41, '2023-09-22', 'sheki', 'male', 'single', 'vako', '050d', 'pexels-piccinng-3075993.jpg', 'active', '2023-09-11 22:13:37', '2023-09-11 22:24:25');

-- --------------------------------------------------------

--
-- Структура таблицы `popular_courses`
--

CREATE TABLE `popular_courses` (
  `p_id` int(10) NOT NULL,
  `p_title` varchar(255) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `p_description` longtext NOT NULL,
  `p_date` varchar(255) NOT NULL,
  `p_category` varchar(255) NOT NULL,
  `p_status` varchar(255) NOT NULL DEFAULT 'active',
  `p_img` varchar(255) NOT NULL,
  `p_img_ext` varchar(2555) NOT NULL,
  `p_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `p_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `p_name` varchar(255) NOT NULL,
  `p_student` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `popular_courses`
--

INSERT INTO `popular_courses` (`p_id`, `p_title`, `p_price`, `p_description`, `p_date`, `p_category`, `p_status`, `p_img`, `p_img_ext`, `p_created_at`, `p_updated_at`, `p_name`, `p_student`) VALUES
(2, '444nhh', '', '5555', '2023-10-19', 'Web', 'Deactive', '', '', '2023-10-14 13:48:56', '2023-10-14 13:58:25', '', ''),
(3, 'ii', '', 'ii', '2023-10-19', 'Web Desing', 'Active', '', '', '2023-10-14 14:42:48', '2023-10-14 14:42:48', '', ''),
(4, 'ee', 'ee', 'ee', '2023-10-18', 'Web Desing', 'Deactive', '', '', '2023-10-14 14:47:47', '2023-10-14 14:47:47', '', ''),
(5, '14', '12 $', '14', '2023-10-21', 'Craphic Design', 'Active', '', '', '2023-10-14 14:48:45', '2023-10-14 14:48:45', '', ''),
(6, 'ttt', '12 111 $', 'ttt', '2023-10-19', 'Web Desing', 'Active', '', '', '2023-10-14 14:50:56', '2023-10-14 14:50:56', '', ''),
(7, 'stude4n', '445 $', '10', '2023-10-27', 'Web Desing', 'Deactive', '', '', '2023-10-14 15:21:41', '2023-10-14 15:21:41', '', '10'),
(8, 'eee', '42 $', 'students', '2023-10-20', 'Web', 'Active', 'avatar-1295397_12809.png', '.png', '2023-10-14 15:26:33', '2023-12-29 21:00:27', 'Vako', '12'),
(9, 'Vaqif', '150 $', 'Dersler bu ay baslayir', '2023-12-29', 'Web', 'Active', 'modern-website-design-examples.jpg', '.jpg', '2023-12-29 18:14:17', '2023-12-29 20:59:45', 'Rza', '4'),
(10, 'Vaqif', '99 $', 'kurs 6 ay muddetinde', '2024-01-20', 'Online', 'Active', 'Future-of-Web-Designing.jpg', '.jpg', '2023-12-29 18:18:35', '2023-12-29 18:20:48', 'Vaqif', '4'),
(11, 'Rzay', '89 $', 'Yeni dersler', '2024-02-03', 'Video', 'Active', 'Online-Marketing.jpg', '.jpg', '2023-12-29 18:34:29', '2023-12-29 21:21:20', 'Rza', '6');

-- --------------------------------------------------------

--
-- Структура таблицы `programming_skills`
--

CREATE TABLE `programming_skills` (
  `pskill_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `prog_languages` text NOT NULL,
  `backend_frameworks` text NOT NULL,
  `frontend_frameworks` text NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `programming_skills`
--

INSERT INTO `programming_skills` (`pskill_id`, `user_id`, `prog_languages`, `backend_frameworks`, `frontend_frameworks`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Php, HTML, Css, Bootstrap.', 'Codeignigter.', 'Bootsrap, Materilaze, Foundation.', 'active', '2023-09-04 00:11:28', '2023-09-04 00:18:16');

-- --------------------------------------------------------

--
-- Структура таблицы `skilled_info`
--

CREATE TABLE `skilled_info` (
  `s_id` int(11) NOT NULL,
  `s_title` varchar(255) NOT NULL,
  `s_description` longtext NOT NULL,
  `s_date` varchar(255) NOT NULL,
  `s_category` varchar(255) NOT NULL,
  `s_status` varchar(255) NOT NULL,
  `s_img` varchar(255) NOT NULL,
  `s_img_ext` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `skilled_info`
--

INSERT INTO `skilled_info` (`s_id`, `s_title`, `s_description`, `s_date`, `s_category`, `s_status`, `s_img`, `s_img_ext`) VALUES
(11, 'sekiler', 'sekil', '2023-10-20', 'Web', 'Deactive', 'cat-4.jpg', '.jpg'),
(12, '3info', '3info', '2023-10-02', 'Craphic Design', 'Active', '116462.png', '.png'),
(13, '4info', '3info', '2023-10-25', 'Video', 'Active', 'course-2.jpg', '.jpg'),
(22, 'Our Recommendation', 'Information technology (IT)&nbsp;', '2023-12-07', 'Web', 'Active', 'cat-2.jpg', '.jpg'),
(23, '5 elem', '5555', '2024-02-01', 'Web Desing', 'Active', '', ''),
(24, 'site', 'site', '2024-02-01', 'Web', 'Active', 'carousel-1.jpg', '.jpg'),
(25, 'site2', 'site2', '2024-01-24', 'Craphic', 'Active', 'modern-website-design-examples3.jpg', '.jpg'),
(26, 'site', '3', '2024-01-17', 'Web', 'Active', 'modern-website-design-examples2.jpg', '.jpg'),
(27, 'tree', 'eee', '2024-01-25', 'Web Desing', 'Active', 'Future-of-Web-Designing2.jpg', '.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `xname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `fname`, `mname`, `lname`, `xname`, `username`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(52, 't', 't', 't', '', 't', 'c20ad4d76fe97759aa27a0c99bff6710', 'manager', 'deactivated', '2023-09-14 06:32:06', '2024-01-06 11:40:18'),
(53, 'vako', 'vako', 'huseynov', '', 'miband.az', '202cb962ac59075b964b07152d234b70', 'admin', 'active', '2023-09-14 06:50:25', '2023-09-14 13:33:10'),
(54, 'vako', 'vako', 'huseynov', '', 'vako01', '202cb962ac59075b964b07152d234b70', 'manager', 'active', '2023-09-14 06:51:06', '2024-01-05 18:03:59'),
(55, 'vako', 'Huseynov', 'huseynov', '', 'raymond', '202cb962ac59075b964b07152d234b70', 'admin', 'active', '2023-09-14 06:53:17', '2024-01-05 16:06:30'),
(56, 'vako', '123', '123', '', 'ellay', '202cb962ac59075b964b07152d234b70', 'admin', 'active', '2023-09-14 07:03:44', '2024-01-05 18:02:51'),
(57, '77', '77', '77', '', '77', '28dd2c7955ce926456240b2ff0100bde', 'manager', 'deactivated', '2023-09-14 07:04:38', '2023-09-14 09:58:58'),
(58, 'vako', 'vako', 'vako', '', 'vako', '202cb962ac59075b964b07152d234b70', 'admin', 'deactivated', '2023-09-14 10:27:50', '2023-09-14 10:28:06'),
(59, 'vako25', 'vako25', 'huseynov25', '', 'vako01', '202cb962ac59075b964b07152d234b70', 'manager', 'active', '2023-09-14 10:29:19', '2023-09-17 10:43:50'),
(60, 'vako', 'vako', 'huseynov', '', 'resad', '202cb962ac59075b964b07152d234b70', 'manager', 'deactivated', '2023-09-14 10:33:15', '2023-09-14 10:33:34'),
(61, 'vako', 'vako', 'cd', '', 'gggg', 'ba248c985ace94863880921d8900c53f', 'admin', 'active', '2023-09-14 10:52:21', '2023-09-14 10:59:06'),
(62, 'Abdul', 'abdul', 'abdul', 'y6y6', 'abdul', '202cb962ac59075b964b07152d234b70', 'visitor', 'deactivated', '2023-09-14 11:10:31', '2023-12-23 11:18:08'),
(63, 'ella', 'ella', 'ella', 'ella', 'ella', '202cb962ac59075b964b07152d234b70', 'visitor', 'deactivated', '2023-09-14 11:14:09', '2024-01-05 18:05:13'),
(64, 'Valeriya', 'Lera', 'Lera', '', 'lera', '202cb962ac59075b964b07152d234b70', 'visitor', 'active', '2023-09-19 19:00:34', '2023-09-19 19:00:34'),
(65, 'Valeriya', 'Lera', 'Lera', '', 'Lera_@mail.ru', '202cb962ac59075b964b07152d234b70', 'admin', 'active', '2023-09-19 19:02:25', '2023-09-19 19:02:25');

-- --------------------------------------------------------

--
-- Структура таблицы `user_message`
--

CREATE TABLE `user_message` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `u_subject` varchar(255) NOT NULL,
  `u_message` longtext NOT NULL,
  `u_date` varchar(255) NOT NULL,
  `u_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user_message`
--

INSERT INTO `user_message` (`u_id`, `u_name`, `u_email`, `u_subject`, `u_message`, `u_date`, `u_created`) VALUES
(1, 'Pervane', 'vako_95@inbox.ru', 'it', 'rtrt', '2023-09-18 19:44:45', '2023-09-18 15:46:05'),
(2, 'street', 'vako_95@inbox.ru', 'yellow', 'today', '2023-09-18 19:46:45', '2023-09-18 15:46:45'),
(3, 'street', 'vako_95@inbox.ru', 'yellow', 'today', '2023-09-18 19:47:43', '2023-09-18 15:47:43'),
(4, 'develop', 'vako_95@inbox.ru', 'it', '12', '2023-09-18 23:35:57', '2023-09-18 19:35:57'),
(5, 'rr', 'vako_95@inbox.ru', 'rr', 'rr', '2023-09-18 23:42:20', '2023-09-18 19:42:20'),
(6, 'develop', 'vako_95@inbox.ru', 'hdd', 'd', '2023-09-18 23:42:52', '2023-09-18 19:42:52'),
(7, 'kk', 'vako_95@inbox.ru', 'kk', 'kk', '2023-09-18 23:43:39', '2023-09-18 19:43:39'),
(8, 'd', 'vako_95@inbox.ru', 'd', 'd', '2023-09-18 23:44:02', '2023-09-18 19:44:02'),
(9, 'e', 'vako_95@inbox.ru', 'e', 'e', '2023-09-18 23:46:56', '2023-09-18 19:46:56'),
(10, 's', 'vako_95@inbox.ru', 's', 's', '2023-09-18 23:47:12', '2023-09-18 19:47:12'),
(11, 'w', 'vako_95@inbox.ru', 'w', 'w', '2023-09-18 23:47:34', '2023-09-18 19:47:34'),
(12, 'i', 'vako_95@inbox.ru', 'i', 'i', '2023-09-18 23:49:09', '2023-09-18 19:49:09'),
(13, 'e', 'vako_95@inbox.ru', 'e', 'e', '2023-09-18 23:50:07', '2023-09-18 19:50:07'),
(14, 't', 'vako_95@inbox.ru', 't', 't', '2023-09-18 23:50:18', '2023-09-18 19:50:18'),
(15, 'd', 'vako_95@inbox.ru', 'd', 'd', '2023-09-18 23:50:56', '2023-09-18 19:50:56'),
(16, 's', 'vako_95@inbox.ru', 's', 's', '2023-09-18 23:51:16', '2023-09-18 19:51:16'),
(19, 'uu', 'vako_95@inbox.ru', 'uu', 'uu', '2023-10-02  04:54:01', '2023-10-02 00:54:01'),
(20, 'Vako95', 'vako_95@inbox.ru', 'qeydiiyat', 'bugun', '2023-11-13  06:08:08', '2023-11-13 02:08:08'),
(21, 'Lera', 'vako_95@inbox.ru', 'Resnici', 'zavtra zaydu', '2023-12-03  15:05:11', '2023-12-03 11:05:11'),
(22, 'zxzx', 'xzxz@asasas', 'zxzx', 'zxzxzxzx', '2023-12-23  16:24:58', '2023-12-23 12:24:58');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about_info`
--
ALTER TABLE `about_info`
  ADD PRIMARY KEY (`b_id`);

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`c_id`);

--
-- Индексы таблицы `d_ci_sessions`
--
ALTER TABLE `d_ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Индексы таблицы `experts`
--
ALTER TABLE `experts`
  ADD PRIMARY KEY (`e_id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`n_id`);

--
-- Индексы таблицы `news2`
--
ALTER TABLE `news2`
  ADD PRIMARY KEY (`n_id`);

--
-- Индексы таблицы `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`pinfo_id`);

--
-- Индексы таблицы `popular_courses`
--
ALTER TABLE `popular_courses`
  ADD PRIMARY KEY (`p_id`);

--
-- Индексы таблицы `programming_skills`
--
ALTER TABLE `programming_skills`
  ADD PRIMARY KEY (`pskill_id`);

--
-- Индексы таблицы `skilled_info`
--
ALTER TABLE `skilled_info`
  ADD PRIMARY KEY (`s_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `user_message`
--
ALTER TABLE `user_message`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about_info`
--
ALTER TABLE `about_info`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `experts`
--
ALTER TABLE `experts`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT для таблицы `news2`
--
ALTER TABLE `news2`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `personal_information`
--
ALTER TABLE `personal_information`
  MODIFY `pinfo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `popular_courses`
--
ALTER TABLE `popular_courses`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `programming_skills`
--
ALTER TABLE `programming_skills`
  MODIFY `pskill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `skilled_info`
--
ALTER TABLE `skilled_info`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `user_message`
--
ALTER TABLE `user_message`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
