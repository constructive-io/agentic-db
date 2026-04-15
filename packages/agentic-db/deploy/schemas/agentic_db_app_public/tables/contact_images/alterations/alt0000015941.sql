-- Deploy: schemas/agentic_db_app_public/tables/contact_images/alterations/alt0000015941
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_images/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.contact_images 
  DISABLE ROW LEVEL SECURITY;

