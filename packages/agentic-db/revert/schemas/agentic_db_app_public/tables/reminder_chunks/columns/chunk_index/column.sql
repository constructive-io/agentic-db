-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.reminder_chunks 
  DROP COLUMN chunk_index RESTRICT;


