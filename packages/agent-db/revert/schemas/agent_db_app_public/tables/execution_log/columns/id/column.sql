-- Revert: schemas/agent_db_app_public/tables/execution_log/columns/id/column


ALTER TABLE "agent_db_app_public".execution_log 
  DROP COLUMN id RESTRICT;


