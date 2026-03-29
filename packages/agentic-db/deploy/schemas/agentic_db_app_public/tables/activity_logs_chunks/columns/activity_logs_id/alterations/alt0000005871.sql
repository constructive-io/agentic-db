-- Deploy: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/activity_logs_id/alterations/alt0000005871
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/activity_logs_id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  ALTER COLUMN activity_logs_id SET NOT NULL;

