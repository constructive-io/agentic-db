-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/constraints/sessions_agent_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/metadata/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  ADD CONSTRAINT sessions_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES "agent-os-1773551593867-bac64076-app-public".agents (id) 
    ON DELETE CASCADE;

