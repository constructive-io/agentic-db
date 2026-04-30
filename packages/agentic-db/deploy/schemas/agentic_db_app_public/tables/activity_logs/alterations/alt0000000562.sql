-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/alterations/alt0000000562
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE agentic_db_app_public.activity_logs 
  DISABLE ROW LEVEL SECURITY;

