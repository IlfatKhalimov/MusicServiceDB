create table if not exists albums (
	id SERIAL primary key,
	name VARCHAR(60) not null,
	release_year INTEGER not null
);

create table if not exists collections (
	id SERIAL primary key,
	name VARCHAR(60) not null,
	release_year INTEGER not null
);

create table if not exists singers (
	id SERIAL primary key,
	name VARCHAR(60) not null
);

create table if not exists category (
	id SERIAL primary key,
	name VARCHAR(60) not null
);

create table if not exists tracks (
	id SERIAL primary key,
	name VARCHAR(60) not null,
	duration time not null,
	album_id INTEGER not null references albums(id)
);

create table if not exists album_singer (
	album_id INTEGER references albums(id),
	singer_id INTEGER references singers(id),
	constraint pk primary key (album_id, singer_id)
);

create table if not exists singer_category (
	singer_id INTEGER references singers(id),
	category_id INTEGER references category(id),
	constraint sc_pk primary key (singer_id, category_id)
);

create table if not exists track_collection (
	track_id INTEGER references tracks(id),
	collection_id INTEGER references collections(id),
	constraint tc_pk primary key (track_id, collection_id)
);