-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/recurrence_rule/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_events 
  ADD COLUMN status text;

