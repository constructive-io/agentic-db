-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/constraints/agent_chunks_agent_id_fkey/constraint


ALTER TABLE agentic_db_app_public.agent_chunks 
  DROP CONSTRAINT agent_chunks_agent_id_fkey;


