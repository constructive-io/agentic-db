-- Deploy: schemas/agentic_db_app_public/tables/contact_addresses/columns/country/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_addresses/table


ALTER TABLE agentic_db_app_public.contact_addresses 
  ADD COLUMN country text;

