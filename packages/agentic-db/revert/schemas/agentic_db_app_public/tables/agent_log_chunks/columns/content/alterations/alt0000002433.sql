-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/content/alterations/alt0000002433


ALTER TABLE agentic_db_app_public.agent_log_chunks 
  ALTER COLUMN content DROP NOT NULL;


