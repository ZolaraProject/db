INSERT INTO "users" ("email", "password", "username", "role") VALUES ('admin', 'admin', 'admin', 'admin');
INSERT INTO "users" ("email", "password", "username") VALUES ('test1', 'test1', 'test1');
INSERT INTO "users" ("email", "password", "username") VALUES ('test2', 'test2', 'test2');
INSERT INTO "users" ("email", "password", "username") VALUES ('baptiste@test.fr', '$2a$14$m55hTXR3AEBvHMVGbfK7KuGcBPlSJRqYFIlf.Nq8LUTgk1h5n3.66', 'baptiste');
INSERT INTO "users" ("email", "password", "username") VALUES ('demouser@demouser.demo', '$2y$14$u0n/MIOTbHTh5Lrp1uz4sODAPMme02uOkxsiwmqYx8RTS3HLW.XR2', 'DemoUser');
SELECT setval(pg_get_serial_sequence('users', 'id'), coalesce((SELECT MAX(id) FROM users), 0) + 1, false);

-- Insert categories
INSERT INTO "actions_category" ("name") VALUES ('Daily Activities');
INSERT INTO "actions_category" ("name") VALUES ('Social Interactions');
INSERT INTO "actions_category" ("name") VALUES ('Travel and Transport');
INSERT INTO "actions_category" ("name") VALUES ('Shopping and Services');
INSERT INTO "actions_category" ("name") VALUES ('Healthcare');
INSERT INTO "actions_category" ("name") VALUES ('Work and Professional');
INSERT INTO "actions_category" ("name") VALUES ('Personal Development/Emotions');
SELECT setval(pg_get_serial_sequence('actions_category', 'id'), coalesce((SELECT MAX(id) FROM actions_category), 0) + 1, false);

-- Daily Activities (actions_category_id = 1)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Order food', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Make a phone call', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Shop for groceries', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Schedule an appointment', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Discuss weather', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your daily routine', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for help', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Describe an image', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Give directions', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Buy a ticket', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for the time', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Take public transportation', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Prepare a meal', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Clean the house', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Do the laundry', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Pay bills', 1);

-- Social Interactions (actions_category_id" = 2)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Introduce yourself', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Describe a person', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your hobbies', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your job', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your family', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your friends', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Make a suggestion', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Express gratitude', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Give a compliment', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Make a request', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Apologize', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask about someones weekend', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Start a conversation', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about an event', 2);

-- Travel and Transport (actions_category_id" = 3)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Book a room', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for directions', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Buy a train ticket', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Check-in at a hotel', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask about public transportation', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Rent a car', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Confirm a reservation', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for recommendations on places to visit', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Handle a lost luggage situation', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask about flight status', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Request a wake-up call', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Navigate an airport', 3);

-- Shopping and Services (actions_category_id" = 4)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Buy clothes', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Return an item', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for a discount', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Order online', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Describe a problem with a product', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Request customer support', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for a refund', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Compare prices', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for product recommendations', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Order takeout food', 4);

-- Healthcare (actions_category_id" = 5)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Schedule a doctor’s appointment', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Describe your symptoms', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for medication at a pharmacy', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Understand health advice', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for first aid', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Discuss a medical condition', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Call emergency services', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Understand test results', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Discuss treatment options', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for a second opinion', 5);

-- Work and Professional (actions_category_id" = 6)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Write an email', 6);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Present a project', 6);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Lead a meeting', 6);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Negotiate a contract', 6);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for a promotion', 6);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Make a business proposal', 6);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Participate in a job interview', 6);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Discuss future plans', 6);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Set a deadline', 6);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Take notes in a meeting', 6);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Give a formal presentation', 6);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Make a speech', 6);

-- Personal Development/Emotions (actions_category_id" = 7)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your dreams', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your fears', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your goals', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your achievements', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your failures', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your strengths', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your weaknesses', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your favorite things', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your least favorite things', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your favorite places', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your least favorite places', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your favorite activities', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your least favorite activities', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your favorite foods', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your least favorite foods', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your favorite drinks', 7);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your least favorite drinks', 7);

-- Update serial sequence for actions
SELECT setval(pg_get_serial_sequence('actions', 'id'), coalesce((SELECT MAX(id) FROM actions), 0) + 1, false);


INSERT INTO "levels" ("name") VALUES ('A1');
INSERT INTO "levels" ("name") VALUES ('A2');
INSERT INTO "levels" ("name") VALUES ('B1');
INSERT INTO "levels" ("name") VALUES ('B2');
INSERT INTO "levels" ("name") VALUES ('C1');
INSERT INTO "levels" ("name") VALUES ('C2');
SELECT setval(pg_get_serial_sequence('levels', 'id'), coalesce((SELECT MAX(id) FROM levels), 0) + 1, false);

----------------------------------------------------------------------
---------------------- BEGINNING ACTIONS LEVELS ----------------------
----------------------------------------------------------------------

-- Daily Activities (actions_category_id = 1)

-- Order food (action_id = 1)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 1, 'using basic language');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 2, 'with specific choices');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 3, 'with special requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 4, 'with food modifications');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 5, 'using complex culinary terminology');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 6, 'with fluent handling of dietary preferences');

-- Make a phone call (action_id = 2)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (2, 1, 'for basic information');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (2, 2, 'to request basic services');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (2, 3, 'with a specific request');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (2, 4, 'to handle detailed inquiries');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (2, 5, 'to solve a complex issue');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (2, 6, 'with professional fluency and control');

-- Shop for groceries (action_id = 3)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (3, 1, 'using basic vocabulary');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (3, 2, 'with product categories');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (3, 3, 'asking for specific brands');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (3, 4, 'with dietary needs in mind');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (3, 5, 'with detailed product knowledge');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (3, 6, 'using advanced consumer terms');

-- Schedule an appointment (action_id = 4)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (4, 1, 'for simple appointments');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (4, 2, 'with specific dates and times');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (4, 3, 'for a professional appointment');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (4, 4, 'with complex scheduling requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (4, 5, 'with multiple parties involved');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (4, 6, 'handling fluent scheduling issues');

-- Discuss weather (action_id = 5)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (5, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (5, 2, 'with more vocabulary');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (5, 3, 'in more detail about weather changes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (5, 4, 'discussing weather forecasts');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (5, 5, 'using specialized weather terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (5, 6, 'handling technical weather discussions');

-- Talk about your daily routine (action_id = 6)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (6, 1, 'using basic language');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (6, 2, 'with simple time expressions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (6, 3, 'with detailed timeframes and tasks');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (6, 4, 'including personal preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (6, 5, 'with a high level of precision');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (6, 6, 'with fluent descriptions of routines');

-- Ask for help (action_id = 7)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (7, 1, 'in basic situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (7, 2, 'for more detailed help');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (7, 3, 'in specific situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (7, 4, 'for help in complex situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (7, 5, 'with an understanding of expertise');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (7, 6, 'fluent in requesting advanced assistance');

-- Describe an image (action_id = 8)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (8, 1, 'with basic details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (8, 2, 'with some more detail');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (8, 3, 'with complex features described');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (8, 4, 'including emotions or interpretations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (8, 5, 'discussing the context of the image');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (8, 6, 'fluent in interpreting image meaning');

-- Give directions (action_id = 9)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (9, 1, 'in a basic way');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (9, 2, 'with more clarity');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (9, 3, 'using complex landmarks');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (9, 4, 'to multiple places');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (9, 5, 'with detailed understanding of surroundings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (9, 6, 'handling complex routes fluently');

-- Buy a ticket (action_id = 10)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (10, 1, 'using basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (10, 2, 'with specific requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (10, 3, 'for tickets with preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (10, 4, 'dealing with advanced ticketing issues');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (10, 5, 'handling complex transactions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (10, 6, 'with fluent negotiation of pricing');

-- Ask for the time (action_id = 11)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (11, 1, 'in a simple way');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (11, 2, 'with more time expressions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (11, 3, 'discussing multiple time zones');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (11, 4, 'with detailed time references');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (11, 5, 'understanding complex time expressions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (11, 6, 'with fluent use of time expressions');

-- Take public transportation (action_id = 12)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (12, 1, 'using basic language');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (12, 2, 'with specific route names');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (12, 3, 'discussing schedules');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (12, 4, 'with a complex public transport system');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (12, 5, 'handling multiple transport systems');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (12, 6, 'fluent in handling travel routes');

-- Prepare a meal (action_id = 13)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (13, 1, 'for a simple dish');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (13, 2, 'with more ingredients');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (13, 3, 'following a recipe with accuracy');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (13, 4, 'adjusting a recipe with modifications');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (13, 5, 'handling complex culinary terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (13, 6, 'fluent in discussing gastronomy');

-- Clean the house (action_id = 14)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (14, 1, 'for basic cleaning tasks');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (14, 2, 'for more detailed cleaning');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (14, 3, 'handling cleaning supplies');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (14, 4, 'discussing complex cleaning techniques');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (14, 5, 'handling advanced cleaning situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (14, 6, 'fluent in home maintenance topics');

-- Do the laundry (action_id = 15)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (15, 1, 'using basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (15, 2, 'discussing fabric care');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (15, 3, 'handling laundry tasks');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (15, 4, 'discussing special fabrics');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (15, 5, 'handling complex laundry requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (15, 6, 'fluent in home maintenance terminology');

-- Pay bills (action_id = 16)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (16, 1, 'for basic payments');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (16, 2, 'discussing specific bills');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (16, 3, 'handling multiple payments');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (16, 4, 'with different payment options');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (16, 5, 'handling complex billing issues');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (16, 6, 'fluent in discussing financial terms');

----------------------------------------------------------------------
----------------------------------------------------------------------

-- Social Interactions (actions_category_id = 2)

-- Introduce yourself (action_id = 17)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (17, 1, 'with basic information');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (17, 2, 'with more personal details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (17, 3, 'including your interests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (17, 4, 'with professional information');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (17, 5, 'giving more complex background');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (17, 6, 'fluently with detailed self-description');

-- Describe a person (action_id = 18)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (18, 1, 'with basic characteristics');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (18, 2, 'with additional features');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (18, 3, 'with personality traits');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (18, 4, 'in greater detail');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (18, 5, 'with nuanced characteristics');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (18, 6, 'with advanced descriptive vocabulary');

-- Talk about your hobbies (action_id = 19)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (19, 1, 'using simple language');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (19, 2, 'with more details about activities');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (19, 3, 'with more complex hobbies discussed');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (19, 4, 'discussing the purpose of hobbies');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (19, 5, 'exploring specific interests in depth');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (19, 6, 'fluently with advanced topics on hobbies');

-- Talk about your job (action_id = 20)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (20, 1, 'using simple job titles');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (20, 2, 'with specific job responsibilities');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (20, 3, 'with more detailed job tasks');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (20, 4, 'including company information');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (20, 5, 'with professional terminology');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (20, 6, 'discussing job fluently in detail');

-- Talk about your family (action_id = 21)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (21, 1, 'using basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (21, 2, 'with more family details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (21, 3, 'describing family members');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (21, 4, 'with more complex family structures');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (21, 5, 'with detailed family background');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (21, 6, 'with fluency discussing family');

-- Talk about your friends (action_id = 22)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (22, 1, 'using simple descriptions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (22, 2, 'describing friendships in detail');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (22, 3, 'with more specific examples');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (22, 4, 'describing social interactions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (22, 5, 'with greater depth on relationships');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (22, 6, 'with fluent understanding of friendships');

-- Make a suggestion (action_id = 23)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (23, 1, 'in basic scenarios');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (23, 2, 'with more detailed suggestions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (23, 3, 'in more specific contexts');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (23, 4, 'for complex situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (23, 5, 'using advanced language');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (23, 6, 'fluently in nuanced situations');

-- Express gratitude (action_id = 24)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (24, 1, 'for simple things');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (24, 2, 'with more formal language');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (24, 3, 'with more specific context');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (24, 4, 'with cultural sensitivity');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (24, 5, 'with complex gratitude statements');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (24, 6, 'fluent in nuanced expressions of thanks');

-- Give a compliment (action_id = 25)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (25, 1, 'in basic situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (25, 2, 'with specific compliments');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (25, 3, 'for complex social contexts');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (25, 4, 'including professional compliments');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (25, 5, 'with advanced social understanding');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (25, 6, 'fluent in giving nuanced compliments');

-- Make a request (action_id = 26)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (26, 1, 'for basic things');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (26, 2, 'with more specificity');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (26, 3, 'in complex contexts');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (26, 4, 'with politeness and respect');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (26, 5, 'with complex language');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (26, 6, 'fluently in professional settings');

-- Apologize (action_id = 27)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (27, 1, 'for simple things');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (27, 2, 'with more explanation');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (27, 3, 'in more formal contexts');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (27, 4, 'with more specific reasons');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (27, 5, 'with cultural sensitivity');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (27, 6, 'fluently with complex apologies');

-- Ask about someone's weekend (action_id = 28)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (28, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (28, 2, 'with more detail');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (28, 3, 'discussing specific events');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (28, 4, 'with more interest in activities');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (28, 5, 'discussing specific plans');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (28, 6, 'fluently with complex questions');

-- Start a conversation (action_id = 29)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (29, 1, 'with basic topics');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (29, 2, 'about more specific subjects');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (29, 3, 'with more advanced subjects');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (29, 4, 'in professional or formal settings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (29, 5, 'with complex conversation topics');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (29, 6, 'fluently in nuanced conversations');

-- Talk about an event (action_id = 30)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (30, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (30, 2, 'with more specific details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (30, 3, 'describing a past event');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (30, 4, 'with complex event descriptions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (30, 5, 'in professional or formal settings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (30, 6, 'fluently with advanced vocabulary');

----------------------------------------------------------------------
----------------------------------------------------------------------

-- Travel and Transport (actions_category_id = 3)

-- Book a room (action_id = 31)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (31, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (31, 2, 'with more specific requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (31, 3, 'including details about amenities');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (31, 4, 'in a professional setting');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (31, 5, 'with complex booking terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (31, 6, 'fluently with advanced requirements');

-- Ask for directions (action_id = 32)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (32, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (32, 2, 'using more detailed questions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (32, 3, 'with specific landmarks or locations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (32, 4, 'in more complex travel scenarios');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (32, 5, 'using advanced vocabulary');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (32, 6, 'fluently with cultural understanding');

-- Buy a train ticket (action_id = 33)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (33, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (33, 2, 'with specific details about the trip');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (33, 3, 'with more complex ticket options');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (33, 4, 'with different classes or services');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (33, 5, 'including group or special tickets');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (33, 6, 'fluently with advanced travel terms');

-- Check-in at a hotel (action_id = 34)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (34, 1, 'with simple check-in requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (34, 2, 'providing basic booking information');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (34, 3, 'asking about amenities and services');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (34, 4, 'handling more complex issues');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (34, 5, 'with advanced vocabulary for hotels');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (34, 6, 'fluently with complex check-in requests');

-- Ask about public transportation (action_id = 35)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (35, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (35, 2, 'with specific routes and schedules');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (35, 3, 'with more complex ticket inquiries');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (35, 4, 'asking about transfers and connections');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (35, 5, 'with complex transportation details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (35, 6, 'fluently with advanced public transport terms');

-- Rent a car (action_id = 36)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (36, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (36, 2, 'with specific car rental details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (36, 3, 'discussing insurance and options');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (36, 4, 'with more complex rental terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (36, 5, 'including rental agreements and policies');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (36, 6, 'fluently with advanced rental terms');

-- Confirm a reservation (action_id = 37)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (37, 1, 'for simple reservations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (37, 2, 'for more detailed bookings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (37, 3, 'with more specific details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (37, 4, 'handling complex reservations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (37, 5, 'discussing special requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (37, 6, 'fluently with advanced reservation terms');

-- Ask for recommendations on places to visit (action_id = 38)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (38, 1, 'for basic tourist places');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (38, 2, 'with more specific recommendations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (38, 3, 'including specific landmarks');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (38, 4, 'with personalized suggestions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (38, 5, 'for hidden or non-tourist places');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (38, 6, 'fluently with detailed recommendations');

-- Handle a lost luggage situation (action_id = 39)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (39, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (39, 2, 'with more details about the luggage');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (39, 3, 'discussing compensation options');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (39, 4, 'with more complex situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (39, 5, 'with advanced airline procedures');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (39, 6, 'fluently in resolving lost luggage issues');

-- Ask about flight status (action_id = 40)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (40, 1, 'for basic flight information');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (40, 2, 'asking about delays or gate changes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (40, 3, 'for more detailed flight status');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (40, 4, 'with complex travel scenarios');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (40, 5, 'including airline-specific details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (40, 6, 'fluently with complex flight status updates');

-- Request a wake-up call (action_id = 41)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (41, 1, 'for a simple wake-up call');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (41, 2, 'with specific times and details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (41, 3, 'including other room services');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (41, 4, 'with additional hotel requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (41, 5, 'for complex requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (41, 6, 'fluently with multiple hotel services');

-- Navigate an airport (action_id = 42)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (42, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (42, 2, 'asking for directions in the airport');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (42, 3, 'handling check-in and security procedures');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (42, 4, 'with more complex travel situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (42, 5, 'navigating international airports');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (42, 6, 'fluently handling complex airport procedures');

----------------------------------------------------------------------
----------------------------------------------------------------------

-- Shopping and Services (actions_category_id = 4)

-- Buy clothes (action_id = 43)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (43, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (43, 2, 'asking about sizes and prices');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (43, 3, 'with specific preferences for clothes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (43, 4, 'with detailed fashion or style requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (43, 5, 'with advanced vocabulary for clothing');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (43, 6, 'fluently discussing complex clothing details');

-- Return an item (action_id = 44)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (44, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (44, 2, 'discussing reasons for the return');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (44, 3, 'requesting a refund or exchange');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (44, 4, 'handling complex return policies');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (44, 5, 'discussing customer rights');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (44, 6, 'fluently resolving advanced return situations');

-- Ask for a discount (action_id = 45)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (45, 1, 'for basic discount requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (45, 2, 'with more detailed discount inquiries');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (45, 3, 'discussing specific promotional offers');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (45, 4, 'negotiating larger discounts');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (45, 5, 'handling complex discount policies');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (45, 6, 'fluently negotiating advanced discount situations');

-- Order online (action_id = 46)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (46, 1, 'for basic online orders');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (46, 2, 'with specific product choices');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (46, 3, 'discussing shipping options');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (46, 4, 'with more complex online shopping details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (46, 5, 'including return and exchange options');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (46, 6, 'fluently handling complex online orders');

-- Describe a problem with a product (action_id = 47)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (47, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (47, 2, 'providing more details about the issue');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (47, 3, 'discussing possible solutions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (47, 4, 'with complex product issues');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (47, 5, 'handling customer service escalation');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (47, 6, 'fluently discussing advanced product issues');

-- Request customer support (action_id = 48)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (48, 1, 'for basic support requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (48, 2, 'with more details about the problem');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (48, 3, 'discussing troubleshooting steps');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (48, 4, 'handling complex technical issues');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (48, 5, 'with escalation to higher-level support');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (48, 6, 'fluently handling advanced customer support needs');

-- Ask for a refund (action_id = 49)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (49, 1, 'for basic refund requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (49, 2, 'providing reasons for the refund');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (49, 3, 'discussing refund options');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (49, 4, 'handling complex refund situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (49, 5, 'including special refund conditions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (49, 6, 'fluently negotiating advanced refunds');

-- Compare prices (action_id = 50)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (50, 1, 'for basic price comparisons');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (50, 2, 'with more detailed product comparisons');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (50, 3, 'including product quality comparisons');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (50, 4, 'handling complex price negotiation');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (50, 5, 'discussing discounts and offers');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (50, 6, 'fluently handling advanced price comparisons');

-- Ask for product recommendations (action_id = 51)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (51, 1, 'for simple product suggestions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (51, 2, 'with specific preferences in mind');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (51, 3, 'discussing product features');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (51, 4, 'with detailed comparisons between products');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (51, 5, 'asking for expert recommendations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (51, 6, 'fluently handling advanced product discussions');

-- Order takeout food (action_id = 52)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (52, 1, 'for basic takeout orders');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (52, 2, 'with specific food preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (52, 3, 'discussing dietary restrictions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (52, 4, 'handling complex food orders');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (52, 5, 'including special delivery instructions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (52, 6, 'fluently handling advanced takeout orders');

----------------------------------------------------------------------
----------------------------------------------------------------------

-- Healthcare (actions_category_id = 5)

-- Schedule a doctor’s appointment (action_id = 53)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (53, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (53, 2, 'with specific dates and times');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (53, 3, 'discussing doctor preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (53, 4, 'handling complex scheduling issues');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (53, 5, 'including insurance details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (53, 6, 'fluently navigating appointment systems');

-- Describe your symptoms (action_id = 54)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (54, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (54, 2, 'providing basic details about symptoms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (54, 3, 'including duration and intensity');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (54, 4, 'discussing related health history');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (54, 5, 'using medical terminology');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (54, 6, 'fluently explaining complex health issues');

-- Ask for medication at a pharmacy (action_id = 55)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (55, 1, 'for basic medication requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (55, 2, 'providing prescription details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (55, 3, 'discussing dosage and instructions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (55, 4, 'handling questions about side effects');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (55, 5, 'including insurance and payment methods');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (55, 6, 'fluently managing complex pharmacy requests');

-- Understand health advice (action_id = 56)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (56, 1, 'for basic health advice');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (56, 2, 'discussing lifestyle changes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (56, 3, 'asking about preventive measures');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (56, 4, 'handling complex health recommendations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (56, 5, 'navigating alternative treatments');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (56, 6, 'fluently discussing advanced health topics');

-- Ask for first aid (action_id = 57)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (57, 1, 'for basic first aid information');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (57, 2, 'describing minor injuries');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (57, 3, 'discussing emergency procedures');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (57, 4, 'handling more serious medical situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (57, 5, 'including equipment and supplies');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (57, 6, 'fluently managing complex first aid situations');

-- Discuss a medical condition (action_id = 58)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (58, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (58, 2, 'providing symptom details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (58, 3, 'discussing treatment experiences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (58, 4, 'handling complex medical history');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (58, 5, 'using advanced medical terminology');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (58, 6, 'fluently discussing advanced medical topics');

-- Call emergency services (action_id = 59)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (59, 1, 'for basic emergency situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (59, 2, 'describing the emergency briefly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (59, 3, 'providing location details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (59, 4, 'handling complex emergency scenarios');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (59, 5, 'discussing specific medical needs');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (59, 6, 'fluently communicating in high-pressure situations');

-- Understand test results (action_id = 60)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (60, 1, 'for basic test result interpretation');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (60, 2, 'discussing normal versus abnormal results');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (60, 3, 'asking about further tests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (60, 4, 'handling complex test findings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (60, 5, 'including next steps in treatment');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (60, 6, 'fluently navigating advanced medical discussions');

-- Discuss treatment options (action_id = 61)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (61, 1, 'for basic treatment discussions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (61, 2, 'asking about specific treatments');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (61, 3, 'discussing pros and cons');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (61, 4, 'handling complex treatment plans');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (61, 5, 'including alternative therapies');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (61, 6, 'fluently discussing advanced treatment options');

-- Ask for a second opinion (action_id = 62)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (62, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (62, 2, 'explaining the need for a second opinion');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (62, 3, 'discussing specific concerns');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (62, 4, 'handling sensitive discussions with doctors');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (62, 5, 'including potential second opinions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (62, 6, 'fluently navigating advanced medical consultations');

----------------------------------------------------------------------
----------------------------------------------------------------------

-- Work and Professional (actions_category_id = 6)

-- Write an email (action_id = 63)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (63, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (63, 2, 'including basic greetings and closings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (63, 3, 'discussing the main topic clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (63, 4, 'using professional tone and etiquette');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (63, 5, 'including complex attachments and details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (63, 6, 'fluently handling formal business correspondence');

-- Present a project (action_id = 64)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (64, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (64, 2, 'with simple visual aids');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (64, 3, 'discussing project details clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (64, 4, 'handling questions confidently');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (64, 5, 'including data analysis and insights');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (64, 6, 'fluently delivering high-stakes presentations');

-- Lead a meeting (action_id = 65)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (65, 1, 'for basic meeting structure');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (65, 2, 'setting an agenda clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (65, 3, 'facilitating discussion among participants');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (65, 4, 'handling difficult conversations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (65, 5, 'including action item follow-ups');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (65, 6, 'fluently managing high-level meetings');

-- Negotiate a contract (action_id = 66)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (66, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (66, 2, 'discussing basic terms clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (66, 3, 'addressing concerns effectively');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (66, 4, 'handling complex negotiations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (66, 5, 'including legal language and terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (66, 6, 'fluently navigating high-stakes negotiations');

-- Ask for a promotion (action_id = 67)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (67, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (67, 2, 'providing reasons for the request');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (67, 3, 'discussing performance metrics');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (67, 4, 'handling objections professionally');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (67, 5, 'including salary discussions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (67, 6, 'fluently managing sensitive discussions');

-- Make a business proposal (action_id = 68)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (68, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (68, 2, 'including basic project details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (68, 3, 'discussing potential outcomes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (68, 4, 'handling objections effectively');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (68, 5, 'including financial analysis');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (68, 6, 'fluently presenting comprehensive proposals');

-- Participate in a job interview (action_id = 69)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (69, 1, 'for basic interview questions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (69, 2, 'discussing previous experience');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (69, 3, 'addressing skills and strengths');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (69, 4, 'handling challenging questions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (69, 5, 'including salary expectations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (69, 6, 'fluently managing high-pressure interviews');

-- Discuss future plans (action_id = 70)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (70, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (70, 2, 'outlining personal goals');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (70, 3, 'discussing team objectives');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (70, 4, 'handling career development topics');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (70, 5, 'including project timelines');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (70, 6, 'fluently discussing long-term strategic plans');

-- Set a deadline (action_id = 71)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (71, 1, 'for basic tasks');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (71, 2, 'discussing timelines clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (71, 3, 'addressing potential obstacles');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (71, 4, 'handling multiple deadlines');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (71, 5, 'including team input');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (71, 6, 'fluently managing complex project schedules');

-- Take notes in a meeting (action_id = 72)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (72, 1, 'for basic meeting notes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (72, 2, 'summarizing key points clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (72, 3, 'including action items');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (72, 4, 'handling detailed discussions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (72, 5, 'using professional formatting');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (72, 6, 'fluently documenting complex meetings');

-- Give a formal presentation (action_id = 73)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (73, 1, 'for basic presentations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (73, 2, 'including simple visual aids');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (73, 3, 'addressing audience questions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (73, 4, 'handling audience engagement');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (73, 5, 'including detailed content analysis');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (73, 6, 'fluently managing complex presentations');

-- Make a speech (action_id = 74)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (74, 1, 'for basic speeches');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (74, 2, 'including simple anecdotes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (74, 3, 'addressing key points');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (74, 4, 'handling audience reactions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (74, 5, 'including detailed arguments');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (74, 6, 'fluently delivering high-impact speeches');

----------------------------------------------------------------------
----------------------------------------------------------------------

-- Personal Development/Emotions (actions_category_id = 7)

-- Talk about your dreams (action_id = 75)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (75, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (75, 2, 'describing a recent dream clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (75, 3, 'analyzing common themes in dreams');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (75, 4, 'discussing personal interpretations of dreams');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (75, 5, 'including psychological perspectives');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (75, 6, 'fluently discussing dream analysis and significance');

-- Talk about your fears (action_id = 76)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (76, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (76, 2, 'describing a specific fear clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (76, 3, 'discussing coping strategies for fears');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (76, 4, 'analyzing the origins of fears');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (76, 5, 'including support systems and resources');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (76, 6, 'fluently discussing personal experiences with fears');

-- Talk about your goals (action_id = 77)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (77, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (77, 2, 'describing short-term goals clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (77, 3, 'discussing long-term aspirations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (77, 4, 'analyzing steps to achieve goals');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (77, 5, 'including potential obstacles and solutions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (77, 6, 'fluently discussing strategic planning for goals');

-- Talk about your achievements (action_id = 78)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (78, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (78, 2, 'describing a recent achievement clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (78, 3, 'discussing the significance of achievements');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (78, 4, 'analyzing the effort put into achievements');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (78, 5, 'including recognition and impact');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (78, 6, 'fluently discussing the journey of achievements');

-- Talk about your failures (action_id = 79)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (79, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (79, 2, 'describing a specific failure clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (79, 3, 'discussing lessons learned from failures');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (79, 4, 'analyzing emotional responses to failures');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (79, 5, 'including strategies for overcoming failures');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (79, 6, 'fluently discussing the growth from failures');

-- Talk about your strengths (action_id = 80)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (80, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (80, 2, 'describing a personal strength clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (80, 3, 'discussing how strengths are applied');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (80, 4, 'analyzing feedback from others about strengths');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (80, 5, 'including personal development through strengths');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (80, 6, 'fluently discussing strengths in various contexts');

-- Talk about your weaknesses (action_id = 81)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (81, 1, 'in basic terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (81, 2, 'describing a personal weakness clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (81, 3, 'discussing strategies to manage weaknesses');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (81, 4, 'analyzing how weaknesses impact life');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (81, 5, 'including support systems for improvement');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (81, 6, 'fluently discussing weaknesses and growth');

-- Talk about your favorite things (action_id = 82)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (82, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (82, 2, 'describing favorite things clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (82, 3, 'discussing why they are favorites');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (82, 4, 'analyzing experiences related to favorites');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (82, 5, 'including connections to personal identity');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (82, 6, 'fluently discussing the significance of favorites');

-- Talk about your least favorite things (action_id = 83)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (83, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (83, 2, 'describing least favorite things clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (83, 3, 'discussing reasons for dislikes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (83, 4, 'analyzing experiences related to dislikes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (83, 5, 'including connections to personal identity');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (83, 6, 'fluently discussing the impact of dislikes');

-- Talk about your favorite places (action_id = 84)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (84, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (84, 2, 'describing favorite places clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (84, 3, 'discussing memories associated with places');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (84, 4, 'analyzing what makes them special');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (84, 5, 'including cultural or personal significance');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (84, 6, 'fluently discussing places and their impact on life');

-- Talk about your least favorite places (action_id = 85)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (85, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (85, 2, 'describing least favorite places clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (85, 3, 'discussing reasons for dislikes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (85, 4, 'analyzing experiences related to dislikes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (85, 5, 'including connections to personal identity');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (85, 6, 'fluently discussing the impact of dislikes');

-- Talk about your favorite activities (action_id = 86)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (86, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (86, 2, 'describing favorite activities clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (86, 3, 'discussing why they are favorites');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (86, 4, 'analyzing experiences related to activities');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (86, 5, 'including connections to personal growth');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (86, 6, 'fluently discussing the impact of activities');

-- Talk about your least favorite activities (action_id = 87)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (87, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (87, 2, 'describing least favorite activities clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (87, 3, 'discussing reasons for dislikes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (87, 4, 'analyzing experiences related to dislikes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (87, 5, 'including connections to personal identity');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (87, 6, 'fluently discussing the impact of dislikes');

-- Talk about your favorite foods (action_id = 88)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (88, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (88, 2, 'describing favorite foods clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (88, 3, 'discussing why they are favorites');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (88, 4, 'analyzing memories associated with foods');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (88, 5, 'including cultural significance');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (88, 6, 'fluently discussing foods and their impact on culture');

-- Talk about your least favorite foods (action_id = 89)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (89, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (89, 2, 'describing least favorite foods clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (89, 3, 'discussing reasons for dislikes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (89, 4, 'analyzing experiences related to dislikes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (89, 5, 'including connections to personal identity');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (89, 6, 'fluently discussing the impact of dislikes');

-- Talk about your favorite drinks (action_id = 90)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (90, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (90, 2, 'describing favorite drinks clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (90, 3, 'discussing why they are favorites');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (90, 4, 'analyzing memories associated with drinks');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (90, 5, 'including cultural significance');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (90, 6, 'fluently discussing drinks and their impact on culture');

-- Talk about your least favorite drinks (action_id = 91)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (91, 1, 'in simple terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (91, 2, 'describing least favorite drinks clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (91, 3, 'discussing reasons for dislikes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (91, 4, 'analyzing experiences related to dislikes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (91, 5, 'including connections to personal identity');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (91, 6, 'fluently discussing the impact of dislikes');

----------------------------------------------------------------------
------------------------- END ACTIONS LEVELS -------------------------
----------------------------------------------------------------------
-- Insert into interests
INSERT INTO "interests" ("name") VALUES ('Sports');
INSERT INTO "interests" ("name") VALUES ('Politics');
INSERT INTO "interests" ("name") VALUES ('Cinema');
INSERT INTO "interests" ("name") VALUES ('Music');
INSERT INTO "interests" ("name") VALUES ('Technology');
INSERT INTO "interests" ("name") VALUES ('Travel');
INSERT INTO "interests" ("name") VALUES ('Food');
INSERT INTO "interests" ("name") VALUES ('Literature');
INSERT INTO "interests" ("name") VALUES ('Science');
INSERT INTO "interests" ("name") VALUES ('Fitness');
INSERT INTO "interests" ("name") VALUES ('Gaming');
INSERT INTO "interests" ("name") VALUES ('Art');
INSERT INTO "interests" ("name") VALUES ('History');
INSERT INTO "interests" ("name") VALUES ('Fashion');
INSERT INTO "interests" ("name") VALUES ('Environment');
SELECT setval(pg_get_serial_sequence('interests', 'id'), coalesce((SELECT MAX(id) FROM interests), 0) + 1, false);

INSERT INTO "languages" ("name") VALUES ('English');
INSERT INTO "languages" ("name") VALUES ('French');
INSERT INTO "languages" ("name") VALUES ('Korean');
INSERT INTO "languages" ("name") VALUES ('Spanish');
INSERT INTO "languages" ("name") VALUES ('Japanese');
SELECT setval(pg_get_serial_sequence('languages', 'id'), coalesce((SELECT MAX(id) FROM languages), 0) + 1, false);

INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (1, 1, 1);

-- Insert into linguistic_types
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Communication Skill');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Phonetics');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Grammar');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Vocabulary');
INSERT INTO "linguistic_types" ("lt_name") VALUES ('Reading Strategy');
SELECT setval(pg_get_serial_sequence('linguistic_types', 'id'), coalesce((SELECT MAX(id) FROM linguistic_types), 0) + 1, false);

-- Insert into linguistic_concepts
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

--------------------------------------------------------------------------------
---------------------------------- FLASHCARDS ----------------------------------
--------------------------------------------------------------------------------

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

-- Insert into user_profiles
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (1, 1, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (2, 2, 2);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (3, 3, 3);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (4, 1, 109);

-- Linking existing users to new interests
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (1, 1); -- User 1 interested in Football
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (1, 4); -- User 1 also interested in Music
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (2, 2); -- User 2 interested in Politics
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (2, 6); -- User 2 also interested in Travel
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (3, 3); -- User 3 interested in Cinema
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (3, 7); -- User 3 also interested in Food
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (4, 1); -- User 3 also interested in Food

-- Insert into user_mistakes for user_id 1
INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id") VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);
SELECT setval(pg_get_serial_sequence('user_mistakes', 'id'), coalesce((SELECT MAX(id) FROM user_mistakes), 0) + 1, false);
-- Book a room
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 1);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (4, 1);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (3, 1);

-- Ask for directions
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 2);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (5, 2);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (11, 2);

-- Order food
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 3);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (4, 3);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 3);

-- Make a phone call
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 4);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (3, 4);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (12, 4);

-- Introduce yourself
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 5);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (8, 5);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 5);

-- Describe a person
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (2, 6);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (8, 6);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 6);

-- Talk about your hobbies
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 7);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (9, 7);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 7);

-- Discuss weather
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 8);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 8);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (15, 8);

-- Schedule an appointment
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 9);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (6, 9);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 9);

-- Shop for groceries
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 10);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (2, 10);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 10);

-- Talk about your job
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 11);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (9, 11);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (14, 11);

-- Ask for help
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (1, 12);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (4, 12);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (3, 12);

-- Describe an image
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (2, 13);
INSERT INTO "actions_linguistic_concepts" ("linguistic_concept_id", "action_id") VALUES (8, 13);

-- Insert videos
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('2d8f9888-2185-4f98-8695-0764dc2643e3', 'The Story of The Greatest Robbery in Football History', 'test1', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('bc32e38e-32cf-456a-9607-7988caa8297d', 'About Football Again - History of the Game', 'test2', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('b8c609a8-27e4-41d2-8b5f-cea129001aac', 'English Fan Experience', 'test3', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('ac538fa6-8bc6-457c-bd16-833b1a7690b6', 'English Football League： EFL Warns Against Early Football Return', 'test4', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('8190ab4c-7595-491b-b40b-c8be506376c9', 'How 1 Man Rewrote English Football', 'test5', 0, 1);
INSERT INTO "videos" ("id", "title", "subtitle", "likes", "language_id") VALUES ('fa070d1f-57ae-43fc-82b9-0a070808f256', 'Why England Struggles To Win Trophies ', 'test6', 0, 1);

-- Insert video categories
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES ('2d8f9888-2185-4f98-8695-0764dc2643e3', 109,  1);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES ('bc32e38e-32cf-456a-9607-7988caa8297d', 109,  1);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES ('b8c609a8-27e4-41d2-8b5f-cea129001aac', 109,  1);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES ('ac538fa6-8bc6-457c-bd16-833b1a7690b6', 109,  1);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES ('8190ab4c-7595-491b-b40b-c8be506376c9', 109,  1);
INSERT INTO "video_category" ("video_id", "actions_levels_id", "interest_id") VALUES ('fa070d1f-57ae-43fc-82b9-0a070808f256', 109,  1);


-- Fake profile for DemoUser -- User_id = 5
INSERT INTO "user_interests" ("user_id", "interest_id") VALUES (1, 1);
INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id") VALUES (1, 5);
INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id") VALUES (2, 5);
INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id") VALUES (3, 5);
INSERT INTO "user_mistakes" ("linguistic_concept_id", "user_id") VALUES (4, 5);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (5, 1, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (5, 1, 2);
INSERT INTO "user_profiles" ("user_id", "language_id", "actions_levels_id") VALUES (5, 1, 3);
INSERT INTO "user_activity" ("id", "user_id", "current_language_id") VALUES (2, 5, 1);


-- Define language to user
INSERT INTO "user_activity" ("id", "user_id", "current_language_id") VALUES (1, 4, 1);


-- Connect  video to user
INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('2d8f9888-2185-4f98-8695-0764dc2643e3', 4);
INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('bc32e38e-32cf-456a-9607-7988caa8297d', 4);
INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('b8c609a8-27e4-41d2-8b5f-cea129001aac', 4);
INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('ac538fa6-8bc6-457c-bd16-833b1a7690b6', 4);
INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('8190ab4c-7595-491b-b40b-c8be506376c9', 4);
INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('fa070d1f-57ae-43fc-82b9-0a070808f256', 4);

INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('2d8f9888-2185-4f98-8695-0764dc2643e3', 5);
INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('bc32e38e-32cf-456a-9607-7988caa8297d', 5);
INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('b8c609a8-27e4-41d2-8b5f-cea129001aac', 5);
INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('ac538fa6-8bc6-457c-bd16-833b1a7690b6', 5);
INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('8190ab4c-7595-491b-b40b-c8be506376c9', 5);
INSERT INTO "user_videos" ("video_id", "user_id") VALUES ('fa070d1f-57ae-43fc-82b9-0a070808f256', 5);

-- Update image_url for actions
UPDATE "actions"
SET "image_url" = CONCAT('https://your-hosting-service.com/images/actions/',
                         LOWER(REPLACE(REPLACE("name", ' ', '_'), '''', '')),
                         '.jpg');

-- Update image_url for interests
UPDATE "interests"
SET "image_url" = CONCAT('https://your-hosting-service.com/images/interests/',
                         LOWER(REPLACE(REPLACE("name", ' ', '_'), '''', '')),
                         '.jpg');

-- Update image_url for languages
UPDATE "languages"
SET "image_url" = CONCAT('https://your-hosting-service.com/images/languages/',
                         LOWER(REPLACE(REPLACE("name", ' ', '_'), '''', '')),
                         '.jpg');