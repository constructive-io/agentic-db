-- Deploy: schemas/agentic_db_app_public/tables/raw_contacts/columns/company/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/table
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.raw_contacts 
  ADD COLUMN company text;

