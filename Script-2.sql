-- Исполнители

INSERT INTO singer(name)
VALUES('Nirvana');

INSERT INTO singer(name)
VALUES('Metallica');

INSERT INTO singer(name)
VALUES('The Interrupters');

INSERT INTO singer(name)
VALUES('Ghost');

INSERT INTO singer(name)
VALUES('Green Day');

-- Жанры

INSERT INTO category(name)
VALUES('Grange');

INSERT INTO category(name)
VALUES('Metall');

INSERT INTO category(name)
VALUES('Punk');

INSERT INTO category(name)
VALUES('Ska-punk');

-- Альбомы

INSERT INTO albums(name, release_year)
VALUES('Bleach', 1989);

INSERT INTO albums(name, release_year)
VALUES('Nevermind', 1991);

INSERT INTO albums(name, release_year)
VALUES('In Utero', 1993);

INSERT INTO albums(name, release_year)
VALUES('Master of Puppets', 1986);

INSERT INTO albums(name, release_year)
VALUES('Matallica', 1991);

INSERT INTO albums(name, release_year)
VALUES('Fight the Good Fight', 2018);

INSERT INTO albums(name, release_year)
VALUES('In the Wild', 2022);

INSERT INTO albums(name, release_year)
VALUES('Phantomime', 2023);

INSERT INTO albums(name, release_year)
VALUES('American Idiot', 2004);

-- Треки

INSERT INTO tracks(name, duration, album_id)
VALUES("Molly's Lips", 136, 1);

INSERT INTO tracks(name, duration, album_id)
VALUES('Been a Son', 121, 1);

INSERT INTO tracks(name, duration, album_id)
VALUES('Master of Puppets', 516, 4);

INSERT INTO tracks(name, duration, album_id)
VALUES('Nothing Else Matters', 388, 5);

INSERT INTO tracks(name, duration, album_id)
VALUES("She's Kerosene", 242, 6);

INSERT INTO tracks(name, duration, album_id)
VALUES('In the Mirror', 242, 7);

INSERT INTO tracks(name, duration, album_id)
VALUES('Phantom of the Opera', 443, 8);

INSERT INTO tracks(name, duration, album_id)
VALUES('Boulevard of Broken Dreams', 262 , 9);

-- Сборники

INSERT INTO collections(name, release_year)
VALUES('First', 1998);

INSERT INTO collections(name, release_year)
VALUES('Sword', 2000);

INSERT INTO collections(name, release_year)
VALUES('Random', 2024);

-- Альбомы исполнителей

INSERT INTO albun_singer(album_id, singer_id)
VALUES(1, 1);

INSERT INTO albun_singer(album_id, singer_id)
VALUES(2, 1);

INSERT INTO albun_singer(album_id, singer_id)
VALUES(3, 1);

INSERT INTO albun_singer(album_id, singer_id)
VALUES(4, 2);

INSERT INTO albun_singer(album_id, singer_id)
VALUES(5, 2);

INSERT INTO albun_singer(album_id, singer_id)
VALUES(6, 3);

INSERT INTO albun_singer(album_id, singer_id)
VALUES(7, 3);

INSERT INTO albun_singer(album_id, singer_id)
VALUES(8, 4);

INSERT INTO albun_singer(album_id, singer_id)
VALUES(9, 5);

-- Треки в сборниках

INSERT INTO track_collection(track_id, collection_id)
VALUES(1, 1);

INSERT INTO track_collection(track_id, collection_id)
VALUES(2, 1);

INSERT INTO track_collection(track_id, collection_id)
VALUES(3, 1);

INSERT INTO track_collection(track_id, collection_id)
VALUES(4, 1);

INSERT INTO track_collection(track_id, collection_id)
VALUES(5, 1);

-- Жанры исполнителей

INSERT INTO singer_category(singer_id, category_id)
VALUES(1, 1);

INSERT INTO singer_category(singer_id, category_id)
VALUES(2, 2);

INSERT INTO singer_category(singer_id, category_id)
VALUES(3, 4);

INSERT INTO singer_category(singer_id, category_id)
VALUES(4, 2);

INSERT INTO singer_category(singer_id, category_id)
VALUES(5, 3);