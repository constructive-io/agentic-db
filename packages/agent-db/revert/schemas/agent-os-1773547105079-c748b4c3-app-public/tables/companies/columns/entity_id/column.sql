-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".companies 
  DROP COLUMN entity_id RESTRICT;


