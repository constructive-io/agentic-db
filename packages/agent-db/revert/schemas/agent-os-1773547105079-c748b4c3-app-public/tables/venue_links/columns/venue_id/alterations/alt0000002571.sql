-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/columns/venue_id/alterations/alt0000002571


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_links 
  ALTER COLUMN venue_id DROP NOT NULL;


