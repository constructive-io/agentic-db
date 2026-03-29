-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/embedding_stale/alterations/alt0000005818
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.activity_logs 
    ALTER COLUMN embedding_stale SET DEFAULT true;

