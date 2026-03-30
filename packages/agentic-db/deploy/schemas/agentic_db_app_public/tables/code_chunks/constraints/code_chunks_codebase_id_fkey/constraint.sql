-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/constraints/code_chunks_codebase_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE "agentic_db_app_public".code_chunks 
  ADD CONSTRAINT code_chunks_codebase_id_fkey 
    FOREIGN KEY(codebase_id) 
    REFERENCES "agentic_db_app_public".codebases (id) 
    ON DELETE CASCADE;

