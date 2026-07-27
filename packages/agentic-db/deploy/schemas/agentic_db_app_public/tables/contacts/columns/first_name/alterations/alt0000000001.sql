-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/first_name/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/first_name/column


ALTER TABLE agentic_db_app_public.contacts 
  ALTER COLUMN first_name SET NOT NULL;

