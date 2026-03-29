-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/constraints/email_threads_chunks_email_thread_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.email_threads_chunks 
  ADD CONSTRAINT email_threads_chunks_email_thread_id_fkey 
    FOREIGN KEY(email_thread_id) 
    REFERENCES agentic_db_app_public.email_threads (id) 
    ON DELETE CASCADE;

