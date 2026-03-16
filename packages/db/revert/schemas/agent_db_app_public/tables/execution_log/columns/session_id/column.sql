-- Revert: schemas/agent_db_app_public/tables/execution_log/columns/session_id/column


ALTER TABLE "agent_db_app_public".execution_log 
  DROP COLUMN session_id RESTRICT;


