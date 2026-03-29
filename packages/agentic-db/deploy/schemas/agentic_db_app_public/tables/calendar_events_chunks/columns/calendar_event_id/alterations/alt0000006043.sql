-- Deploy: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/calendar_event_id/alterations/alt0000006043
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/calendar_event_id/column


ALTER TABLE agentic_db_app_public.calendar_events_chunks 
  ALTER COLUMN calendar_event_id SET NOT NULL;

