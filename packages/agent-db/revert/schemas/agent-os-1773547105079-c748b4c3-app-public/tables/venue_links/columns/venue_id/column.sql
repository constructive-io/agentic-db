-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/columns/venue_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_links 
  DROP COLUMN venue_id RESTRICT;


