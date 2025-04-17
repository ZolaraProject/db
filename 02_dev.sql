-- Insert users
INSERT INTO "users" ("email", "password", "username", "role") VALUES ('admin', 'admin', 'admin', 'admin');
INSERT INTO "users" ("email", "password", "username") VALUES ('test1', 'test1', 'test1');
INSERT INTO "users" ("email", "password", "username") VALUES ('test2', 'test2', 'test2');
INSERT INTO "users" ("email", "password", "username") VALUES ('baptiste@test.fr', '$2a$14$m55hTXR3AEBvHMVGbfK7KuGcBPlSJRqYFIlf.Nq8LUTgk1h5n3.66', 'baptiste');
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

-- Insert simplified types
INSERT INTO "linguistic_types" ("lt_name") VALUES
                                               ('Grammar and Syntax'),
                                               ('Verb Tense and Aspect'),
                                               ('Vocabulary and Semantics'),
                                               ('Pragmatics and Politeness'),
                                               ('Functional Language');

-- Reset sequence
SELECT setval(pg_get_serial_sequence('linguistic_types', 'id'), coalesce((SELECT MAX(id) FROM linguistic_types), 0) + 1, false);

INSERT INTO report_types (report_type, criticality) VALUES
('inappropriate_content', 'low'),
('copyright_infringement', 'medium'),
('misinformation', 'medium'),
('spam', 'low'),
('harassment_or_bullying', 'high'),
('privacy_violation', 'medium'),
('hate_speech', 'high'),
('self_harm', 'high'),
('other', 'low');

-- Include additional seed files
\i /docker-entrypoint-initdb.d/seeds/interests.sql
\i /docker-entrypoint-initdb.d/seeds/linguistic_concepts.sql
\i /docker-entrypoint-initdb.d/seeds/actions.sql
\i /docker-entrypoint-initdb.d/seeds/flashcards.sql
\i /docker-entrypoint-initdb.d/seeds/gap_fills.sql
\i /docker-entrypoint-initdb.d/seeds/actions_linguistic_concepts.sql
\i /docker-entrypoint-initdb.d/seeds/videos_video_category.sql
\i /docker-entrypoint-initdb.d/seeds/demo_users.sql