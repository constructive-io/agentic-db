-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/constraints/execution_logs_session_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/constraints/sessions_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".execution_log 
  ADD CONSTRAINT execution_logs_session_id_fkey 
    FOREIGN KEY(session_id) 
    REFERENCES "agent-os-1773551593867-bac64076-app-public".sessions (id) 
    ON DELETE CASCADE;

