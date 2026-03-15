-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/columns/url/alterations/alt0000000973
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/columns/url/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/columns/title/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_links 
  ALTER COLUMN url SET NOT NULL;

