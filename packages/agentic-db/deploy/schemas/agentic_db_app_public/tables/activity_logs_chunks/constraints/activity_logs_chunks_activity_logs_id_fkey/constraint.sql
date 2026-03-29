-- Deploy: schemas/agentic_db_app_public/tables/activity_logs_chunks/constraints/activity_logs_chunks_activity_logs_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  ADD CONSTRAINT activity_logs_chunks_activity_logs_id_fkey 
    FOREIGN KEY(activity_logs_id) 
    REFERENCES agentic_db_app_public.activity_logs (id) 
    ON DELETE CASCADE;

