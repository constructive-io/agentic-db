-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/id/column


ALTER TABLE agentic_db_app_public.raw_contact_emails 
  ALTER COLUMN id SET NOT NULL;

