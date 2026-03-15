-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/columns/trigger_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/columns/description/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflows 
  ADD COLUMN trigger_type text;

