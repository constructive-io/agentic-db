-- Deploy: schemas/agentic_db_app_public/tables/email_threads/columns/created_at/alterations/alt0000005938
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/email_threads/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.email_threads 
    ALTER COLUMN created_at SET DEFAULT now();

