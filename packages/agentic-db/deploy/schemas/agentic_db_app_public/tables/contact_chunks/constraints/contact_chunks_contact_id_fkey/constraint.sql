-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/constraints/contact_chunks_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venue_links/indexes/venue_links_venue_id_idx


ALTER TABLE agentic_db_app_public.contact_chunks 
  ADD CONSTRAINT contact_chunks_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES agentic_db_app_public.contacts (id) 
    ON DELETE CASCADE;

