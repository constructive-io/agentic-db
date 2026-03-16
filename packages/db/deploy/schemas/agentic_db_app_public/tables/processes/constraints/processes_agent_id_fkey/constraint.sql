-- Deploy: schemas/agentic_db_app_public/tables/processes/constraints/processes_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/threads/constraints/threads_parent_thread_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".processes 
  ADD CONSTRAINT processes_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES "agentic_db_app_public".agents (id) 
    ON DELETE CASCADE;

