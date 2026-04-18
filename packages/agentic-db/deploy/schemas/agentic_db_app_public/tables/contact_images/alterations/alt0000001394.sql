-- Deploy: schemas/agentic_db_app_public/tables/contact_images/alterations/alt0000001394
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_images/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000001393


ALTER TABLE agentic_db_app_public.contact_images 
  DISABLE ROW LEVEL SECURITY;

