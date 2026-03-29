-- Deploy: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.calendar_events_chunks 
  ADD COLUMN created_at timestamptz;

