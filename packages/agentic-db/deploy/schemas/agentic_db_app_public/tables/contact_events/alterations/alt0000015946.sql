-- Deploy: schemas/agentic_db_app_public/tables/contact_events/alterations/alt0000015946
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.contact_events 
  DISABLE ROW LEVEL SECURITY;

