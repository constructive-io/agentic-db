-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/updated_at/alterations/alt0000003214


ALTER TABLE agentic_db_app_public.contact_addresses 
  ALTER COLUMN updated_at DROP NOT NULL;


