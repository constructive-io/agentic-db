-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/indexes/calendar_events_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/calendar_events/indexes/calendar_events_end_at_idx


CREATE INDEX calendar_events_status_idx ON agentic_db_app_public.calendar_events USING BTREE ( status );

