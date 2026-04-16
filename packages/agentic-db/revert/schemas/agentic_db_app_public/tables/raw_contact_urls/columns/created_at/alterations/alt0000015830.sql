-- Revert: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/created_at/alterations/alt0000015830


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  ALTER COLUMN created_at DROP NOT NULL;


