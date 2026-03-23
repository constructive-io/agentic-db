-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/alterations/alt0000003236
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE agentic_db_app_public.codebase_dependencies 
  DISABLE ROW LEVEL SECURITY;

