-- Deploy: schemas/agentic_db_app_public/tables/contact_relationships/alterations/alt0000000748
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.contact_relationships 
  DISABLE ROW LEVEL SECURITY;

