-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/constraints/contact_events_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_events 
  DROP CONSTRAINT contact_events_entity_id_fkey;


