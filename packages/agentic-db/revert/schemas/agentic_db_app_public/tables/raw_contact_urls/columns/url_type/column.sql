-- Revert: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/url_type/column


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  DROP COLUMN url_type RESTRICT;


