-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/columns/event_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_events 
  DROP COLUMN event_id RESTRICT;


