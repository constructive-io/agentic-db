-- Deploy: schemas/agentic_db_app_public/tables/execution_log/constraints/execution_logs_session_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/sessions/constraints/sessions_agent_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".execution_log 
  ADD CONSTRAINT execution_logs_session_id_fkey 
    FOREIGN KEY(session_id) 
    REFERENCES "agentic_db_app_public".sessions (id) 
    ON DELETE CASCADE;

