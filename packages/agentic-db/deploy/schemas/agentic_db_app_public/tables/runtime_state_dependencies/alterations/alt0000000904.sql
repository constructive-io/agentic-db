-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_dependencies/alterations/alt0000000904
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000000882


ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
  DISABLE ROW LEVEL SECURITY;

