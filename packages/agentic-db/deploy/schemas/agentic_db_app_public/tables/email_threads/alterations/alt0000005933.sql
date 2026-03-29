-- Deploy: schemas/agentic_db_app_public/tables/email_threads/alterations/alt0000005933
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.email_threads 
  DISABLE ROW LEVEL SECURITY;

