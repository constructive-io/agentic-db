-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/embedding/column


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".venue_links TO authenticated;

