-- Deploy: schemas/agentic_db_app_public/tables/calendar_events_chunks/indexes/calendar_events_chunks_calendar_events_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/calendar_events_id/column


CREATE INDEX calendar_events_chunks_calendar_events_id_idx ON "agentic_db_app_public".calendar_events_chunks USING BTREE ( calendar_events_id );

