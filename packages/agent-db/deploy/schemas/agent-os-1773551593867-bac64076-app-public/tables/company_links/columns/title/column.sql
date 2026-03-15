-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/columns/updated_at/alterations/alt0000002572


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_links 
  ADD COLUMN title text;

