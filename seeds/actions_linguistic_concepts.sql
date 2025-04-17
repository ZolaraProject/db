-- ======================
-- Beginner Level Actions
-- ======================

-- Asking and telling time
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Question Formation')),
     ((SELECT id FROM "actions" WHERE name = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Present, Past & Future Tense')),
     ((SELECT id FROM "actions" WHERE name = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Numbers and Quantities')),
     ((SELECT id FROM "actions" WHERE name = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Prepositions')),
     ((SELECT id FROM "actions" WHERE name = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Politeness Strategies'));

-- Introducing yourself and others
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Introducing yourself and others'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Sentence Structure')),
     ((SELECT id FROM "actions" WHERE name = 'Introducing yourself and others'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Social Expressions')),
     ((SELECT id FROM "actions" WHERE name = 'Introducing yourself and others'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Politeness Strategies'));

-- Describe something
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Describe something'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Vocabulary for Description')),
     ((SELECT id FROM "actions" WHERE name = 'Describe something'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Sentence Structure'));

-- Greeting and making Small Talk
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Greeting and making Small Talk'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Social Expressions')),
     ((SELECT id FROM "actions" WHERE name = 'Greeting and making Small Talk'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Politeness Strategies'));

-- Talking about hobbies
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Talking about hobbies'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Vocabulary for Description')),
     ((SELECT id FROM "actions" WHERE name = 'Talking about hobbies'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Present, Past & Future Tense')),
     ((SELECT id FROM "actions" WHERE name = 'Talking about hobbies'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Sentence Structure'));



-- =========================
-- Intermediate Level Actions
-- =========================

-- Make a reservation
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Make a reservation'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Requests and Offers')),
     ((SELECT id FROM "actions" WHERE name = 'Make a reservation'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Politeness Strategies')),
     ((SELECT id FROM "actions" WHERE name = 'Make a reservation'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Functional Phrases'));

-- Asking for directions
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Asking for directions'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Question Formation')),
     ((SELECT id FROM "actions" WHERE name = 'Asking for directions'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Prepositions')),
     ((SELECT id FROM "actions" WHERE name = 'Asking for directions'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Functional Phrases'));

-- Tell a story
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Tell a story'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Present, Past & Future Tense')),
     ((SELECT id FROM "actions" WHERE name = 'Tell a story'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Progressive and Perfect Tense')),
     ((SELECT id FROM "actions" WHERE name = 'Tell a story'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Sentence Structure'));

-- Ask information about a service or product
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Ask information about a service or product'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Requests and Offers')),
     ((SELECT id FROM "actions" WHERE name = 'Ask information about a service or product'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Question Formation')),
     ((SELECT id FROM "actions" WHERE name = 'Ask information about a service or product'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Functional Phrases'));

-- Ordering food
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Ordering food'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Requests and Offers')),
     ((SELECT id FROM "actions" WHERE name = 'Ordering food'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Politeness Strategies')),
     ((SELECT id FROM "actions" WHERE name = 'Ordering food'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Functional Phrases'));

-- Comparing objects or people
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Comparing objects or people'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Comparisons')),
     ((SELECT id FROM "actions" WHERE name = 'Comparing objects or people'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Vocabulary for Description')),
     ((SELECT id FROM "actions" WHERE name = 'Comparing objects or people'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Sentence Structure'));



-- ======================
-- Advanced Level Actions
-- ======================

-- Bargaining
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Bargaining'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Requests and Offers')),
     ((SELECT id FROM "actions" WHERE name = 'Bargaining'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Comparisons')),
     ((SELECT id FROM "actions" WHERE name = 'Bargaining'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Politeness Strategies'));

-- Handling emergencies
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Handling emergencies'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Functional Phrases')),
     ((SELECT id FROM "actions" WHERE name = 'Handling emergencies'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Requests and Offers')),
     ((SELECT id FROM "actions" WHERE name = 'Handling emergencies'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Verb Modality'));

-- Asking and telling reasons why
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
     ((SELECT id FROM "actions" WHERE name = 'Asking and telling reasons why'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Question Formation')),
     ((SELECT id FROM "actions" WHERE name = 'Asking and telling reasons why'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Conditional Structures')),
     ((SELECT id FROM "actions" WHERE name = 'Asking and telling reasons why'), (SELECT id FROM "linguistic_concepts" WHERE lc_name = 'Sentence Structure'));
