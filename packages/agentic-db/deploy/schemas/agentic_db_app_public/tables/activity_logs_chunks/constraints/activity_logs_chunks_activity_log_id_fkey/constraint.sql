-- Deploy: schemas/agentic_db_app_public/tables/activity_logs_chunks/constraints/activity_logs_chunks_activity_log_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  ADD CONSTRAINT activity_logs_chunks_activity_log_id_fkey 
    FOREIGN KEY(activity_log_id) 
    REFERENCES agentic_db_app_public.activity_logs (id) 
    ON DELETE CASCADE;

