-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_events/constraints/contact_events_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_events 
  DROP CONSTRAINT contact_events_entity_id_fkey;


