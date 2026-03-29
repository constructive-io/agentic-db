-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_phones/constraints/raw_contact_phones_raw_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_phones/table
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.raw_contact_phones 
  ADD CONSTRAINT raw_contact_phones_raw_contact_id_fkey 
    FOREIGN KEY(raw_contact_id) 
    REFERENCES agentic_db_app_public.raw_contacts (id) 
    ON DELETE CASCADE;

