-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/embedding_stale/alterations/alt0000005854
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.hiking_trails 
    ALTER COLUMN embedding_stale SET DEFAULT true;

