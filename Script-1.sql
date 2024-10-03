CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	release_year TIME NOT NULL
);

ALTER TABLE albums
	ALTER COLUMN release_year SET data TYPE INTEGER,
	ADD CHECK (release_year > 1950);

CREATE TABLE IF NOT EXISTS collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	release_year TIME NOT NULL
);

ALTER TABLE collections
	ALTER COLUMN release_year SET DATA TYPE INTEGER,
	ADD CHECK (release_year > 1950);

CREATE TABLE IF NOT EXISTS singers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS category (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES albums(id)
);

ALTER TABLE tracks
	ALTER COLUMN duration SET DATA TYPE INTEGER;

CREATE TABLE IF NOT EXISTS album_singer (
	album_id INTEGER REFERENCES albums(id),
	singer_id INTEGER REFERENCES singers(id),
	CONSTRAINT pk PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE IF NOT EXISTS singer_category (
	singer_id INTEGER REFERENCES singers(id),
	category_id INTEGER REFERENCES category(id),
	CONSTRAINT sc_pk PRIMARY KEY (singer_id, category_id)
);

CREATE TABLE IF NOT EXISTS track_collection (
	track_id INTEGER REFERENCES tracks(id),
	collection_id INTEGER REFERENCES collections(id),
	CONSTRAINT tc_pk PRIMARY KEY (track_id, collection_id)
);