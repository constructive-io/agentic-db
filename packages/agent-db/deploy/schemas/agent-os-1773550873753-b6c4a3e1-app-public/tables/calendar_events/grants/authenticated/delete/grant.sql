-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_accounts/columns/last_synced_at/column


GRANT DELETE ON "agent-os-1773550873753-b6c4a3e1-app-public".calendar_events TO authenticated;

