-- Deploy: schemas/agentic_db_app_public/tables/calendar_attendees/columns/response_status/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/table


ALTER TABLE agentic_db_app_public.calendar_attendees 
  ADD COLUMN response_status text;

