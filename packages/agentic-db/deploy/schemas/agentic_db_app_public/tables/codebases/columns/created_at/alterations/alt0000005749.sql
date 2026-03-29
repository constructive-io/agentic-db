-- Deploy: schemas/agentic_db_app_public/tables/codebases/columns/created_at/alterations/alt0000005749
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.codebases 
  ALTER COLUMN created_at SET NOT NULL;

