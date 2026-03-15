-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/columns/name/alterations/alt0000000884
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/columns/name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/columns/updated_at/alterations/alt0000000883


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".deals 
  ALTER COLUMN name SET NOT NULL;

