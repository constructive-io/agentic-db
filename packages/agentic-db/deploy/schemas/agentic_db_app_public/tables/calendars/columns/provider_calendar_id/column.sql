-- Deploy: schemas/agentic_db_app_public/tables/calendars/columns/provider_calendar_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.calendars 
  ADD COLUMN provider_calendar_id text;

