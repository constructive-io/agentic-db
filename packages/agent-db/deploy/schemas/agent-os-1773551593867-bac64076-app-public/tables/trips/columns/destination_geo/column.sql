-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/destination_geo/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/notes/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".trips 
  ADD COLUMN destination_geo geography(Point,4326);

