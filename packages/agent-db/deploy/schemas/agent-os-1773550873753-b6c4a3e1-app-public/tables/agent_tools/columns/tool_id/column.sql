-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_tools/columns/tool_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_tools/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_tools 
  ADD COLUMN tool_id uuid;

