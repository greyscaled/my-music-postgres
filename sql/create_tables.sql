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

-- CREATE TABLE RecordArtists
-- (
--   Recordid integer NOT NULL,
--   Artistid integer NOT NULL,
--   CONSTRAINT Recordid_fk
--     FOREIGN KEY (Recordid)
--     REFERENCES Records(id)
--     ON UPDATE CASCADE
--     ON DELETE CASCADE,
--   CONSTRAINT Artistid_fk
--     FOREIGN KEY (Artistid) 
--     REFERENCES Artists(id)
--     ON UPDATE CASCADE
--     ON DELETE CASCADE,
--   CONSTRAINT RecordArtists_pkey PRIMARY KEY (Recordid, Artistid)
-- );
