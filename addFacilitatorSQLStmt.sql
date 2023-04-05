BEGIN;
--
-- Add field facilitor to question
--
CREATE TABLE "new__polls_question" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "facilitor" varchar(200) NOT NULL, "question_text" varchar(200) NOT NULL, "pub_date" datetime NOT NULL);
INSERT INTO "new__polls_question" ("id", "question_text", "pub_date", "facilitor") SELECT "id", "question_text", "pub_date", 'NULL' FROM "polls_question";
DROP TABLE "polls_question";
ALTER TABLE "new__polls_question" RENAME TO "polls_question";
COMMIT;