-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/id/alterations/alt0000001390
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/columns/last_synced_at/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

