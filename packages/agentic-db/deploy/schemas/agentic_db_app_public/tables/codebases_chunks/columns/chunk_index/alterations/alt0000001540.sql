-- Deploy: schemas/agentic_db_app_public/tables/codebases_chunks/columns/chunk_index/alterations/alt0000001540
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/columns/chunk_index/column



ALTER TABLE "agentic_db_app_public".codebases_chunks 
    ALTER COLUMN chunk_index SET DEFAULT 0;

