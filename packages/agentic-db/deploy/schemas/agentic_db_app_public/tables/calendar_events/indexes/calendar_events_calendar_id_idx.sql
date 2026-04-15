-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/indexes/calendar_events_calendar_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/calendar_id/column


CREATE INDEX calendar_events_calendar_id_idx ON agentic_db_app_public.calendar_events USING BTREE ( calendar_id );

