-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/id/alterations/alt0000006074
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.raw_contact_urls 
    ALTER COLUMN id SET DEFAULT uuidv7();

