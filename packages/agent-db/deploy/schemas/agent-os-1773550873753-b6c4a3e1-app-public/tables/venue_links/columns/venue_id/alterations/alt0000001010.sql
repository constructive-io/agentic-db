-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/columns/venue_id/alterations/alt0000001010
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/columns/venue_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/constraints/event_links_event_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venue_links 
  ALTER COLUMN venue_id SET NOT NULL;

