-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/columns/domain/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/columns/name/alterations/alt0000002436


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".companies 
  ADD COLUMN domain text;

