-- Revert: schemas/agent_db_app_public/tables/execution_log/columns/step_name/column


ALTER TABLE "agent_db_app_public".execution_log 
  DROP COLUMN step_name RESTRICT;


