-- Deploy: schemas/agentic_db_app_public/tables/email_recipients/constraints/email_recipients_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/thread_participants/indexes/thread_participants_contact_id_idx


ALTER TABLE agentic_db_app_public.email_recipients 
  ADD CONSTRAINT email_recipients_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES agentic_db_app_public.contacts (id) 
    ON DELETE CASCADE;

