-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_companies/columns/company_id/alterations/alt0000002622
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_companies/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_companies/columns/company_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_companies 
  ALTER COLUMN company_id SET NOT NULL;

