-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_links/columns/id/alterations/alt0000002519
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_links/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_links/columns/embedding/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_links 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

