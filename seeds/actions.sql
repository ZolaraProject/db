-- Insert actions into the actions table with their corresponding level
-- Action ID will be automatically assigned as it is a serial field

-- Insert actions for Beginner level
INSERT INTO "actions" ("name", "level_id") VALUES 
('Asking and telling time', (SELECT id FROM "levels" WHERE "name" = 'Beginner')),
('Introducing yourself and others', (SELECT id FROM "levels" WHERE "name" = 'Beginner')),
('Describe something', (SELECT id FROM "levels" WHERE "name" = 'Beginner')),
('Greeting and making Small Talk', (SELECT id FROM "levels" WHERE "name" = 'Beginner')),
('Talking about hobbies', (SELECT id FROM "levels" WHERE "name" = 'Beginner'));

-- Insert actions for Intermediate level
INSERT INTO "actions" ("name", "level_id") VALUES 
('Book a reservation', (SELECT id FROM "levels" WHERE "name" = 'Intermediate')),
('Asking for directions', (SELECT id FROM "levels" WHERE "name" = 'Intermediate')),
('Tell a story', (SELECT id FROM "levels" WHERE "name" = 'Intermediate')),
('Ask information about a service or product', (SELECT id FROM "levels" WHERE "name" = 'Intermediate')),
('Ordering food', (SELECT id FROM "levels" WHERE "name" = 'Intermediate')),
('Comparing objects or people', (SELECT id FROM "levels" WHERE "name" = 'Intermediate'));

-- Insert actions for Advanced level
INSERT INTO "actions" ("name", "level_id") VALUES 
('Bargaining', (SELECT id FROM "levels" WHERE "name" = 'Advanced')),
('Handling emergencies', (SELECT id FROM "levels" WHERE "name" = 'Advanced')),
('Asking and telling reasons why', (SELECT id FROM "levels" WHERE "name" = 'Advanced'));

-- Reset the action ID sequence to avoid any potential issues with the next insert
SELECT setval(pg_get_serial_sequence('actions', 'id'), coalesce((SELECT MAX(id) FROM actions), 0) + 1, false);
