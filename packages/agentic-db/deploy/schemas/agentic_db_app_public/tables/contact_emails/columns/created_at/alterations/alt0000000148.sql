-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/columns/created_at/alterations/alt0000000148
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_emails/columns/created_at/column



ALTER TABLE agentic_db_app_public.contact_emails 
    ALTER COLUMN created_at SET DEFAULT now();

