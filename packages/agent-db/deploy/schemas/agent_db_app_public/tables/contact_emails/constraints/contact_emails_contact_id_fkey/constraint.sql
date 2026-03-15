-- Deploy: schemas/agent_db_app_public/tables/contact_emails/constraints/contact_emails_contact_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contact_emails/table
-- requires: schemas/agent_db_app_public/tables/contact_phones/columns/embedding/column


ALTER TABLE agent_db_app_public.contact_emails 
  ADD CONSTRAINT contact_emails_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES agent_db_app_public.contacts (id) 
    ON DELETE CASCADE;

