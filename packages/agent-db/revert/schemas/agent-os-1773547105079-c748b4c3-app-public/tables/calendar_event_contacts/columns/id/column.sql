-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_event_contacts/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_event_contacts 
  DROP COLUMN id RESTRICT;


