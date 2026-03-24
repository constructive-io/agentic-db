-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/constraints/codebase_dependencies_codebasis_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE agentic_db_app_public.codebase_dependencies 
  ADD CONSTRAINT codebase_dependencies_codebasis_id_fkey 
    FOREIGN KEY(codebasis_id) 
    REFERENCES agentic_db_app_public.codebases (id) 
    ON DELETE CASCADE;

