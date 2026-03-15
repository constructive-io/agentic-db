-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/columns/status/alterations/alt0000001254
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/columns/status/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/columns/workflow_id/alterations/alt0000001253



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_runs 
    ALTER COLUMN status SET DEFAULT 'pending';

