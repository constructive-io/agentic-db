-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/alterations/alt0000001859
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  DISABLE ROW LEVEL SECURITY;

