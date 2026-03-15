-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/columns/entity_id/alterations/alt0000002431


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".companies 
  ALTER COLUMN entity_id DROP NOT NULL;


