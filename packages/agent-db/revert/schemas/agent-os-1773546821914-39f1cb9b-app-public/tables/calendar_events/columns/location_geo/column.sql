-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/location_geo/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
  DROP COLUMN location_geo RESTRICT;


