-- Deploy: schemas/agentic_db_app_public/tables/companies/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_location_geo_gist_idx


ALTER TABLE agentic_db_app_public.companies 
  ENABLE ROW LEVEL SECURITY;

