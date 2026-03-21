-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/alterations/alt0000004377
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/status/alterations/alt0000004376


ALTER TABLE agentic_db_app_public.project_chunks 
  DISABLE ROW LEVEL SECURITY;

