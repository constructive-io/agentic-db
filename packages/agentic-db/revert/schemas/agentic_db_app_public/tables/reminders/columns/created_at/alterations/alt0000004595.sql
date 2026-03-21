-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/created_at/alterations/alt0000004595


ALTER TABLE agentic_db_app_public.reminders 
  ALTER COLUMN created_at DROP NOT NULL;


