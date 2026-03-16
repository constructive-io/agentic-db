-- Revert: schemas/agent_db_app_public/tables/reminders/columns/id/column


ALTER TABLE "agent_db_app_public".reminders 
  DROP COLUMN id RESTRICT;


