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
