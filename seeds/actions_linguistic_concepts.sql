-- Beginner Level Actions

-- Action: Asking and telling time (ID: 1)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(1, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Question Formation')),
(1, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Time Expressions')),
(1, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Present Tense')),
(1, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
(1, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests')),
(1, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Numbers and Counting')),
(1, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Prepositions of Time'));

-- Action: Introducing yourself and others (ID: 2)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(2, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
(2, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Expressions')),
(2, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Formal and Informal Language'));

-- Action: Describe something (ID: 3)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(3, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Adjectives')),
(3, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Descriptive Phrases')),
(3, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences'));

-- Action: Greeting and making Small Talk (ID: 4)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(4, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
(4, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Expressions')),
(4, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Formal and Informal Language'));

-- Action: Talking about hobbies (ID: 5)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(5, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
(5, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Present Tense')),
(5, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Descriptive Phrases'));

-- Intermediate Level Actions

-- Action: Book a reservation (ID: 6)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(6, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests')),
(6, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Future Tense')),
(6, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
(6, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Time Expressions'));

-- Action: Asking for directions (ID: 7)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(7, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Question Formation')),
(7, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Prepositions of Place')),
(7, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Prepositions of Direction')),
(7, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests'));

-- Action: Tell a story (ID: 8)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(8, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Past Tense')),
(8, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Complex Sentences')),
(8, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Sequencing Words')),
(8, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Descriptive Phrases'));

-- Action: Ask information about a service or product (ID: 9)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(9, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Question Formation')),
(9, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests')),
(9, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences'));

-- Action: Ordering food (ID: 10)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(10, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests')),
(10, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
(10, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Present Tense'));

-- Action: Comparing objects or people (ID: 11)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(11, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Comparative Adjectives')),
(11, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Comparative Structures')),
(11, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences'));

-- Advanced Level Actions

-- Action: Bargaining (ID: 12)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(12, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Conditional Sentences')),
(12, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Negotiation Language')),
(12, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests'));

-- Action: Handling emergencies (ID: 13)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(13, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Imperative Sentences')),
(13, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
(13, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Expressing Urgency'));

-- Action: Asking and telling reasons why (ID: 14)
INSERT INTO "action_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
(14, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Causative Conjunctions')),
(14, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Complex Sentences')),
(14, (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Hypothetical Situations'));
