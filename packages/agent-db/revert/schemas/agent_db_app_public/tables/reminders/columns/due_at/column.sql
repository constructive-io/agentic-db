-- Revert: schemas/agent_db_app_public/tables/reminders/columns/due_at/column


ALTER TABLE "agent_db_app_public".reminders 
  DROP COLUMN due_at RESTRICT;


