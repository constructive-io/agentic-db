-- Deploy: schemas/agentic_db_app_public/tables/contact_addresses/columns/id/alterations/alt0000000813
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_addresses/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_addresses/columns/id/column



ALTER TABLE agentic_db_app_public.contact_addresses 
    ALTER COLUMN id SET DEFAULT uuidv7();

