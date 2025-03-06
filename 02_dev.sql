-- Insert users
INSERT INTO "users" ("email", "password", "username", "role") VALUES ('admin', 'admin', 'admin', 'admin');
INSERT INTO "users" ("email", "password", "username") VALUES ('test1', 'test1', 'test1');
INSERT INTO "users" ("email", "password", "username") VALUES ('test2', 'test2', 'test2');
INSERT INTO "users" ("email", "password", "username") VALUES ('baptiste@test.fr', '$2a$14$m55hTXR3AEBvHMVGbfK7KuGcBPlSJRqYFIlf.Nq8LUTgk1h5n3.66', 'baptiste');
INSERT INTO "users" ("email", "password", "username") VALUES ('demouser@demouser.demo', '$2y$14$u0n/MIOTbHTh5Lrp1uz4sODAPMme02uOkxsiwmqYx8RTS3HLW.XR2', 'DemoUser');
SELECT setval(pg_get_serial_sequence('users', 'id'), coalesce((SELECT MAX(id) FROM users), 0) + 1, false);

-- Insert levels
INSERT INTO "levels" ("name") VALUES ('Beginner');
INSERT INTO "levels" ("name") VALUES ('Intermediate');
INSERT INTO "levels" ("name") VALUES ('Advanced');
SELECT setval(pg_get_serial_sequence('levels', 'id'), coalesce((SELECT MAX(id) FROM levels), 0) + 1, false);

-- Insert languages
INSERT INTO "languages" ("name", "image_url", "is_available") VALUES ('English', 'english-flag.svg', TRUE);
INSERT INTO "languages" ("name", "image_url", "is_available") VALUES ('French', 'french-flag.svg', TRUE);
INSERT INTO "languages" ("name", "image_url", "is_available") VALUES ('Korean', 'korean-flag.svg', FALSE);
INSERT INTO "languages" ("name", "image_url", "is_available") VALUES ('Spanish', 'spanish-flag.svg', FALSE);
INSERT INTO "languages" ("name", "image_url", "is_available") VALUES ('Japanese', 'japan-flag.svg', FALSE);
SELECT setval(pg_get_serial_sequence('languages', 'id'), coalesce((SELECT MAX(id) FROM languages), 0) + 1, false);

-- Insert linguistic types
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Sentence Construction');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Question and Request Formation');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Tense and Time');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Comparison and Contrast');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Conditional and Causative');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Numbers and Counting');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Negation and Modality');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Politeness and Social Norms');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Descriptive Language');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Prepositions and Place');
SELECT setval(pg_get_serial_sequence('linguistic_types', 'id'), coalesce((SELECT MAX(id) FROM linguistic_types), 0) + 1, false);


-- Include additional seed files
\i /docker-entrypoint-initdb.d/seeds/interests.sql
\i /docker-entrypoint-initdb.d/seeds/linguistic_concepts.sql
\i /docker-entrypoint-initdb.d/seeds/actions.sql
\i /docker-entrypoint-initdb.d/seeds/flashcards.sql
\i /docker-entrypoint-initdb.d/seeds/gap_fills.sql
\i /docker-entrypoint-initdb.d/seeds/actions_linguistic_concepts.sql
\i /docker-entrypoint-initdb.d/seeds/videos_video_category.sql