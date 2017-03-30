CREATE TABLE musician(
  musician_id serial primary key,
  name varchar

);

CREATE TABLE album(
  album_id serial primary key,
  name varchar,
  year integer

);

CREATE TABLE track(
  track_id serial primary key,
  name varchar,
  duration numeric,
  year integer
);

CREATE TABLE song(
  song_id serial primary key,
  name varchar,
  year integer
);
