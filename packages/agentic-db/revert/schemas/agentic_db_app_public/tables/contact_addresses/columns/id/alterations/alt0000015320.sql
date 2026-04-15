-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/id/alterations/alt0000015320


ALTER TABLE agentic_db_app_public.contact_addresses 
  ALTER COLUMN id DROP NOT NULL;


