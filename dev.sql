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
INSERT INTO "actions" ("name") VALUES ('Talk about your family');
INSERT INTO "actions" ("name") VALUES ('Talk about your friends');
INSERT INTO "actions" ("name") VALUES ('Talk about your daily routine');
INSERT INTO "actions" ("name") VALUES ('Talk about your future plans');
INSERT INTO "actions" ("name") VALUES ('Talk about your past experiences');
INSERT INTO "actions" ("name") VALUES ('Make a speech');
INSERT INTO "actions" ("name") VALUES ('Talk about your dreams');
INSERT INTO "actions" ("name") VALUES ('Talk about your fears');
INSERT INTO "actions" ("name") VALUES ('Talk about your goals');
INSERT INTO "actions" ("name") VALUES ('Talk about your achievements');
INSERT INTO "actions" ("name") VALUES ('Talk about your failures');
INSERT INTO "actions" ("name") VALUES ('Talk about your strengths');
INSERT INTO "actions" ("name") VALUES ('Talk about your weaknesses');
INSERT INTO "actions" ("name") VALUES ('Talk about your favorite things');
INSERT INTO "actions" ("name") VALUES ('Talk about your least favorite things');
INSERT INTO "actions" ("name") VALUES ('Talk about your favorite places');
INSERT INTO "actions" ("name") VALUES ('Talk about your least favorite places');
INSERT INTO "actions" ("name") VALUES ('Talk about your favorite activities');
INSERT INTO "actions" ("name") VALUES ('Talk about your least favorite activities');
INSERT INTO "actions" ("name") VALUES ('Talk about your favorite foods');
INSERT INTO "actions" ("name") VALUES ('Talk about your least favorite foods');
INSERT INTO "actions" ("name") VALUES ('Talk about your favorite drinks');
INSERT INTO "actions" ("name") VALUES ('Talk about your least favorite drinks');
SELECT setval(pg_get_serial_sequence('actions', 'id'), coalesce((SELECT MAX(id) FROM actions), 0) + 1, false);

INSERT INTO "levels" ("name") VALUES ('A1');
INSERT INTO "levels" ("name") VALUES ('A2');
INSERT INTO "levels" ("name") VALUES ('B1');
INSERT INTO "levels" ("name") VALUES ('B2');
INSERT INTO "levels" ("name") VALUES ('C1');
INSERT INTO "levels" ("name") VALUES ('C2');
SELECT setval(pg_get_serial_sequence('levels', 'id'), coalesce((SELECT MAX(id) FROM levels), 0) + 1, false);

INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 1, '__ simply');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 2, '__ less simply');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 3, '__ a bit more complex');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 4, '__ more complex');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 5, '__ very complex');

INSERT INTO "interests" ("name") VALUES ('Sports');
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

INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (1, 1, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (1, 1, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (1, 2, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (2, 3, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (2, 1, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (3, 4, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (3, 2, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (3, 5, 2);

-- Insert into linguistic_types
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Communication Skill');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Phonetics');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Grammar');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Vocabulary');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Reading Strategy');
SELECT setval(pg_get_serial_sequence('linguistic_types', 'id'), coalesce((SELECT MAX(id) FROM linguistic_types), 0) + 1, false);

-- Insert into linguistic_concepts
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES
('Asking questions', 1),
('Describing objects', 1),
('Using polite forms', 1),
('Making requests', 1),
('Giving directions', 1),
('Talking about time', 1),
('Talking about future plans', 1),
('Describing people', 1),
('Discussing daily routines', 1),
('Writing formal emails', 1),
('Pronunciation', 2),
('Intonation', 2),
('Grammar', 3),
('Vocabulary', 4),
('Using context clues', 5);
SELECT setval(pg_get_serial_sequence('linguistic_concepts', 'id'), coalesce((SELECT MAX(id) FROM linguistic_concepts), 0) + 1, false);

--------------------------------------------------------------------------------
---------------------------------- FLASHCARDS ----------------------------------
--------------------------------------------------------------------------------

-- Insert into flashcards and answers
-- Flashcard 1: Asking questions - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image1.jpg', 1, 1, 1);

-- Answers for Flashcard 1 (Asking questions - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (1, 'name', TRUE);

-- Flashcard 2: Asking questions - French
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image1.jpg', 1, 1, 2);

-- Answers for Flashcard 2 (Asking questions - French)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (2, 'nom', TRUE);

-- Flashcard 3: Asking questions - Korean
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image1.jpg', 1, 1, 3);

-- Answers for Flashcard 3 (Asking questions - Korean)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (3, '이름', TRUE);

-- Flashcard 4: Asking questions - Spanish
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image1.jpg', 1, 1, 4);

-- Answers for Flashcard 4 (Asking questions - Spanish)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (4, 'nombre', TRUE);

-- Flashcard 5: Asking questions - Japanese
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image1.jpg', 1, 1, 5);

-- Answers for Flashcard 5 (Asking questions - Japanese)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (5, '名前', TRUE);

-- Flashcard 6: Describing objects - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image2.jpg', 2, 2, 1);

-- Answers for Flashcard 6 (Describing objects - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (6, 'water', TRUE);

-- Flashcard 7: Using polite forms - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image3.jpg', 3, 3, 1);

-- Answers for Flashcard 7 (Using polite forms - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (7, 'please', TRUE);

-- Flashcard 8: Making requests - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image4.jpg', 4, 4, 1);

-- Answers for Flashcard 8 (Making requests - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (8, 'help', TRUE);

-- Flashcard 9: Giving directions - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image5.jpg', 5, 5, 1);

-- Answers for Flashcard 9 (Giving directions - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (9, 'left', TRUE);

-- Flashcard 10: Talking about time - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image6.jpg', 6, 6, 1);

-- Answers for Flashcard 10 (Talking about time - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (10, '3', TRUE);

-- Flashcard 11: Talking about future plans - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image7.jpg', 7, 7, 1);

-- Answers for Flashcard 11 (Talking about future plans - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (11, 'gym', TRUE);

-- Flashcard 12: Describing people - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image8.jpg', 8, 8, 1);

-- Answers for Flashcard 12 (Describing people - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (12, 'tall', TRUE);

-- Flashcard 13: Discussing daily routines - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image9.jpg', 9, 9, 1);

-- Answers for Flashcard 13 (Discussing daily routines - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (13, 'brush', TRUE);

-- Flashcard 14: Writing formal emails - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image10.jpg', 10, 10, 1);

-- Answers for Flashcard 14 (Writing formal emails - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (14, 'writing', TRUE);


-------------------------------------------------------------------------------
---------------------------------- GAP FILLS ----------------------------------
-------------------------------------------------------------------------------

-- Insert into gap_fills and answers

--linguistic_concept_id 1: Asking questions
-- Gap Fill 1: What ___ your ___?
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('What ___ your ___?', NULL, 1, 1);

-- Answers for Gap Fill 1: What ___ your ___?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct", "answer_order")
VALUES (1, 'is', TRUE, 1),
       (1, 'name', TRUE, 2),
       (1, 'do', FALSE, NULL),
       (1, 'table', FALSE, NULL),
       (1, 'chair', FALSE, NULL),
       (1, 'crib', FALSE, NULL);

-- Gap Fill 2: ___ is your ___?
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('___ is your ___?', NULL, 1, 1);

-- Answers for Gap Fill 2: ___ is your ___?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct", "answer_order")
VALUES (2, 'What', TRUE, 1),
       (2, 'name', TRUE, 2),
       (2, 'is', FALSE, NULL),
       (2, 'did', FALSE, NULL),
       (2, 'chair', FALSE, NULL),
       (2, 'crib', FALSE, NULL);

-- Gap Fill 3: ___ is your name?
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('___ ___ your name?', NULL, 1, 1);

-- Answers for Gap Fill 3: ___ ___ your name?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct", "answer_order")
VALUES (3, 'What', TRUE, 1),
       (3, 'is', TRUE, 2),
       (3, 'your', FALSE, NULL),
       (3, 'name', FALSE, NULL),
       (3, 'job', FALSE, NULL),
       (3, 'chair', FALSE, NULL);

-- Gap Fill 4: How ___ your ___?
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('How ___ your ___?', NULL, 1, 1);

-- Answers for Gap Fill 4: How ___ your ___?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct", "answer_order")
VALUES (4, 'are', TRUE, 1),
       (4, 'parents', TRUE, 2),
       (4, 'does', FALSE, NULL),
       (4, 'dog', FALSE, NULL),
       (4, 'book', FALSE, NULL),
       (4, 'room', FALSE, NULL);

-- Gap Fill 5: Can ___ help ___ please ?
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('Can ___ help ___ please ?', NULL, 1, 1);

-- Answers for Gap Fill 5: Can ___ help ___ please ?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct", "answer_order")
VALUES (5, 'you', TRUE, 1),
       (5, 'me', TRUE, 2),
       (5, 'must', FALSE, NULL),
       (5, 'job', FALSE, NULL),
       (5, 'doing', FALSE, NULL),
       (5, 'great', FALSE, NULL);

-- Gap Fill 6: ___ you ___ Lionel Messi?
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('___ you ___ Lionel Messi?', 1, 1, 1);

-- Answers for Gap Fill 6: ___ you ___ Lionel Messi?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct", "answer_order")
VALUES (6, 'Do', TRUE, 1),
       (6, 'like', TRUE, 2),
       (6, 'are', FALSE, NULL),
       (6, 'name', FALSE, NULL),
       (6, 'doing', FALSE, NULL),
       (6, 'great', FALSE, NULL);

-- Gap Fill 7: ___ you ___ to the cinema?
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('___ you ___ to the cinema?', 3, 1, 1);

-- Answers for Gap Fill 7: ___ you ___ to the cinema?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct", "answer_order")
VALUES (7, 'Do', TRUE, 1),
       (7, 'go', TRUE, 2),
       (7, 'are', FALSE, NULL),
       (7, 'name', FALSE, NULL),
       (7, 'doing', FALSE, NULL),
       (7, 'great', FALSE, NULL);

-- Gap Fill 8: ___ you ___ to the gym?
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('___ you ___ to the gym?', 1, 1, 1);

-- Answers for Gap Fill 8: ___ you ___ to the gym?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct", "answer_order")
VALUES (8, 'Do', TRUE, 1),
       (8, 'go', TRUE, 2),
       (8, 'are', FALSE, NULL),
       (8, 'name', FALSE, NULL),
       (8, 'doing', FALSE, NULL),
       (8, 'great', FALSE, NULL);

-- Gap Fill 9: Have you ___ been ___ Greece ?
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('Have you ___ been ___ Greece ?', 6, 1, 1);

-- Answers for Gap Fill 9: Have you ___ been ___ Greece ?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct", "answer_order")
VALUES (9, 'ever', TRUE, 1),
       (9, 'to', TRUE, 2),
       (9, 'are', FALSE, NULL),
       (9, 'name', FALSE, NULL),
       (9, 'doing', FALSE, NULL),
       (9, 'great', FALSE, NULL);

-- Gap Fill 10: __ you ___ go to ___ Basketball with your friends?
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('___ you ___ go to ___ Basketball with your friends?', 1, 1, 1);

-- Answers for Gap Fill 10: __ you ___ go to ___ Basketball with your friends?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct", "answer_order")
VALUES (10, 'Do', TRUE, 1),
       (10, 'sometimes', TRUE, 2),
       (10, 'play', TRUE, 3),
       (10, 'are', FALSE, NULL),
       (10, 'name', FALSE, NULL),
       (10, 'doing', FALSE, NULL);

-- Insert into user_profiles
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (1, 1, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (2, 2, 2);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (3, 3, 3);

-- Linking existing users to new interests
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (1, 1); -- User 1 interested in Football
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (1, 4); -- User 1 also interested in Music
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (2, 2); -- User 2 interested in Politics
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (2, 6); -- User 2 also interested in Travel
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (3, 3); -- User 3 interested in Cinema
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (3, 7); -- User 3 also interested in Food

-- Insert into user_mistakes for user_id 1
INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id") VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);
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

-- Insert videos
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES (1, 'test1', 'test1', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES (2, 'test2', 'test2', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES (3, 'test3', 'test3', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES (4, 'test4', 'test4', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES (5, 'test5', 'test5', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES (6, 'test6', 'test6', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES (7, 'test7', 'test7', 0, 2);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES (8, 'test8', 'test8', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES (9, 'test9', 'test9', 0, 1);

-- Insert video categories
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES (1, 2,  NULL);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES (2, 2,  NULL);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES (3, 2,  NULL);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES (4, 2,  NULL);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES ( 2,  1,NULL);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES (6, 2,  NULL);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES (7, 1,  NULL);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES (8, 1,  NULL);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES (9, 2,  NULL);
