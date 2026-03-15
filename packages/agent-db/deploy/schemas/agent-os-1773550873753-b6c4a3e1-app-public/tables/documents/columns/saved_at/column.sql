-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/columns/saved_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/columns/is_read/alterations/alt0000001419


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".documents 
  ADD COLUMN saved_at timestamptz;

