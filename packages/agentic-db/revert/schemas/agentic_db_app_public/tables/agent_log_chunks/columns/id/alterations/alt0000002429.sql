-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/id/alterations/alt0000002429


ALTER TABLE agentic_db_app_public.agent_log_chunks 
  ALTER COLUMN id DROP NOT NULL;


