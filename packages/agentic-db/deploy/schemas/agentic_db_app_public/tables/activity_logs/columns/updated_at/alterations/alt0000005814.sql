-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/updated_at/alterations/alt0000005814
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.activity_logs 
  ALTER COLUMN updated_at SET NOT NULL;

