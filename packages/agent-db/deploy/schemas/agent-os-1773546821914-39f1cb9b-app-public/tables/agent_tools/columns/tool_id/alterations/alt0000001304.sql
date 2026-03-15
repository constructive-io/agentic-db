-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/columns/tool_id/alterations/alt0000001304
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/columns/tool_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_tools 
  ALTER COLUMN tool_id SET NOT NULL;

