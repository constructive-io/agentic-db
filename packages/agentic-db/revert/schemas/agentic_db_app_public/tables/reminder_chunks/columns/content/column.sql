-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.reminder_chunks 
  DROP COLUMN content RESTRICT;


