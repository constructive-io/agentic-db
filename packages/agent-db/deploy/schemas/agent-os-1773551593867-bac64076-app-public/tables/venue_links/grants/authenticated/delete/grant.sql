-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/columns/embedding/column


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".venue_links TO authenticated;

