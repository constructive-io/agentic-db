-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/updated_at/alterations/alt0000002611


ALTER TABLE "agentic_db_app_public".reminders 
  ALTER COLUMN updated_at DROP NOT NULL;


