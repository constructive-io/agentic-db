-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/destination_geo/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".trips 
  DROP COLUMN destination_geo RESTRICT;


