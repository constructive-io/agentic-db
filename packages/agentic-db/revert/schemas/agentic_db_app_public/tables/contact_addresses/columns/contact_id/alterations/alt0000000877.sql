-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/contact_id/alterations/alt0000000877


ALTER TABLE agentic_db_app_public.contact_addresses 
  ALTER COLUMN contact_id DROP NOT NULL;


