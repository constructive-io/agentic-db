-- Revert: schemas/agent_db_app_public/tables/execution_log/columns/duration_ms/column


ALTER TABLE agent_db_app_public.execution_log 
  DROP COLUMN duration_ms RESTRICT;


