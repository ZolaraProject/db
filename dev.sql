INSERT INTO "users" ("id", "email", "password", "username") VALUES (1, 'test0', 'test0', 'test0');
INSERT INTO "users" ("id", "email", "password", "username") VALUES (2, 'test1', 'test1', 'test1');
INSERT INTO "users" ("id", "email", "password", "username") VALUES (4, 'test2', 'test2', 'test2');

INSERT INTO "actions" ("id", "name") VALUES (1, 'action0');
INSERT INTO "actions" ("id", "name") VALUES (2, 'action1');
INSERT INTO "actions" ("id", "name") VALUES (3, 'action2');

INSERT INTO "interests" ("id", "name") VALUES (1, 'interest0');
INSERT INTO "interests" ("id", "name") VALUES (2, 'interest1');
INSERT INTO "interests" ("id", "name") VALUES (3, 'interes2');

INSERT INTO "languages" ("id", "name") VALUES (1, 'English');
INSERT INTO "languages" ("id", "name") VALUES (2, 'French');
INSERT INTO "languages" ("id", "name") VALUES (3, 'Korean');
INSERT INTO "languages" ("id", "name") VALUES (4, 'Spanish');
INSERT INTO "languages" ("id", "name") VALUES (5, 'Japanese');

INSERT INTO "levels" ("id", "proficiency") VALUES (1, 'A1');
INSERT INTO "levels" ("id", "proficiency") VALUES (2, 'A2');
INSERT INTO "levels" ("id", "proficiency") VALUES (3, 'B1');
INSERT INTO "levels" ("id", "proficiency") VALUES (4, 'B2');
INSERT INTO "levels" ("id", "proficiency") VALUES (5, 'C1');
INSERT INTO "levels" ("id", "proficiency") VALUES (6, 'C2');

INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id", "interest_id") VALUES (1, 1, 5, 1, NULL);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id", "interest_id") VALUES (1, 1, 5, 2, NULL);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id", "interest_id") VALUES (1, 1, 5, NULL, 3);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id", "interest_id") VALUES (1, 2, 4, 1, NULL);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id", "interest_id") VALUES (2, 3, 1, 2, NULL);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id", "interest_id") VALUES (2, 1, 3, 2, NULL);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id", "interest_id") VALUES (4, 4, 5, 3, NULL);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id", "interest_id") VALUES (4, 2, 3, 3, NULL);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id", "interest_id") VALUES (4, 2, 3, NULL, 1);
INSERT INTO "user_profiles" ("user_id", "language_id", "level_id", "action_id", "interest_id") VALUES (4, 5, 1, 2, NULL);
