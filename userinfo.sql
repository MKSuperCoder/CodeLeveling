BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" (
	"username"	TEXT,
	"password"	TEXT,
	"email"	TEXT,
	PRIMARY KEY("username")
);
COMMIT;
