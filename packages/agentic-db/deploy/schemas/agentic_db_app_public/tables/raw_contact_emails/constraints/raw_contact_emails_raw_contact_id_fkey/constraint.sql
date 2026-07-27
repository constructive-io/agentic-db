-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_emails/constraints/raw_contact_emails_raw_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/table


ALTER TABLE agentic_db_app_public.raw_contact_emails 
  ADD CONSTRAINT raw_contact_emails_raw_contact_id_fkey 
    FOREIGN KEY(raw_contact_id) 
    REFERENCES agentic_db_app_public.raw_contacts (id) 
    ON DELETE CASCADE;

