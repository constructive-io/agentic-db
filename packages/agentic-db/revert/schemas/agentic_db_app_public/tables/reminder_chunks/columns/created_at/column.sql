-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.reminder_chunks 
  DROP COLUMN created_at RESTRICT;


