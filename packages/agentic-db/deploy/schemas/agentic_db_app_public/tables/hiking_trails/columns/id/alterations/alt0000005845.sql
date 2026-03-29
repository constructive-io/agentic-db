-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/id/alterations/alt0000005845
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.hiking_trails 
    ALTER COLUMN id SET DEFAULT uuidv7();

