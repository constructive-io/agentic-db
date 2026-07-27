-- Deploy: schemas/agentic_db_app_public/tables/contact_relationships/constraints/contact_relationships_related_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/table


ALTER TABLE agentic_db_app_public.contact_relationships 
  ADD CONSTRAINT contact_relationships_related_contact_id_fkey 
    FOREIGN KEY(related_contact_id) 
    REFERENCES agentic_db_app_public.contacts (id) 
    ON DELETE CASCADE;

