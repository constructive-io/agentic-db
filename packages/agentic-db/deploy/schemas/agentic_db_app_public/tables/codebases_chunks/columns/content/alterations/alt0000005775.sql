-- Deploy: schemas/agentic_db_app_public/tables/codebases_chunks/columns/content/alterations/alt0000005775
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.codebases_chunks 
  ALTER COLUMN content SET NOT NULL;

