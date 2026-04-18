-- Deploy: schemas/agentic_db_app_public/tables/contact_events/alterations/alt0000001399
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_events/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000001393


ALTER TABLE agentic_db_app_public.contact_events 
  DISABLE ROW LEVEL SECURITY;

