-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/constraints/calendar_events_calendar_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.calendar_events 
  ADD CONSTRAINT calendar_events_calendar_id_fkey 
    FOREIGN KEY(calendar_id) 
    REFERENCES agentic_db_app_public.calendars (id) 
    ON DELETE CASCADE;

