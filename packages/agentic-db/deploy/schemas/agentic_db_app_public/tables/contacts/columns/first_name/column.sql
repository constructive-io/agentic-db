-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/first_name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/updated_at/alterations/alt0000005539


ALTER TABLE agentic_db_app_public.contacts 
  ADD COLUMN first_name text;

