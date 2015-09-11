PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
INSERT INTO "schema_migrations" VALUES('20150902170303');
INSERT INTO "schema_migrations" VALUES('20150902172142');
INSERT INTO "schema_migrations" VALUES('20150902174028');
INSERT INTO "schema_migrations" VALUES('20150902174341');
INSERT INTO "schema_migrations" VALUES('20150903112141');
INSERT INTO "schema_migrations" VALUES('20150903112534');
INSERT INTO "schema_migrations" VALUES('20150903112605');
INSERT INTO "schema_migrations" VALUES('20150903130552');
INSERT INTO "schema_migrations" VALUES('20150903131550');
INSERT INTO "schema_migrations" VALUES('20150903135444');
INSERT INTO "schema_migrations" VALUES('20150904090648');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "name" varchar);
INSERT INTO "users" VALUES(2,'tansy.rv@gmail.com','$2a$10$trtwxz.hYqo6xK2XyE1nFeMngCGdPDY4Vbii/sdoO4QzYCbxAAxTi',NULL,NULL,NULL,4,'2015-09-04 07:22:59.185178','2015-09-03 08:26:54.197385','127.0.0.1','127.0.0.1','2015-09-02 17:33:44.626163','2015-09-04 07:22:59.186163',NULL);
INSERT INTO "users" VALUES(3,'a@b.com','$2a$10$E.InNJUWE7ggGMYoq5xi7OQVRIHvbB5ljus1ory9W.37efDy.63Dm',NULL,NULL,NULL,1,'2015-09-02 18:03:33.361614','2015-09-02 18:03:33.361614','127.0.0.1','127.0.0.1','2015-09-02 18:03:33.240866','2015-09-02 18:03:33.362434',NULL);
INSERT INTO "users" VALUES(4,'q@w.com','$2a$10$aos.p.j45wwbqBoxUki/aexRm9c6fEEDUWOp4QMe0dD83mk5b1Mxy',NULL,NULL,NULL,2,'2015-09-03 11:59:15.511687','2015-09-03 11:54:41.312555','127.0.0.1','127.0.0.1','2015-09-03 11:54:41.176117','2015-09-03 11:59:15.512659',NULL);
INSERT INTO "users" VALUES(5,'prachi@a.com','$2a$10$HUWd7hPoLLRKcR2qR1l6iu6UXji9.viVZ6YbAggadhayJ5JNfe7ZK',NULL,NULL,NULL,1,'2015-09-04 09:00:27.639288','2015-09-04 09:00:27.639288','127.0.0.1','127.0.0.1','2015-09-04 09:00:27.531496','2015-09-04 09:00:27.640568',NULL);
CREATE TABLE "projs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "description" text, "owner" integer, "settings" boolean, "members" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "owner_id" integer, "user_id" integer);
INSERT INTO "projs" VALUES(1,'qwerty','asdsfsf ',2,'f','asd sad','2015-09-02 17:45:52.471374','2015-09-02 17:45:52.471374',NULL,2);
INSERT INTO "projs" VALUES(2,'dg  fhghg','nhj jh j',NULL,'f','gh hg h ','2015-09-02 17:46:23.101890','2015-09-02 17:46:23.101890',NULL,2);
INSERT INTO "projs" VALUES(3,'a','gvy',NULL,'f','oim,l','2015-09-02 18:03:57.368256','2015-09-02 18:03:57.368256',NULL,3);
INSERT INTO "projs" VALUES(5,'fourth','asdf dsa fasd ',NULL,'f','','2015-09-03 11:11:22.053743','2015-09-03 11:11:22.053743',NULL,2);
INSERT INTO "projs" VALUES(6,'qwewq','s sdf sd',NULL,'f','','2015-09-03 11:55:17.028272','2015-09-03 11:55:17.028272',NULL,4);
INSERT INTO "projs" VALUES(7,'prachi','random',NULL,'t','','2015-09-04 09:00:58.762930','2015-09-04 09:00:58.762930',NULL,5);
INSERT INTO "projs" VALUES(8,'a','a',NULL,'f',NULL,'2015-09-04 09:38:11.799236','2015-09-04 09:38:11.799236',NULL,NULL);
INSERT INTO "projs" VALUES(9,'hjgjhf','ghn ',NULL,'f',NULL,'2015-09-04 09:46:04.810380','2015-09-04 09:46:04.810380',NULL,NULL);
INSERT INTO "projs" VALUES(10,'new','new',NULL,'f',NULL,'2015-09-04 10:18:25.570030','2015-09-04 10:18:25.570030',NULL,NULL);
INSERT INTO "projs" VALUES(11,'new2','new2',NULL,'f',NULL,'2015-09-04 10:20:20.472748','2015-09-04 10:20:20.472748',NULL,NULL);
INSERT INTO "projs" VALUES(12,'ryni','iuy',NULL,'f',NULL,'2015-09-04 10:21:14.759317','2015-09-04 10:21:14.759317',NULL,NULL);
INSERT INTO "projs" VALUES(13,'ne3','ne3',NULL,'f',NULL,'2015-09-04 10:27:40.839460','2015-09-04 10:27:40.839460',NULL,NULL);
INSERT INTO "projs" VALUES(14,'new3','new3',NULL,'f',NULL,'2015-09-04 10:28:17.981860','2015-09-04 10:28:17.981860',NULL,NULL);
INSERT INTO "projs" VALUES(15,'tryyy','tryyy',NULL,'f',NULL,'2015-09-04 10:30:24.231561','2015-09-04 10:30:24.231561',NULL,NULL);
INSERT INTO "projs" VALUES(16,'sd','sd',NULL,'f',NULL,'2015-09-04 10:31:51.004266','2015-09-04 10:31:51.004266',NULL,NULL);
INSERT INTO "projs" VALUES(17,'ss','ss',5,'f',NULL,'2015-09-04 10:39:42.036642','2015-09-04 10:39:42.036642',NULL,NULL);
INSERT INTO "projs" VALUES(18,'kjgr','ker',5,'t',NULL,'2015-09-04 10:55:39.993582','2015-09-04 10:55:39.993582',NULL,NULL);
INSERT INTO "projs" VALUES(19,'ssad','ssad',5,'t',NULL,'2015-09-04 10:56:23.045003','2015-09-04 10:56:23.045003',NULL,NULL);
CREATE TABLE "issues" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "description" text, "assignee" integer, "votes" integer, "milestone" text, "status" integer, "settings" boolean, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer, "proj_id" integer);
INSERT INTO "issues" VALUES(1,'first','adsf asad ',NULL,NULL,'sdf sd fds ',1,'f','2015-09-03 11:30:24.935075','2015-09-03 11:30:24.935075',NULL,NULL);
INSERT INTO "issues" VALUES(2,'qwerty','adsf afs',NULL,NULL,'sdf sdsd',1,'f','2015-09-03 11:45:13.467072','2015-09-03 11:45:13.467072',2,NULL);
INSERT INTO "issues" VALUES(3,'adszd as d','asd ads ',NULL,NULL,'s sd sd ',2,'f','2015-09-03 11:48:49.630000','2015-09-03 11:48:49.630000',2,NULL);
INSERT INTO "issues" VALUES(4,'asdf s','asd fsd ',NULL,NULL,'asdf sd2',2,'f','2015-09-03 11:56:42.657081','2015-09-03 11:56:42.657081',4,NULL);
INSERT INTO "issues" VALUES(5,'asdf as','asds s',NULL,NULL,'asdf sd a',2,'f','2015-09-03 11:59:46.579825','2015-09-03 11:59:46.579825',4,NULL);
INSERT INTO "issues" VALUES(6,'qwe','qwdss sddfs',NULL,NULL,'ads afsd',2,'f','2015-09-03 12:31:48.115408','2015-09-03 12:31:48.115408',2,NULL);
INSERT INTO "issues" VALUES(7,'asf sf','asdf sad fd',NULL,NULL,'ads sdf ',3,'f','2015-09-03 12:36:49.864005','2015-09-03 12:36:49.864005',2,NULL);
INSERT INTO "issues" VALUES(8,'qwe ewe','weqf ewf',NULL,NULL,'saf sds f',2,'f','2015-09-03 12:38:29.591315','2015-09-03 12:38:29.591315',2,NULL);
INSERT INTO "issues" VALUES(9,'asdf sd','asd fasdf adsf',NULL,NULL,'sdf sd',2,'f','2015-09-03 12:39:56.007982','2015-09-03 12:39:56.007982',2,NULL);
INSERT INTO "issues" VALUES(10,'asdfj df sd','ds ad fgfd s',NULL,NULL,'sdf sfsdf sd ',2,'t','2015-09-04 11:09:09.187552','2015-09-04 11:09:09.187552',5,NULL);
CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "issue_id" integer, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "comments" VALUES(1,'asd s sd ssd ',6,2,'2015-09-03 13:44:00.756399','2015-09-03 13:44:00.978869');
INSERT INTO "comments" VALUES(2,'sdf sdfdsf ',6,2,'2015-09-03 13:44:09.723460','2015-09-03 13:44:09.896888');
INSERT INTO "comments" VALUES(3,'sfdd sd ',7,2,'2015-09-03 14:18:17.650311','2015-09-03 14:18:17.824389');
CREATE TABLE "votes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "votable_id" integer, "votable_type" varchar, "voter_id" integer, "voter_type" varchar, "vote_flag" boolean, "vote_scope" varchar, "vote_weight" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "votes" VALUES(1,6,'Issue',2,'User','t',NULL,1,'2015-09-03 14:08:46.786996','2015-09-03 14:08:54.820960');
INSERT INTO "votes" VALUES(2,7,'Issue',2,'User','f',NULL,1,'2015-09-03 14:18:25.434178','2015-09-03 14:18:27.777142');
INSERT INTO "votes" VALUES(3,10,'Issue',5,'User','t',NULL,1,'2015-09-04 11:09:35.858977','2015-09-04 11:09:35.858977');
CREATE TABLE "projs_users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "proj_id" integer, "user_id" integer);
INSERT INTO "projs_users" VALUES(2,8,3);
INSERT INTO "projs_users" VALUES(4,9,3);
INSERT INTO "projs_users" VALUES(5,10,2);
INSERT INTO "projs_users" VALUES(6,11,2);
INSERT INTO "projs_users" VALUES(7,12,4);
INSERT INTO "projs_users" VALUES(8,13,2);
INSERT INTO "projs_users" VALUES(9,14,3);
INSERT INTO "projs_users" VALUES(10,15,3);
INSERT INTO "projs_users" VALUES(11,16,3);
INSERT INTO "projs_users" VALUES(12,17,3);
INSERT INTO "projs_users" VALUES(13,18,2);
INSERT INTO "projs_users" VALUES(14,19,2);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('users',5);
INSERT INTO "sqlite_sequence" VALUES('projs',19);
INSERT INTO "sqlite_sequence" VALUES('issues',10);
INSERT INTO "sqlite_sequence" VALUES('comments',3);
INSERT INTO "sqlite_sequence" VALUES('votes',3);
INSERT INTO "sqlite_sequence" VALUES('projs_users',14);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE INDEX "index_comments_on_issue_id" ON "comments" ("issue_id");
CREATE INDEX "index_comments_on_user_id" ON "comments" ("user_id");
CREATE INDEX "index_votes_on_voter_id_and_voter_type_and_vote_scope" ON "votes" ("voter_id", "voter_type", "vote_scope");
CREATE INDEX "index_votes_on_votable_id_and_votable_type_and_vote_scope" ON "votes" ("votable_id", "votable_type", "vote_scope");
CREATE UNIQUE INDEX "index_projs_users_on_proj_id_and_user_id" ON "projs_users" ("proj_id", "user_id");
COMMIT;
