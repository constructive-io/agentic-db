-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/columns/codebase_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE "agentic_db_app_public".code_chunks 
  ADD COLUMN codebase_id uuid;

