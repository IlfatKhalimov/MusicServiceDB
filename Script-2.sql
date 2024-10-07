
-- Исполнители

INSERT INTO singers(name)
VALUES
	('Nirvana'),
	('Metallica'),
	('The Interrupters'),
	('Ghost'),
	('Green Day');

-- Жанры

INSERT INTO category(name)
VALUES
	('Grange'),
	('Metall'),
	('Punk'),
	('Ska-punk');

-- Альбомы

INSERT INTO albums(name, release_year)
VALUES
	('Bleach', 1989),
	('Nevermind', 1991),
	('In Utero', 1993),
	('Master of Puppets', 1986),
	('Matallica', 1991),
	('Fight the Good Fight', 2018),
	('In the Wild', 2022),
	('Phantomime', 2023),
	('American Idiot', 2004);

-- Треки

INSERT INTO tracks(name, duration, album_id)
VALUES 
	('Mollys Lips', 136, 1),
	('Been a Son', 121, 1),
	('Master of Puppets', 516, 4),
	('Nothing Else Matters', 388, 5),
	('Shes Kerosene', 242, 6),
	('In the Mirror', 242, 7),
	('Phantom of the Opera', 443, 8),
	('Boulevard of Broken Dreams', 262 , 9);

-- Сборники

INSERT INTO collections(name, release_year)
VALUES
	('First', 1998),
	('Sword', 2000),
	('Random', 2024),
	('Souls', 2002);

-- Альбомы исполнителей

INSERT INTO album_singer(album_id, singer_id)
VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 2),
	(5, 2),
	(6, 3),
	(7, 3),
	(8, 4),
	(9, 5);

-- Треки в сборниках

INSERT INTO track_collection(track_id, collection_id)
VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(3, 2),
	(4, 2),
	(1, 3),
	(2, 3),
	(5, 3),
	(6, 3),
	(4, 4),
	(6, 4),
	(7, 4),
	(8, 4);

-- Жанры исполнителей

INSERT INTO singer_category(singer_id, category_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 4),
	(4, 2),
	(5, 3);