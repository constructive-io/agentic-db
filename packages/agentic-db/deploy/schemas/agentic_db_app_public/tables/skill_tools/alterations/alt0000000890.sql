-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/alterations/alt0000000890
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000000882


ALTER TABLE agentic_db_app_public.skill_tools 
  DISABLE ROW LEVEL SECURITY;

