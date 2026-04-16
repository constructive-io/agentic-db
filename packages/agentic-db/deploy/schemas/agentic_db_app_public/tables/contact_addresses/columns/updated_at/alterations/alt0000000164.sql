-- Deploy: schemas/agentic_db_app_public/tables/contact_addresses/columns/updated_at/alterations/alt0000000164
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_addresses/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_addresses/columns/updated_at/column


ALTER TABLE agentic_db_app_public.contact_addresses 
  ALTER COLUMN updated_at SET NOT NULL;

