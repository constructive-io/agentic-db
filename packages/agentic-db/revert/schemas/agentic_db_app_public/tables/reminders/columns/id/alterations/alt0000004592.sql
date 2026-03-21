-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/id/alterations/alt0000004592


ALTER TABLE agentic_db_app_public.reminders 
  ALTER COLUMN id DROP NOT NULL;


