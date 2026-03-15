-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_event_contacts/constraints/calendar_event_contacts_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_event_contacts 
  DROP CONSTRAINT calendar_event_contacts_entity_id_fkey;


