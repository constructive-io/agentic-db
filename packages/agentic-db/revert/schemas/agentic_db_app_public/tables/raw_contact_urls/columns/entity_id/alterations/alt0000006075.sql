-- Revert: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/entity_id/alterations/alt0000006075


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  ALTER COLUMN entity_id DROP NOT NULL;


