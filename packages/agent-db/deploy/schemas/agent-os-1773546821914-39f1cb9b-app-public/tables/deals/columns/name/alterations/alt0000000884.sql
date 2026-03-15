-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/name/alterations/alt0000000884
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/updated_at/alterations/alt0000000883


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deals 
  ALTER COLUMN name SET NOT NULL;

