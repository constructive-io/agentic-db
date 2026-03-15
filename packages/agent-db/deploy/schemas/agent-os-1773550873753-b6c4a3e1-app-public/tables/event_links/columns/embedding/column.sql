-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/columns/url/alterations/alt0000000973


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_links 
  ADD COLUMN embedding vector(768);

