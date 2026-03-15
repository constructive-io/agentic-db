-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/columns/id/alterations/alt0000001306
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_tools 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

