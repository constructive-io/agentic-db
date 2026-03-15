-- Revert: schemas/agent_db_app_public/tables/execution_log/constraints/execution_logs_session_id_fkey/constraint


ALTER TABLE agent_db_app_public.execution_log 
  DROP CONSTRAINT execution_logs_session_id_fkey;


