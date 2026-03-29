-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/completed_at/alterations/alt0000005811
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/completed_at/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.activity_logs 
  ALTER COLUMN completed_at SET NOT NULL;

