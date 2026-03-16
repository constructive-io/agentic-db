-- Revert: schemas/agent_db_app_public/tables/execution_log/columns/input/column


ALTER TABLE "agent_db_app_public".execution_log 
  DROP COLUMN input RESTRICT;


