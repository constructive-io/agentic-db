-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/location_geo/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  DROP COLUMN location_geo RESTRICT;


