-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/columns/last_synced_at/column


GRANT UPDATE ON "agent-os-1773546821914-39f1cb9b-app-public".calendar_events TO authenticated;

