--------------------------------------------------------------------------------
---------------------------------- FLASHCARDS ----------------------------------
--------------------------------------------------------------------------------

-- Language Id 1: English

-- Flashcard 1: Asking questions - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image1.jpg', 1, 1, 1);

-- Answers for Flashcard 1 (Asking questions - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (1, 'name', TRUE),
       (1, 'age', FALSE),
       (1, 'color', FALSE),
       (1, 'food', FALSE);

-- Flashcard 2: Asking questions - French
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image1.jpg', 1, 1, 2);

-- Answers for Flashcard 2 (Asking questions - French)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (2, 'nom', TRUE),
       (2, 'âge', FALSE),
       (2, 'couleur', FALSE),
       (2, 'nourriture', FALSE);

-- Flashcard 3: Asking questions - Korean
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image1.jpg', 1, 1, 3);

-- Answers for Flashcard 3 (Asking questions - Korean)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (3, '이름', TRUE),
       (3, '나이', FALSE),
       (3, '색깔', FALSE),
       (3, '음식', FALSE);

-- Flashcard 4: Asking questions - Spanish
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image1.jpg', 1, 1, 4);

-- Answers for Flashcard 4 (Asking questions - Spanish)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (4, 'nombre', TRUE),
       (4, 'edad', FALSE),
       (4, 'color', FALSE),
       (4, 'comida', FALSE);

-- Flashcard 5: Asking questions - Japanese
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image1.jpg', 1, 1, 5);

-- Answers for Flashcard 5 (Asking questions - Japanese)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (5, '名前', TRUE),
       (5, '年齢', FALSE),
       (5, '色', FALSE),
       (5, '食べ物', FALSE);

-- Flashcard 6: Describing objects - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image2.jpg', 2, 2, 1);

-- Answers for Flashcard 6 (Describing objects - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (6, 'water', TRUE),
       (6, 'glass', FALSE),
       (6, 'bottle', FALSE),
       (6, 'drink', FALSE);

-- Flashcard 7: Using polite forms - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image3.jpg', 3, 3, 1);

-- Answers for Flashcard 7 (Using polite forms - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (7, 'please', TRUE),
       (7, 'thank you', FALSE),
       (7, 'excuse me', FALSE),
       (7, 'sorry', FALSE);

-- Flashcard 8: Making requests - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image4.jpg', 4, 4, 1);

-- Answers for Flashcard 8 (Making requests - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (8, 'help', TRUE),
       (8, 'please', FALSE),
       (8, 'assist', FALSE),
       (8, 'save', FALSE);

-- Flashcard 9: Giving directions - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image5.jpg', 5, 5, 1);

-- Answers for Flashcard 9 (Giving directions - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (9, 'left', TRUE),
       (9, 'right', FALSE),
       (9, 'straight', FALSE),
       (9, 'back', FALSE);

-- Flashcard 10: Talking about time - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image6.jpg', 6, 6, 1);

-- Answers for Flashcard 10 (Talking about time - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (10, '3', TRUE),
       (10, '2', FALSE),
       (10, '5', FALSE),
       (10, '7', FALSE);

-- Flashcard 11: Talking about future plans - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image7.jpg', 7, 7, 1);

-- Answers for Flashcard 11 (Talking about future plans - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (11, 'gym', TRUE),
       (11, 'school', FALSE),
       (11, 'office', FALSE),
       (11, 'party', FALSE);

-- Flashcard 12: Describing people - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image8.jpg', 8, 8, 1);

-- Answers for Flashcard 12 (Describing people - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (12, 'tall', TRUE),
       (12, 'short', FALSE),
       (12, 'thin', FALSE),
       (12, 'strong', FALSE);

-- Flashcard 13: Discussing daily routines - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image9.jpg', 9, 9, 1);

-- Answers for Flashcard 13 (Discussing daily routines - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (13, 'brush', TRUE),
       (13, 'eat', FALSE),
       (13, 'sleep', FALSE),
       (13, 'run', FALSE);

-- Flashcard 14: Writing formal emails - English
INSERT INTO "flashcards" ("image_url", "interest_id", "linguistic_concept_id", "language_id")
VALUES ('http://example.com/image10.jpg', 10, 10, 1);

-- Answers for Flashcard 14 (Writing formal emails - English)
INSERT INTO "answers" ("flashcard_id", "answer", "is_correct")
VALUES (14, 'writing', TRUE),
       (14, 'reading', FALSE),
       (14, 'speaking', FALSE),
       (14, 'listening', FALSE);


