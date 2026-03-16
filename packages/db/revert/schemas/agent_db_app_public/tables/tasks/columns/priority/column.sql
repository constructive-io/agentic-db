-- Revert: schemas/agent_db_app_public/tables/tasks/columns/priority/column


ALTER TABLE "agent_db_app_public".tasks 
  DROP COLUMN priority RESTRICT;


