-- Revert: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/raw_contact_id/alterations/alt0000006083


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  ALTER COLUMN raw_contact_id DROP NOT NULL;


