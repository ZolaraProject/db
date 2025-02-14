INSERT INTO "linguistic_concepts" ("lc_name", "linguistic_type_id") VALUES
('Sentence Structure', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Sentence Construction')),
('Simple Sentences', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Sentence Construction')),
('Compound Sentences', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Sentence Construction')),
('Complex Sentences', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Sentence Construction')),
('Clause Structure', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Sentence Construction')),
('Sequencing Words', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Sentence Construction')),
('Word Order', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Sentence Construction')),

('Question Formation', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Question and Request Formation')),
('Polite Requests', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Question and Request Formation')),
('Imperative Sentences', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Question and Request Formation')),
('Indirect Questions', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Question and Request Formation')),
('Tag Questions', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Question and Request Formation')),

('Present Tense', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Tense and Time')),
('Past Tense', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Tense and Time')),
('Future Tense', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Tense and Time')),
('Tense Usage', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Tense and Time')),
('Tense Consistency', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Tense and Time')),
('Time Expressions', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Tense and Time')),

('Comparative Adjectives', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Comparison and Contrast')),
('Superlative Adjectives', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Comparison and Contrast')),
('Comparative Structures', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Comparison and Contrast')),
('Comparative Sentences', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Comparison and Contrast')),

('Conditional Sentences', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Conditional and Causative')),
('Causative Conjunctions', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Conditional and Causative')),
('Hypothetical Situations', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Conditional and Causative')),
('Consequences and Results', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Conditional and Causative')),

('Numbers and Counting', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Numbers and Counting')),
('Ordinal Numbers', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Numbers and Counting')),
('Cardinal Numbers', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Numbers and Counting')),
('Fractions and Decimals', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Numbers and Counting')),
('Mathematical Operations', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Numbers and Counting')),

('Negation', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Negation and Modality')),
('Modal Verbs', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Negation and Modality')),
('Negative Sentences', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Negation and Modality')),
('Double Negatives', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Negation and Modality')),
('Expressing Prohibition', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Negation and Modality')),

('Polite Expressions', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Politeness and Social Norms')),
('Formal and Informal Language', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Politeness and Social Norms')),
('Honorifics', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Politeness and Social Norms')),
('Apologies and Excuses', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Politeness and Social Norms')),
('Expressing Gratitude', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Politeness and Social Norms')),

('Adjectives', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Descriptive Language')),
('Adverbs', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Descriptive Language')),
('Descriptive Phrases', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Descriptive Language')),
('Sensory Language', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Descriptive Language')),
('Metaphors and Similes', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Descriptive Language')),

('Prepositions of Place', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Prepositions and Place')),
('Prepositions of Time', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Prepositions and Place')),
('Prepositions of Direction', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Prepositions and Place')),
('Prepositional Phrases', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Prepositions and Place')),
('Prepositions in Context', (SELECT id FROM "linguistic_types" WHERE "lt_name" = 'Prepositions and Place'));

SELECT setval(pg_get_serial_sequence('linguistic_concepts', 'id'), coalesce((SELECT MAX(id) FROM linguistic_concepts), 0) + 1, false);
