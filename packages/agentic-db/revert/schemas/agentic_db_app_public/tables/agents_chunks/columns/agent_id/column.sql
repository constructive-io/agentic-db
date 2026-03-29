-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/agent_id/column


ALTER TABLE agentic_db_app_public.agents_chunks 
  DROP COLUMN agent_id RESTRICT;


