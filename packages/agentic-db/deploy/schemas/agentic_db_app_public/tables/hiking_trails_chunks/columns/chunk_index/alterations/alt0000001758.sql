-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/chunk_index/alterations/alt0000001758
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/chunk_index/column



ALTER TABLE "agentic_db_app_public".hiking_trails_chunks 
    ALTER COLUMN chunk_index SET DEFAULT 0;

