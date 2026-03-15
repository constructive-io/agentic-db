-- Revert: schemas/agent_db_app_public/tables/reminders/columns/title/alterations/alt0000004661


ALTER TABLE "agent_db_app_public".reminders 
  ALTER COLUMN title DROP NOT NULL;


