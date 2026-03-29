-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/url/alterations/alt0000010567


ALTER TABLE agentic_db_app_public.contact_links 
  ALTER COLUMN url DROP NOT NULL;


