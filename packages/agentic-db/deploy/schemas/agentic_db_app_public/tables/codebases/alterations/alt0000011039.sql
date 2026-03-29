-- Deploy: schemas/agentic_db_app_public/tables/codebases/alterations/alt0000011039
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE agentic_db_app_public.codebases 
  DISABLE ROW LEVEL SECURITY;

