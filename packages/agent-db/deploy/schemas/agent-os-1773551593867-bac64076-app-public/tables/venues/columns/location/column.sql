-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/location/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/status/alterations/alt0000002514


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
  ADD COLUMN location geography(Point,4326);

