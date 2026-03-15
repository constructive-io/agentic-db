-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/columns/id/alterations/alt0000002536
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_links 
  ALTER COLUMN id SET NOT NULL;

