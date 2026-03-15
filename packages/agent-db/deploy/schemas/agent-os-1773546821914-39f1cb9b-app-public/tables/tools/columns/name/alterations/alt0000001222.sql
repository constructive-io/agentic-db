-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/name/alterations/alt0000001222
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/updated_at/alterations/alt0000001221


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
  ALTER COLUMN name SET NOT NULL;

