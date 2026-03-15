-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_venues/columns/venue_id/alterations/alt0000002592


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_venues 
  ALTER COLUMN venue_id DROP NOT NULL;


