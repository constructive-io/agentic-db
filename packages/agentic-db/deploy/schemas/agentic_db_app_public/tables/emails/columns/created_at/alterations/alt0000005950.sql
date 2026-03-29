-- Deploy: schemas/agentic_db_app_public/tables/emails/columns/created_at/alterations/alt0000005950
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.emails 
  ALTER COLUMN created_at SET NOT NULL;

