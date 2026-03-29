-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/updated_at/alterations/alt0000005896
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
    ALTER COLUMN updated_at SET DEFAULT now();

