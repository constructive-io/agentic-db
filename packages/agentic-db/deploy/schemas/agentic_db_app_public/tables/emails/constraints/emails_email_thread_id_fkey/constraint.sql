-- Deploy: schemas/agentic_db_app_public/tables/emails/constraints/emails_email_thread_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.emails 
  ADD CONSTRAINT emails_email_thread_id_fkey 
    FOREIGN KEY(email_thread_id) 
    REFERENCES agentic_db_app_public.email_threads (id) 
    ON DELETE CASCADE;

