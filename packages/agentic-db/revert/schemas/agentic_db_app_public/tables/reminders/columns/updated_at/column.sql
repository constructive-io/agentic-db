-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/updated_at/column


ALTER TABLE agentic_db_app_public.reminders 
  DROP COLUMN updated_at RESTRICT;


