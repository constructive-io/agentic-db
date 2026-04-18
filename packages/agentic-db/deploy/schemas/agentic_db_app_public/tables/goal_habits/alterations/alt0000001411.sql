-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/alterations/alt0000001411
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000001393


ALTER TABLE agentic_db_app_public.goal_habits 
  DISABLE ROW LEVEL SECURITY;

