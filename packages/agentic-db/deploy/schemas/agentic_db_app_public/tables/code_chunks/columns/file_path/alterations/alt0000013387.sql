-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/columns/file_path/alterations/alt0000013387
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/file_path/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE agentic_db_app_public.code_chunks 
  ALTER COLUMN file_path SET NOT NULL;

