-- Deploy: schemas/agentic_db_app_public/tables/contact_relationships/alterations/alt0000000287
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.contact_relationships 
  DISABLE ROW LEVEL SECURITY;

