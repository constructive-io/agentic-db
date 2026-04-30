-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/alterations/alt0000000911
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000000882


ALTER TABLE agentic_db_app_public.goal_projects 
  DISABLE ROW LEVEL SECURITY;

