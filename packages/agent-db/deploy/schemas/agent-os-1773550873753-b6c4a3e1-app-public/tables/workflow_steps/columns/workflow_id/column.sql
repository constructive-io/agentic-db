-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/workflow_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/updated_at/alterations/alt0000001241


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_steps 
  ADD COLUMN workflow_id uuid;

