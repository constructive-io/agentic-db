-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/constraints/codebas_chunks_codebasis_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ADD CONSTRAINT codebas_chunks_codebasis_id_fkey 
    FOREIGN KEY(codebasis_id) 
    REFERENCES "agentic_db_app_public".codebases (id) 
    ON DELETE CASCADE;

