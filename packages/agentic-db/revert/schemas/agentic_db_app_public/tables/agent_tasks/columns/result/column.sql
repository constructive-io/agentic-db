-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/result/column


ALTER TABLE "agentic_db_app_public".agent_tasks 
  DROP COLUMN result RESTRICT;


