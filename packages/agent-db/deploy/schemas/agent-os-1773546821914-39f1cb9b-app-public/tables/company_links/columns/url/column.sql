-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/columns/url/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/columns/title/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_links 
  ADD COLUMN url text;

