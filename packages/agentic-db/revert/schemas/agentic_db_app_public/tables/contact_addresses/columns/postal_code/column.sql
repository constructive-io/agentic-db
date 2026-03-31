-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/postal_code/column


ALTER TABLE agentic_db_app_public.contact_addresses 
  DROP COLUMN postal_code RESTRICT;


