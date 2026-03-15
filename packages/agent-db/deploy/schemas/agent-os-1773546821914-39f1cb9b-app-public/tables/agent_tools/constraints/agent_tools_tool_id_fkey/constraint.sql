-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/constraints/agent_tools_tool_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_tools 
  ADD CONSTRAINT agent_tools_tool_id_fkey 
    FOREIGN KEY(tool_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".tools (id) 
    ON DELETE CASCADE;

