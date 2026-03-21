-- Deploy: schemas/agentic_db_app_public/tables/sessions/constraints/sessions_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".sessions 
  ADD CONSTRAINT sessions_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES "agentic_db_app_public".agents (id) 
    ON DELETE CASCADE;

