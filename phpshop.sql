-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 10 2022 г., 22:08
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phpshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(13, 'Ноутбуки', 1, 1),
(14, 'Планшеты', 2, 1),
(15, 'Мониторы', 3, 1),
(16, 'Игровые компьютеры', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT 0,
  `is_recommended` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(47, 'Ноутбук ASUS TUF Gaming F15 FX506HCB-HN161 (90NR0723-M04940) Eclipse Gray', 13, 4324326, 31000, 1, 'Asus', 'Экран 15.6\" IPS (1920x1080) Full HD 144 Гц, матовый / Intel Core i5-11400H (2.7 - 4.5 ГГц) / RAM 16 ГБ / SSD 512 ГБ / nVidia GeForce RTX 3050, 4 ГБ / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / без ОС / 2.3 кг / серый', 1, 1, 1),
(48, 'Ноутбук Lenovo IdeaPad 3 14ITL6 (82H700L0RA) Arctic Grey Суперцена!!!', 13, 4322326, 13500, 1, 'Lenovo', 'Экран 14\" TN (1920x1080) Full HD, матовый / Intel Pentium Gold 7505 (2.0 - 3.5 ГГц) / RAM 4 ГБ / SSD 128 ГБ / Intel UHD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home 64bit / 1.41 кг / серый', 1, 1, 1),
(49, 'Ноутбук Apple MacBook Air 13\" M1 256GB 2020 (MGN63) Space Gray', 13, 4345726, 34000, 1, 'Apple', 'Экран 13.3\" Retina (2560x1600) WQXGA, глянцевый / Apple M1 / RAM 8 ГБ / SSD 256 ГБ / Apple M1 Graphics / Wi-Fi / Bluetooth / macOS Big Sur / 1.29 кг / серый', 0, 1, 1),
(50, 'Ноутбук Acer Swift 1 SF114-34-P1A1 (NX.A77EU.00V) Pure Silver', 13, 4323242, 14000, 1, 'Acer', 'Экран 14\" IPS (1920x1080) Full HD, матовый / Intel Pentium Silver N6000 (1.1 - 3.3 ГГц) / RAM 8 ГБ / SSD 256 ГБ / Intel UHD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / без ОС / 1.3 кг / серебристый', 0, 0, 1),
(51, 'Ноутбук HP Envy Laptop 13-ba1013ua (4A7L8EA) Natural Silver', 13, 4384526, 25000, 1, 'HP', 'Экран 13.3\" IPS (1920x1080) Full HD, Multi-touch, глянцевый / Intel Core i5-1135G7 (4.2 ГГц) / RAM 8 ГБ / SSD 512 ГБ / Intel Iris Xe Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home 64bit / 1.3 кг / серебристый', 0, 0, 1),
(52, 'Ноутбук ASUS Laptop X515FA-BQ019 (90NB0W01-M00620) Slate Grey', 13, 4373866, 15500, 1, 'ASUS', 'Экран 15.6\" IPS (1920x1080) Full HD, матовый / Intel Core i3-10110U (2.1 - 4.1 ГГц) / RAM 8 ГБ / SSD 256 ГБ / Intel UHD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / без ОС / 1.8 кг / серый', 0, 1, 1),
(53, 'Ноутбук Lenovo V17 G2 ITL (82NX00DCRA) Iron Grey', 13, 4329526, 13000, 1, 'Lenovo', 'Экран 17.3\" TN+film (1600x900) HD+, матовый / Intel Pentium Gold 7505 (2.0 - 3.5 ГГц) / RAM 4 ГБ / SSD 256 ГБ / Intel UHD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / без ОС / 2.2 кг / серый', 0, 0, 1),
(54, 'Ноутбук Acer Swift 1 SF114-34-C4RG (NX.A77EU.00C) Pure Silver', 13, 4325376, 12000, 1, 'Acer', 'Экран 14\" IPS (1920x1080) Full HD, матовый / Intel Celeron N4500 (1.1 - 2.8 ГГц) / RAM 8 ГБ / SSD 128 ГБ / Intel UHD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / без ОС / 1.3 кг / серебристый', 0, 0, 1),
(55, 'Ноутбук ASUS VivoBook 15 OLED M513UA-L1177 (90NB0TP1-M02620) Indie Black', 13, 4326547, 22000, 1, 'ASUS', 'Экран 15.6\" OLED (1920x1080) Full HD, глянцевый / AMD Ryzen 5 5500U (2.1 - 4.0 ГГц) / RAM 16 ГБ / SSD 512 ГБ / AMD Radeon Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / без ОС / 1.8 кг / черный', 1, 1, 1),
(56, 'Ноутбук Dell Vostro 15 3515 (N6262VN3515UA_UBU) Black', 13, 4399806, 15500, 1, 'Dell', 'Dell', 0, 1, 1),
(57, 'Планшет Samsung Galaxy Tab A7 Lite LTE 32GB Grey (SM-T225NZAASEK)', 14, 5522326, 5200, 1, 'Samsung', 'Экран 8.7\" (1340x800) MultiTouch / MediaTek Helio P22T (2.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 3G / 4G / Wi-Fi / Bluetooth 5.0 / основная камера 8 Мп, фронтальная - 2 Мп / GPS / ГЛОНАСС / Android 11 / 371 г / серый', 0, 0, 1),
(58, 'Планшет Lenovo Tab M10 FHD Plus (2nd Gen) Wi-Fi 64GB Platinum Grey (ZA5T0417UA)', 14, 5524326, 6000, 1, 'Lenovo', 'Экран 10.3\" (1920x1200) MultiTouch / MediaTek Helio P22T (2.3 ГГц) / RAM 4 ГБ / 64 ГБ встроенной памяти + microSD / Wi-Fi / Bluetooth 5.0 / основная камера 8 Мп, фронтальная - 5 Мп / Android 9.0 (Pie) / 460 г / платиновый серый', 1, 0, 1),
(59, 'Планшет Lenovo Tab P11 LTE 6/128GB Slate Grey (ZA7S0052UA)', 14, 5584526, 10000, 1, 'Lenovo', 'Экран 11\" IPS (2000x1200) MultiTouch / Qualcomm Snapdragon 662 (2.0 ГГц + 1.8 ГГц) / RAM 6 ГБ / 128 ГБ встроенной памяти + microSD / 3G / 4G / Wi-Fi / Bluetooth 5.1 / основная камера 13 Мп, фронтальная - 8 Мп / GPS / ГЛОНАСС / Android 10 / 490 г / темно-серый', 0, 0, 1),
(60, 'Планшет Apple iPad Pro 12.9', 14, 5545726, 42000, 1, 'Apple', 'Экран 12.9\" Liquid Retina XDR (2732x2048) емкостный MultiTouch / Apple M1 / RAM 8 ГБ / 128 ГБ встроенной памяти / Wi-Fi / Bluetooth 5.0 / основная двойная камера 12 Мп + 10 Мп, фронтальная - 12 Мп / iPadOS / 682 г / серый космос', 1, 1, 1),
(61, 'Планшет Samsung Galaxy Tab S7 FE LTE 64GB Black (SM-T735NZKASEK)', 14, 5523242, 17000, 1, 'Samsung', 'Экран 12.4\" (2560x1600) MultiTouch / Qualcomm Snapdragon 750G (2.2 ГГц) / RAM 4 ГБ / 64 ГБ встроенной памяти + microSD / 3G / 4G / Wi-Fi / Bluetooth 5.0 / основная камера: 8 Мп, фронтальная - 5 Мп / GPS / ГЛОНАСС / Android 11 / 608 г / черный', 1, 0, 1),
(62, 'Планшет Lenovo Tab M8 HD 2/32 WiFi Iron Grey (ZA5G0054UA)', 14, 5522365, 3800, 1, 'Lenovo', 'Экран 8\" (1280х800) IPS, емкостный MultiTouch / MediaTek Helio A22 (2 ГГц) / RAM 2 ГБ / 32 ГБ встроенной памяти + microSD (до 128 ГБ) / Wi-Fi / Bluetooth 5.0 / основная камера 5 Мп + фронтальная 2 Мп / GPS / Android 10 / 305 г / серый', 0, 0, 1),
(63, 'Mонитор 27\" Samsung Odyssey G5 LC27G54T Black', 15, 6664326, 8500, 1, 'Samsung', 'Диагональ дисплея\r\n27\"\r\nМаксимальное разрешение дисплея\r\n2560 x 1440\r\nВремя реакции матрицы\r\n1 мс (GtG)\r\nЯркость дисплея\r\n250 кд/м²\r\nТип матрицы\r\nVA\r\nКонтрастность дисплея\r\n2500:1\r\nОсобенности\r\n\"Безрамочный\" (Сinema screen)\r\nFlicker-Free\r\nИзогнутый экран', 0, 0, 1),
(64, 'Монитор 27\" Dell S2721DGFA', 15, 6664526, 13700, 1, 'Dell', 'Диагональ дисплея\r\n27\"\r\nМаксимальное разрешение дисплея\r\n2560 x 1440\r\nВремя реакции матрицы\r\n1 мс (от серого к серому)\r\nЯркость дисплея\r\n400 кд/м²\r\nТип матрицы\r\nIPS\r\nКонтрастность дисплея\r\n1000:1\r\nОсобенности\r\n\"Безрамочный\" (Сinema screen)\r\nFlicker-Free\r\nUSB-концентратор\r\nПоворотный экран (Pivot)\r\nРегулировка по высоте', 0, 0, 1),
(65, 'Монитор 23.8\" AOC 24G2/BK/01', 15, 6662326, 6400, 1, 'AOC', 'Диагональ дисплея\r\n23.8\"\r\nМаксимальное разрешение дисплея\r\n1920 x 1080\r\nВремя реакции матрицы\r\n1 мс (MPRT)\r\nЯркость дисплея\r\n250 кд/м²\r\nТип матрицы\r\nIPS\r\nОсобенности\r\nПоворотный экран (Pivot)', 0, 0, 1),
(66, 'Монитор 27\" HP P27q G4', 15, 6662526, 7800, 0, 'HP', 'Диагональ дисплея\r\n27\"\r\nМаксимальное разрешение дисплея\r\n2560 x 1440\r\nВремя реакции матрицы\r\n5 мс\r\nЯркость дисплея\r\n250 кд/м²\r\nТип матрицы\r\nIPS\r\nКонтрастность дисплея\r\n1000:1\r\nОсобенности\r\n\"Безрамочный\" (Сinema screen)\r\nFlicker-Free\r\nПоворотный экран (Pivot)\r\nРегулировка по высоте', 0, 0, 1),
(67, 'Монитор 23.8\" Lenovo ThinkVision S24e-20', 15, 6664345, 4800, 1, 'Lenovo', 'Диагональ дисплея\r\n23.8\"\r\nМаксимальное разрешение дисплея\r\n1920 x 1080\r\nВремя реакции матрицы\r\n4 мс\r\nЯркость дисплея\r\n250 кд/м²\r\nТип матрицы\r\nVA\r\nКонтрастность дисплея\r\n3000:1\r\nОсобенности\r\n\"Безрамочный\" (Сinema screen)\r\nFlicker-Free', 0, 0, 1),
(68, 'Монитор 27\" Samsung LF24T450 Black', 15, 6664398, 6000, 1, 'Samsung', 'Диагональ дисплея\r\n27\"\r\nМаксимальное разрешение дисплея\r\n1920 x 1080\r\nВремя реакции матрицы\r\n5 мс (GTG)\r\nЯркость дисплея\r\n250 кд/м²\r\nТип матрицы\r\nIPS\r\nКонтрастность дисплея\r\n1000:1\r\nОсобенности\r\nFlicker-Free\r\nUSB-концентратор\r\nПоворотный экран (Pivot)\r\nРегулировка по высоте', 1, 1, 1),
(69, 'Монитор 23.8\" AOC 24G2AE/BK', 15, 6665426, 5800, 1, 'AOC', 'Диагональ дисплея\r\n23.8\"\r\nМаксимальное разрешение дисплея\r\n1920 x 1080\r\nВремя реакции матрицы\r\n1 мс\r\nЯркость дисплея\r\n250 кд/м²\r\nТип матрицы\r\nIPS\r\nКонтрастность дисплея\r\n1000:1\r\nОсобенности\r\n\"Безрамочный\" (Сinema screen)\r\nFlicker-Free', 0, 0, 1),
(70, 'Монитор 31.5\" Samsung LU32J590UQIXCI', 15, 6662596, 8600, 1, 'Samsung', 'Диагональ дисплея\r\n31.5\"\r\nМаксимальное разрешение дисплея\r\n3840x2160\r\nВремя реакции матрицы\r\n4 мс (GTG)\r\nЯркость дисплея\r\nТипичная: 270 кд/м²\r\nМинимальная: 225 кд/м²\r\nТип матрицы\r\nVA\r\nКонтрастность дисплея\r\nТипичная: 3000:1\r\nМинимальная: 2000:1', 0, 0, 1),
(71, 'Монитор 23.8\" Dell P2422H', 15, 6664367, 7000, 1, 'Dell', 'Диагональ дисплея\r\n23.8\"\r\nМаксимальное разрешение дисплея\r\n1920 x 1080\r\nВремя реакции матрицы\r\n5 мс\r\nЯркость дисплея\r\n250 кд/м²\r\nТип матрицы\r\nIPS\r\nКонтрастность дисплея\r\n1000:1\r\nОсобенности\r\n\"Безрамочный\" (Сinema screen)\r\nUSB-концентратор\r\nПоворотный экран (Pivot)\r\nРегулировка по высоте', 0, 0, 1),
(72, 'Монитор 27\" Acer Nitro VG270UPbmiipx', 15, 6665456, 8800, 1, 'Acer', 'Диагональ дисплея\r\n27\"\r\nМаксимальное разрешение дисплея\r\n2560 x 1440\r\nВремя реакции матрицы\r\n1 мс\r\nЯркость дисплея\r\n350 кд/м²\r\nТип матрицы\r\nIPS\r\nКонтрастность дисплея\r\nСтатическая: 1000:1\r\nДинамическая: 100M:1\r\nОсобенности\r\nFlicker-Free', 0, 0, 1),
(73, 'Компьютер Everest Home 4070', 16, 1114326, 17200, 1, 'Everest', 'Intel Core i3-10100F (3.6 - 4.3 ГГц) / RAM 8 ГБ / HDD 1 ТБ / nVidia GeForce GTX 1050 Ti, 4 ГБ / Без ОД / LAN / без ОС', 0, 0, 1),
(74, 'Компьютер Cobra Advanced', 16, 1112326, 22600, 1, 'Cobra', 'Intel Core i5-10400F (2.9 - 4.3 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 240 ГБ / nVidia GeForce GTX 1050 Ti, 4 ГБ / без ОД / LAN / Linux', 0, 0, 1),
(75, 'Моноблок Lenovo IdeaCentre 5i 27IOB6', 16, 1115726, 44000, 1, 'Lenovo', 'Экран 27\" IPS (2560x1440) WQHD / Intel Core i5-10400T (2.0 - 3.6 ГГц) / RAM 16 ГБ / HDD 2 ТБ + SSD 512 ГБ / nVidia GeForce RTX 3050, 4 ГБ GDDR6 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home 64bit Rus / 9.32 кг / серый / клавиатура + мышь', 0, 0, 1),
(76, 'Компьютер Everest Home 4070', 16, 1113242, 24400, 1, 'Everest', 'Intel Core i5-10400F (2.9 - 4.3 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 240 ГБ / nVidia GeForce GTX 1650, 4 ГБ / без ОД / LAN / без ОС', 0, 0, 1),
(77, 'Компьютер ARTLINE Gaming X33 v14', 16, 1114526, 25000, 1, 'ARTLINE', 'Intel Core i5-10400F (2.9 - 4.3 ГГц) / RAM 16 ГБ / HDD 1 TБ + SSD 480 ГБ / nVidia GeForce GTX 1650, 4 ГБ / без ОД / LAN / без ОС', 1, 0, 1),
(78, 'Компьютер Asus ROG Strix G15CE-71170F0360', 16, 1112426, 71000, 1, 'Asus', 'Intel Core i7-11700F (2.5 - 4.9 ГГц) / RAM 16 ГБ / SSD 1 ТБ / nVidia GeForce RTX 3080, 10 ГБ / без ОД / LAN / Wi-Fi / Bluetooth / без ОС', 1, 1, 1),
(79, 'Компьютер Asus Mini PC PN41-BBC029MC', 16, 1114544, 5200, 1, 'Asus', 'Intel Celeron N4500 (1.1 - 2.8 ГГц) / без RAM / без HDD / Intel UHD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / кардридер / без ОС', 1, 0, 1),
(80, 'Компьютер 2E Complex Gaming (2E-4931)', 16, 1112226, 104000, 1, '2E', 'Intel Core i7-11700KF (3.6 - 5.0 ГГц) / RAM 32 ГБ / HDD 2 ТБ + SSD 1 ТБ / nVidia GeForce RTX 3080 Ti, 12 ГБ / без ОД / LAN / FreeDos', 1, 1, 1),
(81, 'Компьютер Cobra Advanced I14F.16.H1S4.166T.2725', 16, 1114567, 34000, 1, 'Cobra', 'Intel Core i5-10400F (2.9 - 4.3 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Ti, 6 ГБ / без ОД / LAN / Linux', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(47, 'Никита', '0661551445', 'asap pls', 4, '2022-01-09 19:53:42', '{\"59\":1,\"49\":1}', 2),
(48, 'Никита', '0661551445', 'asap pls', 4, '2022-01-10 18:02:04', '{\"49\":1}', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(3, 'Александр', 'test@gmail.com', '12345', ''),
(4, 'Никита', 'ingaliptn@gmail.com', 'admin', 'admin'),
(5, 'Сергей', 'serg@gmail.com', '12345', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
