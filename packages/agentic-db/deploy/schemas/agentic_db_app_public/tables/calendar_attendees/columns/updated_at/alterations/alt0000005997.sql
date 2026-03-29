-- Deploy: schemas/agentic_db_app_public/tables/calendar_attendees/columns/updated_at/alterations/alt0000005997
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.calendar_attendees 
  ALTER COLUMN updated_at SET NOT NULL;

