-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/email_thread_id/alterations/alt0000006044
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/email_thread_id/column


ALTER TABLE agentic_db_app_public.email_threads_chunks 
  ALTER COLUMN email_thread_id SET NOT NULL;

