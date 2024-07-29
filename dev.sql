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

-- Insert into flashcards
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id") VALUES
('http://example.com/image1.jpg', 1, 1, 1), -- Asking questions - English
('http://example.com/image1.jpg', 1, 1, 2), -- Asking questions - French
('http://example.com/image1.jpg', 1, 1, 3), -- Asking questions - Korean
('http://example.com/image2.jpg', 2, 2, 1), -- Describing objects
('http://example.com/image3.jpg', 3, 3, 1), -- Using polite forms
('http://example.com/image4.jpg', 4, 4, 1), -- Making requests
('http://example.com/image5.jpg', 5, 5, 1), -- Giving directions
('http://example.com/image6.jpg', 6, 6, 1), -- Talking about time
('http://example.com/image7.jpg', 7, 7, 1), -- Talking about future plans
('http://example.com/image8.jpg', 8, 8, 1), -- Describing people
('http://example.com/image9.jpg', 9, 9, 1), -- Discussing daily routines
('http://example.com/image10.jpg', 10, 10, 1); -- Writing formal emails
SELECT setval(pg_get_serial_sequence('flashcards', 'id'), coalesce((SELECT MAX(id) FROM flashcards), 0) + 1, false);

-- Insert into gap_fills with gaps
INSERT INTO "gap_fills" ("text", "interest_id", "linguistic_concept_id", "language_id") VALUES
('What is your ___?', 1, 1, 1), -- Asking questions - English
('Quel est ton ___?', 1, 1, 2), -- Asking questions - French
('Qual es tu ___?', 1, 1, 3), -- Asking questions - Espagnol
('The ___ is red.', 2, 2, 1), -- Describing objects
('Could you please ___ the door?', 3, 3, 1), -- Using polite forms
('Can you ___ me with this?', 4, 4, 1), -- Making requests
('Turn ___ at the next intersection.', 5, 5, 1), -- Giving directions
('It is ___ PM now.', 6, 6, 1), -- Talking about time
('I will go to the ___ tomorrow.', 7, 7, 1), -- Talking about future plans
('She is a ___ woman.', 8, 8, 1), -- Describing people
('Every morning, I ___ my teeth.', 9, 9, 1), -- Discussing daily routines
('Dear Sir or Madam, I am ___ to inquire about...', 10, 10, 1); -- Writing formal emails
SELECT setval(pg_get_serial_sequence('gap_fills', 'id'), coalesce((SELECT MAX(id) FROM gap_fills), 0) + 1, false);


-- Flashcard Id
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct") VALUES
(1, 'name', TRUE), -- Correct
(2, 'nom', TRUE),
(3, 'nome', TRUE);

-- Gap Fill 1: What is your ___?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct") VALUES
(1, 'name', TRUE), -- Correct
(1, 'age', FALSE),
(1, 'job', FALSE),
(1, 'city', FALSE),
(1, 'favorite color', FALSE),
(1, 'hobby', FALSE);

-- Gap Fill 2: The ___ is red.
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct") VALUES
(2, 'ball', TRUE), -- Correct
(2, 'car', FALSE),
(2, 'hat', FALSE),
(2, 'flower', FALSE),
(2, 'shirt', FALSE),
(2, 'rose', FALSE);

-- Gap Fill 3: Could you please ___ the door?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct") VALUES
(3, 'open', TRUE), -- Correct
(3, 'close', FALSE),
(3, 'paint', FALSE),
(3, 'fix', FALSE),
(3, 'clean', FALSE),
(3, 'lock', FALSE);

-- Gap Fill 4: Can you ___ me with this?
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct") VALUES
(4, 'help', TRUE), -- Correct
(4, 'give', FALSE),
(4, 'show', FALSE),
(4, 'tell', FALSE),
(4, 'find', FALSE),
(4, 'bring', FALSE);

-- Gap Fill 5: Turn ___ at the next intersection.
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct") VALUES
(5, 'left', TRUE), -- Correct
(5, 'right', FALSE),
(5, 'straight', FALSE),
(5, 'around', FALSE),
(5, 'near', FALSE),
(5, 'past', FALSE);

-- Gap Fill 6: It is ___ PM now.
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct") VALUES
(6, '3', TRUE), -- Correct
(6, '1', FALSE),
(6, '5', FALSE),
(6, '7', FALSE),
(6, '9', FALSE),
(6, '11', FALSE);

-- Gap Fill 7: I will go to the ___ tomorrow.
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct") VALUES
(7, 'gym', TRUE), -- Correct
(7, 'market', FALSE),
(7, 'school', FALSE),
(7, 'office', FALSE),
(7, 'park', FALSE),
(7, 'beach', FALSE);

-- Gap Fill 8: She is a ___ woman.
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct") VALUES
(8, 'tall', TRUE), -- Correct
(8, 'young', FALSE),
(8, 'kind', FALSE),
(8, 'smart', FALSE),
(8, 'beautiful', FALSE),
(8, 'strong', FALSE);

-- Gap Fill 9: Every morning, I ___ my teeth.
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct") VALUES
(9, 'brush', TRUE), -- Correct
(9, 'wash', FALSE),
(9, 'comb', FALSE),
(9, 'clean', FALSE),
(9, 'floss', FALSE),
(9, 'rinse', FALSE);

-- Gap Fill 10: Dear Sir or Madam, I am ___ to inquire about...
INSERT INTO "answers" ("gap_fill_id", "answer", "is_correct") VALUES
(10, 'writing', TRUE), -- Correct
(10, 'calling', FALSE),
(10, 'emailing', FALSE),
(10, 'texting', FALSE),
(10, 'meeting', FALSE),
(10, 'reporting', FALSE);

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

-- Insert into user_mistakes for user_id 1
INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id", "level_id") VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5);
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
