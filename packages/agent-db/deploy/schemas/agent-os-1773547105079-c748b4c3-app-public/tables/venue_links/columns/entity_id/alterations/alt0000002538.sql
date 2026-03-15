-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/columns/entity_id/alterations/alt0000002538
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/embedding/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_links 
  ALTER COLUMN entity_id SET NOT NULL;

