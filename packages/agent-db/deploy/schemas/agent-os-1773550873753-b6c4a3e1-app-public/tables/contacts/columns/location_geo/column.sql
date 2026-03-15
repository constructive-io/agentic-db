-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/columns/location_geo/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/columns/website/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contacts 
  ADD COLUMN location_geo geography(Point,4326);

