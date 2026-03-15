-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/columns/venue_id/alterations/alt0000001031


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_venues 
  ALTER COLUMN venue_id DROP NOT NULL;


