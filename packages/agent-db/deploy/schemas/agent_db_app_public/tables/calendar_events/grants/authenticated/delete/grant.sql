-- Deploy: schemas/agent_db_app_public/tables/calendar_events/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/last_synced_at/column


GRANT DELETE ON agent_db_app_public.calendar_events TO authenticated;

