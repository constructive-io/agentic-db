-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/codebasis_id/alterations/alt0000005783
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/codebasis_id/column
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.codebase_dependencies 
  ALTER COLUMN codebasis_id SET NOT NULL;

