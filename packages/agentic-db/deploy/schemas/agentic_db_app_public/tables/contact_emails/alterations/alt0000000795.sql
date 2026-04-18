-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/alterations/alt0000000795
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.contact_emails 
  DISABLE ROW LEVEL SECURITY;

