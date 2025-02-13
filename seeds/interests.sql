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