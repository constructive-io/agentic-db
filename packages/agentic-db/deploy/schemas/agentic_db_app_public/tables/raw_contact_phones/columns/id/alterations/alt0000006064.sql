-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/id/alterations/alt0000006064
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_phones/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.raw_contact_phones 
  ALTER COLUMN id SET NOT NULL;

