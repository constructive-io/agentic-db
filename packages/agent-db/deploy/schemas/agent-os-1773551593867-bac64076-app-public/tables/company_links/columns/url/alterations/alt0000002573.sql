-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/columns/url/alterations/alt0000002573
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/columns/url/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/columns/title/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_links 
  ALTER COLUMN url SET NOT NULL;

