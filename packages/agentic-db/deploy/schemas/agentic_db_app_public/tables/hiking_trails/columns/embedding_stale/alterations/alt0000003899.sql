-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/embedding_stale/alterations/alt0000003899
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/embedding_stale/column



ALTER TABLE agentic_db_app_public.hiking_trails 
    ALTER COLUMN embedding_stale SET DEFAULT true;

