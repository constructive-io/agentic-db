-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/alterations/alt0000000027
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.contacts_chunks 
  DISABLE ROW LEVEL SECURITY;

