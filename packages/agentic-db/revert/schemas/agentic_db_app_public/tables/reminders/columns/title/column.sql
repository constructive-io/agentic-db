-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/title/column


ALTER TABLE agentic_db_app_public.reminders 
  DROP COLUMN title RESTRICT;


