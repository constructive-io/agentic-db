-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/columns/updated_at/alterations/alt0000001231


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflows 
  ADD COLUMN name text;

