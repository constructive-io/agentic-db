-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/recurrence/column


ALTER TABLE agentic_db_app_public.reminders 
  DROP COLUMN recurrence RESTRICT;


