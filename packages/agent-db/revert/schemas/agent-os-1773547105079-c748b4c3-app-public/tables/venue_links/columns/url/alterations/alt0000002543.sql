-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/columns/url/alterations/alt0000002543


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_links 
  ALTER COLUMN url DROP NOT NULL;


