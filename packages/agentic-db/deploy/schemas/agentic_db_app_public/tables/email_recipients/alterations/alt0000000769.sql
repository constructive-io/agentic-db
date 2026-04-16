-- Deploy: schemas/agentic_db_app_public/tables/email_recipients/alterations/alt0000000769
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.email_recipients 
  DISABLE ROW LEVEL SECURITY;

