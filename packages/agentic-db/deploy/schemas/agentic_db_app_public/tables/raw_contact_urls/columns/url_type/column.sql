-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/url_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/table


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  ADD COLUMN url_type text;

