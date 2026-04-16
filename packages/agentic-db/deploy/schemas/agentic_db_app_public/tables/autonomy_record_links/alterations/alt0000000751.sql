-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/alterations/alt0000000751
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.autonomy_record_links 
  DISABLE ROW LEVEL SECURITY;

