-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_tools/constraints/agent_tools_agent_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_tools/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_tools 
  ADD CONSTRAINT agent_tools_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-app-public".agents (id) 
    ON DELETE CASCADE;

