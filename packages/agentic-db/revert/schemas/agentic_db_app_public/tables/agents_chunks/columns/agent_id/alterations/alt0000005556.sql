-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/agent_id/alterations/alt0000005556


ALTER TABLE agentic_db_app_public.agents_chunks 
  ALTER COLUMN agent_id DROP NOT NULL;


