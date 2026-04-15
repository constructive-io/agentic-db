-- Deploy: schemas/agentic_db_app_public/tables/contact_phones/constraints/contact_phones_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contact_phones/table


ALTER TABLE "agentic_db_app_public".contact_phones 
  ADD CONSTRAINT contact_phones_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agentic_db_app_public".contacts (id) 
    ON DELETE CASCADE;

