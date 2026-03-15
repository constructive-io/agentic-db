-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/columns/updated_at/alterations/alt0000000954


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_links 
  ADD COLUMN title text;

