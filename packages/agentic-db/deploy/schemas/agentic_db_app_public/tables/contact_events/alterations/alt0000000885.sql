-- Deploy: schemas/agentic_db_app_public/tables/contact_events/alterations/alt0000000885
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_events/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.contact_events 
  DISABLE ROW LEVEL SECURITY;

