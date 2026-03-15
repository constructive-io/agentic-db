-- Revert: schemas/agent_db_app_public/tables/execution_log/columns/created_at/column


ALTER TABLE agent_db_app_public.execution_log 
  DROP COLUMN created_at RESTRICT;


