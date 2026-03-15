-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/created_at/alterations/alt0000002953


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_events 
  ALTER COLUMN created_at DROP NOT NULL;


