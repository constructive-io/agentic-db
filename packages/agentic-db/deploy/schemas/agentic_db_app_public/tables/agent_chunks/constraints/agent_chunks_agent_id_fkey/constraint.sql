-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/constraints/agent_chunks_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_agent_id_idx


ALTER TABLE agentic_db_app_public.agent_chunks 
  ADD CONSTRAINT agent_chunks_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES agentic_db_app_public.agents (id) 
    ON DELETE CASCADE;

