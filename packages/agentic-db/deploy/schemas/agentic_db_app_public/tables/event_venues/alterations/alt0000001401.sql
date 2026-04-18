-- Deploy: schemas/agentic_db_app_public/tables/event_venues/alterations/alt0000001401
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_venues/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000001393


ALTER TABLE agentic_db_app_public.event_venues 
  DISABLE ROW LEVEL SECURITY;

