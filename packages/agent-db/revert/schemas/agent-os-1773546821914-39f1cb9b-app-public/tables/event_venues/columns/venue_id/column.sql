-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/columns/venue_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_venues 
  DROP COLUMN venue_id RESTRICT;


