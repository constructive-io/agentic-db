-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/updated_at/alterations/alt0000006061
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.raw_contact_emails 
  ALTER COLUMN updated_at SET NOT NULL;

