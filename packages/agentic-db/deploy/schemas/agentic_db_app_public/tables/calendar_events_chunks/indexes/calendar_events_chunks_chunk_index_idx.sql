-- Deploy: schemas/agentic_db_app_public/tables/calendar_events_chunks/indexes/calendar_events_chunks_chunk_index_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


CREATE INDEX calendar_events_chunks_chunk_index_idx ON agentic_db_app_public.calendar_events_chunks USING BTREE ( chunk_index );

