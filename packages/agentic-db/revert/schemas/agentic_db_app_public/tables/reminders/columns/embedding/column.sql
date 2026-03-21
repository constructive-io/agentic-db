-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/embedding/column


ALTER TABLE agentic_db_app_public.reminders 
  DROP COLUMN embedding RESTRICT;


