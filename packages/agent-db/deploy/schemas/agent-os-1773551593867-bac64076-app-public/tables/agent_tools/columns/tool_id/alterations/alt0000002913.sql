-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_tools/columns/tool_id/alterations/alt0000002913
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_tools/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_tools/columns/tool_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_tools 
  ALTER COLUMN tool_id SET NOT NULL;

