-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/due_at/column


ALTER TABLE "agentic_db_app_public".reminders 
  DROP COLUMN due_at RESTRICT;


