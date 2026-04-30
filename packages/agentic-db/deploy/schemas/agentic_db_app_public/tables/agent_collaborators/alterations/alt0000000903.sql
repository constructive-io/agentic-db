-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/alterations/alt0000000903
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000000882


ALTER TABLE agentic_db_app_public.agent_collaborators 
  DISABLE ROW LEVEL SECURITY;

