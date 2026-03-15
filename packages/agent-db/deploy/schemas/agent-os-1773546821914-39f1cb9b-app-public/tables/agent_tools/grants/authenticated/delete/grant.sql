-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".agent_tools TO authenticated;

