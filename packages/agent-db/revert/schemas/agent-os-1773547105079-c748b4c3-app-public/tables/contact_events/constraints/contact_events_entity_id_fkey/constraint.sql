-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_events/constraints/contact_events_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_events 
  DROP CONSTRAINT contact_events_entity_id_fkey;


