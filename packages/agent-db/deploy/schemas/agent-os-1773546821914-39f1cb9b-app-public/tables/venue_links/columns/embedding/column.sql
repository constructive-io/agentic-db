-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/columns/url/alterations/alt0000000982


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_links 
  ADD COLUMN embedding vector(768);

