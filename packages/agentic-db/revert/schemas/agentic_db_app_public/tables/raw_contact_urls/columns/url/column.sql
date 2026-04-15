-- Revert: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/url/column


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  DROP COLUMN url RESTRICT;


