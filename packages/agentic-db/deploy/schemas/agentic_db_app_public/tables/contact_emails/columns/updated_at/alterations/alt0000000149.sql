-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/columns/updated_at/alterations/alt0000000149
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_emails/columns/updated_at/column


ALTER TABLE agentic_db_app_public.contact_emails 
  ALTER COLUMN updated_at SET NOT NULL;

