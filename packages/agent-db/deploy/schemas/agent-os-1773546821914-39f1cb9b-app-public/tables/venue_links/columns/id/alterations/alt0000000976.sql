-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/columns/id/alterations/alt0000000976
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/embedding/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_links 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

