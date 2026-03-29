-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/columns/embedding_stale/alterations/alt0000005769
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.code_chunks 
    ALTER COLUMN embedding_stale SET DEFAULT true;

