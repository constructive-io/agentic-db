-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_companies/columns/contact_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_companies 
  DROP COLUMN contact_id RESTRICT;


