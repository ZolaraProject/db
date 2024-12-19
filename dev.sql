INSERT INTO "users" ("email", "password", "username", "role") VALUES ('admin', 'admin', 'admin', 'admin');
INSERT INTO "users" ("email", "password", "username") VALUES ('test1', 'test1', 'test1');
INSERT INTO "users" ("email", "password", "username") VALUES ('test2', 'test2', 'test2');
INSERT INTO "users" ("email", "password", "username") VALUES ('baptiste@test.fr', '$2a$14$m55hTXR3AEBvHMVGbfK7KuGcBPlSJRqYFIlf.Nq8LUTgk1h5n3.66', 'baptiste');
INSERT INTO "users" ("email", "password", "username") VALUES ('demouser@demouser.demo', '$2y$14$u0n/MIOTbHTh5Lrp1uz4sODAPMme02uOkxsiwmqYx8RTS3HLW.XR2', 'DemoUser');
SELECT setval(pg_get_serial_sequence('users', 'id'), coalesce((SELECT MAX(id) FROM users), 0) + 1, false);

-- Insert categories
INSERT INTO "actions_category" ("name") VALUES ('Basic Communication');
INSERT INTO "actions_category" ("name") VALUES ('Daily Life');
INSERT INTO "actions_category" ("name") VALUES ('Social and Personal');
INSERT INTO "actions_category" ("name") VALUES ('Professional');
INSERT INTO "actions_category" ("name") VALUES ('Travel and Navigation');
SELECT setval(pg_get_serial_sequence('actions_category', 'id'), coalesce((SELECT MAX(id) FROM actions_category), 0) + 1, false);

-- Basic Communication (actions_category_id = 1)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Introduce yourself', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask basic questions', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Express needs and wants', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Understand numbers and time', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Use basic greetings', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for clarification', 1);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Express basic emotions', 1);

-- Daily Life (actions_category_id = 2)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Order at a restaurant', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Shop for necessities', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Make appointments', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Use public transportation', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Describe health issues', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Handle basic emergencies', 2);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Discuss weather and climate', 2);

-- Social and Personal (actions_category_id = 3)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Talk about your background', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Discuss hobbies and interests', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Share opinions', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Describe family and relationships', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Make social plans', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Express preferences', 3);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Tell simple stories', 3);

-- Professional (actions_category_id = 4)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Conduct basic business communication', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Participate in meetings', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Describe your work', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Schedule appointments', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Write simple emails', 4);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Give basic presentations', 4);

-- Travel and Navigation (actions_category_id = 5)
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for directions', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Book accommodations', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Navigate transportation', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Handle travel problems', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Order food while traveling', 5);
INSERT INTO "actions" ("name", "actions_category_id") VALUES ('Ask for recommendations', 5);

-- Update serial sequence for actions
SELECT setval(pg_get_serial_sequence('actions', 'id'), coalesce((SELECT MAX(id) FROM actions), 0) + 1, false);


INSERT INTO "levels" ("name") VALUES ('A1');
INSERT INTO "levels" ("name") VALUES ('A2');
INSERT INTO "levels" ("name") VALUES ('B1');
INSERT INTO "levels" ("name") VALUES ('B2');
INSERT INTO "levels" ("name") VALUES ('C1');
SELECT setval(pg_get_serial_sequence('levels', 'id'), coalesce((SELECT MAX(id) FROM levels), 0) + 1, false);

----------------------------------------------------------------------
---------------------- BEGINNING ACTIONS LEVELS ----------------------
----------------------------------------------------------------------

-- Basic Communication
-- Introduce yourself (action_id = 1)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 1, 'saying name and basic greeting');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 2, 'adding personal details and nationality');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 3, 'describing background and interests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 4, 'giving detailed personal history');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (1, 5, 'sharing complex life experiences');

-- Ask questions (action_id = 2)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (2, 1, 'using what, where, when');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (2, 2, 'forming complete questions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (2, 3, 'asking follow-up questions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (2, 4, 'using hypothetical questions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (2, 5, 'leading complex discussions');

-- Express needs (action_id = 3)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (3, 1, 'expressing immediate needs');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (3, 2, 'explaining simple preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (3, 3, 'discussing wants and needs');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (3, 4, 'negotiating requirements');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (3, 5, 'articulating complex demands');

-- Use numbers and time (action_id = 4)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (4, 1, 'saying basic numbers and time');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (4, 2, 'discussing dates and prices');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (4, 3, 'handling calculations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (4, 4, 'explaining numerical data');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (4, 5, 'discussing complex statistics');

-- Exchange greetings (action_id = 5)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (5, 1, 'using basic greetings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (5, 2, 'using situational greetings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (5, 3, 'varying formal/informal greetings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (5, 4, 'using culturally appropriate greetings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (5, 5, 'mastering social etiquette');

-- Request clarification (action_id = 6)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (6, 1, 'saying you don''t understand');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (6, 2, 'asking to repeat');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (6, 3, 'asking for explanations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (6, 4, 'seeking detailed clarification');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (6, 5, 'negotiating meaning');

-- Express emotions (action_id = 7)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (7, 1, 'using basic feeling words');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (7, 2, 'describing simple emotions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (7, 3, 'explaining emotional states');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (7, 4, 'discussing complex feelings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (7, 5, 'expressing nuanced emotions');

-- Daily Life
-- Order food (action_id = 8)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (8, 1, 'ordering simple items');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (8, 2, 'specifying preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (8, 3, 'making special requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (8, 4, 'discussing ingredients and preparation');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (8, 5, 'handling dietary requirements');

-- Shop (action_id = 9)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (9, 1, 'asking for items');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (9, 2, 'comparing prices');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (9, 3, 'discussing product features');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (9, 4, 'handling returns');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (9, 5, 'negotiating purchases');

-- Make appointments (action_id = 10)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (10, 1, 'scheduling simple meetings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (10, 2, 'confirming arrangements');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (10, 3, 'rescheduling meetings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (10, 4, 'coordinating multiple schedules');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (10, 5, 'managing complex scheduling');

-- Use transportation (action_id = 11)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (11, 1, 'buying tickets');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (11, 2, 'asking about schedules');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (11, 3, 'handling travel changes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (11, 4, 'solving transportation problems');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (11, 5, 'navigating complex systems');

-- Describe health (action_id = 12)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (12, 1, 'naming basic symptoms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (12, 2, 'describing pain/discomfort');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (12, 3, 'explaining medical history');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (12, 4, 'discussing treatment options');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (12, 5, 'handling medical emergencies');

-- Handle emergencies (action_id = 13)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (13, 1, 'calling for help');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (13, 2, 'describing urgent situations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (13, 3, 'explaining emergency details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (13, 4, 'coordinating emergency response');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (13, 5, 'managing crisis situations');

-- Discuss weather (action_id = 14)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (14, 1, 'describing basic weather');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (14, 2, 'discussing temperature and conditions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (14, 3, 'talking about weather patterns');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (14, 4, 'discussing climate changes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (14, 5, 'analyzing weather phenomena');

-- Social and Personal
-- Share background (action_id = 15)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (15, 1, 'stating origin and nationality');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (15, 2, 'describing hometown');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (15, 3, 'sharing life experiences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (15, 4, 'discussing cultural influences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (15, 5, 'analyzing personal development');

-- Discuss interests (action_id = 16)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (16, 1, 'naming hobbies');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (16, 2, 'describing activities');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (16, 3, 'explaining preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (16, 4, 'discussing expertise');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (16, 5, 'analyzing passions deeply');

-- Share opinions (action_id = 17)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (17, 1, 'expressing likes/dislikes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (17, 2, 'giving simple reasons');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (17, 3, 'explaining viewpoints');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (17, 4, 'debating ideas');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (17, 5, 'analyzing complex issues');

-- Describe relationships (action_id = 18)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (18, 1, 'naming family members');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (18, 2, 'describing family roles');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (18, 3, 'explaining relationships');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (18, 4, 'discussing dynamics');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (18, 5, 'analyzing complex relationships');

-- Make plans (action_id = 19)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (19, 1, 'suggesting simple activities');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (19, 2, 'arranging meetings');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (19, 3, 'coordinating events');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (19, 4, 'organizing complex activities');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (19, 5, 'planning major events');

-- Express preferences (action_id = 20)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (20, 1, 'stating simple preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (20, 2, 'explaining choices');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (20, 3, 'discussing preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (20, 4, 'justifying preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (20, 5, 'analyzing complex preferences');

-- Tell stories (action_id = 21)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (21, 1, 'sharing simple events');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (21, 2, 'describing past experiences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (21, 3, 'narrating events');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (21, 4, 'crafting detailed stories');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (21, 5, 'telling complex narratives');

-- Professional
-- Conduct basic business communication (action_id = 22)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (22, 1, 'exchanging basic pleasantries');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (22, 2, 'writing simple messages');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (22, 3, 'conducting short conversations');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (22, 4, 'drafting formal correspondence');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (22, 5, 'leading business discussions');

-- Participate in meetings (action_id = 23)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (23, 1, 'attending simple discussions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (23, 2, 'expressing opinions briefly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (23, 3, 'summarizing meeting points');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (23, 4, 'leading small discussions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (23, 5, 'managing complex meetings');

-- Describe your work (action_id = 24)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (24, 1, 'stating your job title');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (24, 2, 'explaining basic duties');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (24, 3, 'describing job processes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (24, 4, 'explaining work challenges');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (24, 5, 'discussing career goals and achievements');

-- Schedule appointments (action_id = 25)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (25, 1, 'making simple arrangements');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (25, 2, 'adjusting appointments');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (25, 3, 'managing conflicting schedules');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (25, 4, 'coordinating team schedules');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (25, 5, 'handling complex scheduling systems');

-- Write simple emails (action_id = 26)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (26, 1, 'writing short emails');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (26, 2, 'composing polite requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (26, 3, 'explaining ideas clearly');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (26, 4, 'writing detailed instructions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (26, 5, 'creating formal business proposals');

-- Give basic presentations (action_id = 27)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (27, 1, 'introducing simple topics');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (27, 2, 'explaining key points');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (27, 3, 'using visual aids effectively');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (27, 4, 'managing audience questions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (27, 5, 'delivering persuasive presentations');

-- Travel and Navigation
-- Ask for directions (action_id = 28)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (28, 1, 'asking for basic directions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (28, 2, 'understanding simple routes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (28, 3, 'clarifying complex routes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (28, 4, 'explaining navigation details');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (28, 5, 'using advanced navigation tools');

-- Book accommodations (action_id = 29)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (29, 1, 'reserving a room');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (29, 2, 'discussing room preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (29, 3, 'handling booking issues');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (29, 4, 'negotiating terms');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (29, 5, 'arranging group accommodations');

-- Navigate transportation (action_id = 30)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (30, 1, 'using maps and schedules');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (30, 2, 'understanding transfer routes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (30, 3, 'asking for travel advice');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (30, 4, 'handling unexpected changes');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (30, 5, 'navigating international systems');

-- Handle travel problems (action_id = 31)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (31, 1, 'reporting simple issues');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (31, 2, 'describing lost items');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (31, 3, 'requesting solutions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (31, 4, 'resolving conflicts');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (31, 5, 'managing major disruptions');

-- Order food while traveling (action_id = 32)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (32, 1, 'choosing basic menu items');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (32, 2, 'customizing orders');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (32, 3, 'discussing dietary restrictions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (32, 4, 'explaining special requests');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (32, 5, 'exploring local cuisine confidently');

-- Ask for recommendations (action_id = 33)
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (33, 1, 'requesting simple suggestions');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (33, 2, 'asking for popular options');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (33, 3, 'inquiring about cultural highlights');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (33, 4, 'discussing personal preferences');
INSERT INTO "actions_levels" ("action_id", "level_id", "name") VALUES (33, 5, 'analyzing detailed recommendations');


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