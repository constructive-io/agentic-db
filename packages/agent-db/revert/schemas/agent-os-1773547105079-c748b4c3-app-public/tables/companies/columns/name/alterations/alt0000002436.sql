-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/columns/name/alterations/alt0000002436


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".companies 
  ALTER COLUMN name DROP NOT NULL;


