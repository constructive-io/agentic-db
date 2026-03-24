-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/constraints/agent_logs_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.agent_logs_chunks 
  DROP CONSTRAINT agent_logs_chunks_pkey;


