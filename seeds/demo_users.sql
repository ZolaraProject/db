-- DemoUser:

INSERT INTO "users" ("email", "password", "username") VALUES ('demouser@demouser.demo', '$2y$14$u0n/MIOTbHTh5Lrp1uz4sODAPMme02uOkxsiwmqYx8RTS3HLW.XR2', 'DemoUser');

-- Made a mistake on the "Sentence Structure" concept
INSERT INTO user_mistakes (linguistic_concept_id, user_id, message_id)
VALUES (8, 5, NULL);

-- Demo User wants to learn in  English :
-- 1. Asking and telling time:
-- 2. Introducing yourself and others
-- 3. Describe something
-- 4. Greeting and making Small Talk
INSERT INTO user_profiles (user_id, language_id, action_id)
VALUES (5, 1, 1);
INSERT INTO user_profiles (user_id, language_id, action_id)
VALUES (5, 1, 2);
INSERT INTO user_profiles (user_id, language_id, action_id)
VALUES (5, 1, 3);
INSERT INTO user_profiles (user_id, language_id, action_id)
VALUES (5, 1, 4);

-- Demo User wants to learn in French :
-- 1. Asking and telling time:
-- 2. Introducing yourself and others
INSERT INTO user_profiles (user_id, language_id, action_id)
VALUES (5, 2, 1);
INSERT INTO user_profiles (user_id, language_id, action_id)
VALUES (5, 2, 2);

-- Demo User is currently learning English
INSERT INTO user_activity (user_id, current_language_id)
VALUES (5, 1);

-- Demo User has interests in:
-- 1. Sports
-- 2. Politics
-- 3. Cinema
INSERT INTO user_interests (user_id, interest_id)
VALUES (5, 1);

INSERT INTO user_interests (user_id, interest_id)
VALUES (5, 2);

INSERT INTO user_interests (user_id, interest_id)
VALUES (5, 3);