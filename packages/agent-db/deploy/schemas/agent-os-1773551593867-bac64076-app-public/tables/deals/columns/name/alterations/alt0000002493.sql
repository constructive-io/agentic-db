-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/name/alterations/alt0000002493
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/name/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/updated_at/alterations/alt0000002492


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deals 
  ALTER COLUMN name SET NOT NULL;

