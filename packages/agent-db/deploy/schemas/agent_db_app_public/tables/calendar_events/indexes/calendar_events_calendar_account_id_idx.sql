-- Deploy: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_calendar_account_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/calendar_account_id/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_end_at_idx


CREATE INDEX calendar_events_calendar_account_id_idx ON agent_db_app_public.calendar_events USING BTREE ( calendar_account_id );

