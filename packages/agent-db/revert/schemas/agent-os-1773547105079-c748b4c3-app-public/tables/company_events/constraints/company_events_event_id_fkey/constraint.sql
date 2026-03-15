-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/constraints/company_events_event_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_events 
  DROP CONSTRAINT company_events_event_id_fkey;


