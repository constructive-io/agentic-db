-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/columns/id/alterations/alt0000004251


ALTER TABLE agentic_db_app_public.agent_chunks 
  ALTER COLUMN id DROP NOT NULL;


