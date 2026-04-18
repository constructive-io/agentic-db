-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/columns/contacts_id/alterations/alt0000000678
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/columns/contacts_id/column


ALTER TABLE agentic_db_app_public.contacts_chunks 
  ALTER COLUMN contacts_id SET NOT NULL;

