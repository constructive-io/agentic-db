-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/name/alterations/alt0000002513
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/name/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/updated_at/alterations/alt0000002512


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
  ALTER COLUMN name SET NOT NULL;

