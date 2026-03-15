-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/alterations/alt0000001245
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_runs 
  DISABLE ROW LEVEL SECURITY;

