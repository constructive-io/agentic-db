-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/language/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/path/alterations/alt0000001352


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".files 
  ADD COLUMN language text;

