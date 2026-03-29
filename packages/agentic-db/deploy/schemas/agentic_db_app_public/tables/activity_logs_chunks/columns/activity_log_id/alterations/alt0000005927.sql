-- Deploy: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/activity_log_id/alterations/alt0000005927
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/activity_log_id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  ALTER COLUMN activity_log_id SET NOT NULL;

