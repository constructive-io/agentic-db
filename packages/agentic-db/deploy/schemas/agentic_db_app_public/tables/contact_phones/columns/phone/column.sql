-- Deploy: schemas/agentic_db_app_public/tables/contact_phones/columns/phone/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_phones/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.contact_phones 
  ADD COLUMN phone text;

