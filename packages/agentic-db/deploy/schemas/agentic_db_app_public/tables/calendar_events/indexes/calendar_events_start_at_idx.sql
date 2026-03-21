-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/indexes/calendar_events_start_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/start_at/column
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/indexes/calendar_accounts_email_idx


CREATE INDEX calendar_events_start_at_idx ON agentic_db_app_public.calendar_events USING BTREE ( start_at );

