-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_links/columns/company_id/alterations/alt0000002569
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_links/columns/company_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_links/constraints/contact_links_contact_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_links 
  ALTER COLUMN company_id SET NOT NULL;

