-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_event_contacts/columns/calendar_event_id/alterations/alt0000003142


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_event_contacts 
  ALTER COLUMN calendar_event_id DROP NOT NULL;


