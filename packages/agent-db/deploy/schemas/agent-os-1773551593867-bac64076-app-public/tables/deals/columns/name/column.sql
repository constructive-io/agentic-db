-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/updated_at/alterations/alt0000002492


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deals 
  ADD COLUMN name text;

