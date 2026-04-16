-- Deploy: schemas/agentic_db_app_public/tables/event_notes/alterations/alt0000015952
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_notes/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.event_notes 
  DISABLE ROW LEVEL SECURITY;

