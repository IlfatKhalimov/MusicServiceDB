-- Название и продолжительность самого длительного трека

SELECT name, duration FROM tracks
	WHERE duration = (SELECT MAX(duration) FROM tracks);

-- Название треков, продолжительность которых не менее 3,5 минут

SELECT name FROM tracks
	WHERE duration >= 3.5*60;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно

SELECT name FROM collections
	WHERE release_year between 2018 and 2020;

-- Исполнители, чьё имя состоит из одного слова

select * FROM singers
	WHERE name NOT IN (
		SELECT name FROM singers
			WHERE name LIKE '% %'
		);

-- Название треков, которые содержат слово «мой» или «my»
	
SELECT name FROM tracks
	WHERE name LIKE '%мой%' OR name LIKE '%my%';