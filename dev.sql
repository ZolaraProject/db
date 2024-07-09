INSERT INTO "users" ("id", "email", "password", "username") VALUES (1, 'test0', 'test0', 'test0');
INSERT INTO "users" ("id", "email", "password", "username") VALUES (2, 'test1', 'test1', 'test1');
INSERT INTO "users" ("id", "email", "password", "username") VALUES (3, 'test2', 'test2', 'test2');
SELECT setval(pg_get_serial_sequence('users', 'id'), coalesce((SELECT MAX(id) FROM users), 0) + 1, false);

INSERT INTO "actions" ("id", "name") VALUES (1, 'Book a room');
INSERT INTO "actions" ("id", "name") VALUES (2, 'Ask for directions');
INSERT INTO "actions" ("id", "name") VALUES (3, 'Order food');
INSERT INTO "actions" ("id", "name") VALUES (4, 'Make a phone call');
INSERT INTO "actions" ("id", "name") VALUES (5, 'Introduce yourself');
INSERT INTO "actions" ("id", "name") VALUES (6, 'Describe a person');
INSERT INTO "actions" ("id", "name") VALUES (7, 'Talk about your hobbies');
INSERT INTO "actions" ("id", "name") VALUES (8, 'Discuss weather');
INSERT INTO "actions" ("id", "name") VALUES (9, 'Schedule an appointment');
INSERT INTO "actions" ("id", "name") VALUES (10, 'Shop for groceries');
INSERT INTO "actions" ("id", "name") VALUES (11, 'Talk about your job');
INSERT INTO "actions" ("id", "name") VALUES (12, 'Ask for help');
INSERT INTO "actions" ("id", "name") VALUES (13, 'Describe an image');
INSERT INTO "actions" ("id", "name") VALUES (14, 'Write an email');
INSERT INTO "actions" ("id", "name") VALUES (15, 'Give directions');
SELECT setval(pg_get_serial_sequence('actions', 'id'), coalesce((SELECT MAX(id) FROM actions), 0) + 1, false);

INSERT INTO "interests" ("id", "name") VALUES (1, 'Football');
INSERT INTO "interests" ("id", "name") VALUES (2, 'Politics');
INSERT INTO "interests" ("id", "name") VALUES (3, 'Cinema');
INSERT INTO "interests" ("id", "name") VALUES (4, 'Music');
INSERT INTO "interests" ("id", "name") VALUES (5, 'Technology');
INSERT INTO "interests" ("id", "name") VALUES (6, 'Travel');
INSERT INTO "interests" ("id", "name") VALUES (7, 'Food');
INSERT INTO "interests" ("id", "name") VALUES (8, 'Literature');
INSERT INTO "interests" ("id", "name") VALUES (9, 'Science');
INSERT INTO "interests" ("id", "name") VALUES (10, 'Fitness');
INSERT INTO "interests" ("id", "name") VALUES (11, 'Gaming');
INSERT INTO "interests" ("id", "name") VALUES (12, 'Art');
INSERT INTO "interests" ("id", "name") VALUES (13, 'History');
INSERT INTO "interests" ("id", "name") VALUES (14, 'Fashion');
INSERT INTO "interests" ("id", "name") VALUES (15, 'Environment');
SELECT setval(pg_get_serial_sequence('interests', 'id'), coalesce((SELECT MAX(id) FROM interests), 0) + 1, false);

INSERT INTO "languages" ("id", "name") VALUES (1, 'English');
INSERT INTO "languages" ("id", "name") VALUES (2, 'French');
INSERT INTO "languages" ("id", "name") VALUES (3, 'Korean');
INSERT INTO "languages" ("id", "name") VALUES (4, 'Spanish');
INSERT INTO "languages" ("id", "name") VALUES (5, 'Japanese');
SELECT setval(pg_get_serial_sequence('languages', 'id'), coalesce((SELECT MAX(id) FROM languages), 0) + 1, false);

INSERT INTO "levels" ("id", "proficiency") VALUES (1, 'A1');
INSERT INTO "levels" ("id", "proficiency") VALUES (2, 'A2');
INSERT INTO "levels" ("id", "proficiency") VALUES (3, 'B1');
INSERT INTO "levels" ("id", "proficiency") VALUES (4, 'B2');
INSERT INTO "levels" ("id", "proficiency") VALUES (5, 'C1');
INSERT INTO "levels" ("id", "proficiency") VALUES (6, 'C2');
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
INSERT INTO "linguistic_types" ("id", "lt_name") VALUES (1, 'Communication Skill');
INSERT INTO "linguistic_types" ("id", "lt_name") VALUES (2, 'Phonetics');
INSERT INTO "linguistic_types" ("id", "lt_name") VALUES (3, 'Grammar');
INSERT INTO "linguistic_types" ("id", "lt_name") VALUES (4, 'Vocabulary');
INSERT INTO "linguistic_types" ("id", "lt_name") VALUES (5, 'Reading Strategy');
SELECT setval(pg_get_serial_sequence('linguistic_types', 'id'), coalesce((SELECT MAX(id) FROM linguistic_types), 0) + 1, false);

-- Insert into linguistic_concepts
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (1, 'Asking questions', 1);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (2, 'Describing objects', 1);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (3, 'Using polite forms', 1);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (4, 'Making requests', 1);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (5, 'Giving directions', 1);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (6, 'Talking about time', 1);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (7, 'Talking about future plans', 1);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (8, 'Describing people', 1);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (9, 'Discussing daily routines', 1);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (10, 'Writing formal emails', 1);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (11, 'Pronunciation', 2);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (12, 'Intonation', 2);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (13, 'Grammar', 3);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (14, 'Vocabulary', 4);
INSERT INTO "linguistic_concepts" ("id", "lc_name", "linguistic_type_id") VALUES (15, 'Using context clues', 5);
SELECT setval(pg_get_serial_sequence('linguistic_concepts', 'id'), coalesce((SELECT MAX(id) FROM linguistic_concepts), 0) + 1, false);

-- Insert into flashcards
INSERT INTO "flashcards" ("id", "image_url", "interest_id", "linguistic_concept_id") VALUES (1, 'http://example.com/image1.jpg', 1, 1);
INSERT INTO "flashcards" ("id", "image_url", "interest_id", "linguistic_concept_id") VALUES (2, 'http://example.com/image2.jpg', 2, 2);
INSERT INTO "flashcards" ("id", "image_url", "interest_id", "linguistic_concept_id") VALUES (3, 'http://example.com/image3.jpg', 3, 3);
SELECT setval(pg_get_serial_sequence('flashcards', 'id'), coalesce((SELECT MAX(id) FROM flashcards), 0) + 1, false);

-- Insert into gap_fills
INSERT INTO "gap_fills" ("id", "text", "interest_id", "linguistic_concept_id") VALUES (1, 'The ___ is blue.', 1, 1);
INSERT INTO "gap_fills" ("id", "text", "interest_id", "linguistic_concept_id") VALUES (2, 'She likes to ___ every day.', 2, 2);
INSERT INTO "gap_fills" ("id", "text", "interest_id", "linguistic_concept_id") VALUES (3, 'He is very ___.', 3, 3);
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
INSERT INTO "users_interests" ("user_id", "interest_id") VALUES (1, 1); -- User 1 interested in Football
INSERT INTO "users_interests" ("user_id", "interest_id") VALUES (1, 4); -- User 1 also interested in Music
INSERT INTO "users_interests" ("user_id", "interest_id") VALUES (2, 2); -- User 2 interested in Politics
INSERT INTO "users_interests" ("user_id", "interest_id") VALUES (2, 6); -- User 2 also interested in Travel
INSERT INTO "users_interests" ("user_id", "interest_id") VALUES (3, 3); -- User 3 interested in Cinema
INSERT INTO "users_interests" ("user_id", "interest_id") VALUES (3, 7); -- User 3 also interested in Food

-- Insert into contents
INSERT INTO "contents" ("id", "language_id") VALUES (1, 1);
INSERT INTO "contents" ("id", "language_id") VALUES (2, 2);
INSERT INTO "contents" ("id", "language_id") VALUES (3, 3);
SELECT setval(pg_get_serial_sequence('contents', 'id'), coalesce((SELECT MAX(id) FROM contents), 0) + 1, false);

-- Insert into users_exercises
INSERT INTO "users_exercises" ("user_id", "flashcard_id", "gap_fill_id") VALUES (1, 1, 1);
INSERT INTO "users_exercises" ("user_id", "flashcard_id", "gap_fill_id") VALUES (2, 2, 2);
INSERT INTO "users_exercises" ("user_id", "flashcard_id", "gap_fill_id") VALUES (3, 3, 3);

-- Insert into user_mistakes
INSERT INTO "user_mistakes" ("id", "linguistic_concept_id", "user_id", "level_id") VALUES (1, 1, 1, 1);
INSERT INTO "user_mistakes" ("id", "linguistic_concept_id", "user_id", "level_id") VALUES (2, 2, 2, 2);
INSERT INTO "user_mistakes" ("id", "linguistic_concept_id", "user_id", "level_id") VALUES (3, 3, 3, 3);
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

-- Insert into events
INSERT INTO "events" ("id", "user_id", "event_type", "message") VALUES (1, 1, 'CREATE', 'User 1 created');
INSERT INTO "events" ("id", "user_id", "event_type", "message") VALUES (2, 2, 'UPDATE', 'User 2 updated');
INSERT INTO "events" ("id", "user_id", "event_type", "message") VALUES (3, 3, 'DELETE', 'User 3 deleted');
SELECT setval(pg_get_serial_sequence('events', 'id'), coalesce((SELECT MAX(id) FROM events), 0) + 1, false);
