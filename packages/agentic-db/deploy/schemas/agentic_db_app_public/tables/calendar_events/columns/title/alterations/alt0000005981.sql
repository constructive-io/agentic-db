-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/columns/title/alterations/alt0000005981
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.calendar_events 
  ALTER COLUMN title SET NOT NULL;

