-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/constraints/execution_logs_session_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/constraints/sessions_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
  ADD CONSTRAINT execution_logs_session_id_fkey 
    FOREIGN KEY(session_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".sessions (id) 
    ON DELETE CASCADE;

