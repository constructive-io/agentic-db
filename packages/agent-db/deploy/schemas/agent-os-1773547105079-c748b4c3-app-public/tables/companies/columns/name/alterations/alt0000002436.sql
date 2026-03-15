-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/columns/name/alterations/alt0000002436
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/columns/updated_at/alterations/alt0000002435


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".companies 
  ALTER COLUMN name SET NOT NULL;

