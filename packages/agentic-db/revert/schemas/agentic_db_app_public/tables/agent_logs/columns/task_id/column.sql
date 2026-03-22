-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/task_id/column


ALTER TABLE "agentic_db_app_public".agent_logs 
  DROP COLUMN task_id RESTRICT;


