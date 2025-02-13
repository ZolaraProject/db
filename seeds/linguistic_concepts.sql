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