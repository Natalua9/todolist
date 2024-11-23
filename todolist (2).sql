-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 23 2024 г., 07:46
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `todolist`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(150) NOT NULL,
  `is_completed` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `description`, `is_completed`, `created_at`, `updated_at`) VALUES
(1, 1, 'fgbv', 'dc v', 0, '2024-09-09 03:26:06', '2024-09-09 03:26:06'),
(2, 1, 'fv c', 'dfc v', 0, '2024-09-09 03:43:17', '2024-09-09 03:43:17'),
(6, 5, 'увыа', 'выамвы', 0, '2024-09-11 04:30:41', '2024-09-11 04:30:41'),
(13, 4, 'Создание заметки', 'Создать заметку и сделать', 0, '2024-09-19 10:43:32', '2024-09-19 10:43:32'),
(14, 4, 'Создание заметки2', 'Создать заметку и сделать', 1, '2024-09-21 03:38:55', '2024-09-21 03:38:55'),
(16, 6, 'Создание заметки', 'Создать заметку и сделать', 1, '2024-09-21 03:43:14', '2024-09-21 03:43:14'),
(18, 6, 'Создание заметки3', 'Создать заметку и сделать', 1, '2024-09-21 03:43:26', '2024-09-21 03:43:26'),
(19, 6, 'Создание заметки5', 'Создать заметку и сделать', 0, '2024-09-21 03:44:19', '2024-09-21 03:44:19'),
(21, 6, 'gbf', 'fgbgfg', 1, '2024-09-21 04:09:11', '2024-09-21 04:09:11');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(60) NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`) VALUES
(1, 'ivanov', '123'),
(2, 'ivanovtdr', 'fdf'),
(3, 'петров', '$2y$10$bGa83ZxROo6h2yilVHcQ/.vzMZW0Al5LtEkjvKs6Ehq3lpw7O3gka'),
(4, 'ivanov1', '$2y$10$qCCnXbzBY6oF.oVGu87/2e/t7YzIhEGWPFRwpl4Cus1noo4hoH6ze'),
(5, 'ivanov12', '$2y$10$d.xhwIevcTZjYsBo.Syui.97QcGQqTYwxwyhoL0mTuO68NPRTir/e'),
(6, 'bob', '$2y$10$Ll9Ci/p93SwtBgWf6H8nyOF1Qkt9oMvuKk8SL254deCwlCFJKtIa.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
