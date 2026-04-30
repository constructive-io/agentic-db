-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/alterations/alt0000000900
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000000882


ALTER TABLE agentic_db_app_public.deal_contacts 
  DISABLE ROW LEVEL SECURITY;

