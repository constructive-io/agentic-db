-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/location/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/status/alterations/alt0000000905


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venues 
  ADD COLUMN location geography(Point,4326);

