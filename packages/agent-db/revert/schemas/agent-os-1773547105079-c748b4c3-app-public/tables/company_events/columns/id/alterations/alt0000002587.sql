-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/columns/id/alterations/alt0000002587


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_events 
  ALTER COLUMN id DROP NOT NULL;


