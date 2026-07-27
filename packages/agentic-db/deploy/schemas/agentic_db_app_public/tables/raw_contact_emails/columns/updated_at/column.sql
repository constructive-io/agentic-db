-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/table


ALTER TABLE agentic_db_app_public.raw_contact_emails 
  ADD COLUMN updated_at timestamptz;

