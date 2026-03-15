-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/location_geo/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contacts 
  DROP COLUMN location_geo RESTRICT;


