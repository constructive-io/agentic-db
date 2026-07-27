-- Deploy: schemas/agentic_db_app_public/tables/calendar_attendees/constraints/calendar_attendees_calendar_event_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/table


ALTER TABLE agentic_db_app_public.calendar_attendees 
  ADD CONSTRAINT calendar_attendees_calendar_event_id_fkey 
    FOREIGN KEY(calendar_event_id) 
    REFERENCES agentic_db_app_public.calendar_events (id) 
    ON DELETE CASCADE;

