-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/google_place_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/location/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
  ADD COLUMN google_place_id text;

