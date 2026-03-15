-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/location_geo/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/website/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contacts 
  ADD COLUMN location_geo geography(Point,4326);

