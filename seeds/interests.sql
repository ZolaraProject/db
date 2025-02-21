-- Insert interests
INSERT INTO "interests" ("name", "image_url") VALUES ('Sports', 'sports.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Politics', 'politics.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Cinema', 'cinema.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Music', 'music.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Technology', 'technology.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Travel', 'travel.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Food', 'food.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Literature', 'literature.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Science', 'science.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Gaming', 'gaming.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Art', 'art.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('History', 'history.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Fashion', 'fashion.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Environment', 'environment.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Business & Finance', 'business_finance.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Health & Wellness', 'health_wellness.svg');
INSERT INTO "interests" ("name", "image_url") VALUES ('Spirituality', 'spirituality.svg');

SELECT setval(pg_get_serial_sequence('interests', 'id'), coalesce((SELECT MAX(id) FROM interests), 0) + 1, false);