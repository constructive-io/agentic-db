-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/id/alterations/alt0000002951
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/last_synced_at/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_events 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

