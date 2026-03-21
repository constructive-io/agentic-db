-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/reminder_id/column


ALTER TABLE agentic_db_app_public.reminder_chunks 
  DROP COLUMN reminder_id RESTRICT;


