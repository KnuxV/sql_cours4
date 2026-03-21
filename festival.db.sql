BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "artistes" (
	"id"	INTEGER,
	"nom"	TEXT,
	"cachet"	INTEGER,
	"genre"	TEXT
);
CREATE TABLE IF NOT EXISTS "concerts" (
	"id"	INTEGER,
	"id_scene"	INTEGER,
	"id_artiste"	INTEGER,
	"debut"	NUMERIC
);
CREATE TABLE IF NOT EXISTS "scenes" (
	"id"	INTEGER,
	"capacite"	INTEGER,
	"nom"	TEXT
);
COMMIT;
