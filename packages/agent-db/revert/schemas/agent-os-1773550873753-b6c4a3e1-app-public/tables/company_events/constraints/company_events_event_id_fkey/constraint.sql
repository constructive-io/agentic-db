-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_events/constraints/company_events_event_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".company_events 
  DROP CONSTRAINT company_events_event_id_fkey;


