-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/columns/source_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/columns/content/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".documents 
  ADD COLUMN source_type text;

