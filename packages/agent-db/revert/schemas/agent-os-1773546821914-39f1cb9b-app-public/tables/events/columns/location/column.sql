-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/location/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".events 
  DROP COLUMN location RESTRICT;


