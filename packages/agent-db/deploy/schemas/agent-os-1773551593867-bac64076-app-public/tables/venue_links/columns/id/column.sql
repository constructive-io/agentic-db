-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_links 
  ADD COLUMN id uuid;

