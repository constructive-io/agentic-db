-- Deploy: schemas/agentic_db_app_public/tables/skills/constraints/skills_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE agentic_db_app_public.skills 
  ADD CONSTRAINT skills_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES agentic_db_app_public.agents (id) 
    ON DELETE CASCADE;

