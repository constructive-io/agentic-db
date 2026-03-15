-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/columns/company_id/alterations/alt0000002585


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_events 
  ALTER COLUMN company_id DROP NOT NULL;


