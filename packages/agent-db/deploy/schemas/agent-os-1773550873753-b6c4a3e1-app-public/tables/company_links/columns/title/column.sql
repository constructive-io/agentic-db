-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_links/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_links/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_links/columns/updated_at/alterations/alt0000000963


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".company_links 
  ADD COLUMN title text;

