-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/entity_id/alterations/alt0000006075
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  ALTER COLUMN entity_id SET NOT NULL;

