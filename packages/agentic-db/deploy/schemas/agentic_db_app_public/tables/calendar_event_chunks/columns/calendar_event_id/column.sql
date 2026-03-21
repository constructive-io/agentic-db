-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/calendar_event_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/indexes/message_chunks_message_id_idx


ALTER TABLE agentic_db_app_public.calendar_event_chunks 
  ADD COLUMN calendar_event_id uuid;

