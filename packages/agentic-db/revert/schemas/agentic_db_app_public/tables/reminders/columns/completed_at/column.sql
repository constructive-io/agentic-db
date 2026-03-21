-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/completed_at/column


ALTER TABLE agentic_db_app_public.reminders 
  DROP COLUMN completed_at RESTRICT;


