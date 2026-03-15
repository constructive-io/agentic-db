-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/name/alterations/alt0000000936
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/updated_at/alterations/alt0000000935


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tags 
  ALTER COLUMN name SET NOT NULL;

