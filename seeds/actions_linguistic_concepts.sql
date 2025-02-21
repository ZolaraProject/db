-- Beginner Level Actions

-- Action: Asking and telling time
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Question Formation')),
((SELECT id FROM "actions" WHERE "name" = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Time Expressions')),
((SELECT id FROM "actions" WHERE "name" = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Present Tense')),
((SELECT id FROM "actions" WHERE "name" = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
((SELECT id FROM "actions" WHERE "name" = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests')),
((SELECT id FROM "actions" WHERE "name" = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Numbers and Counting')),
((SELECT id FROM "actions" WHERE "name" = 'Asking and telling time'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Prepositions of Time'));

-- Action: Introducing yourself and others
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Introducing yourself and others'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
((SELECT id FROM "actions" WHERE "name" = 'Introducing yourself and others'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Expressions')),
((SELECT id FROM "actions" WHERE "name" = 'Introducing yourself and others'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Formal and Informal Language'));

-- Action: Describe something
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Describe something'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Adjectives')),
((SELECT id FROM "actions" WHERE "name" = 'Describe something'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Descriptive Phrases')),
((SELECT id FROM "actions" WHERE "name" = 'Describe something'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences'));

-- Action: Greeting and making Small Talk
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Greeting and making Small Talk'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
((SELECT id FROM "actions" WHERE "name" = 'Greeting and making Small Talk'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Expressions')),
((SELECT id FROM "actions" WHERE "name" = 'Greeting and making Small Talk'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Formal and Informal Language'));

-- Action: Talking about hobbies
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Talking about hobbies'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
((SELECT id FROM "actions" WHERE "name" = 'Talking about hobbies'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Present Tense')),
((SELECT id FROM "actions" WHERE "name" = 'Talking about hobbies'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Descriptive Phrases'));

-- Intermediate Level Actions

-- Action: Book a reservation
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Book a reservation'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests')),
((SELECT id FROM "actions" WHERE "name" = 'Book a reservation'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Future Tense')),
((SELECT id FROM "actions" WHERE "name" = 'Book a reservation'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
((SELECT id FROM "actions" WHERE "name" = 'Book a reservation'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Time Expressions'));

-- Action: Asking for directions
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Asking for directions'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Question Formation')),
((SELECT id FROM "actions" WHERE "name" = 'Asking for directions'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Prepositions of Place')),
((SELECT id FROM "actions" WHERE "name" = 'Asking for directions'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Prepositions of Direction')),
((SELECT id FROM "actions" WHERE "name" = 'Asking for directions'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests'));

-- Action: Tell a story
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Tell a story'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Past Tense')),
((SELECT id FROM "actions" WHERE "name" = 'Tell a story'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Complex Sentences')),
((SELECT id FROM "actions" WHERE "name" = 'Tell a story'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Sequencing Words')),
((SELECT id FROM "actions" WHERE "name" = 'Tell a story'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Descriptive Phrases'));

-- Action: Ask information about a service or product
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Ask information about a service or product'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Question Formation')),
((SELECT id FROM "actions" WHERE "name" = 'Ask information about a service or product'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests')),
((SELECT id FROM "actions" WHERE "name" = 'Ask information about a service or product'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences'));

-- Action: Ordering food
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Ordering food'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests')),
((SELECT id FROM "actions" WHERE "name" = 'Ordering food'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences')),
((SELECT id FROM "actions" WHERE "name" = 'Ordering food'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Present Tense'));

-- Action: Comparing objects or people
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Comparing objects or people'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Comparative Adjectives')),
((SELECT id FROM "actions" WHERE "name" = 'Comparing objects or people'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Comparative Structures')),
((SELECT id FROM "actions" WHERE "name" = 'Comparing objects or people'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences'));

-- Advanced Level Actions

-- Action: Bargaining
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Bargaining'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Conditional Sentences')),
((SELECT id FROM "actions" WHERE "name" = 'Bargaining'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Comparative Adjectives')),
((SELECT id FROM "actions" WHERE "name" = 'Bargaining'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Comparative Structures')),
((SELECT id FROM "actions" WHERE "name" = 'Bargaining'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Polite Requests'));

-- Action: Handling emergencies
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Handling emergencies'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Imperative Sentences')),
((SELECT id FROM "actions" WHERE "name" = 'Handling emergencies'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Simple Sentences'));

-- Action: Asking and telling reasons why
INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
((SELECT id FROM "actions" WHERE "name" = 'Asking and telling reasons why'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Causative Conjunctions')),
((SELECT id FROM "actions" WHERE "name" = 'Asking and telling reasons why'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Complex Sentences')),
((SELECT id FROM "actions" WHERE "name" = 'Asking and telling reasons why'), (SELECT id FROM "linguistic_concepts" WHERE "lc_name" = 'Hypothetical Situations'));

-- With hard-coded id :

-- Action: Bargaining
-- INSERT INTO "actions_linguistic_concepts" ("action_id", "linguistic_concept_id") VALUES
-- (14, 23),
-- (14, 24),
-- (14, 25);