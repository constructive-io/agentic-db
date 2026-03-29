-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/constraints/emails_chunks_email_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.emails_chunks 
  ADD CONSTRAINT emails_chunks_email_id_fkey 
    FOREIGN KEY(email_id) 
    REFERENCES agentic_db_app_public.emails (id) 
    ON DELETE CASCADE;

