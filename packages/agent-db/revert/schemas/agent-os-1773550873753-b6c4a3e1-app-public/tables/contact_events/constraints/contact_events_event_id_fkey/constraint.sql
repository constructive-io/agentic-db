-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_events/constraints/contact_events_event_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_events 
  DROP CONSTRAINT contact_events_event_id_fkey;


