-- Revert: schemas/agent_db_app_public/tables/reminders/columns/status/column


ALTER TABLE "agent_db_app_public".reminders 
  DROP COLUMN status RESTRICT;


