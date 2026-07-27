-- Deploy: schemas/agentic_db_app_public/tables/contact_links/columns/url/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table


ALTER TABLE agentic_db_app_public.contact_links 
  ADD COLUMN url text;

