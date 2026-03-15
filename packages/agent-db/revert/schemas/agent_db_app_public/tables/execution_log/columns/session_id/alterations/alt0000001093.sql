-- Revert: schemas/agent_db_app_public/tables/execution_log/columns/session_id/alterations/alt0000001093


ALTER TABLE agent_db_app_public.execution_log 
  ALTER COLUMN session_id DROP NOT NULL;


