-- Deploy: schemas/agentic_db_app_public/tables/rules/constraints/rules_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/agents/table


ALTER TABLE agentic_db_app_public.rules 
  ADD CONSTRAINT rules_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES agentic_db_app_public.agents (id) 
    ON DELETE CASCADE;

