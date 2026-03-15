-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/recurrence_rule/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_events 
  DROP COLUMN recurrence_rule RESTRICT;


