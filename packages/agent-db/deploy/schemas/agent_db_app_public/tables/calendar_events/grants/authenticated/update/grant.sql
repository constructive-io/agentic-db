-- Deploy: schemas/agent_db_app_public/tables/calendar_events/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/last_synced_at/column


GRANT UPDATE ON "agent_db_app_public".calendar_events TO authenticated;

