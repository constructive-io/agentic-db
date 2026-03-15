-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/url/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/title/alterations/alt0000001418


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
  ADD COLUMN url text;

