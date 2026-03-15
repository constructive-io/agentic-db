-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/id/alterations/alt0000001235
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/columns/tags/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_steps 
  ALTER COLUMN id SET NOT NULL;

