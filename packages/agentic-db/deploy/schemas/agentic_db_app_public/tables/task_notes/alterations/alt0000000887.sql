-- Deploy: schemas/agentic_db_app_public/tables/task_notes/alterations/alt0000000887
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_notes/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000000882


ALTER TABLE agentic_db_app_public.task_notes 
  DISABLE ROW LEVEL SECURITY;

