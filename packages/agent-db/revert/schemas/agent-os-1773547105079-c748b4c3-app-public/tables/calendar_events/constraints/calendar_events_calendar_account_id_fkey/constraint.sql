-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/constraints/calendar_events_calendar_account_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_events 
  DROP CONSTRAINT calendar_events_calendar_account_id_fkey;


