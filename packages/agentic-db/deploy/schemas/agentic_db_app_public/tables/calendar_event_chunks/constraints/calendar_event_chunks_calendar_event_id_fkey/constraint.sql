-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_chunks/constraints/calendar_event_chunks_calendar_event_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/indexes/message_chunks_message_id_idx


ALTER TABLE agentic_db_app_public.calendar_event_chunks 
  ADD CONSTRAINT calendar_event_chunks_calendar_event_id_fkey 
    FOREIGN KEY(calendar_event_id) 
    REFERENCES agentic_db_app_public.calendar_events (id) 
    ON DELETE CASCADE;

