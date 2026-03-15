-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_runs 
  ADD COLUMN entity_id uuid;

