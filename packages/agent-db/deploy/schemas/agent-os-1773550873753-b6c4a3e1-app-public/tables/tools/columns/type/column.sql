-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tools/columns/type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tools/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tools/columns/description/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tools 
  ADD COLUMN type text;

