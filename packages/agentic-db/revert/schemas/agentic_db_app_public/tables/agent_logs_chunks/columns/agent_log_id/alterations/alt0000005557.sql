-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/agent_log_id/alterations/alt0000005557


ALTER TABLE agentic_db_app_public.agent_logs_chunks 
  ALTER COLUMN agent_log_id DROP NOT NULL;


