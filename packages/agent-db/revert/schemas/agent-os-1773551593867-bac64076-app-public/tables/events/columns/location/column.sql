-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/columns/location/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".events 
  DROP COLUMN location RESTRICT;


