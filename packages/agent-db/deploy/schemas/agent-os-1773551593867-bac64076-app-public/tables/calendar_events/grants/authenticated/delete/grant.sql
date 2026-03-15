-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/columns/last_synced_at/column


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".calendar_events TO authenticated;

