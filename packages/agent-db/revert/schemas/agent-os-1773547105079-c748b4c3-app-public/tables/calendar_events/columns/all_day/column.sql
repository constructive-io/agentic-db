-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/all_day/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_events 
  DROP COLUMN all_day RESTRICT;


