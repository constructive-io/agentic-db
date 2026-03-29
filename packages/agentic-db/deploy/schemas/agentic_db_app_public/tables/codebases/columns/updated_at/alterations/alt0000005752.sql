-- Deploy: schemas/agentic_db_app_public/tables/codebases/columns/updated_at/alterations/alt0000005752
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.codebases 
    ALTER COLUMN updated_at SET DEFAULT now();

