-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/constraints/email_threads_chunks_email_threads_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  ADD CONSTRAINT email_threads_chunks_email_threads_id_fkey 
    FOREIGN KEY(email_threads_id) 
    REFERENCES "agentic_db_app_public".email_threads (id) 
    ON DELETE CASCADE;

