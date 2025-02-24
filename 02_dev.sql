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
INSERT INTO "languages" ("name", "image_url") VALUES ('English', 'https://www.countryflags.io/gb/flat/64.png');
INSERT INTO "languages" ("name", "image_url") VALUES ('French', 'https://www.countryflags.io/fr/flat/64.png');
INSERT INTO "languages" ("name", "image_url") VALUES ('Korean', 'https://www.countryflags.io/kr/flat/64.png');
INSERT INTO "languages" ("name", "image_url") VALUES ('Spanish', 'https://www.countryflags.io/es/flat/64.png');
INSERT INTO "languages" ("name", "image_url") VALUES ('Japanese', 'https://www.countryflags.io/jp/flat/64.png');
SELECT setval(pg_get_serial_sequence('languages', 'id'), coalesce((SELECT MAX(id) FROM languages), 0) + 1, false);

-- Insert linguistic types
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Communication Skill');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Phonetics');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Grammar');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Vocabulary');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Reading Strategy');
SELECT setval(pg_get_serial_sequence('linguistic_types', 'id'), coalesce((SELECT MAX(id) FROM linguistic_types), 0) + 1, false);

-- Include additional seed files
\i /docker-entrypoint-initdb.d/seeds/interests.sql
\i /docker-entrypoint-initdb.d/seeds/linguistic_concepts.sql
\i /docker-entrypoint-initdb.d/seeds/actions.sql
\i /docker-entrypoint-initdb.d/seeds/flashcards.sql
\i /docker-entrypoint-initdb.d/seeds/gap_fills.sql
\i /docker-entrypoint-initdb.d/seeds/actions_linguistic_concepts.sql

-- Insert into user_profiles
INSERT INTO "user_profiles" ("user_id", "language_id", "action_id") VALUES (1, 1, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "action_id") VALUES (2, 2, 2);
INSERT INTO "user_profiles" ("user_id", "language_id", "action_id") VALUES (3, 3, 3);

-- Linking existing users to new interests
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (1, 1); -- User 1 interested in Football
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (1, 4); -- User 1 also interested in Music
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (2, 2); -- User 2 interested in Politics
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (2, 6); -- User 2 also interested in Travel
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (3, 3); -- User 3 interested in Cinema
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (3, 7); -- User 3 also interested in Food
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (4, 1); -- User 3 also interested in Food

-- Insert into user_mistakes for user_id 1
INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id") VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);
SELECT setval(pg_get_serial_sequence('user_mistakes', 'id'), coalesce((SELECT MAX(id) FROM user_mistakes), 0) + 1, false);

-- -- Insert videos
-- INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('2d8f9888-2185-4f98-8695-0764dc2643e3', 'The Story of The Greatest Robbery in Football History', 'test1', 0, 1);
-- INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('bc32e38e-32cf-456a-9607-7988caa8297d', 'About Football Again - History of the Game', 'test2', 0, 1);
-- INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('b8c609a8-27e4-41d2-8b5f-cea129001aac', 'English Fan Experience', 'test3', 0, 1);
-- INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('ac538fa6-8bc6-457c-bd16-833b1a7690b6', 'English Football League： EFL Warns Against Early Football Return', 'test4', 0, 1);
-- INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('8190ab4c-7595-491b-b40b-c8be506376c9', 'How 1 Man Rewrote English Football', 'test5', 0, 1);
-- INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('fa070d1f-57ae-43fc-82b9-0a070808f256', 'Why England Struggles To Win Trophies ', 'test6', 0, 1);

-- -- Fake profile for DemoUser -- User_id = 5
-- INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (1, 1);
-- INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id") VALUES (1, 5);
-- INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id") VALUES (2, 5);
-- INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id") VALUES (3, 5);
-- INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id") VALUES (4, 5);
-- INSERT INTO "user_profiles" ("user_id", "language_id", "action_id") VALUES (5, 1, 1);
-- INSERT INTO "user_profiles" ("user_id", "language_id", "action_id") VALUES (5, 1, 2);
-- INSERT INTO "user_profiles" ("user_id", "language_id", "action_id") VALUES (5, 1, 3);
-- INSERT INTO "user_activity" ("id", "user_id", "current_language_id") VALUES (2, 5, 1);


-- -- Define language to user
-- INSERT INTO "user_activity" ("id", "user_id", "current_language_id") VALUES (1, 4, 1);


-- -- Connect  video to user
-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('2d8f9888-2185-4f98-8695-0764dc2643e3', 4);
-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('bc32e38e-32cf-456a-9607-7988caa8297d', 4);
-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('b8c609a8-27e4-41d2-8b5f-cea129001aac', 4);
-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('ac538fa6-8bc6-457c-bd16-833b1a7690b6', 4);
-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('8190ab4c-7595-491b-b40b-c8be506376c9', 4);
-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('fa070d1f-57ae-43fc-82b9-0a070808f256', 4);

-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('2d8f9888-2185-4f98-8695-0764dc2643e3', 5);
-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('bc32e38e-32cf-456a-9607-7988caa8297d', 5);
-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('b8c609a8-27e4-41d2-8b5f-cea129001aac', 5);
-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('ac538fa6-8bc6-457c-bd16-833b1a7690b6', 5);
-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('8190ab4c-7595-491b-b40b-c8be506376c9', 5);
-- INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('fa070d1f-57ae-43fc-82b9-0a070808f256', 5);

-- Update image_url for actions
UPDATE "actions"
SET "image_url" = CONCAT('https://your-hosting-service.com/images/actions/',
                         LOWER(REPLACE(REPLACE("name", ' ', '_'), '''', '')),
                         '.jpg');

-- Update image_url for interests
UPDATE "interests"
SET "image_url" = CONCAT('https://your-hosting-service.com/images/interests/',
                         LOWER(REPLACE(REPLACE("name", ' ', '_'), '''', '')),
                         '.jpg');

-- Update image_url for languages
UPDATE "languages"
SET "image_url" = CONCAT('https://your-hosting-service.com/images/languages/',
                         LOWER(REPLACE(REPLACE("name", ' ', '_'), '''', '')),
                         '.jpg');