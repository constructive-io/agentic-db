-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/columns/venue_id/alterations/alt0000002640


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_venues 
  ALTER COLUMN venue_id DROP NOT NULL;


