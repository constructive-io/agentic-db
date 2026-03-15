-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/columns/id/alterations/alt0000001225
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tools/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflows 
  ALTER COLUMN id SET NOT NULL;

