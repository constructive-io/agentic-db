-- Deploy: schemas/agentic_db_app_public/tables/company_documents/alterations/alt0000000918
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_documents/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000000882


ALTER TABLE agentic_db_app_public.company_documents 
  DISABLE ROW LEVEL SECURITY;

