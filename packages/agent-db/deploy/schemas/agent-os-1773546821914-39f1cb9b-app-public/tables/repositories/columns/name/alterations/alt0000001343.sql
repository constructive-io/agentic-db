-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/name/alterations/alt0000001343
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/updated_at/alterations/alt0000001342


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".repositories 
  ALTER COLUMN name SET NOT NULL;

