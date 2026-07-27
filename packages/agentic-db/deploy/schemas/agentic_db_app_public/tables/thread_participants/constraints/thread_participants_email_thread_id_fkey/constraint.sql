-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/constraints/thread_participants_email_thread_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table


ALTER TABLE agentic_db_app_public.thread_participants 
  ADD CONSTRAINT thread_participants_email_thread_id_fkey 
    FOREIGN KEY(email_thread_id) 
    REFERENCES agentic_db_app_public.email_threads (id) 
    ON DELETE CASCADE;

