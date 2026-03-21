-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/created_at/column


ALTER TABLE agentic_db_app_public.reminders 
  DROP COLUMN created_at RESTRICT;


