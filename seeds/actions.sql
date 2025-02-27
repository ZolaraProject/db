-- Insert actions into the actions table with their corresponding level
-- Action ID will be automatically assigned as it is a serial field

-- Insert actions for Beginner level
INSERT INTO "actions" ("name", "image_url", "level_id") VALUES 
('Asking and telling time', 'asking_and_telling_time.webp', (SELECT id FROM "levels" WHERE "name" = 'Beginner')),
('Introducing yourself and others', 'introducing_yourself_and_others.webp', (SELECT id FROM "levels" WHERE "name" = 'Beginner')),
('Describe something', 'describe_something.webp', (SELECT id FROM "levels" WHERE "name" = 'Beginner')),
('Greeting and making Small Talk', 'greeting_and_making_small_talk.webp', (SELECT id FROM "levels" WHERE "name" = 'Beginner')),
('Talking about hobbies', 'talking_about_hobbies.webp', (SELECT id FROM "levels" WHERE "name" = 'Beginner'));

-- Insert actions for Intermediate level
INSERT INTO "actions" ("name", "image_url", "level_id") VALUES 
('Book a reservation', 'book_a_reservation.webp', (SELECT id FROM "levels" WHERE "name" = 'Intermediate')),
('Asking for directions', 'asking_for_directions.webp', (SELECT id FROM "levels" WHERE "name" = 'Intermediate')),
('Tell a story', 'tell_a_story.webp', (SELECT id FROM "levels" WHERE "name" = 'Intermediate')),
('Ask information about a service or product', 'ask_information_about_a_service_or_product.webp', (SELECT id FROM "levels" WHERE "name" = 'Intermediate')),
('Ordering food', 'ordering_food.webp', (SELECT id FROM "levels" WHERE "name" = 'Intermediate')),
('Comparing objects or people', 'comparing_objects_or_people.webp', (SELECT id FROM "levels" WHERE "name" = 'Intermediate'));

-- Insert actions for Advanced level
INSERT INTO "actions" ("name", "image_url", "level_id") VALUES 
('Bargaining', 'bargaining.webp', (SELECT id FROM "levels" WHERE "name" = 'Advanced')),
('Handling emergencies', 'handling_emergencies.webp', (SELECT id FROM "levels" WHERE "name" = 'Advanced')),
('Asking and telling reasons why', 'asking_and_telling_reasons_why.webp', (SELECT id FROM "levels" WHERE "name" = 'Advanced'));

-- Reset the action ID sequence to avoid any potential issues with the next insert
SELECT setval(pg_get_serial_sequence('actions', 'id'), coalesce((SELECT MAX(id) FROM actions), 0) + 1, false);
