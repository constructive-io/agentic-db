-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.reminder_chunks 
  DROP COLUMN embedding_text RESTRICT;


