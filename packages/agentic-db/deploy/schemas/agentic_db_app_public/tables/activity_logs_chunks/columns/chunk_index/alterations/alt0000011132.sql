-- Deploy: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/chunk_index/alterations/alt0000011132
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

