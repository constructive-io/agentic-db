-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ADD COLUMN id uuid;

