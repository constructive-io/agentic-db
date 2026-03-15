-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/columns/workflow_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/columns/updated_at/alterations/alt0000001252


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_runs 
  ADD COLUMN workflow_id uuid;

