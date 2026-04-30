-- Deploy: schemas/agentic_db_app_public/tables/task_projects/alterations/alt0000000909
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_projects/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000000882


ALTER TABLE agentic_db_app_public.task_projects 
  DISABLE ROW LEVEL SECURITY;

