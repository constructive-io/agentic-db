-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/alterations/alt0000002565
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_links/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_links 
  DISABLE ROW LEVEL SECURITY;

