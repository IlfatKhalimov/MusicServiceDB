-- ЗАДАНИЕ 2

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
	WHERE name LIKE '% мой %' OR name LIKE '% my %' OR name LIKE '% My %';
	
-- ЗАДАНИЕ 3

-- Количество исполнителей в каждом жанре
	
SELECT c.name, COUNT(sc.singer_id) singer_q FROM singer_category sc
	LEFT JOIN category c ON sc.category_id = c.id
	GROUP BY c.name
	ORDER BY singer_q DESC;
	
-- Количество треков, вошедших в альбомы 2019–2020 годов

SELECT COUNT(a.id) track_q FROM tracks t
	LEFT JOIN albums a ON t.album_id = a.id
	WHERE a.release_year BETWEEN 2019 AND 2020;
	
-- Средняя продолжительность треков по каждому альбому

SELECT a.name, AVG(t.duration) t_avg FROM tracks t
	LEFT JOIN albums a ON t.album_id = a.id
	GROUP BY a.name
	ORDER BY t_avg DESC;
	
-- Все исполнители, которые не выпустили альбомы в 2020 году

SELECT name FROM singers
	WHERE name NOT IN (
		SELECT s.name FROM singers s
			JOIN album_singer a_s ON s.id = a_s.singer_id
			JOIN albums a ON a_s.album_id = a.id
			WHERE a.release_year = 2020
			GROUP BY s.name
	);

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами) - Nirvana

SELECT col.name FROM collections col
	JOIN track_collection t_c ON col.id = t_c.collection_id
	JOIN tracks t ON t_c.track_id = t.id
	JOIN albums a ON t.album_id = a.id
	JOIN album_singer a_s ON a.id = a_s.album_id
	JOIN singers s ON a_s.singer_id = s.id
	WHERE s.name = 'Nirvana'
	GROUP BY col.name;