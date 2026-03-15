-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/columns/url/alterations/alt0000000982
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/columns/url/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/columns/title/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venue_links 
  ALTER COLUMN url SET NOT NULL;

