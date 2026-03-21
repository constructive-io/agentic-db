-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/columns/last_synced_at/column


GRANT DELETE ON "agentic_db_app_public".calendar_events TO authenticated;

