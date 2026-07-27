-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_contacts/columns/calendar_event_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/table


ALTER TABLE agentic_db_app_public.calendar_event_contacts 
  ADD COLUMN calendar_event_id uuid;

