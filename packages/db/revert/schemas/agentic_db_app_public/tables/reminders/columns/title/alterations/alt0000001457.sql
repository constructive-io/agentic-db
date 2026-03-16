-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/title/alterations/alt0000001457


ALTER TABLE "agentic_db_app_public".reminders 
  ALTER COLUMN title DROP NOT NULL;


