-- Revert: schemas/agent_db_app_public/tables/tasks/columns/task_type/column


ALTER TABLE "agent_db_app_public".tasks 
  DROP COLUMN task_type RESTRICT;


