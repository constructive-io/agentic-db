-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/created_at/alterations/alt0000005802
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.habits 
  ALTER COLUMN created_at SET NOT NULL;

