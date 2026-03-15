-- Revert: schemas/agent_db_app_public/tables/tasks/columns/title/column


ALTER TABLE "agent_db_app_public".tasks 
  DROP COLUMN title RESTRICT;


