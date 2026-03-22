-- Deploy: schemas/agentic_db_app_public/tables/companies/columns/entity_id/alterations/alt0000005549
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_location_geo_gist_idx


ALTER TABLE agentic_db_app_public.companies 
  ALTER COLUMN entity_id SET NOT NULL;

