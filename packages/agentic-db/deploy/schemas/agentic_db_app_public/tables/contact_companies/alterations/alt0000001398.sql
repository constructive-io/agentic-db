-- Deploy: schemas/agentic_db_app_public/tables/contact_companies/alterations/alt0000001398
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_companies/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000001393


ALTER TABLE agentic_db_app_public.contact_companies 
  DISABLE ROW LEVEL SECURITY;

