-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/title/alterations/alt0000002957


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_events 
  ALTER COLUMN title DROP NOT NULL;


