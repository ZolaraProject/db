INSERT INTO "users" ("email", "password", "username", "role") VALUES ('admin', 'admin', 'admin', 'admin');
INSERT INTO "users" ("email", "password", "username") VALUES ('test1', 'test1', 'test1');
INSERT INTO "users" ("email", "password", "username") VALUES ('test2', 'test2', 'test2');
SELECT setval(pg_get_serial_sequence('users', 'id'), coalesce((SELECT MAX(id) FROM users), 0) + 1, false);

INSERT INTO "actions" ("name") VALUES ('Book a room');
INSERT INTO "actions" ("name") VALUES ('Ask for directions');
INSERT INTO "actions" ("name") VALUES ('Order food');
INSERT INTO "actions" ("name") VALUES ('Make a phone call');
INSERT INTO "actions" ("name") VALUES ('Introduce yourself');
INSERT INTO "actions" ("name") VALUES ('Describe a person');
INSERT INTO "actions" ("name") VALUES ('Talk about your hobbies');
INSERT INTO "actions" ("name") VALUES ('Discuss weather');
INSERT INTO "actions" ("name") VALUES ('Schedule an appointment');
INSERT INTO "actions" ("name") VALUES ('Shop for groceries');
INSERT INTO "actions" ("name") VALUES ('Talk about your job');
INSERT INTO "actions" ("name") VALUES ('Ask for help');
INSERT INTO "actions" ("name") VALUES ('Describe an image');
INSERT INTO "actions" ("name") VALUES ('Write an email');
INSERT INTO "actions" ("name") VALUES ('Give directions');
SELECT setval(pg_get_serial_sequence('actions', 'id'), coalesce((SELECT MAX(id) FROM actions), 0) + 1, false);

INSERT INTO "interests" ("name") VALUES ('Football');
INSERT INTO "interests" ("name") VALUES ('Politics');
INSERT INTO "interests" ("name") VALUES ('Cinema');
INSERT INTO "interests" ("name") VALUES ('Music');
INSERT INTO "interests" ("name") VALUES ('Technology');
INSERT INTO "interests" ("name") VALUES ('Travel');
INSERT INTO "interests" ("name") VALUES ('Food');
INSERT INTO "interests" ("name") VALUES ('Literature');
INSERT INTO "interests" ("name") VALUES ('Science');
INSERT INTO "interests" ("name") VALUES ('Fitness');
INSERT INTO "interests" ("name") VALUES ('Gaming');
INSERT INTO "interests" ("name") VALUES ('Art');
INSERT INTO "interests" ("name") VALUES ('History');
INSERT INTO "interests" ("name") VALUES ('Fashion');
INSERT INTO "interests" ("name") VALUES ('Environment');
SELECT setval(pg_get_serial_sequence('interests', 'id'), coalesce((SELECT MAX(id) FROM interests), 0) + 1, false);

INSERT INTO "languages" ("name") VALUES ('English');
INSERT INTO "languages" ("name") VALUES ('French');
INSERT INTO "languages" ("name") VALUES ('Korean');
INSERT INTO "languages" ("name") VALUES ('Spanish');
INSERT INTO "languages" ("name") VALUES ('Japanese');
SELECT setval(pg_get_serial_sequence('languages', 'id'), coalesce((SELECT MAX(id) FROM languages), 0) + 1, false);

INSERT INTO "levels" ("proficiency") VALUES ('A1');
INSERT INTO "levels" ("proficiency") VALUES ('A2');
INSERT INTO "levels" ("proficiency") VALUES ('B1');
INSERT INTO "levels" ("proficiency") VALUES ('B2');
INSERT INTO "levels" ("proficiency") VALUES ('C1');
INSERT INTO "levels" ("proficiency") VALUES ('C2');
SELECT setval(pg_get_serial_sequence('levels', 'id'), coalesce((SELECT MAX(id) FROM levels), 0) + 1, false);

INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id") VALUES (1, 1, 5, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id") VALUES (1, 1, 5, 2);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id") VALUES (1, 2, 4, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id") VALUES (2, 3, 1, 2);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id") VALUES (2, 1, 3, 2);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id") VALUES (3, 4, 5, 3);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id") VALUES (3, 2, 3, 3);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id") VALUES (3, 5, 1, 2);

-- Insert into linguistic_types
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Communication Skill');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Phonetics');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Grammar');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Vocabulary');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Reading Strategy');
SELECT setval(pg_get_serial_sequence('linguistic_types', 'id'), coalesce((SELECT MAX(id) FROM linguistic_types), 0) + 1, false);

-- Insert into linguistic_concepts
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Asking questions', 1);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Describing objects', 1);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Using polite forms', 1);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Making requests', 1);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Giving directions', 1);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Talking about time', 1);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Talking about future plans', 1);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Describing people', 1);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Discussing daily routines', 1);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Writing formal emails', 1);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Pronunciation', 2);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Intonation', 2);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Grammar', 3);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Vocabulary', 4);
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES ('Using context clues', 5);
SELECT setval(pg_get_serial_sequence('linguistic_concepts', 'id'), coalesce((SELECT MAX(id) FROM linguistic_concepts), 0) + 1, false);

-- Insert into flashcards
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id") VALUES ('http://example.com/image1.jpg', 1, 1);
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id") VALUES ('http://example.com/image2.jpg', 2, 2);
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id") VALUES ('http://example.com/image3.jpg', 3, 3);
SELECT setval(pg_get_serial_sequence('flashcards', 'id'), coalesce((SELECT MAX(id) FROM flashcards), 0) + 1, false);

-- Insert into gap_fills
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id") VALUES ('The ___ is blue.', 1, 1);
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id") VALUES ('She likes to ___ every day.', 2, 2);
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id") VALUES ('He is very ___.', 3, 3);
SELECT setval(pg_get_serial_sequence('gap_fills', 'id'), coalesce((SELECT MAX(id) FROM gap_fills), 0) + 1, false);

-- Insert into answers
INSERT INTO "answers" ("gap_fill_id", "flashcard_id", "answer", "answer_order") VALUES (1, 1, 'sky', 1);
INSERT INTO "answers" ("gap_fill_id", "flashcard_id", "answer", "answer_order") VALUES (2, 2, 'run', 1);
INSERT INTO "answers" ("gap_fill_id", "flashcard_id", "answer", "answer_order") VALUES (3, 3, 'happy', 1);

-- Insert into user_profiles
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id") VALUES (1, 1, 1, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id") VALUES (2, 2, 2, 2);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id") VALUES (3, 3, 3, 3);

-- Linking existing users to new interests
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (1, 1); -- User 1 interested in Football
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (1, 4); -- User 1 also interested in Music
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (2, 2); -- User 2 interested in Politics
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (2, 6); -- User 2 also interested in Travel
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (3, 3); -- User 3 interested in Cinema
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (3, 7); -- User 3 also interested in Food

-- Insert into contents
INSERT INTO "contents" ("language_id") VALUES (1);
INSERT INTO "contents" ("language_id") VALUES (2);
INSERT INTO "contents" ("language_id") VALUES (3);
SELECT setval(pg_get_serial_sequence('contents', 'id'), coalesce((SELECT MAX(id) FROM contents), 0) + 1, false);

-- Insert into user_exercises
INSERT INTO "user_exercises" ("user_id", "flashcard_id", "gap_fill_id") VALUES (1, 1, 1);
INSERT INTO "user_exercises" ("user_id", "flashcard_id", "gap_fill_id") VALUES (2, 2, 2);
INSERT INTO "user_exercises" ("user_id", "flashcard_id", "gap_fill_id") VALUES (3, 3, 3);

-- Insert into user_mistakes
INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id", "level_id") VALUES (1, 1, 1);
INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id", "level_id") VALUES (2, 2, 2);
INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id", "level_id") VALUES (3, 3, 3);
SELECT setval(pg_get_serial_sequence('user_mistakes', 'id'), coalesce((SELECT MAX(id) FROM user_mistakes), 0) + 1, false);

-- Book a room
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 1);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (4, 1);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (3, 1);

-- Ask for directions
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 2);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (5, 2);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (11, 2);

-- Order food
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 3);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (4, 3);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 3);

-- Make a phone call
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 4);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (3, 4);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (12, 4);

-- Introduce yourself
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 5);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (8, 5);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 5);

-- Describe a person
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (2, 6);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (8, 6);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 6);

-- Talk about your hobbies
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 7);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (9, 7);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 7);

-- Discuss weather
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 8);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 8);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (15, 8);

-- Schedule an appointment
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 9);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (6, 9);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 9);

-- Shop for groceries
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 10);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (2, 10);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 10);

-- Talk about your job
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 11);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (9, 11);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 11);

-- Ask for help
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 12);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (4, 12);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (3, 12);

-- Describe an image
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (2, 13);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (8, 13);


-- Insert into contents_actions
INSERT INTO "contents_actions" ("action_id", "content_id", "interest_id") VALUES (1, 1, 1);
INSERT INTO "contents_actions" ("action_id", "content_id", "interest_id") VALUES (2, 2, 2);
INSERT INTO "contents_actions" ("action_id", "content_id", "interest_id") VALUES (3, 3, 3);
