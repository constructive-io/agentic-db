-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/columns/id/alterations/alt0000005960
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_attachments/table
-- requires: schemas/agentic_db_app_public/tables/email_attachments/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.email_attachments 
  ALTER COLUMN id SET NOT NULL;

