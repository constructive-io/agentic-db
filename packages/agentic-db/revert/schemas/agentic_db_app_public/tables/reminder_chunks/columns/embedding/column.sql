-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.reminder_chunks 
  DROP COLUMN embedding RESTRICT;


