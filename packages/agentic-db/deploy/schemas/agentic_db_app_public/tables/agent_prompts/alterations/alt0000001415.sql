-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/alterations/alt0000001415
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000001393


ALTER TABLE agentic_db_app_public.agent_prompts 
  DISABLE ROW LEVEL SECURITY;

