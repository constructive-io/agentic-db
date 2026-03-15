-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/is_read/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/source_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
  ADD COLUMN is_read bool;

