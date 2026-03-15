-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/name/alterations/alt0000001523
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/updated_at/alterations/alt0000001522


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".lists 
  ALTER COLUMN name SET NOT NULL;

