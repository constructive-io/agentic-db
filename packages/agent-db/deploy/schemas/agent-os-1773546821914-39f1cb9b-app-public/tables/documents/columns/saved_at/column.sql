-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/saved_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/is_read/alterations/alt0000001419


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
  ADD COLUMN saved_at timestamptz;

