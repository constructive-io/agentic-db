-- Deploy: schemas/agentic_db_app_public/tables/contact_addresses/alterations/alt0000000159
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_addresses/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.contact_addresses 
  DISABLE ROW LEVEL SECURITY;

