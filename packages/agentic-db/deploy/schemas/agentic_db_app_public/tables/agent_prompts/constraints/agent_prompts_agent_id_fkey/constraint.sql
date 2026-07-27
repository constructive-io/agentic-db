-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/constraints/agent_prompts_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table


ALTER TABLE agentic_db_app_public.agent_prompts 
  ADD CONSTRAINT agent_prompts_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES agentic_db_app_public.agents (id) 
    ON DELETE CASCADE;

