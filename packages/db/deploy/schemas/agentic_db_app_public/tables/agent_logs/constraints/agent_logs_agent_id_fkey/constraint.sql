-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/constraints/agent_logs_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE "agentic_db_app_public".agent_logs 
  ADD CONSTRAINT agent_logs_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES "agentic_db_app_public".agents (id) 
    ON DELETE CASCADE;

