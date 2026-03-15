-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_event_contacts/columns/entity_id/alterations/alt0000003146


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_event_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


