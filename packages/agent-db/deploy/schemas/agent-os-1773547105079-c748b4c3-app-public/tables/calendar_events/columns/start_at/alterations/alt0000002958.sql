-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/start_at/alterations/alt0000002958
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/start_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/description/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_events 
  ALTER COLUMN start_at SET NOT NULL;

