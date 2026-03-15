-- Revert: schemas/agent_db_app_public/tables/reminders/columns/recurrence/column


ALTER TABLE "agent_db_app_public".reminders 
  DROP COLUMN recurrence RESTRICT;


