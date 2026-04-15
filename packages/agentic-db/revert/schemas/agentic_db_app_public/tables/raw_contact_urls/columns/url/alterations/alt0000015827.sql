-- Revert: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/url/alterations/alt0000015827


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  ALTER COLUMN url DROP NOT NULL;


