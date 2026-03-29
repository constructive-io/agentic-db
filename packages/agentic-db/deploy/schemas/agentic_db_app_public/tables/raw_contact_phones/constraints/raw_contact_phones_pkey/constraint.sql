-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_phones/constraints/raw_contact_phones_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_phones/table
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.raw_contact_phones 
  ADD CONSTRAINT raw_contact_phones_pkey PRIMARY KEY (id);

