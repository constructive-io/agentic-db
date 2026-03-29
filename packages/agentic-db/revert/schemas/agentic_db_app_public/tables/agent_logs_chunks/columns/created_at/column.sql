-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.agent_logs_chunks 
  DROP COLUMN created_at RESTRICT;


