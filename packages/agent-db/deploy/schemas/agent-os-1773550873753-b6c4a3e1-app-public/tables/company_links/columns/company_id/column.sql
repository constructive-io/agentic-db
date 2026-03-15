-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_links/columns/company_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_links/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/constraints/contact_links_contact_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".company_links 
  ADD COLUMN company_id uuid;

