-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/alterations/alt0000002699
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE agentic_db_app_public.code_chunks 
  DISABLE ROW LEVEL SECURITY;

