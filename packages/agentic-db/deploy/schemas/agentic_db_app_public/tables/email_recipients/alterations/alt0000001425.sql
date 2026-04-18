-- Deploy: schemas/agentic_db_app_public/tables/email_recipients/alterations/alt0000001425
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000001393


ALTER TABLE agentic_db_app_public.email_recipients 
  DISABLE ROW LEVEL SECURITY;

