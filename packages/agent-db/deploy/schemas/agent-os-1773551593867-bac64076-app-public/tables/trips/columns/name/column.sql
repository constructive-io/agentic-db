-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/updated_at/alterations/alt0000003079


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".trips 
  ADD COLUMN name text;

