-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_events/constraints/company_events_event_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_events 
  DROP CONSTRAINT company_events_event_id_fkey;


