-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_contacts/alterations/alt0000015959
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.calendar_event_contacts 
  DISABLE ROW LEVEL SECURITY;

