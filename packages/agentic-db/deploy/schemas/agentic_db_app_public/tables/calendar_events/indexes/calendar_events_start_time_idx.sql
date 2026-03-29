-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/indexes/calendar_events_start_time_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/start_time/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


CREATE INDEX calendar_events_start_time_idx ON agentic_db_app_public.calendar_events USING BTREE ( start_time );

