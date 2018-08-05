CREATE TABLE Labels
(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL UNIQUE,
  bandcamp TEXT
);

CREATE TABLE Artists
(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL UNIQUE,
  website TEXT
);

CREATE TABLE Records
(
  id SERIAL PRIMARY KEY NOT NULL,
  title TEXT NOT NULL,
  artist INTEGER references Artists(id) NOT NULL,
  label INTEGER references Labels(id) NOT NULL,
  link TEXT,
  listened boolean NOT NULL DEFAULT false,
  liked boolean NOT NULL DEFAULT false,
  purchased boolean NOT NULL DEFAULT false
);
