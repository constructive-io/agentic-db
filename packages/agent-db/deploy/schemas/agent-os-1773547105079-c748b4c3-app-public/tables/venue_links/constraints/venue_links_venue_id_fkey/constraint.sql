-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/constraints/event_links_event_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_links 
  ADD CONSTRAINT venue_links_venue_id_fkey 
    FOREIGN KEY(venue_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".venues (id) 
    ON DELETE CASCADE;

