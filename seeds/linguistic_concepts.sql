-- Clean slate
DELETE FROM linguistic_concepts;

-- Insert new set of 15 well-scoped concepts
INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES
    ('Sentence Structure', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Grammar and Syntax')),
    ('Question Formation', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Grammar and Syntax')),
    ('Negation', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Grammar and Syntax')),
    ('Conditional Structures', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Grammar and Syntax')),
    ('Comparisons', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Grammar and Syntax')),

    ('Present, Past & Future Tense', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Verb Tense and Aspect')),
    ('Progressive and Perfect Tense', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Verb Tense and Aspect')),
    ('Verb Modality', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Verb Tense and Aspect')),

    ('Vocabulary for Description', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Vocabulary and Semantics')),
    ('Numbers and Quantities', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Vocabulary and Semantics')),
    ('Prepositions', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Vocabulary and Semantics')),

    ('Politeness Strategies', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Pragmatics and Politeness')),
    ('Requests and Offers', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Pragmatics and Politeness')),
    ('Social Expressions', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Pragmatics and Politeness')),

    ('Functional Phrases', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Functional Language'));

-- Reset sequence
SELECT setval(pg_get_serial_sequence('linguistic_concepts', 'id'), coalesce((SELECT MAX(id) FROM linguistic_concepts), 0) + 1, false);
