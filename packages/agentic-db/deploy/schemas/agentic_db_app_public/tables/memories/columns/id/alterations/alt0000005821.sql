-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/id/alterations/alt0000005821
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.memories 
    ALTER COLUMN id SET DEFAULT uuidv7();

